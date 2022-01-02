#!/usr/bin/env python3
from collections import namedtuple, defaultdict
from xml.dom import minidom
import subprocess
import math
import shutil
import xml.etree.ElementTree as XmlTree
import json
import os
import struct
import sys

rawSamples = {}
bankOffsets = {}
sampleNameLookup = {}
tunings = {}
usedTuning = {}
bank_ctr = defaultdict(int)

# Fixes up unused data in soundfont into something recognizable
sf_unused_fixups = {
    "MQDebug": {
        0: {
            0x2a50: ("Envelope", 16),
            0x2a80: ("Envelope", 12),
            0x2a90: ("Envelope", 16)
        }
    }
}

# Used for data gap detection (finding potentially unreferenced data)
# Format: list of tuples (object, start offset, end offset)
usedFontData = []
usedRawData = []

class Soundfont:
    def __init__(self, entry, ctl, fontdef):
        if fontdef:
            self.name = fontdef.name
        else:
            self.name = f"Font_{entry.offset:0>8x}"

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
        self.unused = []

        if entry.instrumentCount > 0:
            instIdx = 0
            for offset in instrumentOffsets:
                instdef = None
                if fontdef:
                    instdef = fontdef.instruments[instIdx] if instIdx < len(fontdef.instruments) else None
                buffer = setCtl[offset:offset + 32]
                instrument = None if offset == 0 else Instrument(entry.bank, buffer, setCtl, entry.offset, offset, instdef, instIdx, self.name)
                self.instruments.append(instrument)
                instIdx += 1

        if entry.effectCount > 0:
            #usedSetData.append((self, self.offset + effectsOffset, self.offset + effectsOffset + (self.effectCount * 8)))
            for i in range(entry.effectCount):
                effectdef = None
                if fontdef:
                    effectdef = fontdef.effects[i] if i < len(fontdef.effects) else None
                buffer = effectsTable[i * 8:(i * 8) + 8]
                offset = struct.unpack(">L", buffer[0:4])[0]
                effect = None if offset == 0 else SoundEffect(entry.bank, buffer, setCtl, entry.offset, effectsOffset + (i * 8), effectdef, i)
                self.effects.append(effect)
        
        if entry.percussionCount > 0:
            usedFontData.append((self, entry.offset + percussionOffset, entry.offset + percussionOffset + (entry.percussionCount * 4)))
            percussionsOffsets = struct.unpack(">" + str(entry.percussionCount) + "L", percussionTable[:entry.percussionCount * 4])
            for i in range(entry.percussionCount):
                drumdef = None
                if fontdef:
                    drumdef = fontdef.drums[i] if i < len(fontdef.drums) else None
                offset = percussionsOffsets[i]
                percussion = None if offset == 0 else Percussion(entry.bank, setCtl[offset:offset + 16], setCtl, entry.offset, offset, drumdef, i)
                self.percussions.append(percussion)

        self.instruments = sorted(self.instruments, key=lambda i: 100 if i is None else i.offset)
        self.percussions = sorted(self.percussions, key=lambda d: 100 if d is None else d.offset)
        self.effects = sorted(self.effects, key=lambda x: 100 if x is None else x.offset)

class SoundEffect:
    def __init__(self, bank, record, tbl, baseOffset, offset, effectdef, index):
        self.index = index
        self.offset = offset
        if effectdef:
            self.name = effectdef.name or f"Effect_{offset:0>8x}"
            self.enum = effectdef.enum
        else:
            self.name = f"Effect_{offset:0>8x}"
            self.enum = ""
        self.headerOffset, self.pitch = struct.unpack(">Lf", record)
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 8))
        self.sample = SampleHeader(bank, self.name, self.pitch, tbl[self.headerOffset:self.headerOffset + 16], tbl, baseOffset, self.headerOffset)

class Percussion:
    def __init__(self, bank, record, tbl, baseOffset, offset, drumdef, index):
        self.index = index
        self.offset = offset
        if drumdef:
            self.name = drumdef.name or f"Drum_{offset:0>8x}"
            self.enum = drumdef.enum
        else:
            self.name = f"Drum_{offset:0>8x}"
            self.enum = ""
        self.decay, self.pan, self.loaded, self.headerOffset, self.pitch, self.envelopeOffset = struct.unpack(">BBBxLfL", record)
        assert self.loaded == 0
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 16))
        self.sample = SampleHeader(bank, self.name, self.pitch, tbl[self.headerOffset:self.headerOffset + 16], tbl, baseOffset, self.headerOffset)
        self.envelope = Envelope(tbl, baseOffset, self.envelopeOffset)

