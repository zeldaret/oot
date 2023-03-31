#!/usr/bin/env python3

import argparse
import sys
import re
import os

def join(*args):
    ret = {}
    for arg in args:
        ret.update(arg)
    return ret

def get_symbols(header_file):
    inst_syms = {}
    drum_syms = {}
    effect_syms = {}

    current_mode = ""
    for line in header_file.readlines():
        if current_mode == "" and " INSTRUMENTS " in line:
            current_mode = "instrument"
            continue
        elif current_mode == "instrument" and " DRUMS " in line:
            current_mode = "drum"
            continue
        elif current_mode == "drum" and " EFFECTS " in line:
            current_mode = "effect"
            continue

        if ".define" in line and current_mode != "":
            sym, index = re.match(r"\.define ([A-Z_0-9]+)\s+(\d+)", line).groups()
            if current_mode == "instrument":
                inst_syms[int(index)] = sym
            elif current_mode == "drum":
                drum_syms[int(index)] = sym
            elif current_mode == "effect":
                effect_syms[int(index)] = sym

    return (inst_syms, drum_syms, effect_syms)

def get_sequence_symbols(seq_inc):
    pitches = {}
    fonts = {}

    for line in seq_inc.readlines():
        if "PITCH" in line:
            sym, id = re.match(r"\.define ([A-Z_0-9]+)\s+(\d+)", line).groups()
            pitches[int(id)] = sym
        if "SOUNDFONT" in line:
            sym, id = re.match(r"\.define ([A-Z_0-9]+)\s+(\d+)", line).groups()
            fonts[int(id)] = sym

    return (pitches, fonts)

control_flow_commands = {
    0xFF: ['end'],
    0xFE: ['delay1'],
    0xFD: ['delay', 'var'],
    0xFC: ['call', 'addr'],
    0xFB: ['jump', 'addr'],
    0xFA: ['beqz', 'addr'],
    0xF9: ['bltz', 'addr'],
    0xF8: ['loop', 'u8'],
    0xF7: ['loopend'],
    0xF6: ['break'],
    0xF5: ['bgez', 'addr'],
    0xF4: ['rjump', 'reladdr8'],
    0xF3: ['rbeqz', 'reladdr8'],
    0xF2: ['rbltz', 'reladdr8'],
}

commands = {}
commands['seq'] = join(control_flow_commands, {
    # non-arg commands
    0xF1: ['allocnotelist', 'u8'],
    0xF0: ['freenotelist'],
    0xDF: ['transpose', 's8'],
    0xDE: ['rtranspose', 's8'],
    0xDD: ['tempo', 'u8'],
    0xDC: ['tempochg', 's8'],
    0xDB: ['vol', 'u8'],
    0xDA: ['volmode', 's8'],
    0xD7: ['initchan', 'hex16'],
    0xD6: ['freechan', 'hex16'],
    0xD5: ['mutescale', 's8'],
    0xD4: ['mute'],
    0xD3: ['mutebhv', 'hex8'],
    0xD2: ['ldshortvelarr', 'addr'],
    0xD1: ['ldshortgatearr', 'addr'],
    0xD0: ['notealloc', 'u8'],
    0xCE: ['rand', 'u8'],
    0xCD: ['dyncall', 'addr'],
    0xCC: ['ldi', 'u8'],
    0xC9: ['and', 'u8'],
    0xC8: ['sub', 'u8'],
    0xC7: ['stseq', 'u8', 'addr'],
    0xC6: ['stop'],
    0xC5: ['scriptctr', 'u16'],
    0xC4: ['runseq', 'u8', 'u8'],
    # arg commands
    0x00: ['testchan', 'bits:4'],
    0x40: ['stopchan', 'bits:4'],
    0x50: ['subio', 'bits:4'],
    0x60: ['ldres', 'bits:4', 'u8', 'u8'],
    0x70: ['stio', 'bits:4'],
    0x80: ['ldio', 'bits:4'],
    0x90: ['ldchan', 'bits:4', 'addr'],
    0xA0: ['rldchan', 'bits:4', 'reladdr16'],
    0xB0: ['ldseq', 'bits:4', 'u8', 'addr'],
})

