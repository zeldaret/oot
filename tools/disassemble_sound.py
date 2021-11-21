#!/usr/bin/env python3
from collections import namedtuple, defaultdict
import subprocess
import tempfile
import math
import shutil
import uuid
import json
import xml.etree.ElementTree as XmlTree
import os
import re
import struct
import sys

rawSamples = {}
bankOffsets = {}
sampleNameLookup = {}
usedTuning = {}

# Used for data gap detection (finding potentially unreferenced data)
# Format: list of tuples (object, start offset, end offset)
usedFontData = []
usedRawData = []

class Soundfont:
    def __init__(self, entry, ctl, fontdef):
        if fontdef:
            self.name = fontdef.name

        self.definition = entry
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
            instIdx = 0
            for offset in instrumentOffsets:
                instdef = None
                if fontdef:
                    instdef = fontdef.instruments[instIdx]
                buffer = setCtl[offset:offset + 32]
                instrument = None if offset == 0 else Instrument(entry.bank, buffer, setCtl, entry.offset, offset, instdef)
                self.instruments.append(instrument)
                instIdx += 1

        if entry.effectCount > 0:
            #usedSetData.append((self, self.offset + effectsOffset, self.offset + effectsOffset + (self.effectCount * 8)))
            for i in range(entry.effectCount):
                effectdef = None
                if fontdef:
                    effectdef = fontdef.effects[i]
                buffer = effectsTable[i * 8:(i * 8) + 8]
                offset = struct.unpack(">L", buffer[0:4])[0]
                effect = None if offset == 0 else SoundEffect(entry.bank, buffer, setCtl, entry.offset, effectsOffset + (i * 8), effectdef)
                self.effects.append(effect)
        
        if entry.percussionCount > 0:
            usedFontData.append((self, entry.offset + percussionOffset, entry.offset + percussionOffset + (entry.percussionCount * 4)))
            percussionsOffsets = struct.unpack(">" + str(entry.percussionCount) + "L", percussionTable[:entry.percussionCount * 4])
            for i in range(entry.percussionCount):
                drumdef = None
                if fontdef:
                    drumdef = fontdef.drums[i]
                offset = percussionsOffsets[i]
                percussion = None if offset == 0 else Percussion(entry.bank, setCtl[offset:offset + 16], setCtl, entry.offset, offset, drumdef)
                self.percussions.append(percussion)

class SoundEffect:
    def __init__(self, bank, record, tbl, baseOffset, offset, effectdef):
        if effectdef:
            self.name = effectdef.name
            self.enum = effectdef.enum
        self.headerOffset, self.pitch = struct.unpack(">Lf", record)
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 8))
        self.sample = SampleHeader(bank, self.name, self.pitch, tbl[self.headerOffset:self.headerOffset + 16], tbl, baseOffset, self.headerOffset)

class Percussion:
    def __init__(self, bank, record, tbl, baseOffset, offset, drumdef):
        if drumdef:
            self.name = drumdef.name
            self.enum = drumdef.enum
        self.decay, self.pan, self.loaded, self.headerOffset, self.pitch, self.envelopeOffset = struct.unpack(">BBBxLfL", record)
        assert self.loaded == 0
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 16))
        self.sample = SampleHeader(bank, self.name, self.pitch, tbl[self.headerOffset:self.headerOffset + 16], tbl, baseOffset, self.headerOffset)
        self.envelope = Envelope(tbl, baseOffset, self.envelopeOffset)

