#!/usr/bin/env python3
from collections import namedtuple, defaultdict
import subprocess
import tempfile
import math
import shutil
import uuid
import json
import os
import re
import struct
import sys

rawSamples = []

# Used for data gap detection (finding potentially unreferenced data)
# Format: list of tuples (object, start offset, end offset)
usedFontData = []
usedRawData = []

class Soundfont:
    def __init__(self, entry, ctl):
        endOffset = entry.offset + 8
        percussionOffset, effectsOffset = struct.unpack(">LL", ctl[entry.offset:endOffset])
        instrumentOffsets = []
        if entry.instrumentCount != 0:
            newEndOffset = endOffset + (entry.instrumentCount * 4)
            instrumentOffsets = struct.unpack(">" + str(entry.instrumentCount) + "L", ctl[endOffset:newEndOffset])
            endOffset = newEndOffset

        usedFontData.append((self, entry.offset, endOffset))

        setCtl = ctl[entry.offset:]
        percussionTable = setCtl[percussionOffset:]
        effectsTable = setCtl[effectsOffset:]
        self.instruments = []
        self.effects = []
        self.percussions = []

        if entry.instrumentCount > 0:
            for offset in instrumentOffsets:
                buffer = setCtl[offset:offset + 32]
                instrument = None if offset == 0 else Instrument(entry.bank, buffer, setCtl, entry.offset, offset)
                self.instruments.append(instrument)

        if entry.effectCount > 0:
            #usedSetData.append((self, self.offset + effectsOffset, self.offset + effectsOffset + (self.effectCount * 8)))
            for i in range(entry.effectCount):
                buffer = effectsTable[i * 8:(i * 8) + 8]
                offset = struct.unpack(">L", buffer[0:4])[0]
                effect = None if offset == 0 else SoundEffect(entry.bank, buffer, setCtl, entry.offset, effectsOffset + (i * 8))
                self.effects.append(effect)
        
        if entry.percussionCount > 0:
            usedFontData.append((self, entry.offset + percussionOffset, entry.offset + percussionOffset + (entry.percussionCount * 4)))
            percussionsOffsets = struct.unpack(">" + str(entry.percussionCount) + "L", percussionTable[:entry.percussionCount * 4])
            for i in range(entry.percussionCount):
                offset = percussionsOffsets[i]
                percussion = None if offset == 0 else Percussion(entry.bank, setCtl[offset:offset + 16], setCtl, entry.offset, offset)
                self.percussions.append(percussion)

class SoundEffect:
    def __init__(self, bank, record, tbl, baseOffset, offset):
        self.headerOffset, self.pitch = struct.unpack(">Lf", record)
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 8))
        self.sample = SampleHeader(bank, tbl[self.headerOffset:self.headerOffset + 16], tbl, baseOffset, self.headerOffset)

class Percussion:
    def __init__(self, bank, record, tbl, baseOffset, offset):
        self.unk, self.headerOffset, self.pitch, self.envelopeOffset = struct.unpack(">LLfL", record)
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 16))
        self.sample = SampleHeader(bank, tbl[self.headerOffset:self.headerOffset + 16], tbl, baseOffset, self.headerOffset)
        self.envelope = Envelope(tbl, baseOffset, self.envelopeOffset)

class Instrument:
    def __init__(self, bank, record, tbl, baseOffset, offset):
        self.keyLow, self.keyMedium, self.keyHigh, self.decay, self.envelopeOffset, self.keyLowOffset, self.keyLowPitch, self.keyMedOffset, self.keyMedPitch, self.keyHighOffset, self.keyHighPitch = struct.unpack(">BBBbLLfLfLf", record)
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 32))
        self.envelope = Envelope(tbl, baseOffset, self.envelopeOffset)
        self.keyLowSample = None if self.keyLowOffset == 0 else SampleHeader(bank, tbl[self.keyLowOffset:self.keyLowOffset + 16], tbl, baseOffset, self.keyLowOffset)
        self.keyMedSample = None if self.keyMedOffset == 0 else SampleHeader(bank, tbl[self.keyMedOffset:self.keyMedOffset + 16], tbl, baseOffset, self.keyMedOffset)
        self.keyHighSample = None if self.keyHighOffset == 0 else SampleHeader(bank, tbl[self.keyHighOffset:self.keyHighOffset + 16], tbl, baseOffset, self.keyHighOffset)

