#!/usr/bin/env python3
# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   Audio Sequence Disassembler
#

"""
The approach for sequence disassembly is roughly as follows:

```
    Set COVERAGE=[0 for _ in range(len(data))]
    Set REF_QUEUE=[]

    Set OFFSET=0
    Set SECTION=SEQ
1:
    Begin sequential disassembly at OFFSET using section type SECTION
        Collect reference labels and section types into REF_QUEUE
        Update entries in COVERAGE to 1 as bytes are read
    End disassembly at `end` instruction

    If REF_QUEUE is not empty:
        Pop a reference from REF_QUEUE
        Set OFFSET=loc(reference)
        Set SECTION=section(reference)
        goto 1

    If Any 0s in COVERAGE:
        Set OFFSET=(index of first 0 in COVERAGE)
        Set SECTION=guess_section(OFFSET)               (make a heuristic guess for section based on neighbors)
        goto 1
```

There are some additional subtleties for handling padding and uncommon sections like `array`.

For tables used in `dyncall`s, we have to rely on external information to provide the location and size of tables as
there is no reliable heuristic for identifying table sizes.


TODO

sequence beginning with testchan 0 is a buffer (?)
OR any ldseq is an array and an array of 0 is a buffer (?)

detect section overlaps and mark them as bugged in the output
"""

from dataclasses import dataclass
from enum import Enum, auto
from typing import Callable, Dict, List, Optional, Tuple

from .audiobank_file import AudiobankFile
from .tuning import pitch_names

#
#   VERSIONS
#

class MMLVersion(Enum):
    OOT = auto()
    MM = auto()

VERSION_ALL = (MMLVersion.OOT, MMLVersion.MM)

#
#   SECTIONS
#

class SqSection(Enum):
    SEQ      = ("SEQ", ".sequence")
    CHAN     = ("CHAN", ".channel")
    LAYER    = ("LAYER", ".layer")
    ARRAY    = ("ARRAY", ".array")
    TABLE    = ("TABLE", ".table")
    ENVELOPE = ("ENVELOPE", ".envelope")
    FILTER   = ("FILTER", ".filter")
    UNKNOWN  = ("UNK", "")

    def __init__(self, prefix, lbl_prefix):
        self.prefix = prefix
        self.lbl_prefix = lbl_prefix

SECTION_ALL = (SqSection.SEQ, SqSection.CHAN, SqSection.LAYER)

#
#   ARGS
#

def maybe_hex(n):
    if n < 10:
        return f"{n}"
    else:
        return f"0x{n:X}"

def sign_extend(x, n):
    sgn = 1 << (n - 1)
    return (x & (sgn - 1)) - (x & sgn)

class MMLArg:
    def __init__(self, disas):
        self.value = self.read(disas)

    def read(self, disas):
        raise NotImplementedError()

    def analyze(self, disas):
        pass

    def emit(self, disas):
        return str(self.value)

class MMLArgBits(MMLArg):
    def read(self, disas):
        return disas.bits_val

class ArgU8(MMLArg):
    def read(self, disas):
        return disas.read_u8()

class ArgU4x2(MMLArg):
    def read(self, disas):
        return disas.read_u8()

    def emit(self, disas):
        return f"{(self.value >> 4) & 0xF}, {self.value & 0xF}"

class ArgSeqId(ArgU8):
    def emit(self, disas):
        return disas.all_seq_names[self.value]

class ArgFontId(ArgU8): # TODO
    def read(self, disas):
        return disas.read_u8()

class ArgPitchU8(ArgU8):
    def emit(self, disas):
        return f"PITCH_{pitch_names[self.value]}"

class ArgS8(MMLArg):
    def read(self, disas):
        return sign_extend(disas.read_u8(), 8)

class ArgU16(MMLArg):
    def read(self, disas):
        return disas.read_u16()

class ArgS16(MMLArg):
    def read(self, disas):
        return sign_extend(disas.read_u16(), 16)

class ArgHex8(ArgU8):
    def emit(self, disas):
        return f"0x{self.value:02X}"

class ArgHex16(ArgU16):
    def emit(self, disas):
        return f"0x{self.value:04X}"

class ArgBitField16(ArgU16):
    def emit(self, disas):
        return bin(self.value)

class ArgInstr(ArgU8):
    def emit(self, disas):
        builtins = {
            126 : "FONTANY_INSTR_SFX",
            127 : "FONTANY_INSTR_DRUM",
            128 : "FONTANY_INSTR_SAWTOOTH",
            129 : "FONTANY_INSTR_TRIANGLE",
            130 : "FONTANY_INSTR_SINE",
            131 : "FONTANY_INSTR_SQUARE",
            132 : "FONTANY_INSTR_NOISE",
            133 : "FONTANY_INSTR_BELL",
            134 : "FONTANY_INSTR_8PULSE",
            135 : "FONTANY_INSTR_4PULSE",
            136 : "FONTANY_INSTR_ASM_NOISE",
        }
        if self.value in builtins:
            return builtins[self.value]

        # Check against first font only, this is fine for 99% of cases since most sequences use just one font
        font0 : AudiobankFile = disas.used_fonts[0]

        if self.value in font0.instrument_index_map:
            name = f"SF{font0.bank_num}_{font0.instrument_name(self.value)}"
        else:
            print(f"Invalid instrument sourced from {font0.name}: {self.value}")
            name = f"{self.value} /* invalid instrument */"
        return name

class ArgVar(MMLArg):
    def read(self, disas):
        ret = disas.read_u8()
        if ret & 0x80:
            ret = ((ret << 8) & 0x7F00) | disas.read_u8()
            if ret < 128 and disas.insn_begin not in disas.force_long:
                print(f"Unnecessary use of long immediate encoding @ 0x{disas.insn_begin:X}: {ret}")
                disas.force_long.add(disas.insn_begin)

        return ret

class ArgPortamentoMode(ArgHex8):
    def read(self, disas):
        ret = disas.read_u8()
        disas.portamento_is_special = (ret & 0x80) != 0
        return ret

class ArgStereoConfig(ArgU8):
    def emit(self, disas):
        assert (self.value & 0b11000000) == 0
        type = (self.value >> 4) & 0b11
        strong_right = (self.value >> 3) & 1
        strong_left = (self.value >> 2) & 1
        strong_rvrb_right = (self.value >> 1) & 1
        strong_rvrb_left = (self.value >> 0) & 1
        return f"{type}, {strong_right}, {strong_left}, {strong_rvrb_right}, {strong_rvrb_left}"

