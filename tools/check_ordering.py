#!/usr/bin/env python3

# SPDX-FileCopyrightText: 2024 zeldaret
# SPDX-License-Identifier: CC0-1.0


from __future__ import annotations

import argparse
import dataclasses
import enum
from pathlib import Path
import sys
from typing import BinaryIO

import elftools.elf.elffile
import mapfile_parser.mapfile


@dataclasses.dataclass
class Reloc:
    name: str
    offset_32: int | None
    offset_hi16: int | None
    offset_lo16: int | None
    addend: int


@dataclasses.dataclass
class Pointer:
    name: str
    addend: int
    base_value: int
    build_value: int


def read_relocs(object_path: Path, section_name: str) -> list[Reloc]:
    with open(object_path, "rb") as f:
        elffile = elftools.elf.elffile.ELFFile(f)
        symtab = elffile.get_section_by_name(".symtab")
        data = elffile.get_section_by_name(section_name).data()

        reloc_section = elffile.get_section_by_name(f".rel{section_name}")
        if reloc_section is None:
            return []

        relocs = []
        offset_hi16 = 0
        for reloc in reloc_section.iter_relocations():
            reloc_offset = reloc.entry["r_offset"]
            reloc_type = reloc.entry["r_info_type"]
            reloc_name = symtab.get_symbol(reloc.entry["r_info_sym"]).name

            if reloc_type == 2:  # R_MIPS_32
                offset_32 = reloc_offset
                addend = int.from_bytes(
                    data[reloc_offset : reloc_offset + 4], "big", signed=True
                )
                relocs.append(Reloc(reloc_name, offset_32, None, None, addend))
            elif reloc_type == 4:  # R_MIPS_26
                pass
            elif reloc_type == 5:  # R_MIPS_HI16
                offset_hi16 = reloc_offset
            elif reloc_type == 6:  # R_MIPS_LO16
                offset_lo16 = reloc_offset
                addend_hi16 = int.from_bytes(
                    data[offset_hi16 + 2 : offset_hi16 + 4], "big", signed=False
                )
                addend_lo16 = int.from_bytes(
                    data[offset_lo16 + 2 : offset_lo16 + 4], "big", signed=True
                )
                addend = (addend_hi16 << 16) + addend_lo16
                relocs.append(Reloc(reloc_name, None, offset_hi16, offset_lo16, addend))
            else:
                raise NotImplementedError(f"Unsupported relocation type: {reloc_type}")

        return relocs


def read_u32(f: BinaryIO, offset: int) -> int:
    f.seek(offset)
    return int.from_bytes(f.read(4), "big")


def read_u16(f: BinaryIO, offset: int) -> int:
    f.seek(offset)
    return int.from_bytes(f.read(2), "big")


def read_s16(f: BinaryIO, offset: int) -> int:
    f.seek(offset)
    return int.from_bytes(f.read(2), "big", signed=True)


def main():
    parser = argparse.ArgumentParser(
        description="Report data/bss reorderings between the baserom and the current build "
        "by parsing relocations from the built object files and comparing their final values "
        "between the baserom and the current build. "
        "Assumes that the only differences are due to ordering and that the text sections of the "
        "ROMS are not shifted."
    )
    parser.add_argument(
        "--oot-version",
        "-v",
        type=str,
        default="gc-eu-mq-dbg",
        help="OOT version (default: gc-eu-mq-dbg)",
    )
    parser.add_argument(
        "--segment",
        type=str,
        help="ROM segment to check, e.g. 'boot', 'code', or 'ovl_player_actor' (default: all)",
    )

    args = parser.parse_args()
    version = args.oot_version

    mapfile = mapfile_parser.mapfile.MapFile()
    mapfile.readMapFile(f"build/{version}/oot-{version}.map")

    # Segments built from source code (filtering out assets)
    source_code_segments = []
    for mapfile_segment in mapfile:
        if (
            args.segment
            and mapfile_segment.name != f"..{args.segment}"
            and mapfile_segment.name != f"..{args.segment}.bss"
        ):
            continue
        if not (
            mapfile_segment.name.startswith("..boot")
            or mapfile_segment.name.startswith("..code")
            or mapfile_segment.name.startswith("..ovl_")
        ):
            continue
        source_code_segments.append(mapfile_segment)

    base = open(f"baseroms/{version}/baserom-decompressed.z64", "rb")
    build = open(f"build/{version}/oot-{version}.z64", "rb")

    # Find all pointers with different values
    pointers = []
    for mapfile_segment in source_code_segments:
        for file in mapfile_segment:
            if not str(file.filepath).endswith(".o"):
                continue
            if file.sectionType == ".bss":
                continue
            for reloc in read_relocs(file.filepath, file.sectionType):
                if reloc.offset_32 is not None:
                    base_value = read_u32(base, file.vrom + reloc.offset_32)
                    build_value = read_u32(build, file.vrom + reloc.offset_32)
                elif reloc.offset_hi16 is not None and reloc.offset_lo16 is not None:
                    if read_u16(base, file.vrom + reloc.offset_hi16) != read_u16(
                        build, file.vrom + reloc.offset_hi16
                    ) or read_u16(base, file.vrom + reloc.offset_hi16) != read_u16(
                        build, file.vrom + reloc.offset_hi16
                    ):
                        print(
                            f"Error: Reference to {reloc.name} in {file.filepath} is in a shifted portion of the ROM.\n"
                            "Please ensure that the only differences between the baserom and the current build are due to data ordering.",
                            file=sys.stderr,
                        )
                        sys.exit(1)

                    base_value = (
                        read_u16(base, file.vrom + reloc.offset_hi16 + 2) << 16
                    ) + read_s16(base, file.vrom + reloc.offset_lo16 + 2)
                    build_value = (
                        read_u16(build, file.vrom + reloc.offset_hi16 + 2) << 16
                    ) + read_s16(build, file.vrom + reloc.offset_lo16 + 2)
                else:
                    assert False, "Invalid relocation"

                if base_value != build_value:
                    pointers.append(
                        Pointer(reloc.name, reloc.addend, base_value, build_value)
                    )

    # Remove duplicates and sort by baserom address
    pointers = list({p.base_value: p for p in pointers}.values())
    pointers.sort(key=lambda p: p.base_value)

    # Go through sections and report differences
    for mapfile_segment in source_code_segments:
        for file in mapfile_segment:
            pointers_in_section = [
                p for p in pointers if file.vram <= p.build_value < file.vram + file.size
            ]
            if not pointers_in_section:
                continue

            print(f"{file.filepath} {file.sectionType} is reordered:")
            for i, p in enumerate(pointers_in_section):
                if p.addend > 0:
                    addend_str = f"+0x{p.addend:X}"
                elif p.addend < 0:
                    addend_str = f"-0x{-p.addend:X}"
                else:
                    addend_str = ""

                if i > 0 and p.build_value < pointers_in_section[i - 1].build_value:
                    print("  --------------------")  # BSS wraps around
                print(
                    f"  {p.base_value:08X} -> {p.build_value:08X} {p.name}{addend_str}"
                )


if __name__ == "__main__":
    main()
