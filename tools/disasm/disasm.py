#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from __future__ import annotations

import argparse
from pathlib import Path
from typing import BinaryIO

import spimdisasm

from file_addresses import DmaFile, parse_file_addresses, get_z_name_for_overlay


def load_file_splits(
    context: spimdisasm.common.Context,
    config_dir: Path,
    dma_file: DmaFile,
    f: BinaryIO,
) -> spimdisasm.mips.FileSplits:
    # Assume that we're reading from a decompressed ROM where the DMA file is
    # now located at the same ROM offset as the VROM start
    f.seek(dma_file.vrom_start)
    data = f.read(dma_file.vrom_end - dma_file.vrom_start)

    file_splits_path = config_dir / f"files_{dma_file.name}.csv"
    if file_splits_path.exists():
        default_filename = dma_file.name
        splits_data = spimdisasm.common.FileSplitFormat()
        splits_data.readCsvFile(file_splits_path)
        reloc_section = None
    elif dma_file.overlay_dir is not None:
        z_name = get_z_name_for_overlay(dma_file.name)
        default_filename = (
            f"src/overlays/{dma_file.overlay_dir}/{dma_file.name}/{z_name}"
        )
        splits_data = None
        reloc_section = spimdisasm.mips.sections.SectionRelocZ64(
            context,
            vromStart=0,
            vromEnd=len(data),
            vram=dma_file.vram_start,
            filename=f"src/overlays/{dma_file.overlay_dir}/{dma_file.name}/{dma_file.name}",
            array_of_bytes=data,
            segmentVromStart=0,
            overlayCategory=None,
        )
    else:
        raise Exception(
            f"DMA file {dma_file.name} is not an overlay but has no file splits"
        )

    return spimdisasm.mips.FileSplits(
        context,
        vromStart=0,
        vromEnd=len(data),
        vram=dma_file.vram_start,
        filename=default_filename,
        array_of_bytes=data,
        segmentVromStart=0,
        overlayCategory=None,
        splitsData=splits_data,
        relocSection=reloc_section,
    )


def main():
    parser = argparse.ArgumentParser(description="Disassemble a ROM.")
    parser.add_argument("rom", type=Path, help="Input ROM")
    parser.add_argument(
        "-o", "--output-dir", help="Output directory", type=Path, required=True
    )
    parser.add_argument(
        "--config-dir", help="Config directory", type=Path, required=True
    )
    parser.add_argument(
        "--split-functions", help="Write functions into separate files", type=Path
    )

    spimdisasm.common.Context.addParametersToArgParse(parser)
    spimdisasm.common.GlobalConfig.addParametersToArgParse(parser)
    spimdisasm.mips.InstructionConfig.addParametersToArgParse(parser)

    args = parser.parse_args()

    context = spimdisasm.common.Context()
    context.parseArgs(args)
    context.changeGlobalSegmentRanges(0x00000000, 0x01000000, 0x8000000, 0x81000000)
    context.addBannedSymbolRange(0x0000F000, 0x00010100)
    context.addBannedSymbolRange(0x10000000, 0x80000300)
    context.addBannedSymbolRange(0xA0000000, 0xFFFFFFFF)

    spimdisasm.mips.InstructionConfig.parseArgs(args)
    spimdisasm.common.GlobalConfig.parseArgs(args)

    spimdisasm.common.GlobalConfig.PRODUCE_SYMBOLS_PLUS_OFFSET = True
    spimdisasm.common.GlobalConfig.TRUST_USER_FUNCTIONS = True

    dma_files = parse_file_addresses(args.config_dir / "file_addresses.csv")

    print("Loading disasm info...")
    all_file_splits: list[spimdisasm.mips.FileSplits] = []
    with open(args.rom, "rb") as f:
        for dma_file in dma_files:
            file_splits = load_file_splits(context, args.config_dir, dma_file, f)
            all_file_splits.append(file_splits)

    print("Analyzing...")
    for i, file_splits in enumerate(all_file_splits):
        f = i / len(all_file_splits)
        spimdisasm.common.Utils.printQuietless(
            f"{f*100:3.0f}%", "Analyzing", file_splits.name, end="    \r"
        )
        file_splits.analyze()
    print()
    print("Analyzing done.")

    print("Writing disassembled sections...")
    output_dir: Path = args.output_dir
    output_dir.mkdir(parents=True, exist_ok=True)
    for i, file_splits in enumerate(all_file_splits):
        f = i / len(all_file_splits)
        spimdisasm.common.Utils.printQuietless(
            f"{f*100:3.0f}%", "Writing", file_splits.name, end="    \r"
        )
        for sectDict in file_splits.sectionsDict.values():
            for name, section in sectDict.items():
                basepath = output_dir / name
                basepath.parent.mkdir(parents=True, exist_ok=True)
                if section.sectionType == spimdisasm.common.FileSectionType.Reloc:
                    # basepath is like
                    # .../ovl_Overlay_Name/z_overlay_name
                    # and we want to write relocs to
                    # .../ovl_Overlay_Name/ovl_Overlay_Name_reloc.s
                    path = basepath.parent / f"{basepath.parent.name}_reloc.s"
                    with path.open("w", encoding="UTF-8") as f:
                        section.disassembleToFile(f)
                else:
                    section.saveToFile(str(basepath))
    print()
    print("Writing sections done.")

    if args.split_functions is not None:
        print("Writing disassembled functions individually...")
        for i, file_splits in enumerate(all_file_splits):
            f = i / len(all_file_splits)
            spimdisasm.common.Utils.printQuietless(
                f"{f*100:3.0f}%", "Writing", file_splits.name, end="    \r"
            )

            for section_name, text_section in file_splits.sectionsDict[
                spimdisasm.common.FileSectionType.Text
            ].items():
                rodata_section = file_splits.sectionsDict[
                    spimdisasm.common.FileSectionType.Rodata
                ].get(section_name)
                # FunctionRodataEntry represents a function,
                # plus any associated rodata (strings, floats, jump tables...)
                # It can also be rodata that hasn't been associated to any function
                for (
                    func_rodata_entry
                ) in spimdisasm.mips.FunctionRodataEntry.getAllEntriesFromSections(
                    text_section, rodata_section
                ):
                    output_dir = (
                        args.split_functions
                        / section_name
                        / f"{func_rodata_entry.getName()}.s"
                    )
                    output_dir.parent.mkdir(parents=True, exist_ok=True)
                    with output_dir.open("w", encoding="UTF-8") as f:
                        func_rodata_entry.writeToFile(f, writeFunction=True)
        print()
        print("Writing functions done.")


if __name__ == "__main__":
    main()
