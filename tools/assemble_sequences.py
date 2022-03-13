#!/usr/bin/env python3
from argparse import ArgumentParser
from asyncio import subprocess
import os
from pathlib import Path
import sys
import tempfile
from audio_common import StructPackSpec, parse_machine

class SequenceDefinition:
    def __init__(self):
        self.name = ""
        self.last_offset = -1
        self.size = -1

def process_sequence_file(sequence: Path, soundfont_path: Path) -> tuple[SequenceDefinition, str, list[int]]:
    defn = SequenceDefinition()

    defn.name = os.path.basename(sequence)

    fonts = []
    prelines = []
    postlines = []
    s_name = None

    with open(os.path.join(sequence), "r", encoding="unicode") as mus_file:
        inline = mus_file.readline()
        incomment = False
        fonts_seen = False

        while inline != "":
            if inline.lstrip().startswith("/*"):
                incomment = True
            if inline.rstrip().endswith("*/"):
                incomment = False
            if not incomment:
                if inline.lstrip().startswith(".usefont"):
                    font = inline.strip().split()[1]
                    fonts.append(int(font))
                    inline = mus_file.readline()
                    continue
                elif inline.rstrip().endswith(":"):
                    if len(fonts) == 0:
                        print(f"Sequence {sequence} does not use any soundfonts!", file=sys.stderr)
                        exit(1)
            prelines.append(inline) if not fonts_seen else postlines.append(inline)
            inline = mus_file.readline()

    with tempfile.NamedTemporaryFile("w", suffix=".tmp.s", delete=False) as s_file:
        s_name = s_file.name
        for line in prelines:
            s_file.write(line)
        s_file.write('#include "sequence.h"\n')
        for font in fonts:
            s_file.write(f'#include "{os.path.join(soundfont_path, str(font))}.h"\n')
        s_file.write('.include "seq_macros.inc"\n')
        s_file.write('.section .rodata\n')
        s_file.write('.balign 0x10\n')
        for line in postlines:
            s_file.write(line)
    
    try:
        subprocess.run(["gcc"])


def read_sequence_files(sequence_path: Path, src_seq_path: Path, soundfont_path: Path):
    result = []

    for file in os.listdir(sequence_path):
        if file.endswith(".mus"):
            seqdef, elffile, fonts = process_sequence_file(os.path.join(sequence_path, file), soundfont_path)


def main(args):
    packspecs = StructPackSpec()
    if args.le:
        packspecs.byte_order_char = "<"
    if args.arch64:
        packspecs.is_64 = True
    if args.machine:
        machine = parse_machine(args.machine)

    if not args.sequences.is_dir():
        print("Sequence asset path does not exist or is not a directory.", file=sys.stderr)
        return 1

    if not args.srcseq.is_dir():
        print("Code sequence path does not exist or is not a directory.", file=sys.stderr)
        return 1

    if not args.output.is_dir():
        print("Output path does not exist or is not a directory.", file=sys.stderr)
        return 1

    sequences = process_sequence_files(args.sequences, args.srcseq)
    sqtblname = None
    sqfonttblname = None

    with tempfile.NamedTemporaryFile("wb", prefix="SequenceTable_", suffix=".tmp", delete=False) as sqtbl:
        with tempfile.NamedTemporaryFile("wb", prefix="SequenceFontTable_", suffix=".tmp", delete=False) as sqfonttbl:
            sqtblname = sqtbl.name
            sqfonttblname = sqfonttbl.name

            generate_sequence_table(sequences, packspecs)
            generate_sequence_font_table(sequences, packspecs)


    with open(os.path.join(args.output, "data", "SequenceTable.o"), "wb") as elfsqtbl:
        generate_seq_tbl_obj(sqtblname, elfsqtbl, machine, args.le)

    with open(os.path.join(args.output, "data", "SequenceFontTable.o"), "wb") as elfsqfonttbl:
        generate_seq_font_tbl_obj(sqfonttblname, elfsqfonttbl, machine, args.le)

if __name__ == "__main__":
    parser = ArgumentParser(add_help=False)
    parser.add_argument("sequences", metavar="<sequence asset path>", type=Path, help="The path to sequence assets.")
    parser.add_argument("soundfonts", metavar="<soundfont asset path>", type=Path, help="The path to the soundfont assets.")
    parser.add_argument("srcseq", metavar="<code sequence path>", type=Path, help="The path to program sequences.")
    parser.add_argument("output", metavar="<output path>", type=Path, help="The path to where built machine files should be stored.")
    parser.add_argument("--little-endian", dest="le", action="store_true", help="Use this flag if building for Little-Endian target. Overrides --match and --debug")
    parser.add_argument("--64", dest="arch64", action="store_true", help="Use this flag if building for 64-bit target. (Importantly, this does NOT include N64 itself). Overrides --match and --debug")
    parser.add_argument("--machine", nargs=1, required=False, default="mips", help="The machine type to use for the output ELF files.")
    args = parser.parse_args()
    main(args)