class Envelope:
    def __init__(self, tbl, baseOffset, offset):
        advanceOffset = 0
        self.script = []
        self.referencedScripts = []
        while True:
            cmd, value = struct.unpack(">hH", tbl[offset + advanceOffset:offset + advanceOffset + 4])
            possibleFloat = struct.unpack(">f", tbl[offset + advanceOffset:offset + advanceOffset + 4])[0]
            if cmd == 0 and value != 0:
                break
            elif cmd == -1 and value != 0:
                break
            elif cmd == -2:
                if value == 0:
                    break
                else:
                    try:
                        self.referencedScripts.append(Envelope(tbl, baseOffset, value))
                        self.script.append(("ADSR_GOTO", value))
                    except:
                        break
            elif cmd == -3 and value != 0:
                break
            elif cmd > 0 and value > 32767:
                break
            elif -100000 > possibleFloat and possibleFloat < 100000:
                break
            else:
                cmd = {
                    0: "ADSR_DISABLE",
                    -1: "ADSR_HANG",
                    -2: "ADSR_GOTO",
                    -3: "ADSR_RESTART"
                }.get(cmd, cmd)
                self.script.append((cmd, value))
                if isinstance(cmd, str):
                    break
    
            advanceOffset += 4

        if len(self.script) == 0:
            raise Exception("Not a valid envelope script")

        usedFontData.append((self, baseOffset + offset, baseOffset + offset + advanceOffset + 4))

class SampleHeader:
    def __init__(self, bank, record, tbl, baseOffset, offset):
        modes, self.u2, self.length, self.address, self.loopOffset, self.bookOffset = struct.unpack(">bbHLLL", record)
        self.offset = baseOffset + offset
        self.codec = (modes >> 4) & 0xF
        self.medium = (modes & 0xC) >> 2
        assert self.codec == 0 or self.codec == 3
        assert self.medium == 0 or self.medium == 2
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 16))
        self.bank = bank
        assert self.length % 2 == 0
        if (self.length % 9 != 0):
            self.length -= self.length % 9
        
        self.loop = None
        if self.loopOffset != 0:
            self.loop = PCMLoop(tbl[self.loopOffset:self.loopOffset + 48], baseOffset, self.loopOffset)
        
        self.book = None
        if self.bookOffset != 0:
            self.book = PCMBook(tbl[self.bookOffset:self.bookOffset + 8], tbl[self.bookOffset + 8:], baseOffset, self.bookOffset)
        rawSamples.append(self)

class PCMLoop:
    def __init__(self, record, baseOffset, offset):
        self.start, self.end, self.count, unused = struct.unpack(">LLll", record[0:16])
        endOffset = offset + 16
        assert unused == 0
        if self.count != 0:
            self.state = struct.unpack(">16h", record[16:])
            endOffset += 32
        usedFontData.append((self, baseOffset + offset, baseOffset + endOffset))

class PCMBook:
    def __init__(self, record, remainder, baseOffset, offset):
        self.order, self.predictorCount = struct.unpack(">LL", record)
        self.predictors = []
        predictorSize = self.order * 8
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 8 + (predictorSize * self.predictorCount * 2)))
        for i in range(self.predictorCount):
            self.predictors.append(struct.unpack(">" + str(predictorSize) + "h", remainder[i * predictorSize * 2:(i * predictorSize * 2) + (predictorSize * 2)]))

class AifcEntry:
    def __init__(self, data, book, loop):
        self.name = None
        self.data = data
        self.book = book
        self.loop = loop
        self.tunings = []

