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
usedSetData = []
usedRawData = []

class InstrumentSet:
    def __init__(self, record, ctl):
        self.offset, self.length, self.major, self.minor, self.bank, self.unk, self.instrumentCount, self.percussionCount, self.effectCount = struct.unpack(">LLBBBBBBH", record)
        endOffset = self.offset + 8
        percussionOffset, effectsOffset = struct.unpack(">LL", ctl[self.offset:endOffset])
        instrumentOffsets = []
        if self.instrumentCount != 0:
            newEndOffset = endOffset + (self.instrumentCount * 4)
            instrumentOffsets = struct.unpack(">" + str(self.instrumentCount) + "L", ctl[endOffset:newEndOffset])
            endOffset = newEndOffset

        usedSetData.append((self, self.offset, endOffset))

        setCtl = ctl[self.offset:]
        percussionTable = setCtl[percussionOffset:]
        effectsTable = setCtl[effectsOffset:]
        self.instruments = []
        self.effects = []
        self.percussions = []

        if self.instrumentCount > 0:
            for offset in instrumentOffsets:
                buffer = setCtl[offset:offset + 32]
                instrument = None if offset == 0 else Instrument(self.bank, buffer, setCtl, self.offset, offset)
                self.instruments.append(instrument)

        if self.effectCount > 0:
            for i in range(self.effectCount):
                buffer = effectsTable[i * 8:(i * 8) + 8]
                offset = struct.unpack(">L", buffer[0:4])[0]
                effect = None if offset == 0 else SoundEffect(self.bank, buffer, setCtl, self.offset, offset)
                self.effects.append(effect)
        
        if self.percussionCount > 0:
            percussionsOffsets = struct.unpack(">" + str(self.percussionCount) + "L", percussionTable[:self.percussionCount * 4])
            for i in range(self.percussionCount):
                offset = percussionsOffsets[i]
                percussion = None if offset == 0 else Percussion(self.bank, setCtl[offset:offset + 16], setCtl, self.offset, offset)
                self.percussions.append(percussion)

class SoundEffect:
    def __init__(self, bank, record, tbl, baseOffset, offset):
        self.headerOffset, self.pitch = struct.unpack(">Lf", record)
        usedSetData.append((self, baseOffset + offset, baseOffset + offset + 8))
        self.sample = SampleHeader(bank, tbl[self.headerOffset:self.headerOffset + 16], tbl, baseOffset, self.headerOffset)

class Percussion:
    def __init__(self, bank, record, tbl, baseOffset, offset):
        self.unk, self.headerOffset, self.pitch, self.envelopeOffset = struct.unpack(">LLfL", record)
        usedSetData.append((self, baseOffset + offset, baseOffset + offset + 16))
        self.sample = SampleHeader(bank, tbl[self.headerOffset:self.headerOffset + 16], tbl, baseOffset, self.headerOffset)
        self.envelope = Envelope(tbl[self.envelopeOffset:self.envelopeOffset + 16])
        usedSetData.append((self.envelope, baseOffset + self.envelopeOffset, baseOffset + self.envelopeOffset + 16))

class Instrument:
    def __init__(self, bank, record, tbl, baseOffset, offset):
        self.keyLow, self.keyMedium, self.keyHigh, self.decay, self.envelopeOffset, self.keyLowOffset, self.keyLowPitch, self.keyMedOffset, self.keyMedPitch, self.keyHighOffset, self.keyHighPitch = struct.unpack(">BBBbLLfLfLf", record)
        usedSetData.append((self, baseOffset + offset, baseOffset + offset + 32))
        self.envelope = Envelope(tbl[self.envelopeOffset:self.envelopeOffset + 16])
        usedSetData.append((self.envelope, baseOffset + self.envelopeOffset, baseOffset + self.envelopeOffset + 16))
        self.keyLowSample = None if self.keyLowOffset == 0 else SampleHeader(bank, tbl[self.keyLowOffset:self.keyLowOffset + 16], tbl, baseOffset, self.keyLowOffset)
        self.keyMedSample = None if self.keyMedOffset == 0 else SampleHeader(bank, tbl[self.keyMedOffset:self.keyMedOffset + 16], tbl, baseOffset, self.keyMedOffset)
        self.keyHighSample = None if self.keyHighOffset == 0 else SampleHeader(bank, tbl[self.keyHighOffset:self.keyHighOffset + 16], tbl, baseOffset, self.keyHighOffset)

class Envelope:
    def __init__(self, record):
        self.attackRate, self.attackLevel, self.sustainRate, self.sustainLevel, self.decayRate, self.decayLevel, self.releaseRate, self.releaseLevel = struct.unpack(">hHhHhHhH", record)

