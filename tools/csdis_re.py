#!/usr/bin/env python3

# SPDX-FileCopyrightText: 2024 zeldaret
# SPDX-License-Identifier: CC0-1.0

# Re-disassemble cutscene scripts part of the source tree,
# using csdis.py and modifying files in-place


import re
from pathlib import Path
import struct
import sys

import mapfile_parser

import csdis
from overlayhelpers import filemap

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
import sym_info

sys.path.pop(0)

SRC_ENCODING = "UTF-8"

MAPFILE_P = Path("build/gc-eu-mq-dbg/oot-gc-eu-mq-dbg.map")
ELF_P = Path("build/gc-eu-mq-dbg/oot-gc-eu-mq-dbg.elf")
BASEROM_SEGMENTS_P = Path("extracted/gc-eu-mq-dbg/baserom/")

mapfile = mapfile_parser.MapFile()
mapfile.readMapFile(MAPFILE_P)


def resolver(x: Path) -> Path | None:
    if x.suffix == ".plf":
        plf_map_path = x.with_suffix(".map")
        if plf_map_path.exists():
            return plf_map_path
    return None


mapfile = mapfile.resolvePartiallyLinkedFiles(resolver)

local_symbols = sym_info.read_local_symbols_from_mdebug(ELF_P)
sym_info.merge_local_symbols(mapfile, local_symbols)

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


def repl(m: re.Match):
    sym_name = m.group(1)
    sym_rom = mapfile.findSymbolByName(sym_name).symbol.vrom
    file_result = filemap.GetFromRom(sym_rom)
    assert file_result is not None, (sym_name, sym_rom)
    data = (BASEROM_SEGMENTS_P / file_result.name).read_bytes()
    cs_data_bytes = data[file_result.offset :]
    cs_data = [i[0] for i in struct.iter_unpack(">I", cs_data_bytes)]
    cs_size, cs_src = csdis.disassemble_cutscene(cs_data)
    return (
        f"CutsceneData {sym_name}[] = "
        + "{\n"
        + ("\n".join(f"    {line}" for line in cs_src.splitlines()).rstrip())
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
