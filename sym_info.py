#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import argparse
import bisect
from dataclasses import dataclass
import os
from pathlib import Path
from typing import Optional
import struct
import sys

import colorama
import elftools.elf.elffile
import mapfile_parser


@dataclass
class MdebugSymbolicHeader:
    magic: int
    vstamp: int
    ilineMax: int
    cbLine: int
    cbLineOffset: int
    idnMax: int
    cbDnOffset: int
    ipdMax: int
    cbPdOffset: int
    isymMax: int
    cbSymOffset: int
    ioptMax: int
    cbOptOffset: int
    iauxMax: int
    cbAuxOffset: int
    issMax: int
    cbSsOffset: int
    issExtMax: int
    cbSsExtOffset: int
    ifdMax: int
    cbFdOffset: int
    crfd: int
    cbRfdOffset: int
    iextMax: int
    cbExtOffset: int


@dataclass
class MdebugFileDescriptor:
    adr: int
    rss: int
    issBase: int
    cbSs: int
    isymBase: int
    csym: int
    ilineBase: int
    cline: int
    ioptBase: int
    copt: int
    ipdFirst: int
    cpd: int
    iauxBase: int
    caux: int
    rfdBase: int
    crfd: int
    bitfield: int
    cbLineOffset: int
    cbLine: int


@dataclass
class MdebugSymbol:
    iss: int
    value: int
    st: int
    sc: int
    index: int


@dataclass
class LocalSymbol:
    name: str
    address: int


def read_mdebug_symbolic_header(f, offset: int) -> MdebugSymbolicHeader:
    f.seek(offset)
    data = f.read(96)
    return MdebugSymbolicHeader(*struct.unpack(">2H23I", data))


def read_mdebug_file_descriptor(f, offset: int) -> MdebugFileDescriptor:
    f.seek(offset)
    data = f.read(72)
    return MdebugFileDescriptor(*struct.unpack(">I2iI6iHh4iI2I", data))


def read_mdebug_symbol(f, offset: int) -> MdebugSymbol:
    f.seek(offset)
    data = f.read(12)
    word0, word1, word2 = struct.unpack(">III", data)
    return MdebugSymbol(
        word0, word1, (word2 >> 26) & 0x3F, (word2 >> 21) & 0x1F, word2 & 0xFFFFF
    )


def read_mdebug_string(f, offset: int) -> str:
    f.seek(offset)
    data = bytearray()
    while True:
        char = f.read(1)[0]
        if char == 0:
            break
        data.append(char)
    return data.decode("ascii")


def read_local_symbols_from_mdebug(elf_path: Path) -> list[LocalSymbol]:
    local_symbols = []

    with open(elf_path, "r+b") as f:
        elf = elftools.elf.elffile.ELFFile(f)

        mdebug_offset = 0
        for section in elf.iter_sections():
            if section.name == ".mdebug":
                mdebug_offset = section["sh_offset"]
                break

        if mdebug_offset == 0:
            print(f"No .mdebug section found in '{elf_path}'")
            return []

        symbolic_header = read_mdebug_symbolic_header(f, mdebug_offset)

        for fd_num in range(symbolic_header.ifdMax):
            fd = read_mdebug_file_descriptor(
                f, symbolic_header.cbFdOffset + fd_num * 72
            )

            for sym_num in range(fd.isymBase, fd.isymBase + fd.csym):
                sym = read_mdebug_symbol(f, symbolic_header.cbSymOffset + sym_num * 12)
                if sym.st == 2:  # stStatic
                    if not (
                        sym.sc == 2 or sym.sc == 3 or sym.sc == 15
                    ):  # scData, scBss, scRData
                        continue

                    sym_name = read_mdebug_string(
                        f, symbolic_header.cbSsOffset + fd.issBase + sym.iss
                    )

                    # EGCS mangles names of internal variables, and seemingly ":V" is for in-function static variables
                    if "." in sym_name:
                        continue
                    if ":" in sym_name:
                        sym_name, rest = sym_name.split(":", 1)
                        if not rest.startswith("V"):
                            continue

                    local_symbols.append(LocalSymbol(sym_name, sym.value))
                elif sym.st == 14:  # stStaticProc
                    sym_name = read_mdebug_string(
                        f, symbolic_header.cbSsOffset + fd.issBase + sym.iss
                    )
                    local_symbols.append(LocalSymbol(sym_name, sym.value))

    return local_symbols


def merge_local_symbols(
    map_file: mapfile_parser.mapfile.MapFile, local_symbols: list[LocalSymbol]
):
    local_symbols.sort(key=lambda s: s.address)

    for segment in map_file:
        for file in segment:
            # TODO: handle segmented addresses?
            if file.vram < 0x80000000:
                continue

            start_address = file.vram
            end_address = file.vram + file.size

            start_index = bisect.bisect_left(
                local_symbols, start_address, key=lambda s: s.address
            )
            end_index = bisect.bisect_left(
                local_symbols, end_address, key=lambda s: s.address
            )
            if start_index == end_index:
                continue

            symbols = file.copySymbolList()
            for sym in local_symbols[start_index:end_index]:
                if file.vrom is None:
                    vrom = None
                else:
                    vrom = sym.address - start_address + file.vrom
                symbols.append(
                    mapfile_parser.mapfile.Symbol(
                        sym.name, sym.address, None, vrom, None
                    )
                )

            symbols.sort(key=lambda s: s.vram)

            # Recompute symbol sizes
            for i in range(len(symbols)):
                if i == len(symbols) - 1:
                    symbols[i].size = end_address - symbols[i].vram
                else:
                    symbols[i].size = symbols[i + 1].vram - symbols[i].vram

            file.setSymbolList(symbols)