commands['chan'] = join(control_flow_commands, {
    # non-arg commands
    0xF1: ['allocnotelist', 'u8'],
    0xF0: ['freenotelist'],
    0xEE: ['bendfine', 's8'],
    0xED: ['gain', 'u8'],
    0xEB: ['fontinstr'],
    0xEA: ['stop'],
    0xE9: ['notepri', 'u8'],
    0xE8: ['params', 'u8', 'u8', 'u8', 's8', 's8', 'u8', 'u8', 'u8'],
    0xE7: ['ldparams', 'addr'],
    0xE6: ['samplebook', 'addr'],
    0xE5: ['rvrbidx', 'u8'],
    0xE4: ['dyncall'],
    0xE3: ['vibdelay', 'u8'],
    0xE2: ['vibdepthgrad', 'u8', 'u8', 'u8'],
    0xE1: ['vibfreqgrad', 'u8', 'u8', 'u8'],
    0xE0: ['volexp', 'u8'],
    0xDF: ['vol', 'u8'],
    0xDE: ['freqscale', 'u16'],
    0xDD: ['pan', 'u8'],
    0xDC: ['panweight', 'u8'],
    0xDB: ['transpose', 's8'],
    0xDA: ['envelope', 'addr'],
    0xD9: ['releaserate', 'u8'],
    0xD8: ['vibdepth', 'u8'],
    0xD7: ['vibfreq', 'u8'],
#    0xD6: ['setupdatesperframe_unimplemented', 'u8'],
    0xD4: ['reverb', 'u8'],
    0xD3: ['bend', 's8'],
    0xD2: ['sustain', 'u8'],
    0xD1: ['notealloc', 'u8'],
    0xD0: ['effects', 'u8'],
    0xCF: ['stptrtoseq', 'addr'],
    0xCE: ['ldptr', 'hex16'],
    0xCD: ['stopchan', 'u8'],
    0xCC: ['ldi', 'u8'],
    0xCB: ['ldseq', 'addr'],
    0xCA: ['mutebhv', 'hex8'],
    0xC9: ['and', 'u8'],
    0xC8: ['sub', 'u8'],
    0xC7: ['stseq', 'u8', 'addr'],
    0xC6: ['font', 'u8'],
    0xC5: ['dyntbllookup'],
    0xC4: ['noshort'],
    0xC3: ['short'],
    0xC2: ['dyntbl', 'addr'],
    0xC1: ['instr', 'u8'],
    0xBD: ['randptr', 'u16', 'u16'],
    0xBC: ['ptradd', 'u16'],
    0xBB: ['unkbb', 'u8', 'u16'],
    0xBA: ['randgate', 'u8'],
    0xB9: ['randvel', 'u8'],
    0xB8: ['rand', 'u8'],
    0xB7: ['randtoptr', 'u16'],
    0xB6: ['dyntblv'],
    0xB5: ['dyntbltoptr'],
    0xB4: ['ptrtodyntbl'],
    0xB3: ['filter', 'u8'],
    0xB2: ['ldseqtoptr', 'addr'],
    0xB1: ['freefilter'],
    0xB0: ['ldfilter', 'addr'],
    # arg commands
    0x00: ['cdelay', 'bits:4'],
    0x10: ['sample', 'bits:3', 'addr'],
    0x18: ['sampleptr', 'bits:3', 'addr'],
    0x20: ['ldchan', 'bits:4', 'addr'],
    0x30: ['stcio', 'bits:4', 'u8'],
    0x40: ['ldcio', 'bits:4', 'u8'],
    0x50: ['subio', 'bits:4'],
    0x60: ['ldio', 'bits:4'],
    0x70: ['stio', 'bits:3'],
    0x78: ['rldlayer', 'bits:3', 'reladdr16'],
    0x80: ['testlayer', 'bits:3'],
    0x88: ['ldlayer', 'bits:3', 'addr'],
    0x90: ['dellayer', 'bits:3'],
    0x98: ['dynldlayer', 'bits:3'],
})