class Instrument:
    def __init__(self, bank, record, tbl, baseOffset, offset, instdef):
        if instdef:
            self.name = instdef.name
            self.enum = instdef.enum
        self.loaded, self.lowRange, self.highRange, self.decay, self.envelopeOffset, self.keyLowOffset, self.keyLowPitch, self.keyMedOffset, self.keyMedPitch, self.keyHighOffset, self.keyHighPitch = struct.unpack(">BBBbLLfLfLf", record)
        assert self.loaded == 0
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 32))
        self.envelope = Envelope(tbl, baseOffset, self.envelopeOffset)
        self.keyLowSample = None if self.keyLowOffset == 0 else SampleHeader(bank, self.name, self.keyLowPitch, tbl[self.keyLowOffset:self.keyLowOffset + 16], tbl, baseOffset, self.keyLowOffset)
        self.keyMedSample = None if self.keyMedOffset == 0 else SampleHeader(bank, self.name, self.keyMedPitch, tbl[self.keyMedOffset:self.keyMedOffset + 16], tbl, baseOffset, self.keyMedOffset)
        self.keyHighSample = None if self.keyHighOffset == 0 else SampleHeader(bank, self.name, self.keyHighPitch, tbl[self.keyHighOffset:self.keyHighOffset + 16], tbl, baseOffset, self.keyHighOffset)

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
    def __init__(self, bank, name, tuning, record, tbl, baseOffset, offset):
        modes, self.u2, self.length, self.address, self.loopOffset, self.bookOffset = struct.unpack(">bbHLLL", record)
        self.offset = baseOffset + offset
        self.codec = (modes >> 4) & 0xF
        self.medium = (modes & 0xC) >> 2
        assert self.codec == 0 or self.codec == 3
        assert self.medium == 0 or self.medium == 2
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 16))
        self.bank = bank
        assert self.length % 2 == 0
        if self.length % 9 != 0:
            self.length -= self.length % 9
        
        self.loop = None
        if self.loopOffset != 0:
            self.loop = PCMLoop(tbl[self.loopOffset:self.loopOffset + 48], baseOffset, self.loopOffset)
        
        self.book = None
        if self.bookOffset != 0:
            self.book = PCMBook(tbl[self.bookOffset:self.bookOffset + 8], tbl[self.bookOffset + 8:], baseOffset, self.bookOffset)
        
        sampleOffset = bankOffsets[bank]
        
        if bank not in sampleNameLookup:
            sampleNameLookup[bank] = {}
        
        sampleNameLookup[bank][self.address] = name or f"{self.address:08x}"
        
        if sampleOffset in rawSamples:
            rawSamples[sampleOffset].add(tuning)
        else:
            rawSamples[sampleOffset] = { tuning }

class PCMLoop:
    def __init__(self, record, baseOffset, offset):
        self.start, self.end, self.count, unused = struct.unpack(">LLll", record[0:16])
        endOffset = offset + 16
        assert unused == 0
        if self.count != 0:
            self.predictorState = struct.unpack(">16h", record[16:])
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

class SampleTableEntry:
    def __init__(self, data):
        self.offset, self.length, self.medium, self.cache = struct.unpack(">LLBBxxxxxx", data)

class SoundfontEntry:
    def __init__(self, data):
        self.offset, self.length, self.medium, self.cache, self.bank, self.bank2, self.instrumentCount, self.percussionCount, self.effectCount = struct.unpack(">LLBBBBBBH", data)

def parse_raw_def_data(raw_def_data):
    count = struct.unpack(">H", raw_def_data[:2])[0]
    entries = []
    for i in range(count):
        buffer = raw_def_data[16 + (i * 16):32 + (i * 16)]
        entry = SampleTableEntry(buffer)
        bankOffsets[i] = entry.offset
        entries.append(entry)
    for index in range(len(entries)):
        entry = entries[index]
        if entry.length == 0:
            entries[index] = entries[entry.offset]
    return entries

def parse_soundfonts(fontdef_data, font_data, fontdefs):
    count = struct.unpack(">H", fontdef_data[:2])[0]
    fonts = []
    for i in range(count):
        fontdef = fontdefs[i]
        buffer = fontdef_data[16 + (i * 16):32 + (i * 16)]
        entry = SoundfontEntry(buffer)
        font = Soundfont(entry, font_data, fontdef)
        entry.font = font
        fonts.append(entry)
    return fonts

class SoundfontDefinition:
    def __init__(self, name, index) -> None:
        self.name = name or ""
        self.index = index or -1
        self.instruments = []
        self.drums = []
        self.effects = []

class ElementDefinition:
    def __init__(self, name, enum) -> None:
        self.name = name
        self.enum = enum

def read_soundfont_xmls(xml_dir):
    results = {}

    for file in os.listdir(xml_dir):
        if file.endswith(".xml"):
            xml = XmlTree.parse(file)
            soundfontElement = xml.find("./Soundfont")
            soundfont = SoundfontDefinition(soundfontElement.get("Name"), soundfontElement.get("Index"))
            instrumentsElement = soundfontElement.find("Instruments")
            instrumentElements = (instrumentsElement and instrumentsElement.findall("Instrument")) or []
            drumsElement = soundfontElement.find("Drums")
            drumElements = (drumsElement and drumsElement.findall("Drum")) or []
            effectsElement = soundfontElement.find("Effects")
            effectsElements = (effectsElement and effectsElement.findall("Effect")) or []

            for instrumentElement in instrumentElements:
                instrument = ElementDefinition(instrumentElement.get("Name"), instrumentElement.get("Enum"))
                soundfont.instruments.append(instrument)
            
            for drumElement in drumElements:
                drum = ElementDefinition(drumElement.get("Name"), drumElement.get("Enum"))
                soundfont.drums.append(drum)
            
            for effectElement in effectsElements:
                effect = ElementDefinition(effectElement.get("Name"), effectElement.get("Enum"))
                soundfont.effects.append(effect)

            results[soundfont.index] = soundfont

    return results

