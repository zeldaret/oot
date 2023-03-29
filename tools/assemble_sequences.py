#!/usr/bin/env python3

import argparse
import io
import os
import pathlib
import subprocess
import struct
import sys

import xml.etree.ElementTree as XmlTree

from audio_common import StructPackSpec, parse_machine, toCachePolicy

class SequenceDefinition:
    def __init__(self):
        self.name = ""
        self.size = -1
        self.fonts = []
        self.cachePolicy = 2
        self.ref = None

def process_sequence_file(sequence, soundfont_path, output_path):
    defn = SequenceDefinition()

    defn.name = os.path.basename(sequence)
    seq_path = pathlib.Path(sequence)

    if seq_path.is_symlink():
        defn.ref = seq_path.resolve().relative_to(seq_path.parent)
        return defn

    try:
        assembleseq = os.path.join(os.path.dirname(__file__), "assemble_sequence")
        common_dir = os.getcwd()
        rel_assembleseq = "./" + os.path.relpath(assembleseq, common_dir).replace("\\", "/")
        sequence_out_path = pathlib.Path(os.path.join(output_path, seq_path)).with_suffix(".bin")
        os.makedirs(sequence_out_path.parent, exist_ok=True)
        result = subprocess.run([
            rel_assembleseq, sequence, sequence_out_path, "--font-path", soundfont_path, "--print-fonts"
        ], capture_output=True, text=True)
    except subprocess.CalledProcessError:
        print(f"Failed to convert {sequence} to binary format", file=sys.stderr)
        exit(1)

    for line in result.stdout.split("\n"):
        if not line:
            continue
        if line.startswith("Cache="):
            defn.cachePolicy = int(line.split("=")[1])
            continue
        defn.fonts.append(int(line))

    defn.size = os.stat(sequence_out_path).st_size

    # Add padding which is added during linking too.
    defn.size += 16 - defn.size%16 if defn.size%16 else 0

    seqname = "seq_" + pathlib.Path(pathlib.Path(sequence).stem).stem
    hexdump(sequence_out_path, sequence_out_path.with_suffix(".c"), seqname)
    return defn

def process_sequence_files(sequence_path, soundfont_path, output_path):
    result = []

    for fname in os.listdir(sequence_path):
        if fname.endswith(".seq"):
            result.append(process_sequence_file(os.path.join(sequence_path, fname), soundfont_path, output_path))

    refpath = os.path.join(args.sequences, "References.xml")
    refxml = XmlTree.parse(refpath)

    for reference in refxml.getroot().findall("Reference"):
        defn = SequenceDefinition()
        defn.name = reference.get("Name")
        defn.ref = reference.get("Target")
        defn.cachePolicy = toCachePolicy(reference.get("CachePolicy", default="Temporary"))
        result.append(defn)

    result = sorted(result, key=lambda defn: os.path.basename(defn.name))
    return result

def get_seq_index(refname, seqdefs):
    for i in range(len(seqdefs)):
        defn = seqdefs[i]
        if defn.name.endswith(refname):
            return i

    raise Exception(f"Sequence {refname} not found but referenced")

def generate_sequence_table(sequences, output_path, packspecs):
    stream = io.BytesIO()
    stream.write(struct.pack(packspecs.genPackString("H14x"), len(sequences)))
    start_offset = 0
    for defn in sequences:
        spec = packspecs.genPackString("IIbbxxxxxx")
        if defn.ref:
            packed = struct.pack(spec, get_seq_index(defn.ref, sequences), 0, 2, defn.cachePolicy)
        else:
            packed = struct.pack(spec, start_offset, defn.size, 2, defn.cachePolicy)
            start_offset += defn.size
        stream.write(packed)

    with open(os.path.join(output_path, "assets", "data", "sequence_table.bin"), "wb") as f:
        f.write(stream.getbuffer())

def generate_sequence_font_table(sequences, output_path, packspecs):
    stream = io.BytesIO()
    seqoffsets = {}

    for i in range(len(sequences)):
        defn = sequences[i]
        seqoffsets[i] = stream.tell() + (len(sequences) * 2)
        if defn.ref:
            defn = sequences[get_seq_index(defn.ref, sequences)]
        stream.write(struct.pack(packspecs.genPackString("b"), len(defn.fonts)))
        for id in defn.fonts:
            stream.write(struct.pack(packspecs.genPackString("b"), id))

    stream.seek(0)

    for offset in seqoffsets.values():
        stream.write(struct.pack(packspecs.genPackString("H"), offset))
    for defn in sequences:
        if defn.ref:
            defn = sequences[get_seq_index(defn.ref, sequences)]
        stream.write(struct.pack(packspecs.genPackString("b"), len(defn.fonts)))
        for id in defn.fonts:
            stream.write(struct.pack(packspecs.genPackString("b"), id))

    while stream.getbuffer().nbytes & 0xF != 0:
        stream.write(struct.pack(packspecs.genPackString("b"), 0))

    with open(os.path.join(output_path, "assets", "data", "sequence_font_table.bin"), "wb") as f:
        f.write(stream.getbuffer())

def hexdump(src, dst, varname):
    buf = open(src, "rb").read()

    f = open(dst, "wb")
    f.write(b"unsigned char %s[] = {\n" % varname.encode())
    for idx in range(0, len(buf), 16):
        f.write(b"    " + b" ".join(
            b"0x%02x," % ch for ch in buf[idx:idx+min(len(buf)-idx, 16)]
        ) + b"\n")
    f.write(b"};\n")
    f.close()

def main(args):
    packspecs = StructPackSpec()

    if not args.sequences.is_dir():
        print("Sequence asset path does not exist or is not a directory.", file=sys.stderr)
        return 1

    if not args.output.is_dir():
        print("Output path does not exist or is not a directory.", file=sys.stderr)
        return 1

    sequences = process_sequence_files(args.sequences,args.soundfonts, args.output)

    generate_sequence_table(sequences, args.output, packspecs)
    generate_sequence_font_table(sequences, args.output, packspecs)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("sequences", metavar="<sequence asset path>", type=pathlib.Path, help="The path to sequence assets.")
    parser.add_argument("soundfonts", metavar="<soundfont build path>", type=pathlib.Path, help="The path to the soundfont include files.")
    parser.add_argument("output", metavar="<output path>", type=pathlib.Path, help="The path to where built machine files should be stored.")
    args = parser.parse_args()
    main(args)
