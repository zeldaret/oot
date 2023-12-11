#!/usr/bin/env python3

import argparse
import collections
from pathlib import Path
from typing import BinaryIO

import spimdisasm
from spimdisasm import frontendCommon as fec

from file_addresses import DmaFile, parse_file_addresses, get_z_name_for_overlay

def load_file_splits(
    context: spimdisasm.common.Context,
    config_dir:Path,
    dma_file: DmaFile,
    f: BinaryIO,
) -> spimdisasm.mips.FileSplits:
    # Assume that we're reading from a decompressed ROM where the DMA file is
    # now located at the same ROM offset as the VROM start
    f.seek(dma_file.vrom_start)
    data = bytearray(f.read(dma_file.vrom_end - dma_file.vrom_start))

    file_splits_path = config_dir / f"files_{dma_file.name}.csv"
    if file_splits_path.exists():
        default_filename = ""
        splits_data = spimdisasm.common.FileSplitFormat()
        splits_data.readCsvFile(file_splits_path)
        reloc_section = None
    elif dma_file.overlay_dir is not None:
        z_name = get_z_name_for_overlay(dma_file.name)
        default_filename = f"src/overlays/{dma_file.overlay_dir}/{dma_file.name}/{z_name}.s"
        splits_data = None
        reloc_section = spimdisasm.mips.sections.SectionRelocZ64(
            context,
            vromStart=0,
            vromEnd=len(data),
            vram=dma_file.overlay_vram_start,
            filename=default_filename,
            array_of_bytes=data,
            segmentVromStart=0,
            overlayCategory=None)
    else:
        raise Exception(f"DMA file {dma_file.name} is not an overlay but has no file splits")

    return spimdisasm.mips.FileSplits(
        context,
        vromStart=0,
        vromEnd=len(data),
        vram=dma_file.overlay_vram_start,
        filename=default_filename,
        array_of_bytes=data,
        segmentVromStart=0,
        overlayCategory=None,
        splitsData=splits_data,
        relocSection=reloc_section)

def main():
    parser = argparse.ArgumentParser(description="Disassemble a ROM.")
    parser.add_argument("rom", type=Path, help="Input ROM")
    parser.add_argument("-o", "--output-dir", help="Output directory", type=Path, required=True)
    parser.add_argument("--config-dir", help="Config directory", type=Path, required=True)
    parser.add_argument("--split-functions", help="Write functions into separate files", type=Path)

    spimdisasm.common.Context.addParametersToArgParse(parser)
    spimdisasm.common.GlobalConfig.addParametersToArgParse(parser)
    spimdisasm.mips.InstructionConfig.addParametersToArgParse(parser)

    args = parser.parse_args()

    context = spimdisasm.common.Context()
    context.parseArgs(args)
    context.changeGlobalSegmentRanges(0x00000000, 0x01000000, 0x8000000, 0x81000000)
    context.addBannedSymbolRange(0x80000000, 0x80000400)

    spimdisasm.mips.InstructionConfig.parseArgs(args)
    spimdisasm.common.GlobalConfig.parseArgs(args)

    spimdisasm.common.GlobalConfig.ASM_USE_PRELUDE = False
    spimdisasm.common.GlobalConfig.PRODUCE_SYMBOLS_PLUS_OFFSET = True
    spimdisasm.common.GlobalConfig.TRUST_USER_FUNCTIONS = True

    dma_files = parse_file_addresses(args.config_dir / "file_addresses.csv")

    output_files = collections.defaultdict(list)
    with open(args.rom, "rb") as f:
        for dma_file in dma_files:
            file_splits = load_file_splits(context, args.config_dir, dma_file, f)

            for section_type, files in file_splits.sectionsDict.items():
                # TODO: disassemble overlay reloc sections?
                if section_type == spimdisasm.common.FileSectionType.Reloc:
                    continue

                for path, section in files.items():
                    output_files[path].append(section)

    for path, sections in sorted(output_files.items()):
        spimdisasm.common.Utils.printQuietless(f"Analyzing {path} ...")
        for section in sections:
            section.analyze()

    for path, sections in sorted(output_files.items()):
        spimdisasm.common.Utils.printQuietless(f"Writing {path} ...")
        output_path = args.output_dir / path
        output_path.parent.mkdir(parents=True, exist_ok=True)
        with open(output_path, "w") as f:
            f.write(".include \"macro.inc\"\n")
            f.write("\n")
            f.write(".set noat\n")
            f.write(".set noreorder\n")
            f.write(".set gp=64\n")
            for section in sections:
                f.write("\n")
                f.write(f".section {section.sectionType.toStr()}\n")
                f.write("\n")
                f.write(f".align 4\n")
                f.write("\n")
                section.disassembleToFile(f)

        if args.split_functions is not None:
            rodata_list = []
            for section in sections:
                if section.sectionType == spimdisasm.common.FileSectionType.Rodata:
                    rodata_list.append(section)

            for section in sections:
                if section.sectionType != spimdisasm.common.FileSectionType.Text:
                    continue
                output_dir = (args.split_functions / section.name).with_suffix("")
                for func in section.symbolList:
                    spimdisasm.mips.FilesHandlers.writeSplitedFunction(output_dir, func, rodata_list)

if __name__ == "__main__":
    main()