def read_samplebank_xml(xmlfile):
    root = XmlTree.parse(xmlfile)
    idx = 0
    results = {}
    for bank in root.findall("Bank"):
        results[idx] = bank.get("Name")
        idx += 1
    return results

def toNote(note):
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

def toMedium(medium):
    return {
        0: "RAM",
        2: "Cartridge",
        3: "Disk Drive"
    }.get(medium)

def toCachePolicy(policy):
    return {
        0: "Permanent",
        1: "Persistent",
        2: "Temporary",
        3: "Any"
    }.get(policy)

def generate_drum_obj(root, drum, envelopes):
    drumElement = XmlTree.SubElement(root, "Drum")

    if drum is None:
        return drumElement

    # self.decay, self.pan, self.loaded, self.headerOffset, self.pitch, self.envelopeOffset = struct.unpack(">BBBxLfL", record)
    drumElement.set("Name", drum.name or f"Drum_{drum.offset:08x}")
    drumElement.set("Enum", drum.enum or "")
    drumElement.set("Decay", drum.decay)
    drumElement.set("Pan", drum.pan)
    drumElement.set("Sample", sampleNameLookup[drum.sample.bank][drum.sample.address])
    drumElement.set("Envelope", f"Env_{drum.envelopeOffset:08x}")
    envelopes[f"Env_{drum.envelopeOffset:08x}"] = drum.envelope
    if drum.pitch != usedTuning[drum.sample.bank][drum.sample.address]:
        drumElement.set("Pitch", drum.pitch)

    return drumElement

def generate_effect_obj(root, effect):
    element = XmlTree.SubElement(root, "SoundEffect")

    if effect is None:
        return element
    
    element.set("Name", effect.name or f"Effect_{effect.offset:08x}")
    element.set("Enum", effect.enum or "")
    element.set("Sample", sampleNameLookup[effect.sample.bank][effect.sample.address])

    if effect.pitch != usedTuning[effect.sample.bank][effect.sample.address]:
        element.set("Pitch", effect.pitch)

    return element

def generate_instrument_obj(root, instrument, envelopes):
    if instrument is None:
        return XmlTree.SubElement(root, "Instrument")
    
    element = XmlTree.SubElement(
        root,
        "Instrument",
        {
            "Name": instrument.name or f"Inst_{instrument.offset:08x}",
            "Enum": instrument.enum or "",
            "Decay": instrument.decay,
            "Envelope": f"Env_{instrument.envelopeOffset:08x}"
        }
    )

    lowKeyElement = XmlTree.SubElement(element, "LowKey")
    medKeyElement = XmlTree.SubElement(element, "MediumKey")
    hiKeyElement = XmlTree.SubElement(element, "HighKey")
    if instrument.keyLowSample is not None:
        keyLow = instrument.keyLowSample
        lowKeyElement.set("Sample", sampleNameLookup[keyLow.bank][keyLow.address])
        lowKeyElement.set("MaxNote", instrument.lowRange)
        if instrument.keyLowPitch != usedTuning[keyLow.bank][keyLow.address]:
            lowKeyElement.set("Pitch", instrument.keyLowPitch)
    if instrument.keyMedSample is not None:
        keyMed = instrument.keyMedSample
        medKeyElement.set("Sample", sampleNameLookup[keyMed.bank][keyMed.address])
        if instrument.keyMedPitch != usedTuning[keyMed.bank][keyMed.address]:
            medKeyElement.set("Pitch", instrument.keyMedPitch)
    if instrument.keyHighSample is not None:
        keyHigh = instrument.keyHighSample
        hiKeyElement.set("Sample", sampleNameLookup[keyHigh.bank][keyHigh.address])
        hiKeyElement.set("MinNote", instrument.highRange)
        if instrument.keyHighPitch != usedTuning[keyHigh.bank][keyHigh.address]:
            hiKeyElement.set("Pitch", instrument.keyHighPitch)

    envelopes[f"Env_{instrument.envelopeOffset:08x}"] = instrument.envelope

    return element

def generate_envelope_obj(root, name, envelope):
    envelopeRoot = XmlTree.SubElement(root, "Envelope", { "Name": name })
    if envelope.name:
        envelopeRoot.set("Name", envelope.name)
    script = XmlTree.SubElement(envelopeRoot, "Script")
    [XmlTree.SubElement(
        script,
        "Point",
        {
            "Delay": x[0],
            "Command": x[1]
        }
    ) for x in envelope.script]
    return envelopeRoot