class SequenceEntry:
    def __init__(self, data):
        self.offset, self.length, self.medium, self.cache = struct.unpack(">LLBBxxxxxx", data)

class SampleTableEntry:
    def __init__(self, data):
        self.offset, self.length, self.medium, self.cache = struct.unpack(">LLBBxxxxxx", data)

class SoundfontEntry:
    def __init__(self, data):
        self.offset, self.length, self.medium, self.cache, self.bank, self.bank2, self.instrumentCount, self.percussionCount, self.effectCount = struct.unpack(">LLBBBBBBH", data)

def parse_seq_def_data(seqdef_data, setmap_data, seq_data):
    count = struct.unpack(">H", seqdef_data[:2])[0]
    entries = []
    for i in range(count):
        entry = SequenceEntry(seqdef_data[16 + (i * 16):32 + (i * 16)], seq_data)
        instSetListOffset = struct.unpack(">H", setmap_data[i * 2:(i * 2) + 2])[0]
        instSetListSize = struct.unpack(">b", setmap_data[instSetListOffset:instSetListOffset + 1])[0]
        entry.inst_sets = list(struct.unpack(f">{str(instSetListSize)}b", setmap_data[instSetListOffset + 1:instSetListOffset + 1 + instSetListSize]))
        entries.append(entry)
    for index in range(len(entries)):
        entry = entries[index]
        if entry.length == 0:
            entries[index] = entries[entry.offset]
    return entries

def parse_raw_def_data(raw_def_data):
    count = struct.unpack(">H", raw_def_data[:2])[0]
    entries = []
    for i in range(count):
        buffer = raw_def_data[16 + (i * 16):32 + (i * 16)]
        entry = SampleTableEntry(buffer)
        entries.append(entry)
    for index in range(len(entries)):
        entry = entries[index]
        if entry.length == 0:
            entries[index] = entries[entry.offset]
    return entries

def parse_soundfonts(fontdef_data, font_data):
    count = struct.unpack(">H", fontdef_data[:2])[0]
    fonts = []
    for i in range(count):
        buffer = fontdef_data[16 + (i * 16):32 + (i * 16)]
        entry = SoundfontEntry(buffer)
        font = Soundfont(entry, font_data)
        entry.font = font
        fonts.append(entry)
    return fonts

def align(val, al):
    return (val + (al - 1)) & -al

name_tbl = {}

def gen_name(prefix, name_table=[]):
    if prefix not in name_tbl:
        name_tbl[prefix] = 0
    ind = name_tbl[prefix]
    name_tbl[prefix] += 1
    if ind < len(name_table):
        return name_table[ind]
    return prefix + str(ind)


def parse_bcd(data):
    ret = 0
    for c in data:
        ret *= 10
        ret += c >> 4
        ret *= 10
        ret += c & 15
    return ret


def serialize_f80(num):
    num = float(num)
    f64, = struct.unpack(">Q", struct.pack(">d", num))
    f64_sign_bit = f64 & 2 ** 63
    if num == 0.0:
        if f64_sign_bit:
            return b"\x80" + b"\0" * 9
        else:
            return b"\0" * 10
    exponent = (f64 ^ f64_sign_bit) >> 52
    assert exponent != 0, "can't handle denormals"
    assert exponent != 0x7FF, "can't handle infinity/nan"
    exponent -= 1023
    f64_mantissa_bits = f64 & (2 ** 52 - 1)
    f80_sign_bit = f64_sign_bit << (80 - 64)
    f80_exponent = (exponent + 0x3FFF) << 64
    f80_mantissa_bits = 2 ** 63 | (f64_mantissa_bits << (63 - 52))
    f80 = f80_sign_bit | f80_exponent | f80_mantissa_bits
    return struct.pack(">HQ", f80 >> 64, f80 & (2 ** 64 - 1))


