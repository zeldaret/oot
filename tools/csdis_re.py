#!/usr/bin/env python3

# SPDX-FileCopyrightText: 2024 zeldaret
# SPDX-License-Identifier: CC0-1.0

# Re-disassemble cutscene scripts part of the source tree,
# using csdis.py and modifying files in-place


import re
from pathlib import Path
import struct

import mapfile_parser

import csdis
from overlayhelpers import filemap


SRC_ENCODING = "UTF-8"

MAPFILE_P = Path("build/gc-eu-mq-dbg/oot-gc-eu-mq-dbg.map")
BASEROM_SEGMENTS_P = Path("extracted/gc-eu-mq-dbg/baserom/")

HARDCODED_SYM_ROM = {
    "D_8096C1A4": 0xD25834,
    "D_80AF0880": 0xEA6860,
    "D_80AF10A4": 0xEA7084,
    "D_80AF1728": 0xEA7708,
    "D_808BCE20": 0xC8BB20,
    "D_808BD2A0": 0xC8BFA0,
    "D_808BD520": 0xC8C220,
    "D_808BD790": 0xC8C490,
    "D_80AB431C": 0xE6A38C,
    "D_8098786C": 0xD40EFC,
    "D_80B4C5D0": 0xF022D0,
    "D_80ABF9D0": 0xE75A40,
    "D_80ABFB40": 0xE75BB0,
    "D_80AF411C": 0xEAA0FC,
    "D_80A88164": 0xE3ED34,
    "D_808BB2F0": 0xC89FF0,
    "D_808BB7A0": 0xC8A4A0,
    "D_808BBD90": 0xC8AA90,
    "gChildWarpInCS": 0xD45460,
    "gAdultWarpOutToTCS": 0xD45340,
    "gChildWarpOutToTCS": 0xD45840,
    "gChildWarpInToTCS": 0xD45710,
    "gAdultWarpInToTCS": 0xD45230,
    "gAdultWarpInCS": 0xD44FA0,
    "gChildWarpOutCS": 0xD45590,
    "gAdultWarpOutCS": 0xD450B0,
    "D_8099010C": 0xD4974C,
}

mapfile = mapfile_parser.MapFile()
mapfile.readMapFile(MAPFILE_P)

pat_CutsceneData = re.compile(
    r"""
    CutsceneData
    \s+
    ( [^\s]* )  # symbol name
    \s*
    \[ \s* \]
    \s* = \s*
    \{
        (?: [^}]* | \n )*
    \} ;
    """,
    re.VERBOSE,
)


def get_sym_rom(sym_name: str):
    rom = HARDCODED_SYM_ROM.get(sym_name)
    if rom:
        return rom
    print(f"Trying to find {sym_name} from the map (assuming OK build)")
    sym = mapfile.findSymbolByName(sym_name)
    print(f'"{sym_name}": 0x{sym.symbol.vrom:X}')
    return sym.symbol.vrom


def repl(m: re.Match):
    sym_name = m.group(1)
    sym_rom = get_sym_rom(sym_name)
    file_result = filemap.GetFromRom(sym_rom)
    assert file_result is not None, (sym_name, sym_rom)
    data = (BASEROM_SEGMENTS_P / file_result.name).read_bytes()
    cs_data_bytes = data[file_result.offset :]
    cs_data = [i[0] for i in struct.iter_unpack(">I", cs_data_bytes)]
    return (
        f"CutsceneData {sym_name}[] = "
        + "{\n"
        + (
            "\n".join(
                f"    {line}"
                for line in csdis.disassemble_cutscene(cs_data).splitlines()
            ).rstrip()
        )
        + "\n};"
    )


def main():
    for file_c in Path("src").glob("**/*.c"):
        src = file_c.read_text(encoding=SRC_ENCODING)
        src_new = pat_CutsceneData.sub(repl, src)
        if src_new != src:
            file_c.write_text(src_new, encoding=SRC_ENCODING)
            print(file_c)


if __name__ == "__main__":
    main()