class Instrument:
    def __init__(self, bank, record, tbl, baseOffset, offset, instdef, index, fontname):
        self.index = index
        self.offset = offset
        if instdef:
            self.name = instdef.name or f"Inst_{index}_{offset:0>8x}_{fontname}"
            self.enum = instdef.enum
        else:
            self.name = f"Inst_{index}_{offset:0>8x}_{fontname}"
            self.enum = ""
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
        self.name = f"Env_{offset:0>8x}"
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
                if isinstance(cmd, str) and cmd != "ADSR_DISABLE":
                    break
    
            advanceOffset += 4

        if len(self.script) == 0:
            raise Exception("Not a valid envelope script")

        usedFontData.append((self, baseOffset + offset, baseOffset + offset + advanceOffset + 4))

class SampleHeader:
    def __init__(self, bank, name, tuning, record, tbl, baseOffset, offset):
        index = bank_ctr[bank]
        bank_ctr[bank] += 1
        modes, self.u2, self.length, self.address, self.loopOffset, self.bookOffset = struct.unpack(">bbHLLL", record)
        if bank in sampleNameLookup and self.address in sampleNameLookup[bank]:
            self.name = sampleNameLookup[bank][self.address]
        else:
            self.name = f"{self.address:0>8x} {index} {name}" or f"{self.address:0>8x} {index}"
        self.offset = baseOffset + offset
        self.codec = (modes >> 4) & 0xF
        self.medium = (modes & 0xC) >> 2
        assert self.codec == 0 or self.codec == 3
        assert self.medium == 0 or self.medium == 2
        usedFontData.append((self, baseOffset + offset, baseOffset + offset + 16))
        self.bank = bank
        assert self.length % 2 == 0
        
        self.loop = None
        if self.loopOffset != 0:
            self.loop = PCMLoop(tbl[self.loopOffset:self.loopOffset + 48], baseOffset, self.loopOffset)
        
        self.book = None
        if self.bookOffset != 0:
            self.book = PCMBook(tbl[self.bookOffset:self.bookOffset + 8], tbl[self.bookOffset + 8:], baseOffset, self.bookOffset)
        
        if bank not in sampleNameLookup:
            sampleNameLookup[bank] = {}
        
        if self.address not in sampleNameLookup[bank]:
            sampleNameLookup[bank][self.address] = name or f"{self.address:0>8x}"

        if self.bank not in rawSamples:
            rawSamples[self.bank] = { self.address: self }
        elif self.address not in rawSamples[self.bank]:
            rawSamples[self.bank][self.address] = self
        
        if self.bank not in tunings:
            tunings[self.bank] = { self.address: { tuning }}
        elif self.address not in tunings[self.bank]:
            tunings[self.bank][self.address] = { tuning }
        else:
            tunings[self.bank][self.address].add(tuning)

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

class UnusedData:
    def __init__(self, offset, data):
        self.offset = offset
        self.data = data

class SampleTableEntry:
    def __init__(self, data, name):
        self.offset, self.length, self.medium, self.cache = struct.unpack(">LLBBxxxxxx", data)
        self.name = name

class SoundfontEntry:
    def __init__(self, data):
        self.offset, self.length, self.medium, self.cache, self.bank, self.bank2, self.instrumentCount, self.percussionCount, self.effectCount = struct.unpack(">LLBBBBBBH", data)

def parse_raw_def_data(raw_def_data, samplebanks):
    count = struct.unpack(">H", raw_def_data[:2])[0]
    entries = []
    for i in range(count):
        buffer = raw_def_data[16 + (i * 16):32 + (i * 16)]
        entry = SampleTableEntry(buffer, samplebanks[i] or f"{i}")
        entry.index = i
        bankOffsets[i] = entry.offset
        entries.append(entry)
    for index in range(len(entries)):
        entry = entries[index]
        if entry.length == 0:
            rawSamples[entry.offset] = {}
            rawSamples[index] = rawSamples[entry.offset]
            tunings[entry.offset] = {}
            tunings[index] = tunings[entry.offset]
            usedTuning[entry.offset] = {}
            usedTuning[index] = usedTuning[entry.offset]
            samplebanks[index] = samplebanks[entry.offset]
    return entries

