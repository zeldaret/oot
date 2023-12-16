#!/usr/bin/env python3

import argparse
import io
import os
import pathlib
import subprocess
import struct
import sys

import xml.etree.ElementTree as XmlTree

from audio_common import toCachePolicy

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
    buf = hexdump(open(sequence_out_path, "rb").read(), seqname)
    open(sequence_out_path.with_suffix(".c"), "wb").write(buf)
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

def generate_sequence_table(sequences, output_path):
    def onerow(romaddr, size, medium, cachepolicy, shortdata1, shortdata2, shortdata3):
        return b"    {0x%08x, %d, %d, %d, 0x%04x, 0x%04x, 0x%04x}," % (
            romaddr, size, medium, cachepolicy, shortdata1, shortdata2, shortdata3
        )

    start_offset = 0
    l = [
        b"#ifdef AUDIOHEADER",
        b"",
        b"#define SFX_SEQ_SIZE %d" % sequences[0].size,
        b"",
        b"#else",
        b"",
        b"AudioTable gSequenceTable = {",
        b"    %d, 0, 0x00000000, {0, 0, 0, 0, 0, 0, 0, 0}, {" % len(sequences),
        b"    "+onerow(0, sequences[0].size, 2, sequences[0].cachePolicy, 0, 0, 0),
        b"    }",
        b"};",
        b"AudioTableEntry gSequenceTableEntries[] = {",
    ]
    start_offset += sequences[0].size
    for defn in sequences[1:]:
        if defn.ref:
            l.append(onerow(get_seq_index(defn.ref, sequences), 0, 2, defn.cachePolicy, 0, 0, 0))
        else:
            l.append(onerow(start_offset, defn.size, 2, defn.cachePolicy, 0, 0, 0))
            start_offset += defn.size
    l.append(b"};\n\n#endif\n")

    open("assets/misc/sounds/sequence_table.h", "wb").write(b"\n".join(l))

def generate_sequence_font_table(sequences, output_path):
    stream = io.BytesIO()
    seqoffsets = {}

    for i in range(len(sequences)):
        defn = sequences[i]
        seqoffsets[i] = stream.tell() + len(sequences) * 2
        if defn.ref:
            defn = sequences[get_seq_index(defn.ref, sequences)]
        stream.write(struct.pack("b", len(defn.fonts)))
        for fontid in defn.fonts:
            stream.write(struct.pack("b", fontid))

    stream.seek(0)

    for offset in seqoffsets.values():
        stream.write(struct.pack(">H", offset))
    for defn in sequences:
        if defn.ref:
            defn = sequences[get_seq_index(defn.ref, sequences)]
        stream.write(struct.pack("b", len(defn.fonts)))
        for fontid in defn.fonts:
            stream.write(struct.pack("b", fontid))

    while stream.getbuffer().nbytes & 0xF != 0:
        stream.write(b"\x00")

    buf = hexdump(stream.getbuffer(), "gSequenceFontTable")
    open("assets/misc/sounds/sequence_font_table.h", "wb").write(buf)

def hexdump(buf, varname):
    l = [
        b"unsigned char %s[] = {\n" % varname.encode(),
    ]
    for idx in range(0, len(buf), 16):
        l.append(b"    " + b" ".join(
            b"0x%02x," % ch for ch in buf[idx:idx+min(len(buf)-idx, 16)]
        ) + b"\n")
    l.append(b"};\n")
    return b"".join(l)

def main(args):
    if not args.sequences.is_dir():
        print("Sequence asset path does not exist or is not a directory.", file=sys.stderr)
        return 1

    if not args.output.is_dir():
        print("Output path does not exist or is not a directory.", file=sys.stderr)
        return 1

    sequences = process_sequence_files(args.sequences,args.soundfonts, args.output)

    os.makedirs("assets/misc/sounds", exist_ok=True)
    generate_sequence_table(sequences, args.output)
    generate_sequence_font_table(sequences, args.output)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("sequences", metavar="<sequence asset path>", type=pathlib.Path, help="The path to sequence assets.")
    parser.add_argument("soundfonts", metavar="<soundfont build path>", type=pathlib.Path, help="The path to the soundfont include files.")
    parser.add_argument("output", metavar="<output path>", type=pathlib.Path, help="The path to where built machine files should be stored.")
    args = parser.parse_args()
    main(args)