class ArgEffectsConfig(ArgU8):
    def emit(self, disas):
        assert (self.value & 0b01000000) == 0
        headset = str(bool((self.value >> 7) & 1)).upper()
        type = (self.value >> 4) & 0b11
        strong_right = (self.value >> 3) & 1
        strong_left = (self.value >> 2) & 1
        strong_rvrb_right = (self.value >> 1) & 1
        strong_rvrb_left = (self.value >> 0) & 1
        return f"{headset}, {type}, {strong_right}, {strong_left}, {strong_rvrb_right}, {strong_rvrb_left}"

class ArgPortamentoTime(ArgVar):
    def read(self, disas):
        if disas.portamento_is_special:
            return disas.read_u8()
        else:
            return super().read(disas)

class ArgBits3(MMLArgBits):
    NBITS = 3

class ArgBits4(MMLArgBits):
    NBITS = 4

class IOPort3(ArgBits3):
    def emit(self, disas):
        assert self.value in range(0,8)
        return f"IO_PORT_{self.value}"

class IOPort8(ArgU8):
    def emit(self, disas):
        if self.value in range(0,8):
            return f"IO_PORT_{self.value}"
        else:
            return f"{self.value} # BAD IO PORT NUMBER"

class ArgPitch(MMLArgBits):
    NBITS = 6

    def emit(self, disas):
        return f"PITCH_{pitch_names[self.value]}"

class ArgAddr(ArgHex16):
    def analyze(self, disas):
        disas.add_ref(self.value)

    def emit(self, disas):
        value = self.value

        target_section = SqSection.UNKNOWN
        for frag in disas.fragments:
            if value in range(frag.start,frag.end):
                target_section = frag.section
                break

        addend = disas.addends.get(disas.pos, 0)
        if disas.cur_section in (SqSection.SEQ, SqSection.CHAN, SqSection.LAYER, SqSection.ENVELOPE) and addend == 0:
            # turn a label that's partway inside an instruction into a label beginning at the instruction + an addend
            for start,end in disas.insn_ranges:
                if value in range(start,end):
                    addend = value - start
                    value = start
                    break

        prefix = target_section.prefix
        if addend != 0:
            return f"{prefix}_{value:04X} + {maybe_hex(addend)}"
        else:
            return f"{prefix}_{value:04X}"

class ArgRelAddr8(ArgAddr):
    def read(self, disas):
        rel_offset = sign_extend(disas.read_u8(), 8)
        return disas.pos + rel_offset

class ArgRelAddr16(ArgAddr):
    def read(self, disas):
        rel_offset = sign_extend(disas.read_u16(), 16)
        return disas.pos + rel_offset

class ArgSectionPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, disas.cur_section)

class ArgBigSectionPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, disas.cur_section, big=True)

class ArgRelSectionPtr(ArgRelAddr8):
    def analyze(self, disas):
        disas.add_ref(self.value, disas.cur_section)

class ArgSeqPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.SEQ, big=True)

class ArgChanPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.CHAN, big=True)

    def emit(self, disas):
        return f"CHAN_{self.value:04X}"

class ArgRelChanPtr(ArgRelAddr16):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.CHAN, big=True)

    def emit(self, disas):
        return f"CHAN_{self.value:04X}"

class ArgLayerPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.LAYER, big=True)

    def emit(self, disas):
        return f"LAYER_{self.value:04X}"

class ArgRelLayerPtr(ArgRelAddr16):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.LAYER, big=True)

    def emit(self, disas):
        return f"LAYER_{self.value:04X}"

class ArgArrayPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.ARRAY, big=True)

class ArgEnvPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.ENVELOPE, big=True)

    def emit(self, disas):
        return f"ENVELOPE_{self.value:04X}"

class ArgFilterPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.FILTER, big=True)

    def emit(self, disas):
        return f"FILTER_{self.value:04X}"

class ArgTblPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.TABLE, big=True)

    def emit(self, disas):
        return f"TABLE_{self.value:04X}"

class ArgUnkPtr(ArgAddr):
    def analyze(self, disas):
        disas.add_ref(self.value, SqSection.UNKNOWN)

class ArgLdSampleInst(MMLArg):
    def read(self, disas):
        return None

    def emit(self, disas):
        return "LDSAMPLE_INST"

class ArgLdSampleSfx(MMLArg):
    def read(self, disas):
        return None

    def emit(self, disas):
        return "LDSAMPLE_SFX"

#
#   COMMANDS
#

@dataclass
class MMLCmd:
    cmd_id : int
    mnemonic : str
    args : Tuple[MMLArg] = ()
    is_branch : bool = False
    is_branch_unconditional : bool = False
    is_terminal : bool = False
    handler : Callable = None
    sections : Tuple[SqSection] = SECTION_ALL
    version : Tuple[MMLVersion] = VERSION_ALL

def nesting_decr(cmd, disas):
    disas.nesting -= 1
    if disas.nesting < 0:
        disas.nesting = 0

def nesting_incr(cmd, disas):
    disas.nesting += 1

def set_short(cmd, disas):
    disas.large_notes = False

def set_large(cmd, disas):
    disas.large_notes = True