commands_layer_base = join(control_flow_commands, {
    # non-arg commands
    0xC0: ['ldelay', 'var'],
    0xC1: ['shortvel', 'u8'],
    0xC2: ['transpose', 's8'],
    0xC3: ['shortdelay', 'var'],
    0xC4: ['legato'],
    0xC5: ['nolegato'],
    0xC6: ['instr', 'u8'],
    0xC7: ['portamento', 'hex8', 'u8', 'u8'],
    0xC8: ['noportamento'],
    0xC9: ['shortgate', 'u8'],
    0xCA: ['notepan', 'u8'],
    0xCB: ['envelope', 'addr', 'u8'],
    0xCC: ['nodrumpan'],
    0xCD: ['stereo', 'u8'],
    0xCE: ['bendfine', 's8'],
    0xCF: ['releaserate', 'u8'],
    # arg commands
    0xD0: ['ldshortvel', 'bits:4'],
    0xE0: ['ldshortgate', 'bits:4'],
})
del commands_layer_base[0xFD]

commands['layer_large'] = join(commands_layer_base, {
    0x00: ['notedvg', 'bits:6', 'var', 'u8', 'u8'],
    0x40: ['notedv', 'bits:6', 'var', 'u8'],
    0x80: ['notevg', 'bits:6', 'u8', 'u8'],
})

commands['layer_small'] = join(commands_layer_base, {
    0x00: ['shortdvg', 'bits:6', 'var'],
    0x40: ['shortdv', 'bits:6'],
    0x80: ['shortvg', 'bits:6'],
})

branches = ['jump', 'beqz', 'bltz', 'bgez', 'rjump', 'rbeqz', 'rbltz']

def valid_cmd_for_nbits(cmd_list, nbits):
    for arg in cmd_list:
        if arg.startswith('bits:'):
            return int(arg.split(':')[1]) == nbits
    return nbits == 0

parser = argparse.ArgumentParser(add_help=False)
parser.add_argument("filename", metavar="input.aseq", type=argparse.FileType("rb"), help="Input binary sequence to convert to a text sequence.")
parser.add_argument("header", metavar="soundfont.inc", type=argparse.FileType("r"), help="Soundfont include file defining instruments and drums symbols.")
parser.add_argument("sequence", metavar="sequence.inc", type=argparse.FileType("r"), help="sequence.inc file containing global defines")
parser.add_argument("--print-end-padding", action="store_true", help="Adds padding bytes to the end of the sequence.")
parser.add_argument("--cache-policy", nargs=1, required=False, default=["2"], help="Specifies the cache policy for this sequence.")
args = parser.parse_args()

print_end_padding = args.print_end_padding
filename = args.filename
header = args.header
sequence = args.sequence
cachePolicy = args.cache_policy[0]

try:
    # should maybe renumber in hex?
    seq_num = int(filename.name.split('/')[-1].split(' ')[0], 10)
except Exception:
    seq_num = -1

try:
    data = filename.read()
except Exception:
    print(f"Error: could not open file {filename.name} for reading.", file=sys.stderr)
    sys.exit(1)

try:
    inst_syms, drum_syms, effect_syms = get_symbols(header)
except Exception as e:
    print(f"Error: could not read symbols from {header.name}.", file=sys.stderr)
    sys.exit(1)

try:
    pitches, soundfonts = get_sequence_symbols(sequence)
except Exception as e:
    print(f"Error: could not read symbols from {sequence.name}.", file=sys.stderr)
    sys.exit(1)

output = [None] * len(data)
alignment = [None] * len(data)
output_instate = [None] * len(data)
label_name = [None] * len(data)
label_kind = [None] * len(data)
script_start = [False] * len(data)
hit_eof = False
errors = []
seq_writes = []

# Our analysis of large notes mode doesn't persist through multiple channel activations
# For simplicity, we force large notes always instead, which is valid for oot.
force_large_notes = True