def parse_soundfonts(fontdef_data, font_data, fontdefs):
    count = struct.unpack(">H", fontdef_data[:2])[0]
    fonts = []
    for i in range(count):
        fontdef = fontdefs[i]
        buffer = fontdef_data[16 + (i * 16):32 + (i * 16)]
        entry = SoundfontEntry(buffer)
        font = Soundfont(entry, font_data, fontdef)
        font.index = i
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
    results = defaultdict(lambda: None)

    for file in os.listdir(xml_dir):
        if file.endswith(".xml"):
            xml = XmlTree.parse(os.path.join(xml_dir, file))
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

            results[int(soundfont.index)] = soundfont

    return results

def read_samplebank_xml(xml_dir, version):
    results = defaultdict(lambda: None)

    for xmlfile in os.listdir(xml_dir):
        if xmlfile.endswith(".xml"):
            bankname = os.path.splitext(xmlfile)[0]
            index = int(bankname.split(" - ")[0])
            results[index] = bankname
            root = XmlTree.parse(os.path.join(xml_dir, xmlfile))
            for sample in root.findall("Sample"):
                offsetElement = sample.find(f"./Offset[@Version='{version}']")
                if offsetElement == None:
                    continue
                offset = int(offsetElement.get("At"), 0)
                if index not in sampleNameLookup:
                    sampleNameLookup[index] = defaultdict(lambda: None)
                if offset not in sampleNameLookup[index]:
                    sampleNameLookup[index][offset] = sample.get("Name")
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
        3: "Any",
        4: "AnyNoSyncLoad"
    }.get(policy)

def toCodecID(codec):
    return {
        0: b"ADP9",
        1: b"HPCM",
        2: b"NONE",
        3: b"ADP5",
        4: b"RVRB",
        5: b"NONE"
    }.get(codec)

def toCodecName(codec):
    return {
        0: b"Nintendo ADPCM 9-byte frame format",
        1: b"Half-frame PCM",
        2: b"not compressed",
        3: b"Nintendo ADPCM 5-byte frame format",
        4: b"Nintendo Reverb format",
        5: b"not compressed"
    }.get(codec)

def generate_drum_obj(root, drum, envelopes):
    drumElement = XmlTree.SubElement(root, "Drum")

    if drum is None:
        return drumElement

    drumElement.set("Name", drum.name or f"Drum_{drum.offset:0>8x}")
    drumElement.set("Index", str(drum.index))
    drumElement.set("Enum", drum.enum or "")
    drumElement.set("Decay", str(drum.decay))
    drumElement.set("Pan", str(drum.pan))
    drumElement.set("Sample", f"{sampleNameLookup[drum.sample.bank][drum.sample.address]}.aifc")
    drumElement.set("Envelope", drum.envelope.name)
    envelopes[drum.envelope.name] = drum.envelope
    if drum.pitch != usedTuning[drum.sample.bank][drum.sample.address]:
        drumElement.set("Pitch", str(drum.pitch))

    return drumElement

def generate_effect_obj(root, effect):
    element = XmlTree.SubElement(root, "SoundEffect")

    if effect is None:
        return element
    
    element.set("Name", effect.name or f"Effect_{effect.offset:0>8x}")
    element.set("Index", str(effect.index))
    element.set("Enum", effect.enum or "")
    element.set("Sample", f"{sampleNameLookup[effect.sample.bank][effect.sample.address]}.aifc")

    if effect.pitch != usedTuning[effect.sample.bank][effect.sample.address]:
        element.set("Pitch", str(effect.pitch))

    return element

