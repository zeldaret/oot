#!/usr/bin/env python3
from argparse import ArgumentParser
import subprocess
import io
import os
from pathlib import Path
import struct
import sys
import xml.etree.ElementTree as XmlTree
from audio_common import StructPackSpec, parse_machine
from makeelf.elf import *

class SequenceDefinition:
    def __init__(self):
        self.name = ""
        self.size = -1
        self.fonts = []
        self.ref = None

def process_sequence_file(sequence: str, soundfont_path: Path, output_path: Path) -> SequenceDefinition:
    defn = SequenceDefinition()

    defn.name = os.path.basename(sequence)
    seq_path = Path(sequence)

    if seq_path.is_symlink():
        defn.ref = seq_path.resolve().relative_to(seq_path.parent)
        return defn

    try:
        assembleseq = os.path.join(os.path.dirname(__file__), "assemble_sequence")
        common_dir = os.getcwd()
        rel_assembleseq = "./" + os.path.relpath(assembleseq, common_dir).replace("\\", "/")
        sequence_out_path = Path(os.path.join(output_path, seq_path)).with_suffix(".o")
        os.makedirs(sequence_out_path.parent, exist_ok=True)
        result = subprocess.run([rel_assembleseq, sequence, sequence_out_path, "--font-path", soundfont_path, "--elf", "big", "32", "mips", "--print-fonts"], capture_output=True, text=True)
    except subprocess.CalledProcessError:
        print(f"Failed to convert {sequence} to binary format", file=sys.stderr)
        exit(1)

    fontlines = result.stdout.split("\n")
    for line in fontlines:
        try:
            fontid = int(line)
            defn.fonts.append(fontid)
        except:
            continue

    output_elf = ELF.from_file(sequence_out_path)[0]
    data_section = output_elf.get_section_by_name(".data")[0]
    defn.size = data_section.sh_size

    return defn

def process_sequence_files(sequence_path: Path, src_seq_path: Path, soundfont_path: Path, output_path: Path):
    result = []

    for file in os.listdir(sequence_path):
        if file.endswith(".mus"):
            result.append(process_sequence_file(os.path.join(sequence_path, file), soundfont_path, output_path))

    
    for file in os.listdir(src_seq_path):
        if file.endswith(".mus"):
            result.append(process_sequence_file(os.path.join(src_seq_path, file), soundfont_path, output_path))

    refpath = os.path.join(args.sequences, "References.xml")
    refxml = XmlTree.parse(refpath)

    for reference in refxml.getroot().findall("Reference"):
        defn = SequenceDefinition()
        defn.name = reference.get("Name")
        defn.ref = reference.get("Target")
        result.append(defn)

    result = sorted(result, key=lambda defn: os.path.basename(defn.name))
    return result

def get_seq_index(refname: str, seqdefs: list[SequenceDefinition]):
    for i in range(len(seqdefs)):
        defn = seqdefs[i]
        if defn.name.endswith(refname):
            return i
    
    raise f"Sequence {refname} not found but referenced"

def generate_sequence_table(sequences: list[SequenceDefinition], output_path: Path, machine: EM, packspecs: StructPackSpec):
    with open(os.path.join(output_path, "assets", "data", "SequenceTable.o"), "wb") as seqtable:
        stream = io.BytesIO()
        stream.write(struct.pack(packspecs.genPackString("H14x"), len(sequences)))
        start_offset = 0
        for defn in sequences:
            spec = packspecs.genPackString("IIbbxxxxxx")
            if defn.ref:
                packed = struct.pack(spec, get_seq_index(defn.ref, sequences), 0, 2, 2)
            else:
                packed = struct.pack(spec, start_offset, defn.size, 2, 2)
                start_offset += defn.size
            stream.write(packed)

        elf = ELF(
            e_class=ELFCLASS.ELFCLASS64 if packspecs.is_64 else ELFCLASS.ELFCLASS32,
            e_data=ELFDATA.ELFDATA2LSB if packspecs.le else ELFDATA.ELFDATA2MSB,
            e_type=ET.ET_REL,
            e_machine=machine
        )
        rodata = elf._append_section(".rodata", stream.getvalue(), 0, sh_flags=SHF.SHF_ALLOC, sh_addralign=16)
        elf.append_symbol("_SequenceTable_start", rodata, 0, 4, STB.STB_GLOBAL, STT.STT_OBJECT, STV.STV_DEFAULT)
        elf.append_symbol("gSequenceTable", rodata, 0, 4, STB.STB_GLOBAL, STT.STT_OBJECT, STV.STV_DEFAULT)
        elf.append_symbol("_SequenceTable_end", rodata, stream.getbuffer().nbytes, 4, STB.STB_GLOBAL, STT.STT_OBJECT, STV.STV_DEFAULT)
        seqtable.write(bytes(elf))