#
#   NOTE: Changes here must be reflected in aseq.h for re-assembly
#
CMD_SPEC = (
    #
    # Control Flow Commands
    #
    MMLCmd(0xFF, 'end',                               is_terminal=True, handler=nesting_decr),
    MMLCmd(0xFE, 'delay1'),
    MMLCmd(0xFD, 'delay',   args=(ArgVar,),           sections=(SqSection.SEQ, SqSection.CHAN,)),
    MMLCmd(0xFC, 'call',    args=(ArgBigSectionPtr,)),
    MMLCmd(0xFB, 'jump',    args=(ArgSectionPtr,),    is_branch=True, is_branch_unconditional=True),
    MMLCmd(0xFA, 'beqz',    args=(ArgSectionPtr,),    is_branch=True),
    MMLCmd(0xF9, 'bltz',    args=(ArgSectionPtr,),    is_branch=True),
    MMLCmd(0xF8, 'loop',    args=(ArgU8,),            handler=nesting_incr),
    MMLCmd(0xF7, 'loopend',                           handler=nesting_decr),
    MMLCmd(0xF6, 'break',                             handler=nesting_decr),
    MMLCmd(0xF5, 'bgez',    args=(ArgSectionPtr,),    is_branch=True),
    MMLCmd(0xF4, 'rjump',   args=(ArgRelSectionPtr,), is_branch=True, is_branch_unconditional=True),
    MMLCmd(0xF3, 'rbeqz',   args=(ArgRelSectionPtr,), is_branch=True),
    MMLCmd(0xF2, 'rbltz',   args=(ArgRelSectionPtr,), is_branch=True),

    #
    # SEQ commands
    #
    # non-argbits commands
    MMLCmd(0xF1, 'allocnotelist',  sections=(SqSection.SEQ,), args=(ArgU8,)),
    MMLCmd(0xF0, 'freenotelist',   sections=(SqSection.SEQ,)),
    MMLCmd(0xEF, 'unk_EF',         sections=(SqSection.SEQ,), args=(ArgS16, ArgU8,)),
    MMLCmd(0xDF, 'transpose',      sections=(SqSection.SEQ,), args=(ArgS8,)),
    MMLCmd(0xDE, 'rtranspose',     sections=(SqSection.SEQ,), args=(ArgS8,)),
    MMLCmd(0xDD, 'tempo',          sections=(SqSection.SEQ,), args=(ArgU8,)),
    MMLCmd(0xDC, 'tempochg',       sections=(SqSection.SEQ,), args=(ArgS8,)),
    MMLCmd(0xDB, 'vol',            sections=(SqSection.SEQ,), args=(ArgU8,)),
    MMLCmd(0xDA, 'volmode',        sections=(SqSection.SEQ,), args=(ArgU8, ArgS16)),
    MMLCmd(0xD9, "volscale",       sections=(SqSection.SEQ,), args=(ArgU8,)),
    MMLCmd(0xD7, 'initchan',       sections=(SqSection.SEQ,), args=(ArgBitField16,)),
    MMLCmd(0xD6, 'freechan',       sections=(SqSection.SEQ,), args=(ArgBitField16,)),
    MMLCmd(0xD5, 'mutescale',      sections=(SqSection.SEQ,), args=(ArgS8,)),
    MMLCmd(0xD4, 'mute',           sections=(SqSection.SEQ,)),
    MMLCmd(0xD3, 'mutebhv',        sections=(SqSection.SEQ,), args=(ArgHex8,)),
    MMLCmd(0xD2, 'ldshortvelarr',  sections=(SqSection.SEQ,), args=(ArgArrayPtr,)), # length 16
    MMLCmd(0xD1, 'ldshortgatearr', sections=(SqSection.SEQ,), args=(ArgArrayPtr,)), # length 16
    MMLCmd(0xD0, 'notealloc',      sections=(SqSection.SEQ,), args=(ArgU8,)),
    MMLCmd(0xCE, 'rand',           sections=(SqSection.SEQ,), args=(ArgU8,)),
    MMLCmd(0xCD, 'dyncall',        sections=(SqSection.SEQ,), args=(ArgTblPtr,)),
    MMLCmd(0xCC, 'ldi',            sections=(SqSection.SEQ,), args=(ArgU8,)),
    MMLCmd(0xC9, 'and',            sections=(SqSection.SEQ,), args=(ArgU8,)),
    MMLCmd(0xC8, 'sub',            sections=(SqSection.SEQ,), args=(ArgU8,)),
    MMLCmd(0xC7, 'stseq',          sections=(SqSection.SEQ,), args=(ArgU8, ArgAddr,)),
    MMLCmd(0xC6, 'stop',           sections=(SqSection.SEQ,)),
    MMLCmd(0xC5, 'scriptctr',      sections=(SqSection.SEQ,), args=(ArgU16,)),
    MMLCmd(0xC4, 'runseq',         sections=(SqSection.SEQ,), args=(ArgU8, ArgSeqId,)),
    MMLCmd(0xC3, 'mutechan',       sections=(SqSection.SEQ,), args=(ArgS16,),               version=(MMLVersion.MM,)),
    # argbits commands
    MMLCmd(0x00, 'testchan',       sections=(SqSection.SEQ,), args=(ArgBits4,)),
    MMLCmd(0x40, 'stopchan',       sections=(SqSection.SEQ,), args=(ArgBits4,)),
    MMLCmd(0x50, 'subio',          sections=(SqSection.SEQ,), args=(IOPort3,)),
    MMLCmd(0x60, 'ldres',          sections=(SqSection.SEQ,), args=(ArgBits4, ArgU8, ArgU8,)),
    MMLCmd(0x70, 'stio',           sections=(SqSection.SEQ,), args=(IOPort3,)),
    MMLCmd(0x80, 'ldio',           sections=(SqSection.SEQ,), args=(IOPort3,)),
    MMLCmd(0x90, 'ldchan',         sections=(SqSection.SEQ,), args=(ArgBits4, ArgChanPtr,)),
    MMLCmd(0xA0, 'rldchan',        sections=(SqSection.SEQ,), args=(ArgBits4, ArgRelChanPtr,)),
    MMLCmd(0xB0, 'ldseq',          sections=(SqSection.SEQ,), args=(ArgBits4, ArgSeqId, ArgUnkPtr,)),

    #
    # CHAN commands
    #
    # non-argbits commands
    MMLCmd(0xF1, 'allocnotelist', sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xF0, 'freenotelist',  sections=(SqSection.CHAN,)),
    MMLCmd(0xEE, 'bendfine',      sections=(SqSection.CHAN,), args=(ArgS8,)),
    MMLCmd(0xED, 'gain',          sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xEC, 'vibreset',      sections=(SqSection.CHAN,)),
    MMLCmd(0xEB, 'fontinstr',     sections=(SqSection.CHAN,), args=(ArgFontId, ArgInstr)),
    MMLCmd(0xEA, 'stop',          sections=(SqSection.CHAN,)),
    MMLCmd(0xE9, 'notepri',       sections=(SqSection.CHAN,), args=(ArgU4x2,)),
    MMLCmd(0xE8, 'params',        sections=(SqSection.CHAN,), args=(ArgU8, ArgU8, ArgU8, ArgS8, ArgS8, ArgU8, ArgU8, ArgU8,)),
    MMLCmd(0xE7, 'ldparams',      sections=(SqSection.CHAN,), args=(ArgAddr,)),
    MMLCmd(0xE6, 'samplebook',    sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xE5, 'reverbidx',     sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xE4, 'dyncall',       sections=(SqSection.CHAN,)),
    MMLCmd(0xE3, 'vibdelay',      sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xE2, 'vibdepthgrad',  sections=(SqSection.CHAN,), args=(ArgU8, ArgU8, ArgU8,)),
    MMLCmd(0xE1, 'vibfreqgrad',   sections=(SqSection.CHAN,), args=(ArgU8, ArgU8, ArgU8,)),
    MMLCmd(0xE0, 'volexp',        sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xDF, 'vol',           sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xDE, 'freqscale',     sections=(SqSection.CHAN,), args=(ArgU16,)),
    MMLCmd(0xDD, 'pan',           sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xDC, 'panweight',     sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xDB, 'transpose',     sections=(SqSection.CHAN,), args=(ArgS8,)),
    MMLCmd(0xDA, 'env',           sections=(SqSection.CHAN,), args=(ArgEnvPtr,)),
    MMLCmd(0xD9, 'releaserate',   sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xD8, 'vibdepth',      sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xD7, 'vibfreq',       sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xD4, 'reverb',        sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xD3, 'bend',          sections=(SqSection.CHAN,), args=(ArgS8,)),
    MMLCmd(0xD2, 'sustain',       sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xD1, 'notealloc',     sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xD0, 'effects',       sections=(SqSection.CHAN,), args=(ArgEffectsConfig,)),
    MMLCmd(0xCF, 'stptrtoseq',    sections=(SqSection.CHAN,), args=(ArgAddr,)),
    MMLCmd(0xCE, 'ldptr',         sections=(SqSection.CHAN,), args=(ArgAddr,)),
    MMLCmd(0xCD, 'stopchan',      sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xCC, 'ldi',           sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xCB, 'ldseq',         sections=(SqSection.CHAN,), args=(ArgUnkPtr,)),
    MMLCmd(0xCA, 'mutebhv',       sections=(SqSection.CHAN,), args=(ArgHex8,)),
    MMLCmd(0xC9, 'and',           sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xC8, 'sub',           sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xC7, 'stseq',         sections=(SqSection.CHAN,), args=(ArgU8, ArgAddr,)),
    MMLCmd(0xC6, 'font',          sections=(SqSection.CHAN,), args=(ArgFontId,)),
    MMLCmd(0xC5, 'dyntbllookup',  sections=(SqSection.CHAN,)),
    MMLCmd(0xC4, 'noshort',       sections=(SqSection.CHAN,),                           handler=set_large),
    MMLCmd(0xC3, 'short',         sections=(SqSection.CHAN,),                           handler=set_short),
    MMLCmd(0xC2, 'dyntbl',        sections=(SqSection.CHAN,), args=(ArgTblPtr,)),
    MMLCmd(0xC1, 'instr',         sections=(SqSection.CHAN,), args=(ArgInstr,)),
    MMLCmd(0xBE, 'unk_BE',        sections=(SqSection.CHAN,), args=(ArgU8,),            version=(MMLVersion.MM,)),
    MMLCmd(0xBD, 'randptr',       sections=(SqSection.CHAN,), args=(ArgU16, ArgU16,),   version=(MMLVersion.OOT,)),
    MMLCmd(0xBD, 'samplestart',   sections=(SqSection.CHAN,), args=(ArgU8,),            version=(MMLVersion.MM,)),
    MMLCmd(0xBC, 'ptradd',        sections=(SqSection.CHAN,), args=(ArgHex16,)),
    MMLCmd(0xBB, 'combfilter',    sections=(SqSection.CHAN,), args=(ArgU8, ArgU16)),
    MMLCmd(0xBA, 'randgate',      sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xB9, 'randvel',       sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xB8, 'rand',          sections=(SqSection.CHAN,), args=(ArgU8,)),
    MMLCmd(0xB7, 'randtoptr',     sections=(SqSection.CHAN,), args=(ArgU16,)),
    MMLCmd(0xB6, 'dyntblv',       sections=(SqSection.CHAN,)),
    MMLCmd(0xB5, 'dyntbltoptr',   sections=(SqSection.CHAN,)),
    MMLCmd(0xB4, 'ptrtodyntbl',   sections=(SqSection.CHAN,)),
    MMLCmd(0xB3, 'filter',        sections=(SqSection.CHAN,), args=(ArgU4x2,)),
    MMLCmd(0xB2, 'ldseqtoptr',    sections=(SqSection.CHAN,), args=(ArgTblPtr,)),
    MMLCmd(0xB1, 'freefilter',    sections=(SqSection.CHAN,)),
    MMLCmd(0xB0, 'ldfilter',      sections=(SqSection.CHAN,), args=(ArgFilterPtr,)),
    MMLCmd(0xA8, 'randptr',       sections=(SqSection.CHAN,), args=(ArgU16, ArgU16,),   version=(MMLVersion.MM,)),
    MMLCmd(0xA7, 'unk_A7',        sections=(SqSection.CHAN,), args=(ArgHex8,),          version=(MMLVersion.MM,)),
    MMLCmd(0xA6, 'unk_A6',        sections=(SqSection.CHAN,), args=(ArgU8, ArgS16,),    version=(MMLVersion.MM,)),
    MMLCmd(0xA5, 'unk_A5',        sections=(SqSection.CHAN,), args=(),                  version=(MMLVersion.MM,)),
    MMLCmd(0xA4, 'unk_A4',        sections=(SqSection.CHAN,), args=(ArgU8,),            version=(MMLVersion.MM,)),
    MMLCmd(0xA3, 'unk_A3',        sections=(SqSection.CHAN,), args=(),                  version=(MMLVersion.MM,)),
    MMLCmd(0xA2, 'unk_A2',        sections=(SqSection.CHAN,), args=(ArgS16,),           version=(MMLVersion.MM,)),
    MMLCmd(0xA1, 'unk_A1',        sections=(SqSection.CHAN,), args=(),                  version=(MMLVersion.MM,)),
    MMLCmd(0xA0, 'unk_A0',        sections=(SqSection.CHAN,), args=(ArgS16,),           version=(MMLVersion.MM,)),
    # argbits commands
    MMLCmd(0x00, 'cdelay',        sections=(SqSection.CHAN,), args=(ArgBits4,)),
    MMLCmd(0x10, 'ldsample',      sections=(SqSection.CHAN,), args=(ArgLdSampleInst, IOPort3,)),
    MMLCmd(0x18, 'ldsample',      sections=(SqSection.CHAN,), args=(ArgLdSampleSfx, IOPort3,)),
    MMLCmd(0x20, 'ldchan',        sections=(SqSection.CHAN,), args=(ArgBits4, ArgChanPtr,)),
    MMLCmd(0x30, 'stcio',         sections=(SqSection.CHAN,), args=(ArgBits4, IOPort8,)),
    MMLCmd(0x40, 'ldcio',         sections=(SqSection.CHAN,), args=(ArgBits4, IOPort8,)),
    MMLCmd(0x50, 'subio',         sections=(SqSection.CHAN,), args=(IOPort3,)),
    MMLCmd(0x60, 'ldio',          sections=(SqSection.CHAN,), args=(IOPort3,)),
    MMLCmd(0x70, 'stio',          sections=(SqSection.CHAN,), args=(IOPort3,)),
    MMLCmd(0x78, 'rldlayer',      sections=(SqSection.CHAN,), args=(ArgBits3, ArgRelLayerPtr,)),
    MMLCmd(0x80, 'testlayer',     sections=(SqSection.CHAN,), args=(ArgBits3,)),
    MMLCmd(0x88, 'ldlayer',       sections=(SqSection.CHAN,), args=(ArgBits3, ArgLayerPtr,)),
    MMLCmd(0x90, 'dellayer',      sections=(SqSection.CHAN,), args=(ArgBits3,)),
    MMLCmd(0x98, 'dynldlayer',    sections=(SqSection.CHAN,), args=(ArgBits3,)),

    #
    # LAYER commands
    #
    # non-argbits commands
    MMLCmd(0xC0, 'ldelay',         sections=(SqSection.LAYER,), args=(ArgVar,)),
    MMLCmd(0xC1, 'shortvel',       sections=(SqSection.LAYER,), args=(ArgU8,)),
    MMLCmd(0xC2, 'transpose',      sections=(SqSection.LAYER,), args=(ArgS8,)),
    MMLCmd(0xC3, 'shortdelay',     sections=(SqSection.LAYER,), args=(ArgVar,)),
    MMLCmd(0xC4, 'legato',         sections=(SqSection.LAYER,)),
    MMLCmd(0xC5, 'nolegato',       sections=(SqSection.LAYER,)),
    MMLCmd(0xC6, 'instr',          sections=(SqSection.LAYER,), args=(ArgInstr,)),
    MMLCmd(0xC7, 'portamento',     sections=(SqSection.LAYER,), args=(ArgPortamentoMode, ArgPitchU8, ArgPortamentoTime,)),
    MMLCmd(0xC8, 'noportamento',   sections=(SqSection.LAYER,)),
    MMLCmd(0xC9, 'shortgate',      sections=(SqSection.LAYER,), args=(ArgU8,)),
    MMLCmd(0xCA, 'notepan',        sections=(SqSection.LAYER,), args=(ArgU8,)),
    MMLCmd(0xCB, 'env',            sections=(SqSection.LAYER,), args=(ArgEnvPtr, ArgU8,)),
    MMLCmd(0xCC, 'nodrumpan',      sections=(SqSection.LAYER,)),
    MMLCmd(0xCD, 'stereo',         sections=(SqSection.LAYER,), args=(ArgStereoConfig,)),
    MMLCmd(0xCE, 'bendfine',       sections=(SqSection.LAYER,), args=(ArgS8,)),
    MMLCmd(0xCF, 'releaserate',    sections=(SqSection.LAYER,), args=(ArgU8,)),
    MMLCmd(0xD0, 'ldshortvel',     sections=(SqSection.LAYER,), args=(ArgBits4,)),
    MMLCmd(0xE0, 'ldshortgate',    sections=(SqSection.LAYER,), args=(ArgBits4,)),
    MMLCmd(0xF0, 'unk_F0',         sections=(SqSection.LAYER,), args=(ArgS16,),             version=(MMLVersion.MM,)),
    MMLCmd(0xF1, 'surroundeffect', sections=(SqSection.LAYER,), args=(ArgU8,),              version=(MMLVersion.MM,)),
    # argbits commands
    #  large layer
    MMLCmd(0x00, 'notedvg',        sections=(SqSection.LAYER,), args=(ArgPitch, ArgVar, ArgU8, ArgU8,)),
    MMLCmd(0x40, 'notedv',         sections=(SqSection.LAYER,), args=(ArgPitch, ArgVar, ArgU8,)),
    MMLCmd(0x80, 'notevg',         sections=(SqSection.LAYER,), args=(ArgPitch, ArgU8, ArgU8,)),
    #  small layer
    MMLCmd(0x00, 'shortdvg',       sections=(SqSection.LAYER,), args=(ArgPitch, ArgVar,)),
    MMLCmd(0x40, 'shortdv',        sections=(SqSection.LAYER,), args=(ArgPitch,)),
    MMLCmd(0x80, 'shortvg',        sections=(SqSection.LAYER,), args=(ArgPitch,)),
)