def generate_instrument_obj(root, instrument, envelopes):
    if instrument is None:
        return XmlTree.SubElement(root, "Instrument")
    
    element = XmlTree.SubElement(
        root,
        "Instrument",
        {
            "Name": instrument.name or f"Inst_{instrument.offset:0>8x}",
            "Index": str(instrument.index),
            "Enum": instrument.enum or "",
            "Decay": str(instrument.decay),
            "Envelope": instrument.envelope.name
        }
    )

    lowKeyElement = XmlTree.SubElement(element, "LowKey")
    medKeyElement = XmlTree.SubElement(element, "MediumKey")
    hiKeyElement = XmlTree.SubElement(element, "HighKey")
    if instrument.keyLowSample is not None:
        keyLow = instrument.keyLowSample
        lowKeyElement.set("Sample", f"{sampleNameLookup[keyLow.bank][keyLow.address]}.aifc")
        lowKeyElement.set("MaxNote", toNote(instrument.lowRange))
        if instrument.keyLowPitch != usedTuning[keyLow.bank][keyLow.address]:
            lowKeyElement.set("Pitch", str(instrument.keyLowPitch))
    if instrument.keyMedSample is not None:
        keyMed = instrument.keyMedSample
        medKeyElement.set("Sample", f"{sampleNameLookup[keyMed.bank][keyMed.address]}.aifc")
        if instrument.keyMedPitch != usedTuning[keyMed.bank][keyMed.address]:
            medKeyElement.set("Pitch", str(instrument.keyMedPitch))
    if instrument.keyHighSample is not None:
        keyHigh = instrument.keyHighSample
        hiKeyElement.set("Sample", f"{sampleNameLookup[keyHigh.bank][keyHigh.address]}.aifc")
        hiKeyElement.set("MinNote", toNote(instrument.highRange))
        if instrument.keyHighPitch != usedTuning[keyHigh.bank][keyHigh.address]:
            hiKeyElement.set("Pitch", str(instrument.keyHighPitch))

    envelopes[instrument.envelope.name] = instrument.envelope

    return element

def generate_envelope_obj(root, name, envelope):
    envelopeRoot = XmlTree.SubElement(root, "Envelope", { "Name": name })
    if envelope.name:
        envelopeRoot.set("Name", envelope.name)
    script = XmlTree.SubElement(envelopeRoot, "Script")
    [XmlTree.SubElement(script, "Point", { "Delay": str(x[0]), "Command": str(x[1]) }) for x in envelope.script]
    return envelopeRoot

def write_soundfont(font, filename, banknames):
    envelopesFound = {}

    root = XmlTree.Element("Soundfont", {
        "Medium": toMedium(font.medium),
        "CachePolicy": toCachePolicy(font.cache)
    })

    banks = XmlTree.SubElement(root, "SampleBanks")
    XmlTree.SubElement(banks, "Bank", { "Name": banknames[font.bank] })

    if font.bank2 < 128:
        XmlTree.SubElement(banks, "Bank", { "Name": banknames[font.bank2] })

    instruments = XmlTree.SubElement(root, "Instruments")
    drums = XmlTree.SubElement(root, "Drums")
    effects = XmlTree.SubElement(root, "SoundEffects")
    envelopes = XmlTree.SubElement(root, "Envelopes")
    unused = None

    [generate_instrument_obj(instruments, inst, envelopesFound) for inst in font.font.instruments]
    [generate_drum_obj(drums, drum, envelopesFound) for drum in font.font.percussions]
    [generate_effect_obj(effects, effect) for effect in font.font.effects]
    for item in font.font.unused:
        if isinstance(item, Envelope):
            envelopesFound[item.name] = item
        elif isinstance(item, UnusedData):
            if unused == None:
                unused = XmlTree.SubElement(root, "Unused")
            unusedItem = XmlTree.SubElement(unused, "Data", { "Offset": str(item.offset) })
            bytes_to_str = ','.join([f"0x{x:0>x}" for x in item.data])
            unusedItem.text = bytes_to_str
    for name in envelopesFound:
        for referencedEnvelope in envelopesFound[name].referencedScripts:
            envelopesFound[referencedEnvelope.name] = referencedEnvelope
    envelopesFound = dict(sorted(envelopesFound.items()))
    [generate_envelope_obj(envelopes, name, envelope) for name, envelope in envelopesFound.items()]
    xmlstring = minidom.parseString(XmlTree.tostring(root, "unicode")).toprettyxml(indent="\t")
    file = open(filename, "w")
    file.write(xmlstring)
    file.flush()
    file.close()