def write_soundfont(font, filename, banknames):
    envelopesFound = {}

    root = XmlTree.Element(
        tag="Soundfont",
        attrib={
            "medium": toMedium(font.definition.medium),
            "cachePolicy": toCachePolicy(font.definition.cache)
        }
    )

    banks = XmlTree.SubElement(root, "SampleBanks")
    XmlTree.SubElement(banks, "Bank", { "Name": banknames[font.definition.bank] })

    if font.definition.bank2 >= 0:
        XmlTree.SubElement(banks, "Bank", { "Name": banknames[font.definition.bank2] })

    instruments = XmlTree.SubElement(root, "Instruments")
    drums = XmlTree.SubElement(root, "Drums")
    effects = XmlTree.SubElement(root, "SoundEffects")
    envelopes = XmlTree.SubElement(root, "Envelopes")
    [generate_instrument_obj(instruments, inst, envelopesFound) for inst in font.instruments]
    [generate_drum_obj(drums, drum, envelopesFound) for drum in font.percussions]
    [generate_effect_obj(effects, effect, envelopesFound) for effect in font.effects]
    for foundEnvelope in envelopesFound:
        for referencedEnvelope in foundEnvelope.referencedScripts:
            envelopesFound[f"Env_{referencedEnvelope.offset:08x}"] = referencedEnvelope
    [generate_envelope_obj(envelopes, name, envelope) for name, envelope in envelopesFound.items()]
    file = open(filename, "w")
    file.write(XmlTree.tostring(root, encoding="unicode"))
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

def align(val, al):
    return (val + (al - 1)) & -al

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

def write_aifc(raw, bank_defs, entry, tunings, filename):
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

        assert tunings is not None
        assert len(tunings) > 0

        if entry.bank in usedTuning:
            usedTuning[entry.bank] = {}
        
        usedTuning[entry.bank][entry.address] = tunings[0]

        sample_rate = 32000 * tunings[0]

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

def main():
    args = []
    need_help = False
    for a in sys.argv[1:]:
        if a == "--help" or a == "-h":
            need_help = True
        elif a.startswith("-"):
            print("Unrecognized option " + a)
            sys.exit(1)
        else:
            args.append(a)

    expected_num_args = 7
    if need_help or len(args) != expected_num_args:
        print(
            f"Usage: {sys.argv[0]} "
            "<.fontdef file> <.font file> <.rawdef file> <.raw file> <assets XML dir> "
            "(<samples outdir> <soundfont outdir> | "
            "--only-samples file:index ...)"
        )
        sys.exit(0 if need_help else 1)

    # Soundfont Defs
    fontdef_data = open(args[0], "rb").read()
    # Soundfonts
    font_data = open(args[1], "rb").read()
    # Sample Bank Defs
    rawdef_data = open(args[2], "rb").read()
    # Sample Banks
    raw_data = open(args[3], "rb").read()

    asset_xml_dir = args[4]
    samples_out_dir = args[5]
    fonts_out_dir = args[6]

    def check_dir(path):
        if not os.path.isdir(path):
            print(f"{path} must be a directory!", file=sys.stderr)
            sys.exit(1)

    check_dir(os.path.join(asset_xml_dir, "samples"))
    check_dir(os.path.join(asset_xml_dir, "soundfonts"))
    
    soundfont_defs = read_soundfont_xmls(asset_xml_dir)
    samplebanks = read_samplebank_xml(os.path.join(asset_xml_dir, "samples", "Banks.xml"))

    bank_defs = parse_raw_def_data(rawdef_data)
    fonts = parse_soundfonts(fontdef_data, font_data, soundfont_defs)

    report_gaps("SOUNDFONT", usedFontData, font_data)

    bank_ctr = defaultdict(int)

    # Export AIFF samples
    for header in rawSamples:
        bank_ctr[header.bank] += 1
        filename_base = os.path.join(samples_out_dir, samplebanks[header.bank])
        os.makedirs(filename_base, exist_ok=True)
        aifc_filename = os.path.join(filename_base, f"{header.address:0>8x}.aifc")
        if not os.path.exists(aifc_filename) or os.path.getsize(aifc_filename) == 0:
            write_aifc(raw_data, bank_defs, header, aifc_filename)
            write_aiff(header, samples_out_dir, aifc_filename, f"{header.address:0>8x}.aiff")
    
    if len(usedRawData) > 0:
        report_gaps("SAMPLE", usedRawData, raw_data)

    # Export soundfonts (todo: switch to XML export)
    fontId = 0
    for font in fonts:
        dir = os.path.join(fonts_out_dir)
        os.makedirs(dir, exist_ok=True)
        filename = os.path.join(dir, f"{font.name or fontId}.xml")
        write_soundfont(font, filename, samplebanks)
        fontId += 1

if __name__ == "__main__":
    main()
