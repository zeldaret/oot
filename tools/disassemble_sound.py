#!/usr/bin/env python3
import argparse
from audio_common import *
from collections import defaultdict
from pathlib import Path
from xml.dom import minidom
import subprocess
import math
import shutil
import xml.etree.ElementTree as XmlTree
import json
import os
import struct
import sys

usedTuning = {}
refBanks = {}

# Used for data gap detection (finding potentially unreferenced data)
# Format: list of tuples (object, start offset, end offset)
usedFontData = []
usedRawData = []

fixups = {
    "MQDebug": {
        "bankdefs": [1281424, 128],
        "fontdefs": [1278576, 624],
        "fontmaps": [1279200, 448],
        "seqdefs": [1279648, 1776]
    }
}

offsets = {
    "MQDebug": {
        "0": {
            "0x2A50": ["Envelope", 16],
            "0x2A80": ["Envelope", 12],
            "0x2A90": ["Envelope", 16]
        }
    }
}

def parse_raw_def_data(raw_def_data, samplebanks):
    count = struct.unpack(">H", raw_def_data[:2])[0]
    entries = []

    for i in range(count):
        buffer = raw_def_data[16 + (i * 16):32 + (i * 16)]
        entry = SampleTableEntry(samplebanks[i] or str(i))
        entry.parseFrom(buffer)
        entry.index = i
        entries.append(entry)

    for i in range(len(entries)):
        entry = entries[i]

        if entry.length == 0:
            refBanks[i] = entry.offset
            if entry.offset not in usedTuning:
                usedTuning[entry.offset] = {}
            if i in usedTuning:
                usedTuning[entry.offset].update(usedTuning[i])
            usedTuning[i] = usedTuning[entry.offset]
            samplebanks[i] = samplebanks[entry.offset]

    return entries

def parse_soundfonts(fontdef_data, font_data, fontdefs):
    count = struct.unpack(">H", fontdef_data[:2])[0]
    fonts = []
    for i in range(count):
        fontdef = fontdefs[i]
        buffer = fontdef_data[16 + (i * 16):32 + (i * 16)]
        entry = SoundfontEntry()
        entry.parseFrom(buffer)
        font = Soundfont()
        font.parseFrom(entry, font_data, fontdef, usedFontData)
        fonts.append(font)
    return fonts

class SoundfontDefinition:
    def __init__(self, name, symbol, index, bankOverride) -> None:
        self.name = name or ""
        self.bankOverride = bankOverride or None
        self.index = index or -1
        self.symbol = symbol
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
            soundfont = SoundfontDefinition(
                soundfontElement.get("Name"),
                soundfontElement.get("Symbol"),
                soundfontElement.get("Index"),
                soundfontElement.get("OverrideSampleBank")
            )
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

def read_samplebank_xml(xml_dir, version, sampleNames):
    results = defaultdict(lambda: None)

    for xmlfile in os.listdir(xml_dir):
        if xmlfile.endswith(".xml"):
            bankname = os.path.splitext(xmlfile)[0]
            index = int(bankname.split(" ")[0])
            results[index] = bankname
            root = XmlTree.parse(os.path.join(xml_dir, xmlfile))
            for sample in root.findall("Sample"):
                offsetElement = sample.find(f"./Offset[@Version='{version}']")
                if offsetElement == None:
                    continue
                offset = int(offsetElement.get("At"), 0)
                if index not in sampleNames:
                    sampleNames[index] = defaultdict(lambda: None)
                if offset not in sampleNames[index]:
                    sampleNames[index][offset] = sample.get("Name")
                if "SampleRate" in sample.attrib:
                    if index not in usedTuning:
                        usedTuning[index] = {}
                    usedTuning[index][offset] = float(int(sample.get("SampleRate")) / 32000.0)
    return results

def sort_data(data):
    seen = set()
    results = []

    for obj, start, end in data:
        objUniqKey = (obj.__class__, start, end)
        if objUniqKey not in seen:
            seen.add(objUniqKey)
            results.append((obj, start, end))

    sortedResults = sorted(set(results), key=lambda tup: (tup[1], tup[2]))

    return sortedResults