def round_f32(num):
    enc = struct.pack(">f", num)
    for decimals in range(5, 20):
        num2 = round(num, decimals)
        if struct.pack(">f", num2) == enc:
            return num2
    return num

def toNoteEnum(note):
    tone = (note + 9) % 12
    octave = str(math.floor((((note + 9) / 12) + 1)))

    tone_str = {
        0: "C",
        1: "C♯",
        2: "D",
        3: "D♯",
        4: "E",
        5: "F",
        6: "F♯",
        7: "G",
        8: "G♯",
        9: "A",
        10: "A♯",
        11: "B"
    }.get(tone)

    return "{0}{1}".format(tone_str, octave)

def generate_drum_obj(drum, samples, envelopes):
    if drum is not None:
        samples[drum.headerOffset] = drum.sample
        envelopes[drum.envelopeOffset] = drum.envelope

    return None if drum is None else {
        "unknown": drum.unk,
        "sample": "Sample_{0:0>8x}".format(drum.headerOffset),
        "pitch": drum.pitch,
        "envelope": "Envelope_{0:0>8x}".format(drum.envelopeOffset)
    }

def generate_effect_obj(effect, samples, envelopes):
    if effect is not None:
        samples[effect.headerOffset] = effect.sample

    return None if effect is None else {
        "sample": "Sample_{0:0>8x}".format(effect.headerOffset),
        "pitch": effect.pitch
    }

def generate_instrument_obj(instrument, samples, envelopes):
    if instrument is not None:
        if instrument.keyLowSample is not None:
            samples[instrument.keyLowOffset] = instrument.keyLowSample
        if instrument.keyMedSample is not None:
            samples[instrument.keyMedOffset] = instrument.keyMedSample
        if instrument.keyHighSample is not None:
            samples[instrument.keyHighOffset] = instrument.keyHighSample
        envelopes[instrument.envelopeOffset] = instrument.envelope

    return None if instrument is None else {
        "keyLow": None if instrument.keyLowOffset == 0 else {
            "note": toNoteEnum(instrument.keyLow),
            "pitch": instrument.keyLowPitch,
            "sample": "Sample_{0:0>8x}".format(instrument.keyLowOffset)
        },
        "keyMedium": None if instrument.keyMedOffset == 0 else {
            "note": toNoteEnum(instrument.keyMedium),
            "pitch": instrument.keyMedPitch,
            "sample": "Sample_{0:0>8x}".format(instrument.keyMedOffset)
        },
        "keyHigh": None if instrument.keyHighOffset == 0 else {
            "note": toNoteEnum(instrument.keyHigh),
            "pitch": instrument.keyHighPitch,
            "sample": "Sample_{0:0>8x}".format(instrument.keyHighOffset)
        },
        "decay": instrument.decay,
        "envelope": "Envelope_{0:0>8x}".format(instrument.envelopeOffset)
    }

def generate_envelope_obj(envelope):
    return [{
        "delay": x[0],
        "arg": x[1]
    } for x in envelope.script]

def generate_sample_obj(sample, books, loops):
    books[sample.bookOffset] = sample.book
    loops[sample.loopOffset] = sample.loop

    return {
        "unknown1": sample.u1,
        "unknown2": sample.u2,
        "file": "{0:0>8x}.aiff".format(sample.address),
        "book": "Book_{0:0>8x}".format(sample.bookOffset),
        "loop": "Loop_{0:0>8x}".format(sample.loopOffset)
    }

def generate_pcm_book_obj(book):
    return {
        "order": book.order,
        "predictors": book.predictors
    }

def generate_pcm_loop_obj(loop):
    loop_data = {
        "start": loop.start,
        "end": loop.end,
        "count": loop.count
    }

    if loop.count != 0:
        loop_data["state"] = loop.state

    return loop_data

