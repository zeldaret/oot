#!/usr/bin/env python3

import argparse
from pathlib import Path

try:
    import mapfile_parser
except ImportError:
    print("Missing dependency mapfile_parser, install it with `python3 -m pip install 'mapfile-parser>=1.2.1,<2.0.0'`")
    exit(1)


def symInfoMain():
    parser = argparse.ArgumentParser(description="Display various information about a symbol or address.")
    parser.add_argument("symname", help="symbol name or VROM/VRAM address to lookup")
    parser.add_argument("-e", "--expected", dest="use_expected", action="store_true", help="use the map file in expected/build/ instead of build/")

    args = parser.parse_args()

    BUILTMAP = Path(f"build") / f"z64.map"

    mapPath = BUILTMAP
    if args.use_expected:
        mapPath = "expected" / BUILTMAP

    mapfile_parser.frontends.sym_info.doSymInfo(mapPath, args.symname)

if __name__ == "__main__":
    symInfoMain()