def report_gaps(report_type, data, bin):
    length = len(bin)
    sorted_data = sort_data(data)
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
        bytes = struct.unpack(f">{length - currentEnd}b", bin[currentEnd:length])
        if any(b != 0 for b in bytes):
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

def getTuning(tunings):
    # In order of best candidates
    acceptedSampleRates = [32000, 16000, 22050, 10000, 22000, 24000, 20000]
    candidates = [32000 * tuning for tuning in tunings]

    for i in range(len(tunings)):
        tuning = tunings[i]
        candidate = candidates[i]

        if candidate in acceptedSampleRates:
            return tuning

        for accepted in acceptedSampleRates:
            if abs(accepted - candidate) < 1000.0:
                return float(accepted / 32000.0)

    # Seems to sound like the default for most samples with bad sample rates
    return 0.5

def write_aifc(raw, bank_defs, entry, filename, tunings):
    offset = bank_defs[entry.bank].offset + entry.offsetInBank
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

    sampleTunings = tunings[entry.bank][entry.offsetInBank].copy()

    assert sampleTunings is not None
    assert len(sampleTunings) > 0

    if entry.bank not in usedTuning:
        usedTuning[entry.bank] = {}
    
    if entry.bank in usedTuning and entry.offsetInBank in usedTuning[entry.bank]:
        tuning = usedTuning[entry.bank][entry.offsetInBank]
    else:
        tuning = getTuning(list(sampleTunings))
        usedTuning[entry.bank][entry.offsetInBank] = tuning

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

def write_soundfont(font, filename, samplebanks, sampleNames, tunings):
    with open(filename, "w") as file:
        xml = font.toXML(samplebanks, sampleNames, tunings)
        xmlstring = minidom.parseString(XmlTree.tostring(xml, "unicode")).toprettyxml(indent="\t")
        file.write(xmlstring)

def populateRawSamples(fonts):
    rawSamples = {}

    for font in fonts:
        for sample in font.getSamples():
            if sample.bank not in rawSamples:
                if sample.bank in refBanks:
                    if refBanks[sample.bank] not in rawSamples:
                        rawSamples[refBanks[sample.bank]] = {}
                    rawSamples[sample.bank] = rawSamples[refBanks[sample.bank]]
                else:
                    rawSamples[sample.bank] = {}
            if sample.offsetInBank not in rawSamples[sample.bank]:
                rawSamples[sample.bank][sample.offsetInBank] = sample

    return rawSamples

def populateSampleNames(fonts, sampleNames):
    for font in fonts:
        for sample in font.getSamples():
            if sample.bank not in sampleNames:
                sampleNames[sample.bank] = {}
            if sample.offsetInBank not in sampleNames[sample.bank]:
                sampleNames[sample.bank][sample.offsetInBank] = sample.name

def populateTunings(fonts):
    tunings = {}

    for font in fonts:
        for sample in font.getSamples():
            if sample.bank not in tunings:
                if sample.bank in refBanks:
                    if refBanks[sample.bank] not in tunings:
                        tunings[refBanks[sample.bank]] = {}
                    tunings[sample.bank] = tunings[refBanks[sample.bank]]
                else:
                    tunings[sample.bank] = {}
            if sample.offsetInBank not in tunings[sample.bank]:
                tunings[sample.bank][sample.offsetInBank] = set()
            tunings[sample.bank][sample.offsetInBank].add(sample.tuning)

    return tunings