class SampleHeader:
    def __init__(self, bank, record, tbl, baseOffset, offset):
        self.u1, self.u2, self.length, self.address, self.loopOffset, self.bookOffset = struct.unpack(">bbHLLL", record)
        usedSetData.append((self, baseOffset + offset, baseOffset + offset + 16))
        self.bank = bank
        assert self.length % 2 == 0
        if (self.length % 9 != 0):
            self.length -= self.length % 9
        
        self.loop = None
        if self.loopOffset != 0:
            self.loop = PCMLoop(tbl[self.loopOffset:self.loopOffset + 44])
            usedSetData.append((self.loop, baseOffset + self.loopOffset, baseOffset + self.loopOffset + 44))
        
        self.book = None
        if self.bookOffset != 0:
            self.book = PCMBook(tbl[self.bookOffset:self.bookOffset + 8], tbl[self.bookOffset + 8:], baseOffset, self.bookOffset)
        rawSamples.append(self)

class PCMLoop:
    def __init__(self, record):
        self.start, self.end, self.count = struct.unpack(">LLl", record[0:12])
        self.state = struct.unpack(">16h", record[12:])

class PCMBook:
    def __init__(self, record, remainder, baseOffset, offset):
        self.order, self.predictorCount = struct.unpack(">LL", record)
        self.predictors = []
        predictorSize = self.order * 8
        usedSetData.append((self, baseOffset + offset, baseOffset + offset + 8 + predictorSize))
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
    def __init__(self, data, raw_data):
        self.offset, self.length, self.unknown, self.type = struct.unpack(">LLBBxxxxxx", data)
        self.sequence = raw_data[self.offset:self.offset + self.length]
        self.inst_sets = []


def parse_seq_def_data(seqdef_data, setmap_data, seq_data):
    count = struct.unpack(">H", seqdef_data[:2])[0]
    entries = []
    for i in range(count):
        entry = SequenceEntry(seqdef_data[16 + (i * 16):16 + ((i + 1) * 16)], seq_data)
        instSetListOffset = struct.unpack(">H", setmap_data[i * 2:(i * 2) + 2])[0]
        instSetListSize = struct.unpack(">b", setmap_data[instSetListOffset:instSetListOffset + 1])[0]
        entry.inst_sets = list(struct.unpack(">" + str(instSetListSize) + "b", setmap_data[instSetListOffset + 1:instSetListOffset + 1 + instSetListSize]))
        entries.append(entry)
    return entries

def parse_raw_def_data(raw_def_data):
    count = struct.unpack(">H", raw_def_data[:2])[0]
    raw_indexes = []
    for i in range(count):
        buffer = raw_def_data[16 + (i * 16):20 + (i * 16)]
        index = struct.unpack(">L", buffer)[0]
        raw_indexes.append(index)
    return raw_indexes

def parse_setfile(setdef_data, set_data, raw_indexes):
    count = struct.unpack(">H", setdef_data[:2])[0]
    sets = []
    for i in range(count):
        buffer = setdef_data[16 + (i * 16):32 + (i * 16)]
        if i != 37:
            sets.append(InstrumentSet(buffer, set_data))
    return sets

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


def write_aifc(data, entry, out):
    writer = AifcWriter(out)
    num_channels = 1
    assert len(data) % 9 == 0
    if len(data) % 2 == 1:
        data += b"\0"
    # (Computing num_frames this way makes it off by one when the data length
    # is odd. It matches vadpcm_enc, though.)
    num_frames = len(data) * 16 // 9
    sample_size = 16  # bits per sample

    sample_rate = 32000
    #if len(set(entry.tunings)) == 1:
    #    sample_rate = 32000 * entry.tunings[0]
    #else:
        # Some drum sounds in sample bank B don't have unique sample rates, so
        # we have to guess. This doesn't matter for matching, it's just to make
        # the sounds easy to listen to.
    #    if min(entry.tunings) <= 0.5 <= max(entry.tunings):
    #        sample_rate = 16000
    #    elif min(entry.tunings) <= 1.0 <= max(entry.tunings):
    #        sample_rate = 32000
    #    elif min(entry.tunings) <= 1.5 <= max(entry.tunings):
    #        sample_rate = 48000
    #    elif min(entry.tunings) <= 2.5 <= max(entry.tunings):
    #        sample_rate = 80000
    #    else:
    #        sample_rate = 16000 * (min(entry.tunings) + max(entry.tunings))

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


def write_aiff(raw, offset, entry, filename):
    temp = tempfile.NamedTemporaryFile(suffix=".aifc", delete=False)
    #temp = open("tempfile.aifc", "wb")
    try:
        data = raw[offset:offset + entry.length]
        usedRawData.append((data, offset, offset + entry.length))
        write_aifc(data, entry, temp)
        temp.flush()
        temp.close()
        aifc_decode = os.path.join(os.path.dirname(__file__), "aifc_decode")
        common_dir = os.getcwd()
        rel_aifc_decode = "./" + os.path.relpath(aifc_decode, common_dir).replace("\\", "/")
        rel_temp_file = os.path.relpath(temp.name, common_dir).replace("\\", "/")
        rel_aiff_file = os.path.relpath(filename, common_dir).replace("\\", "/")
        subprocess.run(["bash", "-c", "{0} {1} {2}".format(rel_aifc_decode, rel_temp_file, rel_aiff_file)], check=True)
    except subprocess.CalledProcessError:
        os.makedirs(os.path.join("samples", "bad", str(entry.bank)), exist_ok=True)
        os.remove(rel_aiff_file)
        shutil.copy2(temp.name, "samples/bad/{0}/{1}.aifc".format(entry.bank, os.path.basename(filename)))
    finally:
        os.remove(temp.name)

