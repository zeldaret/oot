#!/usr/bin/env python3

import argparse
import json
import os
import pathlib
import struct
import sys

from xml.dom import minidom
import xml.etree.ElementTree as XmlTree

from audio_common import toCachePolicy, toMedium
from disassemble_sequence import main as disassemble

refseqs = {}

offsets = {
    "MQDebug": {
        "bankdefs": [1281424, 128],
        "fontdefs": [1278576, 624],
        "fontmaps": [1279200, 448],
        "seqdefs": [1279648, 1776]
    }
}

class SequenceEntry:
    def __init__(self, data):
        self.offset, self.length, self.medium, self.cache = struct.unpack(">LLBBxxxxxx", data)

def parse_seq_def_data(seqdef_data, seq_data):
    count = struct.unpack(">H", seqdef_data[:2])[0]
    entries = []
    for i in range(count):
        entry = SequenceEntry(seqdef_data[16 + (i * 16):32 + (i * 16)])
        entries.append(entry)
    for index in range(len(entries)):
        entry = entries[index]
        if entry.length == 0:
            refseqs[index] = entry
        else:
            entry.sequence = seq_data[entry.offset:entry.offset + entry.length]
    return entries

def convert_aseq_to_seq(aseq_name, seq_name, font_path, seqinc, cacheid):
    lines, errors = disassemble(aseq_name, font_path, seqinc, False, str(cacheid))
    if errors:
        for err in errors:
            println("err:", err)
        exit(f"failed to convert {aseq_name} to seq format (header was {os.path.basename(font_path)})")

    open(seq_name, "w", encoding="utf8").write("\n".join(lines))

def get_soundfont_ids_for_seq(index, data):
    seq_idx = struct.unpack(">h", data[index * 2: index * 2 + 2])[0]
    count = struct.unpack(">b", data[seq_idx:seq_idx + 1])[0]
    assert count == 1
    return struct.unpack(">b", data[seq_idx + 1:seq_idx + 2])[0]

def main(args):
    table_offsets = offsets
    version = args.version

    # code file
    code_data = args.code.read()
    seq_data = args.audioseq.read()
    seq_def = args.seqdef

    def check_offset(offset, type):
        if offset is None:
            print(f"Offsets JSON file is missing a {type} offset for version {version}", file=sys.stderr)
            sys.exit(1)
        return offset

    if table_offsets[version] is None:
        print(f"Offsets JSON file does not contain version {version}", file=sys.stderr)
        sys.exit(1)

    seqdef_offset, seqdef_length = check_offset(table_offsets[version]["seqdefs"], "seqdefs")
    seqmap_offset, seqmap_length = check_offset(table_offsets[version]["fontmaps"], "fontmaps")

    seqdef_data = code_data[seqdef_offset:seqdef_offset + seqdef_length]
    seqmap_data = code_data[seqmap_offset:seqmap_offset + seqmap_length]

    # Import sequence names
    xml = XmlTree.parse(seq_def)
    sequence_names = xml.findall("./Sequence")

    # Export sequences
    sequences = parse_seq_def_data(seqdef_data, seq_data)

    os.makedirs(args.output, exist_ok=True)

    for idx in range(len(sequences)):
        name = sequence_names[idx]
        sequence = sequences[idx]

        if name.get("Extract") == "false":
            continue

        font_id = get_soundfont_ids_for_seq(idx, seqmap_data)
        seq_name = name.get("Name") if name.get("Name") else f"{sequence.offset:08x}"

        aseq_fname = os.path.join(args.output, f"{seq_name}.aseq")
        seq_fname = os.path.join(args.output, f"{seq_name}.seq")
        inc_fname = os.path.join(args.fontinc, f"{font_id}.inc")

        with open(aseq_fname, "wb") as aseq:
            aseq.write(sequence.sequence)

        if not os.path.exists(seq_fname) or not os.path.getsize(seq_fname):
            convert_aseq_to_seq(
                aseq.name, seq_fname, inc_fname, args.seqinc, sequence.cache
            )

        # TODO Keep the .aseq files?
        os.unlink(aseq_fname)

    if refseqs:
        with open(os.path.join(args.output, "References.xml"), "w") as refxml:
            root = XmlTree.Element("References")

            for k, v in refseqs.items():
                seqentry = sequence_names[k]
                targetentry = sequence_names[v.offset]
                target_name = targetentry.get("Name") if targetentry.get("Name") else f"{v.offset:08x}"
                sequence_name = seqentry.get("Name") if seqentry.get("Name") else f"{k:08x}"
                XmlTree.SubElement(root, "Reference", {
                    "Name": sequence_name,
                    "Target": f"{target_name}.seq",
                    "Medium": toMedium(v.medium),
                    "CachePolicy": toCachePolicy(v.cache)
                })

            xmlstring = XmlTree.tostring(root, "unicode")
            prettyxml = minidom.parseString(xmlstring).toprettyxml(indent="\t")
            refxml.write(prettyxml)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("version", metavar="<version>", help="The version of Ocarina of Time being disassembled.")
    parser.add_argument("code", metavar="<code file>", type=argparse.FileType("rb"), help="Path to the 'code' file, usually in baserom.")
    parser.add_argument("audioseq", metavar="<Audioseq file>", type=argparse.FileType("rb"), help="Path to the 'Audioseq' file, usually in baserom.")
    parser.add_argument("seqdef", metavar="<sequence defs XML>", type=argparse.FileType("r"), help="The asset XML where the sequence definitions are stored.")
    parser.add_argument("fontinc", metavar="<soundfont include path>", type=pathlib.Path, help="The path to the soundfont inc files.")
    parser.add_argument("seqinc", metavar="<sequence.inc file>", type=pathlib.Path, help="The path to the sequence.inc file.")
    parser.add_argument("output", metavar="<sequences output dir>", type=pathlib.Path, help="The output path for sequences.")
    parser.add_argument("--help", "-h", "-?", action="help", help="Show this help message and exit.")
    args = parser.parse_args()

    main(args)