def report_gaps(report_type, data, bin):
    length = len(bin)
    sorted_data = sorted(data, key = lambda tup: (tup[1], tup[2]))
    gaps = set()
    intersections = []
    lastTuple = (None, -1, -1)
    currentEnd = 0
    for tup in sorted_data:
        if tup[1] > currentEnd:
            # Don't report a gap of all 0 bytes, since those are generally just alignment padding
            if any(v != 0 for v in struct.unpack(f">{tup[1] - currentEnd}b", bin[currentEnd:tup[1]])):
                gaps.add((currentEnd, tup[1]))
        elif tup[1] < currentEnd and (lastTuple[1] != tup[1] or lastTuple[2] != tup[2]):
            intersections.append((lastTuple, tup))
        lastTuple = tup
        if report_type == "SOUNDFONT":
            currentEnd = tup[2]
        else:
            alignEnd = (16 * math.ceil(tup[2] / 16))
            if any(v != 0 for v in struct.unpack(f">{alignEnd - tup[2]}b", bin[tup[2]:alignEnd])):
                gaps.add((tup[2], alignEnd))
            currentEnd = alignEnd
    if currentEnd < length:
        gaps.add((sorted_data[-1][2], length))
    if len(gaps) > 0:
        print(f"GAPS DETECTED IN {report_type} DATA:")
        for gap in gaps:
            print(f"Unreferenced data at {gap[0]:08X}-{gap[1]:08X} ({gap[1] - gap[0]} bytes)")
    if len(intersections) > 0:
        print(f"INTERSECTIONS DETECTED IN {report_type} DATA:")
        for cross in intersections:
            print(f"{type(cross[0][0]).__name__} at {cross[0][1]:08X}-{cross[0][2]:08X} overlaps {type(cross[1][0]).__name__} at {cross[1][1]:08X}-{cross[1][2]:08X}")

def get_data_gaps(report_type, data, bin):
    results = {}
    length = len(bin)
    sorted_data = sorted(data, key = lambda tup: (tup[1], tup[2]))
    intersections = []
    lastTuple = (None, -1, -1)
    currentEnd = 0
    for tup in sorted_data:
        if tup[1] > currentEnd:
            bytes = struct.unpack(f">{tup[1] - currentEnd}b", bin[currentEnd:tup[1]])
            if any(b != 0 for b in bytes):
                results[currentEnd] = bin[currentEnd:tup[1]]
        elif tup[1] < currentEnd and (lastTuple[1] != tup[1] or lastTuple[2] != tup[2]):
            intersections.append((lastTuple, tup))
        lastTuple = tup
        if report_type == "SOUNDFONT":
            currentEnd = tup[2]
        else:
            alignEnd = (16 * math.ceil(tup[2] / 16))
            if any(v != 0 for v in struct.unpack(f">{alignEnd - tup[2]}b", bin[tup[2]:alignEnd])):
                results[tup[2]] = bin[tup[2]:alignEnd]
            currentEnd = alignEnd
    if currentEnd < length:
        bytes = struct.unpack(f">{length - currentEnd}b", bin[currentEnd:length])
        if any(b != 0 for b in bytes):
            results[currentEnd] = bytes
    if len(intersections) > 0:
        print(f"INTERSECTIONS DETECTED IN {report_type} DATA:")
        for cross in intersections:
            print(f"{type(cross[0][0]).__name__} at {cross[0][1]:08X}-{cross[0][2]:08X} overlaps {type(cross[1][0]).__name__} at {cross[1][1]:08X}-{cross[1][2]:08X}")
    return results


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

def write_aifc(version, raw, bank_defs, entry, filename):
    offset = bank_defs[entry.bank].offset + entry.address
    length = entry.length
    data = raw[offset:offset + length]
    usedRawData.append((entry, offset, offset + length))
    frame_size = {
        0: 9,
        1: 16,
        2: 32,
        3: 5,
        4: 0,
        5: 32
    }.get(entry.codec)
    sample_size = 16  # bits per sample

    sample_tunings = tunings[entry.bank][entry.address].copy()

    assert sample_tunings is not None
    assert len(sample_tunings) > 0

    if entry.bank not in usedTuning:
        usedTuning[entry.bank] = {}
    
    tuning = sample_tunings.pop()
    usedTuning[entry.bank][entry.address] = tuning

    sample_rate = 32000 * tuning

    if not os.path.exists(filename) or os.path.getsize(filename) == 0:
        with open(filename, "wb") as file:
            writer = AifcWriter(file)
            num_channels = 1
            if len(data) % 2 == 1:
                data += b"\0"
            # (Computing num_frames this way makes it off by one when the data length
            # is odd. It matches vadpcm_enc, though.)
            num_frames = len(data) * sample_size // frame_size

            writer.add_section(
                b"COMM",
                struct.pack(">hIh", num_channels, num_frames, sample_size)
                + serialize_f80(sample_rate)
                + toCodecID(entry.codec)
                + writer.pstring(toCodecName(entry.codec)),
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
                        *entry.loop.predictorState
                    ),
                )
            writer.finish()