def write_soundfont(_set, filename):
    samples = {}
    envelopes = {}
    books = {}
    loops = {}

    file = open(filename, "w")
    obj = {
        "version": "{0}, {1}".format(_set.major, _set.minor),
        "bank": _set.bank,
        "unknown": _set.unk,
        "drums": [generate_drum_obj(x, samples, envelopes) for x in _set.percussions],
        "effects": [generate_effect_obj(x, samples, envelopes) for x in _set.effects],
        "instruments": [generate_instrument_obj(x, samples, envelopes) for x in _set.instruments],
        "envelopes": {"Envelope_{0:0>8x}".format(k): generate_envelope_obj(v) for k, v in envelopes.items()},
        "samples": {"Sample_{0:0>8x}".format(k): generate_sample_obj(v, books, loops) for k, v in samples.items()},
        "books": {"Book_{0:0>8x}".format(k): generate_pcm_book_obj(v) for k, v in books.items()},
        "loops": {"Loop_{0:0>8x}".format(k): generate_pcm_loop_obj(v) for k, v in loops.items()}
    }
    file.write(json.dumps(obj, indent=2))
    file.flush()
    file.close()

def report_gaps(report_type, data, bin):
    length = len(bin)
    sorted_data = sorted(data, key = lambda tup: (tup[1], tup[2]))
    gaps = []
    intersections = []
    lastTuple = (None, -1, -1)
    currentEnd = 0
    for tup in sorted_data:
        if tup[1] > currentEnd:
            # Don't report a gap of all 0 bytes, since those are generally just alignment padding
            if any(v != 0 for v in struct.unpack(f">{tup[1] - currentEnd}b", bin[currentEnd:tup[1]])):
                gaps.append((currentEnd, tup[1]))
        elif tup[1] < currentEnd and (lastTuple[1] != tup[1] or lastTuple[2] != tup[2]):
            intersections.append((lastTuple, tup))
        lastTuple = tup
        currentEnd = tup[2] if report_type == "SOUNDFONT" else (16 * math.ceil(tup[2] / 16))
    if currentEnd < length:
        gaps.append((sorted_data[-1][2], length))
    if len(gaps) > 0:
        print(f"GAPS DETECTED IN {report_type} DATA:")
        for gap in gaps:
            print(f"Unreferenced data at {gap[0]:08X}-{gap[1]:08X} ({gap[1] - gap[0]} bytes)")
    if len(intersections) > 0:
        print(f"INTERSECTIONS DETECTED IN {report_type} DATA:")
        for cross in intersections:
            print(f"{type(cross[0][0]).__name__} at {cross[0][1]:08X}-{cross[0][2]:08X} overlaps {type(cross[1][0]).__name__} at {cross[1][1]:08X}-{cross[1][2]:08X}")

class AifcWriter:
    def __init__(self, out):
        self.out = out
        self.sections = []
        self.total_size = 0

    def add_section(self, tp, data):
        assert isinstance(tp, bytes)
        assert isinstance(data, bytes)
        self.sections.append((tp, data))
        self.total_size += align(len(data), 2) + 8

    def add_custom_section(self, tp, data):
        self.add_section(b"APPL", b"stoc" + self.pstring(tp) + data)

    def pstring(self, data):
        return bytes([len(data)]) + data + (b"" if len(data) % 2 else b"\0")

    def finish(self):
        # total_size isn't used, and is regularly wrong. In particular, vadpcm_enc
        # preserves the size of the input file...
        self.total_size += 4
        self.out.write(b"FORM" + struct.pack(">I", self.total_size) + b"AIFC")
        for (tp, data) in self.sections:
            self.out.write(tp + struct.pack(">I", len(data)))
            self.out.write(data)
            if len(data) % 2:
                self.out.write(b"\0")


def write_aifc(raw, bank_defs, entry, filename):
    offset = bank_defs[entry.bank].offset + entry.address
    data = raw[offset:offset + entry.length]
    usedRawData.append((data, offset, offset + entry.length))
    frame_size = {
        0: 9,
        1: 16,
        2: 32,
        3: 5,
        4: 0,
        5: 32
    }.get(entry.codec)
    sample_size = 16  # bits per sample

    with open(filename, "wb") as file:
        writer = AifcWriter(file)
        num_channels = 1