#
#   DISASSEMBLER
#

class SequenceFragment:
    def __init__(self, disas, section, data, start, end):
        assert len(data) == end - start , f"Bad: got {len(data)} bytes for range [{start}:{end}] {data}"

        self.section = section
        self.data = data
        self.start = start
        self.end = end
        self.disas = disas

    def __str__(self):
        return f"Fragment ({self.section}) [{self.start}, {self.end}]"

    def __lt__(self, other):
        return self.start < other.start

    @staticmethod
    def merge(frag1, frag2):
        if frag1 == frag2:
            return frag1

        if frag1.section != frag2.section:
            return None

        # don't merge envelopes or tables ever
        if frag1.section in (SqSection.ENVELOPE, SqSection.TABLE):
            return None

        min_start = min(frag1.start, frag2.start)
        max_start = max(frag1.start, frag2.start)
        min_end = min(frag1.end, frag2.end)
        max_end = max(frag1.end, frag2.end)

        if max_start > min_end:
            return None

        data1, data2 = frag1.data, frag2.data
        if frag2.start < frag1.start:
            data1, data2 = data2, data1

        if min_end == max_end:
            # data1 contains data2
            return SequenceFragment(frag1.disas, frag1.section, data1, min_start, max_end)

        assert data1[max_start:] == data2[:len(data1)-max_start] , \
            f"Data does not agree on overlap between\n{frag1}\n{frag2}\n{data2[:len(data1)-max_start]}"

        return SequenceFragment(frag1.disas, frag1.section, data1[:max_start] + data2, min_start, max_end)