def write_aiff(entry, basedir, aifc_filename, aiff_filename):
    rel_aiff_file = os.path.join(os.path.dirname(aifc_filename).replace("\\", "/"), aiff_filename)
    if not os.path.exists(rel_aiff_file) or os.path.getsize(rel_aiff_file) == 0 or os.path.exists(os.path.join(basedir, "bad", str(entry.bank), os.path.basename(aifc_filename))):
        try:
            frame_size = "" if entry.codec == 0 else "5"
            aifc_decode = os.path.join(os.path.dirname(__file__), "aifc_decode")
            common_dir = os.getcwd()
            rel_aifc_decode = "./" + os.path.relpath(aifc_decode, common_dir).replace("\\", "/")
            os.makedirs(os.path.dirname(rel_aiff_file), exist_ok=True)
            subprocess.run(["bash", "-c", f"{rel_aifc_decode} \"{aifc_filename}\" \"{rel_aiff_file}\" {frame_size}"], check=True)
        except subprocess.CalledProcessError:
            print(f"File failed to decode {rel_aifc_decode}, codec was {entry.codec}")
            targetfile = os.path.join(basedir, "bad", str(entry.bank), os.path.basename(aifc_filename))
            os.makedirs(os.path.dirname(targetfile), exist_ok=True)
            os.remove(rel_aiff_file)
            shutil.copy2(aifc_filename, targetfile)