def gen_label(ind, tp):
    nice_tp = tp.replace('_small', '').replace('_large', '').replace('lazy', '')
    addr = hex(ind)[2:].upper()
    ret = f"{nice_tp}_{addr}"
    if ind >= len(data):
        errors.append(f"reference to oob label {ret}")
        return ret

    if label_name[ind] is not None:
        return label_name[ind]
    label_name[ind] = ret
    label_kind[ind] = {
        "seq": "sequence",
        "chan": "channel",
        "chan_fn": "channel",
        "layer_large_fn": "layer"
    }.get(tp, tp)
    return ret

def gen_mnemonic(tp, b):
    mn = commands[tp][b][0]
    if not mn:
        mn = f"{b:02X}"
    return f"{mn}"

decode_list = []

def decode_one(state):
    pos, tp, nesting, large, current_channel = state
    orig_pos = pos

    if pos >= len(data):
        global hit_eof
        hit_eof = True
        return

    if seq_num == 0 and pos in (0x6197, 0x6197, 0x6197):
        # unfinished code
        return

    if output[pos] is not None:
        if output_instate[pos][:-1] != state[:-1]:
            errors.append(f"got to {gen_label(orig_pos, tp)} with both state {state} and {output_instate[pos]}")
        return

    def u8():
        nonlocal pos
        global hit_eof
        if pos == len(data):
            hit_eof = True
            return 0
        ret = data[pos]
        pos += 1
        return ret

    def s8():
        ret = u8()
        return ret - 0x100 if ret >= 0x80 else ret

    def u16():
        hi = u8()
        lo = u8()
        return (hi << 8) | lo

    def s16():
        ret = u16()
        return ret - 0x10000 if ret >= 0x8000 else ret

    def peek16():
        nonlocal pos
        ret = u16()
        pos -= 2
        return ret

    def var():
        ret = u8()
        if ret & 0x80:
            ret = (ret << 8) & 0x7F00;
            ret |= u8()
            return (ret, ret < 0x80)
        return (ret, False)

    if tp.endswith('entry'):
        subtp = tp[:-5]
        if subtp == 'layer':
            subtp = 'layer_large'
        addr = u16()
        if subtp != 'lazyseq' and subtp != 'writeseq':
            decode_list.append((addr, subtp, 0, True, current_channel))
        for p in range(orig_pos, pos):
            output[p] = ''
            output_instate[p] = state
        if subtp == 'writeseq':
            output[orig_pos] = 'entry <fixup>'
            seq_writes.append((orig_pos, addr))
        else:
            output[orig_pos] = 'entry ' + gen_label(addr, subtp)
            if addr < len(data):
                script_start[addr] = True
        return

    if tp == 'envelope':
        a = u16()
        b = u16()
        for p in range(orig_pos, pos):
            output[p] = ''
            output_instate[p] = state
        if a >= 2**16 - 3:
            a -= 2**16
        if a <= 0:
            mn = ['disable', 'hang', 'goto', 'restart'][-a]
            output[orig_pos] = mn + (f' {b}' if mn == 'goto' else '')
            # assume any goto is backwards and stop decoding
        else:
            output[orig_pos] = f'point {a}, {b}'
            decode_list.append((pos, tp, nesting, large, current_channel))
        return

    if tp == 'filter':
        filt_str = ", ".join(str(s16()) for _ in range(8))
        for p in range(orig_pos, pos):
            output[p] = ''
            output_instate[p] = state
        output[orig_pos] = f'filter {filt_str}'
        return

    ins_byte = u8()

    cmds = commands[tp]
    nbits = 0
    used_b = ins_byte
    while True:
        if used_b in cmds and valid_cmd_for_nbits(cmds[used_b], nbits):
            break
        used_b &= ~(1 << nbits)
        nbits += 1
        if nbits == 8:
            errors.append(f"unrecognized instruction {hex(ins_byte)} for type {tp} at label {gen_label(orig_pos, tp)}")
            return

    out_mn = gen_mnemonic(tp, used_b)
    out_args = []
    cmd_mn = cmds[used_b][0]
    cmd_args = cmds[used_b][1:]
    long_var = False

    for a in cmd_args:
        if cmd_mn == 'portamento' and len(out_args) == 2 and (int(out_args[0], 0) & 0x80) == 0:
            a = 'var'
        if cmd_mn == 'ldptr' and seq_num == 0 and peek16() not in (0, 0x7FBC):
            a = 'addr'
            out_mn = "ldptr"

        if a.startswith('bits:'):
            low_bits = ins_byte & ((1 << nbits) - 1)
            if not (a.endswith(':ign') and low_bits == 0):
                arg = str(low_bits)
                if cmd_mn in ['notedvg', 'notedv', 'notevg', 'shortdvg', 'shortdv', 'shortvg']:
                    arg = pitches[low_bits]
                out_args.append(arg)
        elif a == 'u8' and cmd_mn == 'instr':
            instr_num = u8()
            if instr_num == 127:
                instr = "FONTANY_INSTR_DRUM"
            elif instr_num == 126:
                instr = "FONTANY_INSTR_SFX"
            else:
                instr = inst_syms[instr_num]
            out_args.append(instr)
        elif a == 'u8':
            out_args.append(str(u8()))
        elif a == 'hex8':
            out_args.append(hex(u8()).upper())
        elif a == 's8':
            v = u8()
            out_args.append(str(v if v < 128 else v - 256))
        elif a == 'u16':
            out_args.append(str(u16()))
        elif a == 'hex16':
            out_args.append(hex(u16()).upper())
        elif a == 'var':
            val, bad = var()
            out_args.append(hex(val).upper())
            if bad:
                long_var = True
        elif a in ('addr', 'reladdr8', 'reladdr16'):
            if a == 'addr':
                v = u16()
            elif a == 'reladdr8':
                v = s8()
                v += pos
            else:
                v = s16()
                v += pos

            kind = 'addr'
            if cmd_mn == 'call':
                kind = tp + '_fn'
            elif cmd_mn in branches:
                kind = tp
            elif cmd_mn in ('ldchan', 'rldchan'):
                kind = 'chan'
            elif cmd_mn in ('ldlayer', 'rldlayer'):
                kind = 'layer'
            elif cmd_mn in ('dyntbl', 'dyncall'):
                kind = 'table'
            elif cmd_mn == 'envelope':
                kind = 'envelope'
            elif cmd_mn == 'ldfilter':
                kind = 'filter'

            if v >= len(data):
                label = gen_label(v, kind)
                out_args.append(label)
                errors.append(f"reference to oob label {label}")
            elif cmd_mn in ('stseq', 'stptrtoseq'):
                out_args.append('<fixup>')
                seq_writes.append((orig_pos, v))
            else:
                out_args.append(gen_label(v, kind))
                if cmd_mn == 'call':
                    decode_list.append((v, tp, 0, large, current_channel))
                    script_start[v] = True
                elif cmd_mn in branches:
                    decode_list.append((v, tp, nesting, large, current_channel))
                elif kind == 'chan':
                    decode_list.append((v, 'chan', 0, force_large_notes, out_args[0]))
                    script_start[v] = True
                elif kind == 'layer':
                    if large:
                        decode_list.append((v, 'layer_large', 0, True, current_channel))
                    else:
                        decode_list.append((v, 'layer_small', 0, True, current_channel))
                    script_start[v] = True
                elif kind == 'envelope':
                    decode_list.append((v, 'envelope', 0, True, current_channel))
                    script_start[v] = True
                elif kind == 'filter':
                    decode_list.append((v, 'filter', 0, True, current_channel))
                    script_start[v] = True
                else:
                    script_start[v] = True
        else:
            raise Exception(f"bad arg kind {a}")

    out_all = out_mn