@dataclass
class SequenceTableSpec:
    start_offset : int
    num_entries : int
    addend : int
    sectype : SqSection

    def contains_loc(self, pos):
        return pos in range(self.start_offset, self.start_offset + 2 * self.num_entries)

class SequenceDisassembler:

    def __init__(self, seq_num : int, data : bytes, tables : Optional[Tuple[SequenceTableSpec]], cmds : Tuple[MMLCmd],
                 version : MMLVersion, outpath : str, seq_name : str, used_fonts : List[AudiobankFile], all_seq_names):
        self.seq_num = seq_num
        self.seq_name = seq_name
        self.used_fonts = used_fonts

        self.all_seq_names = all_seq_names

        self.pos = 0
        self.insn_begin = 0
        self.data = data
        self.hit_eof = False
        self.cur_section = SqSection.SEQ
        self.nesting = 0
        self.portamento_is_special = False
        self.large_notes = True

        self.outpath = outpath

        self.cmds : Dict[SqSection, Dict[int, MMLCmd]] = {
            SqSection.SEQ : {},
            SqSection.CHAN : {},
            SqSection.LAYER : {},
        }

        # preprocess command list into dictionary, possibly duplicating into
        # several id keys if any lsbits are used as an arg
        for cmd in cmds:
            # ignore commands not in this version
            if version not in cmd.version:
                continue

            # find number of lsbits that don't contribute to the command id
            nbits = 0
            for arg in cmd.args:
                if issubclass(arg, MMLArgBits):
                    assert nbits == 0, f"Multiple argbits-type arguments: {cmd}"
                    nbits = arg.NBITS

            id = cmd.cmd_id

            for section in cmd.sections:
                cmds_s = self.cmds[section]

                for i in range(1 << nbits):
                    new = cmd
                    new.mask = (1 << nbits) - 1
                    old = cmds_s.get(id + i, None)
                    if old is not None:
                        assert old.mnemonic in ("notedvg", "notedv", "notevg"), (old.mnemonic, cmd.mnemonic)
                        new = (old, cmd)

                    cmds_s[id + i] = new

        self.force_long = set()

        self.insn_ranges = []

        self.coverage = [0] * len(self.data)

        self.fragments = []

        self.branch_targets = {}
        self.big_labels = set()

        self.all_ranges = []

        self.decode_list = []
        self.all_seen = []

        self.tables : Optional[Tuple[SequenceTableSpec]] = tables
        self.table_cache = set()

        self.addends = {}

        self.unused = []

    # general helpers

    def read_u8(self):
        if self.hit_eof:
            raise Exception()

        if self.pos == len(self.data):
            self.hit_eof = True
            ret = None
        else:
            ret = self.data[self.pos]
            self.pos += 1
        return ret

    def read_u16(self):
        return (self.read_u8() << 8) | self.read_u8()

    def read_s16(self):
        return sign_extend(self.read_u16(), 16)

    def lookup_cmd(self, id : int) -> MMLCmd:
        # lookup command info
        cmd : MMLCmd = self.cmds[self.cur_section].get(id, None)
        assert cmd is not None , (self.cur_section, id, self.cmds)

        if isinstance(cmd, tuple):
            # select based on whether we're dealing with large or short notes
            cmd = cmd[int(not self.large_notes)]

        # part of the command byte may be an arg, save the value
        self.bits_val = id & cmd.mask

        return cmd

    #
    #   analysis helpers
    #

    def register_addend(self, pos, value):
        self.addends[pos] = value

    def add_branch_target(self, value, section, big=False):
        self.branch_targets[value] = section
        if big:
            self.big_labels.add(value)

    def add_ref(self, value, section=None, big=False):
        if section is None:
            self.add_branch_target(value, SqSection.UNKNOWN)
            return

        self.add_branch_target(value, section, big=big)

        self.add_job(value, section, self.cur_section)

    def add_job(self, value, section, from_section=None):
        if value not in self.all_seen:
            self.all_seen.append(value)
            self.decode_list.append((value, section, from_section or section))

    def merge_frags(self):
        self.fragments = list(sorted(self.fragments))

        if len(self.fragments) < 2:
            return

        i = 0
        while i != len(self.fragments) - 1:
            frag1 = self.fragments[i]
            frag2 = self.fragments[i + 1]
            merged = SequenceFragment.merge(frag1, frag2)
            if merged is not None:
                self.fragments[i] = merged
                del self.fragments[i + 1]
            else:
                i += 1

    #
    #   analysis handlers
    #

    def analyze_code(self): # sequence, channel, layer
        start_pos = self.pos

        # print(f"    << [0x{start_pos:X}/0x{len(self.data):X}] :: {self.cur_section} >>")

        self.insn_begin = start_pos
        cmd_byte = self.read_u8()
        cmd = self.lookup_cmd(cmd_byte)

        assert cmd is not None , f"Bad command ID 0x{cmd_byte:02X} for section {self.cur_section.name} at 0x{start_pos:X}"
        # print(hex(cmd_byte))

        args = [argtype(self) for argtype in cmd.args]

        raw_data = self.data[start_pos:self.pos]

        self.insn_ranges.append((start_pos, self.pos))

        for i in range(start_pos,self.pos):
            self.coverage[i] = self.cur_section

        # print(f"/* 0x{start_pos:04X} [{' '.join([f'0x{b:02X}' for b in raw_data]):24}] */ {cmd.mnemonic:11} {', '.join([arg.emit(self) for arg in args])}".strip())

        for arg in args:
            arg.analyze(self)

        if cmd.handler is not None:
            cmd.handler(cmd, self)

        self.fragments.append(SequenceFragment(self, self.cur_section, raw_data, start_pos, self.pos))

        if not (cmd.is_branch_unconditional or cmd.is_terminal):
            self.decode_list.append((self.pos, self.cur_section, self.cur_section))

    def analyze_table(self):
        assert self.tables is not None, "Found a table but no table spec provided."

        for table_spec in self.tables:
            if table_spec.contains_loc(self.pos):
                break
        else:
            assert False , f"Found table at {self.pos:04X} but no entry number provided"

        start_pos = self.pos = table_spec.offset
        if start_pos in self.table_cache:
            return

        for _ in range(table_spec.num_entries):
            curpos = self.pos
            cur = self.read_u16() - table_spec.addend
            if cur >= len(self.data) - 1:
                assert False , "Bad table pointer"

            self.add_branch_target(cur, table_spec.sectype, big=True)
            self.add_job(cur, table_spec.sectype, table_spec.sectype)
            self.register_addend(curpos, table_spec.addend)

        self.fragments.append(SequenceFragment(self, self.cur_section, self.data[start_pos:self.pos], start_pos, self.pos))
        self.table_cache.add(start_pos)

    def analyze_array(self):
        start_pos = self.pos

        # TODO better heuristic than just hardcoding 16...
        # it would be better to wait until later to resize arrays though, up to the next identified fragment
        # ARRAY + UNK + OTHER -> ARRAY + OTHER
        for _ in range(16):
            assert self.read_u8() == 0

        self.fragments.append(SequenceFragment(self, self.cur_section, self.data[start_pos:self.pos], start_pos, self.pos))

    def analyze_filter(self):
        start_pos = self.pos

        for _ in range(8):
            assert self.read_u16() == 0

        self.fragments.append(SequenceFragment(self, self.cur_section, self.data[start_pos:self.pos], start_pos, self.pos))

    def analyze_envelope(self):
        start_pos = self.pos

        while True: # dangerous
            delay = self.read_s16()
            arg = self.read_s16()
            if delay < 0:
                break

        self.fragments.append(SequenceFragment(self, self.cur_section, self.data[start_pos:self.pos], start_pos, self.pos))

    def analyze_unknown(self):
        self.fragments.append(SequenceFragment(self, self.cur_section, self.data[self.pos:self.pos+2], self.pos, self.pos+2))

    def analyze(self):
        # mark offset 0 as a SEQ section
        self.add_branch_target(0, SqSection.SEQ, big=True)
        self.decode_list.append((0, SqSection.SEQ, SqSection.SEQ))

        # analyze all sections, following branches to locate new sections
        while len(self.decode_list) != 0:
            self.pos, self.cur_section, self.refd_from = self.decode_list.pop()

            if self.pos >= len(self.data):
                # ignore sections that begin past the end of the file
                # TODO should be an error or warning?
                continue

            # execute handler based on section
            {
                SqSection.SEQ      : self.analyze_code,
                SqSection.CHAN     : self.analyze_code,
                SqSection.LAYER    : self.analyze_code,
                SqSection.TABLE    : self.analyze_table,
                SqSection.ARRAY    : self.analyze_array,
                SqSection.FILTER   : self.analyze_filter,
                SqSection.ENVELOPE : self.analyze_envelope,
                SqSection.UNKNOWN  : self.analyze_unknown,
            }[self.cur_section]()

        # merge fragments
        self.merge_frags()

        # update coverage
        self.final_cvg = [0] * len(self.data)
        for frag in self.fragments:
            for i in range(frag.start,frag.end):
                self.final_cvg[i] = frag.section

        # resolve gaps in coverage
        while True:
            # keeps going until there's no zeros except for padding
            try:
                first_zero_idx = self.final_cvg.index(0)
            except ValueError:
                break # no more gaps

            # there was a gap, handle it

            if ((first_zero_idx + 0xF) & ~0xF) == len(self.data) and \
                all(b == 0 for b in self.final_cvg[first_zero_idx:]) and \
                all(b == 0 for b in self.data[first_zero_idx:]):
                # there's only padding left, we're done
                break
            else:
                # resolve non-padding gaps with heuristics

                # TODO any unknown data after a `jump` in a sequence frag should extend the sequence frag
                # TODO any unknown data before a filter should be a balign 16

                last_zero_idx = first_zero_idx
                while self.final_cvg[last_zero_idx] == 0 and last_zero_idx < len(self.final_cvg)-1:
                    self.final_cvg[last_zero_idx] = SqSection.UNKNOWN
                    last_zero_idx += 1

                num_unk = last_zero_idx - first_zero_idx

                emit_unk = True

                prev_frag = None
                prev_frag_idx = None
                next_frag = None
                next_frag_idx = None

                for i,frag in enumerate(self.fragments):
                    if frag.end == first_zero_idx:
                        prev_frag = frag
                        prev_frag_idx = i
                    elif frag.start == last_zero_idx:
                        next_frag = frag
                        next_frag_idx = i

                # SEQ + UNK -> SEQ
                if prev_frag is not None:
                    if prev_frag.section == SqSection.SEQ:
                        self.fragments[prev_frag_idx] = SequenceFragment(self, SqSection.SEQ,
                                                                         self.data[prev_frag.start:last_zero_idx],
                                                                         prev_frag.start, last_zero_idx)
                        emit_unk = False

                if next_frag is not None:
                    # UNK + FILTER -> FILTER
                    if next_frag.section == SqSection.FILTER and num_unk < 16:
                        emit_unk = False

                    # UNK + TABLE -> TABLE
                    if next_frag.section == SqSection.TABLE and num_unk < 2:
                        emit_unk = False

                if prev_frag is not None and next_frag is not None:
                    # LAYER + UNK + LAYER -> LAYER LAYER LAYER
                    if prev_frag.section == SqSection.LAYER and next_frag.section == SqSection.LAYER:
                        self.fragments.append(SequenceFragment(self, SqSection.LAYER, self.data[first_zero_idx:last_zero_idx], first_zero_idx, last_zero_idx))
                        emit_unk = False

                    # LAYER + UNK + CHANNEL -> LAYER LAYER CHANNEL
                    if prev_frag.section == SqSection.LAYER and next_frag.section == SqSection.CHAN:
                        self.fragments.append(SequenceFragment(self, SqSection.LAYER, self.data[first_zero_idx:last_zero_idx], first_zero_idx, last_zero_idx))
                        emit_unk = False

                    # TABLE + UNK + ENVELOPE -> TABLE + ENVELOPE.. + ENVELOPE
                    if prev_frag.section == SqSection.TABLE and next_frag.section == SqSection.ENVELOPE:
                        self.fragments.append(SequenceFragment(self, SqSection.ENVELOPE, self.data[first_zero_idx:last_zero_idx], first_zero_idx, last_zero_idx))
                        emit_unk = False

                    # ENVELOPE + UNK + ENVELOPE -> ENVELOPE + ENVELOPE.. + ENVELOPE
                    if prev_frag.section == SqSection.ENVELOPE and next_frag.section == SqSection.ENVELOPE:
                        self.fragments.append(SequenceFragment(self, SqSection.ENVELOPE, self.data[first_zero_idx:last_zero_idx], first_zero_idx, last_zero_idx))
                        emit_unk = False

                if prev_frag is not None and next_frag is None:
                    # ENVELOPE + UNK + END -> ENVELOPE + ENVELOPE.. + FILTER.. + END
                    if prev_frag.section == SqSection.ENVELOPE:
                        if all(b == 0 for b in self.data[first_zero_idx:]):
                            for k in range(first_zero_idx, len(self.data), 16):
                                if k + 16 > len(self.data):
                                    # padding
                                    break
                                self.fragments.append(SequenceFragment(self, SqSection.FILTER, self.data[k:k+16], k, k + 16))
                        else:
                            self.fragments.append(SequenceFragment(self, SqSection.ENVELOPE, self.data[first_zero_idx:last_zero_idx], first_zero_idx, last_zero_idx))
                        emit_unk = False

                if emit_unk:
                    # leave it unknown for now, TODO make reasonable guesses
                    self.add_branch_target(first_zero_idx, SqSection.UNKNOWN)
                    self.fragments.append(SequenceFragment(self, SqSection.UNKNOWN, self.data[first_zero_idx:last_zero_idx], first_zero_idx, last_zero_idx))

    #
    #   disas helpers
    #

    def label_name(self, value, section, force_big=False):
        if value in self.big_labels or force_big:
            lbl_prefix = section.lbl_prefix + " "
            suffix = ""
        else:
            lbl_prefix = ""
            suffix = ":"

        return f"{lbl_prefix}{section.prefix}_{value:04X}{suffix}"

    def emit_branch_target_real(self, outfile, value, section, force_big=False):
        if section is SqSection.UNKNOWN:
            for frag in self.fragments:
                if value in range(frag.start, frag.end):
                    section = frag.section
                    break

        outfile.write(f"{self.label_name(value, section, force_big)}\n")

    def emit_branch_target(self, outfile, start, end, force_big=False):
        did_emit = False
        for b_tgt in self.branch_targets:
            if b_tgt in range(start,end):
                self.emit_branch_target_real(outfile, start, self.branch_targets[b_tgt], force_big)
                did_emit = True
        return did_emit

    #
    #   disas handlers
    #

    def disas_section(self, frag : SequenceFragment, outfile):
        force_big_lbl = False

        if self.pos == frag.start:
            # If the previous frag is not the same type as this frag, force the first label to be a big label
            for frag2 in self.fragments:
                frag2 : SequenceFragment

                if frag2.end == frag.start:
                    if frag2.section != frag.section:
                        force_big_lbl = True
                    break

        while self.pos < frag.end:
            start_pos = self.pos
            self.insn_begin = start_pos

            cmd_byte = self.read_u8()
            cmd = self.lookup_cmd(cmd_byte)
            mnemonic = cmd.mnemonic

            # Hacky fixups for commands using long var encodings when it was not necessary for them to do so, the usual
            # macros for re-assembly only select the long encoding when necessary so switch to special macros that
            # always use the long encoding unconditionally.
            if self.insn_begin in self.force_long:
                if mnemonic == "notedv":
                    mnemonic = "noteldv"
                elif mnemonic in ("delay", "ldelay"):
                    mnemonic = "lldelay"
                else:
                    assert False , mnemonic

            args = [argtype(self) for argtype in cmd.args]
            raw_data = self.data[start_pos:self.pos]

            self.emit_branch_target(outfile, start_pos, self.pos, force_big_lbl)
            force_big_lbl = False

            args_str = ', '.join([arg.emit(self) for arg in args])
            data_str = ' '.join([f'0x{b:02X}' for b in raw_data])

            outfile.write(f"/* 0x{start_pos:04X} [{data_str:24}] */ {mnemonic:11} {args_str}".strip() + "\n")

            if cmd.is_terminal or cmd.is_branch_unconditional:
                outfile.write("\n")

    def disas_table(self, frag : SequenceFragment, outfile):
        base_pos = self.pos

        while self.pos < frag.end:
            start_pos = self.pos

            addend = self.addends.get(start_pos, 0)

            ent = self.read_u16() - addend

            self.emit_branch_target(outfile, start_pos, self.pos)

            section = self.branch_targets.get(ent, None)

            # TODO
            if section is None:
                section = SqSection.UNKNOWN

            if addend != 0:
                addend_str = f" + {addend}"
            else:
                addend_str = ""

            # TODO proper label name
            outfile.write(f"    entry {section.prefix}_{ent:04X}{addend_str}\n")

        outfile.write("\n")

    def disas_filter(self, frag : SequenceFragment, outfile):
        start_pos = self.pos

        num_filters, align = divmod(len(frag.data), 2 * 8)

        assert all(b == 0 for b in frag.data)
        assert align == 0

        for n in range(num_filters):
            self.emit_branch_target_real(outfile, start_pos + n * 2 * 8, SqSection.FILTER, force_big=True)
            outfile.write("    filter 0, 0, 0, 0, 0, 0, 0, 0\n\n")

    def disas_envelope(self, frag : SequenceFragment, outfile):
        start_pos = self.pos

        self.emit_branch_target(outfile, start_pos, frag.end)

        while self.pos < frag.end:
            delay = self.read_s16()
            arg = self.read_s16()

            if delay == 0 and arg == 0:
                outfile.write("    disable\n")
            elif delay == -1 and arg == 0:
                outfile.write("    hang\n")
            elif delay == -2:
                outfile.write(f"    goto {arg}\n")
            elif delay == -3 and arg == 0:
                outfile.write("    restart\n")
            else:
                assert delay > 0
                outfile.write(f"    point {delay}, {arg}\n")

            if delay < 0 and self.pos not in self.branch_targets:
                outfile.write("\n")
                self.emit_branch_target_real(outfile, self.pos, frag.section)

        outfile.write("\n")

    def disas_array(self, frag : SequenceFragment, outfile):
        self.emit_branch_target(outfile, frag.start, frag.end)

        array_data = self.data[frag.start:frag.end]
        if all(b == 0 for b in array_data):
            outfile.write(f".fill 0x{len(array_data):X}\n\n")
        else:
            for b in array_data:
                outfile.write(f".byte 0x{b:2X}\n")
            outfile.write("\n")

    def disas_unknown(self, frag : SequenceFragment, outfile):
        start_pos = self.pos

        prev = start_pos
        for b_tgt in sorted(self.branch_targets):
            if b_tgt in range(start_pos+1,frag.end):
                # emit data between this branch target and the previous
                outfile.write("    .byte " + ", ".join(f"0x{b:02X}" for b in self.data[prev:b_tgt]) + "\n\n")
            if b_tgt in range(start_pos,frag.end):
                # emit the branch target
                self.emit_branch_target_real(outfile, b_tgt, SqSection.UNKNOWN)
                prev = b_tgt

        # write any remaining data if the final branch target was not the end of the frag
        if prev != frag.end:
            outfile.write("    .byte " + ", ".join(f"0x{b:02X}" for b in self.data[prev:frag.end]) + "\n\n")

    #
    #   emit disassembled text
    #

    def emit(self):
        with open(self.outpath, "w") as outfile:
            # emit header
            outfile.write("#include \"aseq.h\"\n")

            # emit fonts
            for font in self.used_fonts:
                outfile.write(f"#include \"{font.file_name}.h\"\n")
            outfile.write("\n")

            outfile.write(f".startseq {self.seq_name}\n\n")

            # emit fragments
            for frag in sorted(self.fragments):
                frag : SequenceFragment

                self.cur_section = frag.section
                self.pos = frag.start

                {
                    SqSection.SEQ      : self.disas_section,
                    SqSection.CHAN     : self.disas_section,
                    SqSection.LAYER    : self.disas_section,
                    SqSection.TABLE    : self.disas_table,
                    SqSection.ARRAY    : self.disas_array,
                    SqSection.FILTER   : self.disas_filter,
                    SqSection.ENVELOPE : self.disas_envelope,
                    SqSection.UNKNOWN  : self.disas_unknown,
                }[frag.section](frag, outfile)

            outfile.write(f".endseq {self.seq_name}\n")

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(description="Disassemble a Zelda 64 sequence binary")
    parser.add_argument("file", help="Sequence binary to disassemble")
    parser.add_argument("out", help="Path to output source file")
    parser.add_argument("-v", dest="mml_version", required=False, default="OoT", type=str, help="Sample rate (integer)")
    args = parser.parse_args()

    in_path = args.file
    out_path = args.out

    mml_ver = {
        "OoT" : MMLVersion.OOT,
        "MM"  : MMLVersion.MM,
    }.get(args.mml_version, None)

    if mml_ver is None:
        raise Exception("Invalid MML Version, should be 'OoT' or 'MM'")

    with open(in_path, "rb") as infile:
        data = bytearray(infile.read())

    class FontDummy:
        def __init__(self, name) -> None:
            self.name = name
            self.file_name = name
            self.instrument_index_map = {}

    disas = SequenceDisassembler(0, data, None, CMD_SPEC, mml_ver, out_path, "", [FontDummy("dummyfont")], [])
    disas.analyze()
    disas.emit()