def write_soundfont_header(font, filename):
    with open(filename, "w") as file:
        file.write("/*\n")
        file.write("   Soundfont file constants\n")
        file.write(f"   ID: {font.index}\n")
        file.write(f"   Name: {font.name}\n")
        file.write("*/\n\n/**** INSTRUMENTS ****/\n")

        for instrument in font.instruments:
            if instrument is None:
                continue

            file.write(f"#define F{font.index}_I_{instrument.enum} {instrument.index}\n")
        
        file.write("\n/**** DRUMS ****/\n")
        for drum in font.percussions:
            if drum is None:
                continue

            file.write(f"#define F{font.index}_D_{drum.enum} {drum.index}\n")
        
        file.write("\n/**** EFFECTS ****/\n")
        for effect in font.effects:
            if effect is None:
                continue

            file.write(f"#define F{font.index}_E_{effect.enum} {effect.index}\n")

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
            "<code file> <offsets json file> <version> <Audiotable file> <Audiobank file> <assets XML dir> <samples outdir> <soundfont outdir>"
        )
        sys.exit(0 if need_help else 1)

    with open("offsets.json", "r") as offset_file:
        table_offsets = json.load(offset_file)
    
    version = args[0]
    # code file
    code_data = open(args[1], "rb").read()
    bank_data = open(args[2], "rb").read()
    font_data = open(args[3], "rb").read()
    asset_xml_dir = args[4]
    samples_out_dir = args[5]
    fonts_out_dir = args[6]

    def check_dir(path):
        if not os.path.isdir(path):
            print(f"{path} must be a directory!", file=sys.stderr)
            sys.exit(1)

    check_dir(os.path.join(asset_xml_dir, "samples"))
    check_dir(os.path.join(asset_xml_dir, "soundfonts"))

    def check_offset(offset, type):
        if offset is None:
            print(f"Offsets JSON file is missing a {type} offset for version {version}", file=sys.stderr)
            sys.exit(1)
        return offset

    if table_offsets[version] is None:
        print(f"Offsets JSON file does not contain version {version}", file=sys.stderr)
        sys.exit(1)
    
    bankdef_offset, bankdef_length = check_offset(table_offsets[version]["bankdefs"], "bankdefs")
    fontdef_offset, fontdef_length = check_offset(table_offsets[version]["fontdefs"], "fontdefs")

    bankdef_data = code_data[bankdef_offset:bankdef_offset + bankdef_length]
    fontdef_data = code_data[fontdef_offset:fontdef_offset + fontdef_length]
    
    soundfont_defs = read_soundfont_xmls(os.path.join(asset_xml_dir, "soundfonts"))
    samplebanks = read_samplebank_xml(os.path.join(asset_xml_dir, "samples"), version)

    bank_defs = parse_raw_def_data(bankdef_data, samplebanks)
    fonts = parse_soundfonts(fontdef_data, font_data, soundfont_defs)

    def get_entry_from_absolute_offset(table, offset):
        table_clone = [x for x in table if x.length != 0]

        for i in range(len(table_clone)):
            currentOffset = table_clone[i].offset
            nextOffset = table_clone[i + 1].offset if i < len(table_clone) else sys.maxsize
            if currentOffset <= offset and offset < nextOffset:
                return table_clone[i]

    for fontId in sf_unused_fixups[version]:
        font = fonts[fontId]
        for offset in sf_unused_fixups[version][fontId]:
            fixup = sf_unused_fixups[version][fontId][offset]
            datatype = fixup[0]
            length = fixup[1]
            converted_data = {
                "Envelope": Envelope(font_data, font.offset, offset)
            }.get(datatype)
            font.font.unused.append(converted_data)

    report_gaps("SOUNDFONT", usedFontData, font_data)
    soundfont_gaps = get_data_gaps("SOUNDFONT", usedFontData, font_data)

    for offset in soundfont_gaps:
        font = get_entry_from_absolute_offset(fonts, offset)
        data_wrapper = UnusedData(offset, soundfont_gaps[offset])
        font.font.unused.append(data_wrapper)

    os.makedirs(samples_out_dir, exist_ok=True)

    with open(os.path.join(samples_out_dir, "Banks.xml"), "w") as bankdeffile:
        bankdefxml = XmlTree.Element("SampleBanks")
        for bankdef in bank_defs:
            if bankdef.length == 0:
                XmlTree.SubElement(bankdefxml, "SampleBank", {
                    "Reference": bank_defs[bankdef.offset].name
                })
            else:
                XmlTree.SubElement(bankdefxml, "SampleBank", {
                    "Name": bankdef.name,
                    "CachePolicy": toCachePolicy(bankdef.cache),
                    "Medium": toMedium(bankdef.medium)
                })
        xmlstring = minidom.parseString(XmlTree.tostring(bankdefxml, "unicode")).toprettyxml(indent="\t")
        bankdeffile.write(xmlstring)

    # Export AIFF samples
    for bank in rawSamples:
        rawSamples[bank] = dict(sorted(rawSamples[bank].items()))
        idx = 0
        width = len(str(len(rawSamples[bank])))
        for address in rawSamples[bank]:
            sample = rawSamples[bank][address]
            filename_base = os.path.join(samples_out_dir, samplebanks[bank])
            os.makedirs(filename_base, exist_ok=True)
            aifc_filename = os.path.join(filename_base, f"{str(idx).zfill(width)} {sample.name}.aifc")
            write_aifc(version, bank_data, bank_defs, sample, aifc_filename)
            write_aiff(sample, samples_out_dir, aifc_filename, f"{str(idx).zfill(width)} {sample.name}.aiff")
            idx += 1
    
    if len(usedRawData) > 0:
        report_gaps("SAMPLE", usedRawData, bank_data)
        samplebank_gaps = get_data_gaps("SAMPLE", usedRawData, bank_data)
        for offset in samplebank_gaps:
            bank = get_entry_from_absolute_offset(bank_defs, offset)
            filename = os.path.join(samples_out_dir, bank.name, f"{offset:0>8x} - Unused.bin")
            os.makedirs(os.path.dirname(filename), exist_ok=True)
            with open(filename, "wb") as bin_file:
                bin_file.write(samplebank_gaps[offset])

    # Export soundfonts
    for fontentry in fonts:
        dir = os.path.join(fonts_out_dir)
        os.makedirs(dir, exist_ok=True)
        filename = os.path.join(dir, f"{fontentry.font.name}.xml")
        s_filename = os.path.join(dir, f"{fontentry.font.index}.h")
        write_soundfont(fontentry, filename, samplebanks)
        write_soundfont_header(fontentry.font, s_filename)

if __name__ == "__main__":
    main()
