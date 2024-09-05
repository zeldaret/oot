#!/usr/bin/env python3
# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import argparse
from colorama import Fore
from pathlib import Path

import mapfile_parser


# symbols listed here will not be reported as unknown
IGNORE_NTSC_1_2_SYMS_MISSING = """
func_800ADC5C_unknown  func_800ADE30_unknown  func_80AEEA48_unknown  func_80800AD0_unknown  func_80800B08_unknown  func_800AF4DC_unknown  func_800CDDF8_unknown  func_800014E8_unknown  func_800AE558_unknown  func_800AE064_unknown  func_800AE1E0_unknown  func_800014FC_unknown  func_800ADFE4_unknown  func_800CDDC4_unknown  func_800AF0E0_unknown  func_800AE2B8_unknown  func_800AF304_unknown  func_800AE020_unknown  func_800AE05C_unknown  func_800AE408_unknown  func_8000161C_unknown  func_800AF558_unknown  func_800AED1C_unknown  func_80001640_unknown  func_800ADF4C_unknown  func_800015E8_unknown  func_800ADF90_unknown  func_800ADD14_unknown  func_800AE998_unknown  func_800AE4C0_unknown  func_800AF3DC_unknown  func_800AF1C4_unknown  func_8009D434_unknown  func_800AE35C_unknown  func_800AF720_unknown  func_800AF370_unknown  func_800AE258_unknown  func_800AF7F0_unknown  func_80001714_unknown  func_800AEC94_unknown  func_800ADDF0_unknown  func_800AE1F8_unknown
__osReallocDebug  __osMallocRDebug  __osFreeDebug  __osMallocDebug
guTranslateF  guScaleF  guMtxL2F
osEPiWriteIo  createSpeedParam
AudioDebug_ProcessInput
func_800FF334
n64dd_SetDiskVersion
sJpegTask  _n64ddSegmentRomStart  _n64ddSegmentRomEnd  _n64ddSegmentStart  _string_n64dd_c
_Putfld  _Ldunscale  _Genld
""".split()


def get_ldscript_syms(ldscript_p: Path):
    symbols = set()
    for l in ldscript_p.read_text().splitlines():
        if "=" not in l:
            continue
        sym = l.split("=")[0].strip()
        symbols.add(sym)
    return symbols


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-v", "--version", dest="oot_version", required=True)
    args = parser.parse_args()

    version = args.oot_version

    ignore_syms_missing = set(
        {
            "ntsc-1.2": IGNORE_NTSC_1_2_SYMS_MISSING,
        }.get(version, ())
    )

    mapfile = mapfile_parser.mapfile.MapFile()
    mapfile_path = Path(f"build/{version}/oot-{version}.map")
    mapfile.readMapFile(mapfile_path)

    map_symbols = set()
    for segment in mapfile:
        for file in segment:
            for sym in file:
                map_symbols.add(sym.name)

    has_unknown_metadata_syms = False

    undefined_syms_p = Path(f"build/{version}/undefined_syms.txt")
    undefined_syms = get_ldscript_syms(undefined_syms_p)

    known_syms = map_symbols | undefined_syms

    for metadata_p in (
        Path(f"tools/disasm/{version}/functions.txt"),
        Path(f"tools/disasm/{version}/variables.txt"),
    ):
        metadata_symbols = get_ldscript_syms(metadata_p)
        unknown_metadata_syms = metadata_symbols - known_syms
        unknown_metadata_syms -= ignore_syms_missing
        if unknown_metadata_syms:
            print(
                f"{Fore.RED}Found",
                len(unknown_metadata_syms),
                f"symbols in{Fore.RESET}",
                metadata_p,
                f"{Fore.RED}that are neither in the map",
                f"nor in undefined_syms.txt{Fore.RESET}",
            )
            print("Were they renamed and the disasm metadata not updated? (or is the map out of date?)")
            print("  ".join(unknown_metadata_syms))
            has_unknown_metadata_syms = True

    if has_unknown_metadata_syms:
        exit(1)
    else:
        print(f"{Fore.GREEN}OK{Fore.RESET}")


if __name__ == "__main__":
    main()