#    if long_var:
#        out_all += "_long"
    if out_args:
        out_all += ' '
        out_all += ', '.join(out_args)
    for p in range(orig_pos, pos):
        output[p] = ''
        output_instate[p] = state
    output[orig_pos] = out_all

    if cmd_mn in ['hang', 'jump', 'rjump']:
        return
    if cmd_mn in ['loop']:
        nesting += 1
    if cmd_mn == 'end':
        nesting -= 1
    if cmd_mn in ['break', 'loopend']:
        nesting -= 1
        if nesting < 0:
            # This is iffy, and actually happens in sequence 0. It will make us
            # return to the caller's caller at function end.
            nesting = 0
    if cmd_mn == 'noshort':
        large = True
    if cmd_mn == 'short':
        large = False
    if nesting >= 0:
        decode_list.append((pos, tp, nesting, large, current_channel))

def decode_rec(state, initial):
    if not initial:
        v = state[0]
        gen_label(v, state[1])
        script_start[v] = True
    decode_list.append(state)
    while decode_list:
        decode_one(decode_list.pop())

def main():
    decode_rec((0, 'seq', 0, False, None), initial=True)

    tables = []
    unused = []

    if seq_num == 0:
        tables = [
            ('chan', 0xE1, 0xE1),
            ('chan', 0x1E1, 0x1E1),
            ('chan', 0xEE3, 0xEE3),
            ('chan', 0x16D5, 0x16D5),
            ('chan', 0x17D5, 0x17D5),
            ('chan', 0x315E, 0x315E),
            ('chan', 0x325E, 0x325E),
            ('chan', 0x335E, 0x335E),
            ('chan', 0x345E, 0x345E),
            ('chan', 0x5729, 0x5729),
            ('chan', 0x5EE5, 0x5EE5),
            ('chan', 0x5FF2, 0x5FF2),
        ]

        unused = [
            (0x4BE, 'layer_large'),
            (0x6F6, 'layer_large'),
            (0x72C, 'layer_large'),
            (0x839, 'chan'),
            (0x109A, 'layer_large'),
            (0x1C7A, 'envelope'),
            (0x1C86, 'envelope'),
            (0x1C92, 'envelope'),
            (0x205E, 'layer_large'),
            (0x2128, 'layer_large'),
            (0x213D, 'layer_large'),
            (0x3791, 'chan'),
            (0x482F, 'chan'),
            (0x599F, 'chan'),
            (0x59B9, 'layer_large'),
            (0x5B45, 'layer_large'),
            (0x6185, 'chan'),
            (0x61AB, 'chan'),
            (0x6360, 'chan'),
            (0x672C, 'envelope'),
            (0x685C, 'envelope'),
            (0x689C, 'envelope'),
            (0x691C, 'envelope'),
            (0x693C, 'envelope'),
            (0x69EC, 'envelope'),
            (0x6A6C, 'envelope'),
        ]

    elif seq_num == 1:
        tables = [
            ('layer', 0x192, 20),
            ('layer', 0x1BA, 20),
            ('layer', 0x1E2, 20),
            ('layer', 0x20A, 20),
            ('writeseq', 0x232, 20),
            ('writeseq', 0x25A, 20),
            ('writeseq', 0x282, 20),
        ]

    elif seq_num == 2:
        tables = [
            ('lazyseq', 0xC0, 2),
            ('seq', 0xBC, 2),
        ]

    elif seq_num == 109:
        tables = [
            ('chan', 0x646, 16),
        ]
        unused = [
            (0x3F7, 'layer_large'),
            (0x578, 'layer_large'),
            (0x666, 'envelope'),
            (0x66E, 'envelope'),
            (0x67E, 'envelope'),
            (0x6A6, 'envelope'),
            (0x6BA, 'envelope'),
            (0x6E2, 'envelope'),
            (0x70A, 'envelope'),
            (0x736, 'envelope'),
            (0x74E, 'envelope'),
            (0x766, 'envelope'),
            (0x776, 'envelope'),
            (0x782, 'envelope'),
            (0x79A, 'envelope'),
            (0x7A6, 'envelope'),
            (0x7AE, 'envelope'),
            (0x7B6, 'envelope'),
            (0x7C2, 'envelope'),
            (0x7D6, 'envelope'),
            (0x7E6, 'envelope'),
            (0x80E, 'envelope'),
            (0x82A, 'envelope'),
            (0x83A, 'envelope'),
            (0x852, 'envelope'),
            (0x862, 'envelope'),
            (0x896, 'envelope'),
            (0x8AE, 'envelope'),
            (0x8BA, 'envelope'),
        ]

    for (tp, addr, count) in tables:
        for i in range(count):
            decode_rec((addr + 2*i, tp + 'entry', 0, False), initial=True)

    for (addr, tp) in unused:
        gen_label(addr, tp + '_unused')
        decode_rec((addr, tp, 0, force_large_notes), initial=False)

    for (pos, write_to) in seq_writes:
        assert '<fixup>' in output[pos]
        delta = 0
        while output[write_to] == '':
            write_to -= 1
            delta += 1