def generate_sequence_font_table(sequences: list[SequenceDefinition], output_path: Path, machine: EM, packspecs: StructPackSpec):
    with open(os.path.join(output_path, "assets", "data", "SequenceFontTable.o"), "wb") as seqmap:
        stream = io.BytesIO()
        seqoffsets = {}

        for i in range(len(sequences)):
            defn = sequences[i]
            seqoffsets[i] = stream.tell() + (len(sequences) * 2)
            stream.write(struct.pack(packspecs.genPackString("b"), len(defn.fonts)))
            for id in defn.fonts:
                stream.write(struct.pack(packspecs.genPackString("b"), id))

        stream.seek(0)

        for offset in seqoffsets.values():
            stream.write(struct.pack(packspecs.genPackString("H"), offset))
        for defn in sequences:
            stream.write(struct.pack(packspecs.genPackString("b"), len(defn.fonts)))
            for id in defn.fonts:
                stream.write(struct.pack(packspecs.genPackString("b"), id))
        
        while stream.getbuffer().nbytes & 0xf != 0:
            stream.write(struct.pack(packspecs.genPackString("b"), 0))

        elf = ELF(
            e_class=ELFCLASS.ELFCLASS64 if packspecs.is_64 else ELFCLASS.ELFCLASS32,
            e_data=ELFDATA.ELFDATA2LSB if packspecs.le else ELFDATA.ELFDATA2MSB,
            e_type=ET.ET_REL,
            e_machine=machine
        )
        rodata = elf._append_section(".rodata", stream.getvalue(), 0, sh_flags=SHF.SHF_ALLOC, sh_addralign=16)
        elf.append_symbol("_SequenceFontTable_start", rodata, 0, 4, STB.STB_GLOBAL, STT.STT_OBJECT, STV.STV_DEFAULT)
        elf.append_symbol("gSequenceFontTable", rodata, 0, 4, STB.STB_GLOBAL, STT.STT_OBJECT, STV.STV_DEFAULT)
        elf.append_symbol("_SequenceFontTable_end", rodata, stream.getbuffer().nbytes, 4, STB.STB_GLOBAL, STT.STT_OBJECT, STV.STV_DEFAULT)
        seqmap.write(bytes(elf))

def main(args):
    packspecs = StructPackSpec(args.le, args.arch64)
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

    sequences = process_sequence_files(args.sequences, args.srcseq, args.soundfonts, args.output)

    generate_sequence_table(sequences, args.output, machine, packspecs)
    generate_sequence_font_table(sequences, args.output, machine, packspecs)

if __name__ == "__main__":
    parser = ArgumentParser(add_help=False)
    parser.add_argument("srcseq", metavar="<code sequence path>", type=Path, help="The path to program sequences.")
    parser.add_argument("sequences", metavar="<sequence asset path>", type=Path, help="The path to sequence assets.")
    parser.add_argument("soundfonts", metavar="<soundfont build path>", type=Path, help="The path to the soundfont include files.")
    parser.add_argument("output", metavar="<output path>", type=Path, help="The path to where built machine files should be stored.")
    parser.add_argument("--little-endian", dest="le", action="store_true", help="Use this flag if building for Little-Endian target. Overrides --match and --debug")
    parser.add_argument("--64", dest="arch64", action="store_true", help="Use this flag if building for 64-bit target. (Importantly, this does NOT include N64 itself). Overrides --match and --debug")
    parser.add_argument("--machine", nargs=1, required=False, default="mips", help="The machine type to use for the output ELF files.")
    args = parser.parse_args()
    main(args)
