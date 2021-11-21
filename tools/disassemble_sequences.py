#!/usr/bin/env python3
import subprocess
import shutil
import xml.etree.ElementTree as XmlTree
import os
import re
import struct
import sys

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
            entries[index] = entries[entry.offset]
        else:
            entry.sequence = seq_data[entry.offset:entry.offset + entry.length]
    return entries

def convert_aseq_to_mus(aseq_name, mus_name):
    seq64_cli = os.path.join(os.path.dirname(__file__), "seq64", "build", "seq64_console")
    common_dir = os.getcwd()
    rel_seq64_cli = "./" + os.path.relpath(seq64_cli, common_dir).replace("\\", "/")
    try:
        subprocess.run(["bash", "-c", f"{rel_seq64_cli} --in={aseq_name} --out={mus_name} --dialect=community-music --abi=zelda"], check=True)
    except subprocess.CalledProcessError:
        print(f"failed to convert {aseq_name} to mus format")
        # exit(1)

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

    expected_num_args = 4
    if need_help or len(args) != expected_num_args:
        print(
            f"Usage: {sys.argv[0]} <.seqdef file> <.seq file> <assets sequence XML file> <samples output dir>"
        )
        sys.exit(0 if need_help else 1)

    # Sequence Defs
    seqdef_data = open(args[0], "rb").read()
    # Sequences
    seq_data = open(args[1], "rb").read()

    asset_input_xml_dir = args[2]
    midi_out_dir = args[3]

    # Import sequence names
    xml = XmlTree.parse(os.path.join(asset_input_xml_dir, "Sequences.xml"))
    sequence_names = xml.findall("./Sequence")

    # Export sequences
    sequences = parse_seq_def_data(seqdef_data, seq_data)

    for idx in range(len(sequences)):
        name = sequence_names[idx]
        sequence = sequences[idx]

        if name.get("Extract") == "false":
            continue

        dir = os.path.join(midi_out_dir)
        os.makedirs(dir, exist_ok=True)
        seq_name = name.get("Name") if name.get("Name") else f"{sequence.offset:08x}"
        with open(f"{midi_out_dir}/{seq_name}.aseq", "wb") as aseq:
            aseq.write(sequence.sequence)
            aseq.flush()
            mus_file = os.path.join(dir, f"{seq_name}.mus")
            if not os.path.exists(mus_file) or os.path.getsize(mus_file) == 0:
                convert_aseq_to_mus(aseq.name, mus_file)

if __name__ == "__main__":
    main()