def find_symbols_by_name(
    map_file: mapfile_parser.mapfile.MapFile, sym_name: str
) -> list[mapfile_parser.mapfile.FoundSymbolInfo]:
    infos = []

    for segment in map_file:
        for file in segment:
            for sym in file:
                if sym.name == sym_name:
                    infos.append(mapfile_parser.mapfile.FoundSymbolInfo(file, sym))

    return infos


def print_map_file(map_file: mapfile_parser.mapfile.MapFile, *, colors: bool):
    for segment in map_file:
        print(
            f"{colorama.Fore.GREEN if colors else ''}"
            f"{segment.name}"
            f"{colorama.Fore.RESET if colors else ''}"
        )
        for file in segment:
            # Ignore debug sections
            if (
                file.sectionType in (".pdr", ".line", ".gnu.attributes")
                or file.sectionType.startswith(".debug")
                or file.sectionType.startswith(".mdebug")
            ):
                continue
            print(
                f"{colorama.Fore.CYAN if colors else ''}"
                f"    {file.asStr()}"
                f"{colorama.Fore.RESET if colors else ''}"
            )
            for sym in file:
                vram_str = f"{sym.vram:08X}"
                if sym.vrom is None:
                    vrom_str = "      "
                else:
                    vrom_str = f"{sym.vrom:06X}"
                print(f"        {vram_str} {vrom_str} {sym.name}")


def sym_info_main():
    parser = argparse.ArgumentParser(
        description="Display various information about symbol or addresses."
    )
    parser.add_argument(
        "symname",
        nargs="?",
        help="symbol name or VROM/VRAM address to lookup. If not given, all symbols will be printed.",
    )
    parser.add_argument(
        "-e",
        "--expected",
        dest="use_expected",
        action="store_true",
        help="use the map file and elf in expected/build/ instead of build/",
    )
    parser.add_argument(
        "--color",
        help="Whether to print using colors or not",
        choices=("never", "always", "auto"),
        default="auto",
    )
    parser.add_argument(
        "-v",
        "--version",
        dest="oot_version",
        help="which version should be processed (default: gc-eu-mq-dbg)",
        default="gc-eu-mq-dbg",
    )
    parser.add_argument(
        "--build-dir",
        dest="build_dir",
        help="the build folder in which to read the map and elf (default: `build/VERSION/`)",
        type=Path,
        default=None,
    )

    args = parser.parse_args()

    if args.color == "never":
        colors = False
    elif args.color == "always":
        colors = True
    else:
        # auto
        if os.getenv("NO_COLOR"):
            colors = False
        else:
            colors = sys.stdout.isatty()

    build_dir: Path = args.build_dir
    if build_dir is None:
        build_dir = Path("build") / args.oot_version
        map_path = build_dir / f"oot-{args.oot_version}.map"
        elf_path = build_dir / f"oot-{args.oot_version}.elf"
    else:
        map_paths = list(build_dir.glob("*.map"))
        elf_paths = list(build_dir.glob("*.elf"))

        if len(map_paths) > 1:
            print(f"Found several .map files instead of just one:")
            print("\n".join(map(str, map_paths)))
            sys.exit(1)
        if not map_paths:
            print("Could not find map file")
            sys.exit(1)

        if len(elf_paths) > 1:
            print(f"Found several .elf files instead of just one:")
            print("\n".join(map(str, elf_paths)))
            sys.exit(1)

        map_path = map_paths[0]
        elf_path = elf_paths[0] if elf_paths else None

    if args.use_expected:
        map_path = (
            Path("expected")
            / "build"
            / args.oot_version
            / f"oot-{args.oot_version}.map"
        )
        elf_path = (
            Path("expected")
            / "build"
            / args.oot_version
            / f"oot-{args.oot_version}.elf"
        )

    if not map_path.exists():
        print(f"Could not find map_file at '{map_path}'")
        sys.exit(1)

    map_file = mapfile_parser.mapfile.MapFile()
    map_file.readMapFile(map_path)

    if elf_path and elf_path.exists():
        local_symbols = read_local_symbols_from_mdebug(elf_path)
        merge_local_symbols(map_file, local_symbols)
    else:
        print(
            "Could not find ELF file"
            + (f" at '{elf_path}'" if elf_path else "")
            + ", local symbols will not be available"
        )

    sym_name = args.symname
    if sym_name is None:
        print_map_file(map_file, colors=colors)
        sys.exit(0)

    infos: list[mapfile_parser.mapfile.FoundSymbolInfo] = []
    all_possible_files: list[mapfile_parser.mapfile.File] = []
    try:
        address = int(sym_name, 0)

        if address >= 0x0100_0000:
            info, possible_files = map_file.findSymbolByVram(address)
            if info is not None:
                infos += [info]
            all_possible_files += possible_files

        info, possible_files = map_file.findSymbolByVrom(address)
        if info is not None:
            infos += [info]
        all_possible_files += possible_files
    except ValueError:
        infos = find_symbols_by_name(map_file, sym_name)

    if not infos:
        print(f"'{sym_name}' not found in map file '{map_path}'")
        if all_possible_files:
            print("But it may be a local symbol of either of the following files:")
            for f in all_possible_files:
                print(f"    {f.asStr()})")
        sys.exit(1)

    for info in infos:
        print(info.getAsStrPlusOffset(sym_name))


if __name__ == "__main__":
    sym_info_main()