def main(args):
    table_offsets = offsets
    sf_unused_fixups = fixups

    version = args.version
    # code file
    code_data = args.code.read()
    bank_data = args.audiotable.read()
    font_data = args.audiobank.read()
    asset_xml_dir = args.assetxml
    samples_out_dir = args.sampleout
    fonts_out_dir = args.fontout

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
    sampleNames = {}
    
    soundfont_defs = read_soundfont_xmls(os.path.join(asset_xml_dir, "soundfonts"))
    samplebanks = read_samplebank_xml(os.path.join(asset_xml_dir, "samples"), version, sampleNames)
    real_samplebanks = dict(samplebanks)

    bank_defs = parse_raw_def_data(bankdef_data, samplebanks)
    fonts = parse_soundfonts(fontdef_data, font_data, soundfont_defs)

    def get_entry_from_absolute_offset(table, offset):
        table_clone = [x for x in table if x.length != 0]

        for i in range(len(table_clone)):
            currentOffset = table_clone[i].offset
            nextOffset = table_clone[i + 1].offset if i < len(table_clone) - 1 else sys.maxsize
            if currentOffset <= offset and offset < nextOffset:
                return table_clone[i]

    rawSamples = populateRawSamples(fonts)
    populateSampleNames(fonts, sampleNames)
    tunings = populateTunings(fonts)

    for fontIdStr in sf_unused_fixups[version]:
        fontId = int(fontIdStr)
        font = fonts[fontId]
        for offsetStr in sf_unused_fixups[version][fontIdStr]:
            offset = int(offsetStr, 0)
            fixup = sf_unused_fixups[version][fontIdStr][offsetStr]
            datatype = fixup[0]
            length = fixup[1]
            def makeEnvelope(data, baseOffset, offset):
                env = Envelope()
                env.parseFrom(data, baseOffset, offset, usedFontData)
                return env
            converted_data = {
                "Envelope": makeEnvelope(font_data, font.offset, offset)
            }.get(datatype)
            font.unused.append(converted_data)

    if args.gaps:
        report_gaps("SOUNDFONT", usedFontData, font_data)
    soundfont_gaps = get_data_gaps("SOUNDFONT", usedFontData, font_data)

    for offset in soundfont_gaps:
        font = get_entry_from_absolute_offset(fonts, offset)
        data_wrapper = UnusedData(offset, soundfont_gaps[offset])
        font.unused.append(data_wrapper)

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
            sampleName = sampleNames[sample.bank][sample.offsetInBank]
            os.makedirs(filename_base, exist_ok=True)
            aifc_filename = os.path.join(filename_base, f"{str(idx).zfill(width)} {sampleName}.aifc")
            aiff_filename = f"{str(idx).zfill(width)} {sampleName}.aiff"
            write_aifc(bank_data, bank_defs, sample, aifc_filename, tunings)
            write_aiff(sample, samples_out_dir, aifc_filename, aiff_filename)
            idx += 1
    
    if len(usedRawData) > 0:
        if args.gaps:
            report_gaps("SAMPLE", usedRawData, bank_data)
        samplebank_gaps = get_data_gaps("SAMPLE", usedRawData, bank_data)
        for offset in samplebank_gaps:
            bank = get_entry_from_absolute_offset(bank_defs, offset)
            filename = os.path.join(samples_out_dir, bank.name, f"{offset:0>8x} - Unused.bin")
            os.makedirs(os.path.dirname(filename), exist_ok=True)
            with open(filename, "wb") as bin_file:
                bin_file.write(samplebank_gaps[offset])

    # Export soundfonts
    for font in fonts:
        dir = os.path.join(fonts_out_dir)
        os.makedirs(dir, exist_ok=True)
        filename = os.path.join(dir, f"{font.name}.xml")
        write_soundfont(font, filename, real_samplebanks, sampleNames, tunings)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("version", metavar="<version>", help="The version of Ocarina of Time being disassembled.")
    parser.add_argument("code", metavar="<code file>", type=argparse.FileType("rb"), help="Path to the 'code' file, usually in baserom.")
    parser.add_argument("audiotable", metavar="<Audiotable file>", type=argparse.FileType("rb"), help="Path to the 'AudioTable' file, usually in baserom.")
    parser.add_argument("audiobank", metavar="<Audiobank file>", type=argparse.FileType("rb"), help="Path to the 'Audiobank' file, usually in baserom.")
    parser.add_argument("assetxml", metavar="<assets XML dir>", type=Path, help="The asset XML path where the definitions are stored.")
    parser.add_argument("sampleout", metavar="<samples out dir>", type=Path, help="The output path for extracted samples.")
    parser.add_argument("fontout", metavar="<soundfont out dir>", type=Path, help="The output path for extracted soundfonts.")
    parser.add_argument("--help", "-h", "-?", action="help", help="Show this help message and exit.")
    parser.add_argument("--detect-gaps", "-g", dest="gaps", action='store_true', help="Outputs unreferenced data ranges to standard out.")
    args = parser.parse_args()
    main(args)