#        length = len(data)
#        assert len(data) % frame_size == 0 or len(data) - 1 % frame_size == 0
        if len(data) % 2 == 1:
            data += b"\0"
        # (Computing num_frames this way makes it off by one when the data length
        # is odd. It matches vadpcm_enc, though.)
        num_frames = len(data) * sample_size // frame_size

        sample_rate = 32000

        writer.add_section(
            b"COMM",
            struct.pack(">hIh", num_channels, num_frames, sample_size)
            + serialize_f80(sample_rate)
            + b"VAPC"
            + writer.pstring(b"VADPCM ~4-1"),
        )
        writer.add_section(b"INST", b"\0" * 20)
        predictors = []
        for table in entry.book.predictors:
            for predictor in table:
                predictors.append(predictor)
        table_data = b"".join(struct.pack(">h", x) for x in predictors)
        writer.add_custom_section(
            b"VADPCMCODES",
            struct.pack(">hhh", 1, entry.book.order, entry.book.predictorCount) + table_data,
        )
        writer.add_section(b"SSND", struct.pack(">II", 0, 0) + data)
        if entry.loop.count != 0:
            writer.add_custom_section(
                b"VADPCMLOOPS",
                struct.pack(
                    ">HHIIi16h",
                    1,
                    1,
                    entry.loop.start,
                    entry.loop.end,
                    entry.loop.count,
                    *entry.loop.state
                ),
            )
        writer.finish()
# for reference oot supports 4 formats: 9 bytes -> 16 samples ADPCM (what sm64 uses), 5 bytes -> 16 samples ADPCM (new in oot), 16 bytes -> 16 samples (new in sm64 shindou), 32 bytes -> 16 samples (new in oot) 
# codec = 0:CODEC_ADPCM, 1:CODEC_S8, 2:CODEC_S16_INMEMORY, 3:CODEC_SMALL_ADPCM, 4:CODEC_REVERB, 5:CODEC_S16
#medium = 0:MEDIUM_RAM, 1:MEDIUM_UNK, 2:MEDIUM_CART, 3:MEDIUM_DISK_DRIVE
#
#AudioLoad_GetRealTableIndex adds a wrench: if sz == 0, the ROM address contains the actual ID for the entry
#Adjust sample rate based on sample IDs
def write_aiff(entry, basedir, aifc_filename, aiff_filename):
    try:
        frame_size = "" if entry.codec == 0 else "5"
        aifc_decode = os.path.join(os.path.dirname(__file__), "aifc_decode")
        common_dir = os.getcwd()
        rel_aifc_decode = "./" + os.path.relpath(aifc_decode, common_dir).replace("\\", "/")
        rel_aifc_file = os.path.relpath(aifc_filename, common_dir).replace("\\", "/")
        rel_aiff_file = os.path.join(os.path.dirname(aifc_filename).replace("\\", "/"), aiff_filename)
        os.makedirs(os.path.join(basedir, str(entry.bank)), exist_ok=True)
        subprocess.run(["bash", "-c", f"{rel_aifc_decode} {rel_aifc_file} {rel_aiff_file} {frame_size}"], check=True)
    except subprocess.CalledProcessError:
        print(f"File failed to decode, codec was {entry.codec}")
        targetfile = os.path.join(basedir, "bad", str(entry.bank), f"{rel_aifc_file}")
        os.makedirs(os.path.dirname(targetfile), exist_ok=True)
        os.remove(rel_aiff_file)
        shutil.copy2(rel_aifc_file, targetfile)