def write_zmidi(sequence, filename):
    file = open(filename, "wb")
    file.write(sequence.sequence)
    file.flush()
    file.close()

def write_zmidi_header(sequence, header_name):
    file = open(header_name, "w")
    obj = {
        "unknown": sequence.unknown,
        "type": {
            0: "Dynamic",
            1: "Interrupt",
            2: "Background"
        }.get(sequence.type),
        "sets": sequence.inst_sets
    }
    file.write(json.dumps(obj, indent=2))
    file.flush()
    file.close()

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
    return {
        "attack": {
            "rate": envelope.attackRate,
            "level": envelope.attackLevel
        },
        "sustain": {
            "rate": envelope.sustainRate,
            "level": envelope.sustainLevel
        },
        "decay": {
            "rate": envelope.decayRate,
            "level": envelope.decayLevel
        },
        "release": {
            "rate": envelope.releaseRate,
            "level": envelope.releaseLevel
        }
    }

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
    return {
        "start": loop.start,
        "end": loop.end,
        "count": loop.count,
        "state": loop.state
    }

def write_instrument_set(_set, filename):
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

def report_gaps(report_type, data, length):
    sorted_data = sorted(data, key = lambda tup: (tup[1], tup[2]))
    gaps = []
    intersections = []
    lastTuple = (None, -1, -1)
    currentEnd = 0
    for tup in sorted_data:
        if tup[1] > currentEnd:
            gaps.append((currentEnd, tup[1]))
        elif tup[1] < currentEnd and (lastTuple[1] != tup[1] or lastTuple[2] != tup[2]):
            intersections.append((lastTuple, tup))
        lastTuple = tup
        currentEnd = tup[2] if report_type == "SET" else (16 * math.ceil(tup[2] / 16))
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

# Modified from https://stackoverflow.com/a/25935321/1359139, cc by-sa 3.0
class NoIndent(object):
    def __init__(self, value):
        self.value = value

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
            "<.setdef file> <.set file> <.seqdef file> <.setmap file> <.seq file> <.rawdef file> <.raw file> "
            "(<samples outdir> <midi outdir> <instrument set outdir> | "
            "--only-samples file:index ...)".format(sys.argv[0])
        )
        sys.exit(0 if need_help else 1)

    # Instrument Set Defs
    setdef_data = open(args[0], "rb").read()
    # Instrument Sets
    set_data = open(args[1], "rb").read()
    # Sequence Defs
    seqdef_data = open(args[2], "rb").read()
    # Sequence->Instrument Set Mapping
    setmap_data = open(args[3], "rb").read()
    # Sequences
    seq_data = open(args[4], "rb").read()
    # Sample Bank Defs
    rawdef_data = open(args[5], "rb").read()
    # Sample Banks
    raw_data = open(args[6], "rb").read()

    if not only_samples:
        samples_out_dir = args[7]
        midi_out_dir = args[8]
        sets_out_dir = args[9]

    bank_defs = parse_raw_def_data(rawdef_data)
    sets = parse_setfile(setdef_data, set_data, bank_defs)

    report_gaps("SET", usedSetData, len(set_data))

    bank_ctr = defaultdict(int)

    # Export AIFF samples
    for header in rawSamples:
        bank_ctr[header.bank] += 1
        dir = os.path.join(samples_out_dir, str(header.bank))
        os.makedirs(dir, exist_ok=True)
        filename = os.path.join(dir, "{0:0>8x}.aiff".format(header.address))
        # if not os.path.exists(filename) or os.path.getsize(filename) == 0:
        write_aiff(raw_data, bank_defs[header.bank] + header.address, header, filename)
    
    report_gaps("SAMPLE", usedRawData, len(raw_data))

    # Export sequences
    sequences = parse_seq_def_data(seqdef_data, setmap_data, seq_data)

    for sequence in sequences:
        dir = os.path.join(midi_out_dir)
        os.makedirs(dir, exist_ok=True)
        filename = os.path.join(dir, str(sequence.offset) + ".zmidi")
        def_filename = os.path.join(dir, str(sequence.offset) + ".json")
        if not os.path.exists(filename) or os.path.getsize(filename) == 0:
            write_zmidi(sequence, filename)
            write_zmidi_header(sequence, def_filename)

    # Export instrument sets
    setId = 0
    for _set in sets:
        dir = os.path.join(sets_out_dir)
        os.makedirs(dir, exist_ok=True)
        filename = os.path.join(dir, str(setId) + ".json")
        write_instrument_set(_set, filename)
        setId += 1

if __name__ == "__main__":
    main()
