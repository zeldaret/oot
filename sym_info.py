#!/usr/bin/env python3

import argparse
from pathlib import Path

import mapfile_parser


def symInfoMain():
    parser = argparse.ArgumentParser(description="Display various information about a symbol or address.")
    parser.add_argument("symname", help="symbol name or VROM/VRAM address to lookup")
    parser.add_argument("-v", "--version", dest="oot_version", help="Which version should be processed", default="gc-eu-mq-dbg")
    parser.add_argument("-e", "--expected", dest="use_expected", action="store_true", help="use the map file in expected/build/ instead of build/")

    args = parser.parse_args()

    BUILTMAP = Path("build") / args.oot_version / f"oot-{args.oot_version}.map"

    mapPath = BUILTMAP
    if args.use_expected:
        mapPath = "expected" / BUILTMAP

    # Guess if the input is an VROM/VRAM or a symbol name
    as_vram = False
    as_vrom = False
    as_name = False
    try:
        address = int(args.symname, 0)
        if address >= 0x01000000:
            as_vram = True
        else:
            as_vrom = True
    except ValueError:
        as_name = True

    mapfile_parser.frontends.sym_info.doSymInfo(
        mapPath, args.symname, as_vram=as_vram, as_vrom=as_vrom, as_name=as_name
    )


if __name__ == "__main__":
    symInfoMain()