def convert_aseq_to_mus(aseq_name, mus_name):
    seq64_cli = os.path.join(os.path.dirname(__file__), "seq64", "build", "seq64_console")
    common_dir = os.getcwd()
    rel_seq64_cli = "./" + os.path.relpath(seq64_cli, common_dir).replace("\\", "/")
    try:
        subprocess.run(["bash", "-c", f"{rel_seq64_cli} --in={aseq_name} --out={mus_name} --dialect=community-music --abi=zelda"], check=True)
    except subprocess.CalledProcessError:
        print(f"failed to convert {aseq_name} to mus format")
        exit(1)

def main():
    args = []
    need_help = False
    only_samples = False
    only_samples_list = []
    for a in sys.argv[1:]:
        if a == "--help" or a == "-h":
            need_help = True
        elif a == "--only-samples":
            only_samples = True
        elif a.startswith("-"):
            print("Unrecognized option " + a)
            sys.exit(1)
        elif only_samples:
            only_samples_list.append(a)
        else:
            args.append(a)

    expected_num_args = 7 if only_samples else 10
    if need_help or len(args) != expected_num_args:
        print(
            "Usage: {} "
            "<.fontdef file> <.font file> <.seqdef file> <.fontmap file> <.seq file> <.rawdef file> <.raw file> "
            "(<samples outdir> <mus outdir> <soundfont outdir> | "
            "--only-samples file:index ...)".format(sys.argv[0])
        )
        sys.exit(0 if need_help else 1)

    # Soundfont Defs
    fontdef_data = open(args[0], "rb").read()
    # Soundfonts
    font_data = open(args[1], "rb").read()
    # Sequence Defs
    seqdef_data = open(args[2], "rb").read()
    # Sequence->Instrument Set Mapping
    fontmap_data = open(args[3], "rb").read()
    # Sequences
    seq_data = open(args[4], "rb").read()
    # Sample Bank Defs
    rawdef_data = open(args[5], "rb").read()
    # Sample Banks
    raw_data = open(args[6], "rb").read()

    if not only_samples:
        samples_out_dir = args[7]
        midi_out_dir = args[8]
        fonts_out_dir = args[9]

    bank_defs = parse_raw_def_data(rawdef_data)
    fonts = parse_soundfonts(fontdef_data, font_data)

    report_gaps("SOUNDFONT", usedFontData, font_data)

    bank_ctr = defaultdict(int)

    # Export AIFF samples
    for header in rawSamples:
        bank_ctr[header.bank] += 1
        filename_base = os.path.join(samples_out_dir, str(header.bank))
        os.makedirs(filename_base, exist_ok=True)
        aifc_filename = os.path.join(filename_base, f"{header.address:0>8x}.aifc")
        if not os.path.exists(aifc_filename) or os.path.getsize(aifc_filename) == 0:
            write_aifc(raw_data, bank_defs, header, aifc_filename)
            write_aiff(header, samples_out_dir, aifc_filename, f"{header.address:0>8x}.aiff")
    
    if len(usedRawData) > 0:
        report_gaps("SAMPLE", usedRawData, raw_data)

    # Export sequences
    sequences = parse_seq_def_data(seqdef_data, fontmap_data, seq_data)

    for sequence in sequences:
        if sequence.offset != 0:
            dir = os.path.join(midi_out_dir)
            os.makedirs(dir, exist_ok=True)
            #with tempfile.NamedTemporaryFile(suffix=".aseq", delete=False) as aseq:
            with open(f"{midi_out_dir}/{str(sequence.offset)}.aseq", "wb") as aseq:
                aseq.write(sequence.sequence)
                aseq.flush()
                mus_file = os.path.join(dir, str(sequence.offset) + ".mus")
                #if not os.path.exists(mus_file) or os.path.getsize(mus_file) == 0:
                #    convert_aseq_to_mus(aseq.name, mus_file)

    # Export instrument sets
    setId = 0
    for _set in fonts:
        dir = os.path.join(fonts_out_dir)
        os.makedirs(dir, exist_ok=True)
        filename = os.path.join(dir, str(setId) + ".json")
        write_soundfont(_set, filename)
        setId += 1

if __name__ == "__main__":
    main()