#        if write_to > pos and all(output[i] == '' for i in range(pos+1, write_to)):
#            nice_target = str(delta)
#            output[pos] = output[pos].replace('writeseq', 'writeseq_nextinstr')
#        else:
        tp = output_instate[write_to][1] if output_instate[write_to] is not None else 'addr'
        nice_target = gen_label(write_to, tp)
        if delta:
            nice_target += "+" + str(delta)
        output[pos] = output[pos].replace('<fixup>', nice_target)

    # Add unreachable 'end' markers
    for i in range(1, len(data)):
        if (data[i] == 0xFF and output[i] is None and output[i - 1] is not None
                and label_name[i] is None):
            tp = output_instate[i - 1][1]
            if tp in ["seq", "chan", "layer_small", "layer_large"]:
                output[i] = gen_mnemonic(tp, 0xFF)

    # Add aligners and strip padding
    for i in range(len(data)):
        if not output[i]:
            continue
        tp = output_instate[i][1] if output_instate[i] else ''
        if tp == 'filter':
            align = 16
        elif tp == 'envelope':
            align = 2
        else:
            continue
        if i % align != 0:
            errors.append(f"{label_name[i]} ({hex(i)}) is unaligned")
            continue
        alignment[i] = align
        for j in range(1, align):
            k = i - j
            if k < 0 or output[k] is not None or data[k] != 0 or label_name[k]:
                break
            output[k] = ""

    # Add 'unused' marker labels
    for i in range(1, len(data)):
        if (output[i] is None and output[i - 1] is not None and label_name[i] is None):
            script_start[i] = True
            gen_label(i, 'unused')

    # Remove up to 15 bytes of padding at the end
    end_padding = 0
    for i in range(len(data) - 1, -1, -1):
        if output[i] is not None:
            break
        end_padding += 1
    if end_padding > 15:
        end_padding = 0

    if print_end_padding:
        print(end_padding)
        sys.exit(0)

    header_str = os.path.splitext(os.path.basename(header.name))[0]
    header_id = soundfonts[int(header_str)] if header_str.isdigit() else header_str

    if cachePolicy != 2:
        policyname = {
            "0": "CACHE_PERMANENT",
            "1": "CACHE_PERSISTENT",
            "2": "CACHE_TEMPORARY",
            "3": "CACHE_ANY",
            "4": "CACHE_ANYNOSYNC"
        }.get(cachePolicy)
        print(f".cache {policyname}")
    print(f".usefont {header_id}")
    print()
    print(".sequence sequence_start")
    last_tp = ""
    for i in range(len(data) - end_padding):
        if script_start[i] and i > 0:
            print()
        tp = output_instate[i][1] if output_instate[i] else ''
        if tp != last_tp and alignment[i] is not None:
            print(f".balign {alignment[i]}\n")
        last_tp = tp
        if label_name[i] is not None:
            print(f".{label_kind[i]} {label_name[i]}")
        o = output[i]
        if o is None:
            print(f"byte {hex(data[i]).upper()}")
        elif o:
            print(o)
        elif label_name[i] is not None:
            print("<mid-instruction>")
            errors.append(f"mid-instruction label {label_name[i]}")

    if not data:
        print("# empty")
    elif hit_eof:
        errors.append("hit eof!?")

    if errors:
        print(f"[{filename}] errors:", file=sys.stderr)
        for w in errors:
            print(w, file=sys.stderr)

main()
