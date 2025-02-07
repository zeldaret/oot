#!/usr/bin/env python3

import argparse
import bisect
from dataclasses import dataclass
from pathlib import Path
from typing import Optional
import struct
import sys

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
            print(f"No .mdebug section found in '{path}'")
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


def sym_info_main():
    parser = argparse.ArgumentParser(
        description="Display various information about a symbol or address."
    )
    parser.add_argument("symname", help="symbol name or VROM/VRAM address to lookup")
    parser.add_argument(
        "-v",
        "--version",
        dest="oot_version",
        help="Which version should be processed",
        default="gc-eu-mq-dbg",
    )
    parser.add_argument(
        "-e",
        "--expected",
        dest="use_expected",
        action="store_true",
        help="use the map file and elf in expected/build/ instead of build/",
    )

    args = parser.parse_args()
    sym_name = args.symname

    BUILTMAP = Path("build") / args.oot_version / f"oot-{args.oot_version}.map"
    BUILTELF = Path("build") / args.oot_version / f"oot-{args.oot_version}.elf"

    map_path = BUILTMAP
    elf_path = BUILTELF
    if args.use_expected:
        map_path = "expected" / BUILTMAP
        elf_path = "expected" / BUILTELF

    if not map_path.exists():
        print(f"Could not find map_file at '{map_path}'")
        sys.exit(1)

    map_file = mapfile_parser.mapfile.MapFile()
    map_file.readMapFile(map_path)

    if elf_path.exists():
        local_symbols = read_local_symbols_from_mdebug(elf_path)
        merge_local_symbols(map_file, local_symbols)
    else:
        print(
            f"Could not find ELF file at '{elf_path}', local symbols will not be available"
        )

    infos: list[mapfile_parser.mapfile.FoundSymbolInfo] = []
    possible_files: list[mapfile_parser.mapfile.File] = []
    try:
        address = int(sym_name, 0)
        if address >= 0x01000000:
            info, possible_files = map_file.findSymbolByVram(address)
            if info is not None:
                infos = [info]
        else:
            info, possible_files = map_file.findSymbolByVrom(address)
            if info is not None:
                infos = [info]
    except ValueError:
        infos = find_symbols_by_name(map_file, sym_name)

    if not infos:
        print(f"'{sym_name}' not found in map file '{map_path}'")
        if len(possible_files) > 0:
            print("But it may be a local symbol of either of the following files:")
            for f in possible_files:
                print(f"    {f.asStr()})")
        sys.exit(1)

    for info in infos:
        print(info.getAsStrPlusOffset(sym_name))


if __name__ == "__main__":
    sym_info_main()
