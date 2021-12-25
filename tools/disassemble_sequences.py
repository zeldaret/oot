#!/usr/bin/env python3
import subprocess
import xml.etree.ElementTree as XmlTree
import os
import json
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

def convert_aseq_to_mus(aseq_name, mus_name, font_path):
    seqdecode = os.path.join(os.path.dirname(__file__), "seq_decoder.py")
    common_dir = os.getcwd()
    rel_seqdecode = "./" + os.path.relpath(seqdecode, common_dir).replace("\\", "/")
    output_file = open(mus_name, "w", encoding="utf8")
    try:
        subprocess.run(["python3", rel_seqdecode, aseq_name, font_path], check=True, stdout=output_file)
    except subprocess.CalledProcessError:
        print(f"failed to convert {aseq_name} to mus format", file=sys.stderr)
        exit(1)
    finally:
        output_file.close()

def get_soundfont_ids_for_seq(index, data):
    seq_idx = struct.unpack(">h", data[index * 2: index * 2 + 2])[0]
    count = struct.unpack(">b", data[seq_idx:seq_idx + 1])[0]
    assert count == 1
    return struct.unpack(">b", data[seq_idx + 1:seq_idx + 2])[0]

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

    expected_num_args = 6
    if need_help or len(args) != expected_num_args:
        print(
            f"Usage: {sys.argv[0]} <code file> <offsets json file> <version> <Audioseq file> <assets path> <sequences output dir>"
        )
        sys.exit(0 if need_help else 1)

    # code file
    code_data = open(args[0], "rb").read()
    # offsets.json file
    with open(args[1], "r") as offset_file:
        table_offsets = json.load(offset_file)
    
    version = args[2]

    seq_data = open(args[3], "rb").read()
    asset_path = args[4]
    midi_out_dir = args[5]

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

    asset_input_xml_path = os.path.join(asset_path, "xml", "sequences", "Sequences.xml")
    if not os.path.exists(asset_input_xml_path):
        print(f"Could not find {asset_input_xml_path}.", file=sys.stderr)
        sys.exit(1)

    soundfont_header_path = os.path.join(asset_path, "soundfonts")

    # Import sequence names
    xml = XmlTree.parse(asset_input_xml_path)
    sequence_names = xml.findall("./Sequence")

    # Export sequences
    sequences = parse_seq_def_data(seqdef_data, seq_data)

    for idx in range(len(sequences)):
        name = sequence_names[idx]
        sequence = sequences[idx]

        if name.get("Extract") == "false":
            continue

        font_id = get_soundfont_ids_for_seq(idx, seqmap_data)
        dir = os.path.join(midi_out_dir)
        os.makedirs(dir, exist_ok=True)
        seq_name = name.get("Name") if name.get("Name") else f"{sequence.offset:08x}"
        with open(os.path.join(midi_out_dir, f"{seq_name}.aseq"), "wb") as aseq:
            aseq.write(sequence.sequence)
            aseq.flush()
            mus_file = os.path.join(dir, f"{seq_name}.mus")
            #if not os.path.exists(mus_file) or os.path.getsize(mus_file) == 0:
                #convert_aseq_to_mus(aseq.name, mus_file, os.path.join(asset_path, "soundfonts", f"{font_id}.h"))

if __name__ == "__main__":
    main()
