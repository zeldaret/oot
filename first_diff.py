#!/usr/bin/env python3

import argparse
from pathlib import Path

import rabbitizer
import mapfile_parser


def decodeInstruction(bytesDiff: bytes, mapFile: mapfile_parser.MapFile) -> str:
    word = (bytesDiff[0] << 24) | (bytesDiff[1] << 16) | (bytesDiff[2] << 8) | (bytesDiff[3] << 0)
    instr = rabbitizer.Instruction(word)
    immOverride = None

    if instr.isJumpWithAddress():
        # Instruction is a function call (jal)

        # Get the embedded address of the function call
        symAddress = instr.getInstrIndexAsVram()

        # Search for the address in the mapfile
        symInfo = mapFile.findSymbolByVramOrVrom(symAddress)
        if symInfo is not None:
            # Use the symbol from the mapfile instead of a raw value
            immOverride = symInfo.symbol.name

    return instr.disassemble(immOverride=immOverride, extraLJust=-20)

def firstDiffMain():
    parser = argparse.ArgumentParser(description="Find the first difference(s) between the built ROM and the base ROM.")

    parser.add_argument("-c", "--count", type=int, default=5, help="find up to this many instruction difference(s)")
    parser.add_argument("-v", "--oot-version", help="Which version should be processed", default="gc-eu-mq-dbg")
    parser.add_argument("-a", "--add-colons", action='store_true', help="Add colon between bytes" )

    args = parser.parse_args()

    buildFolder = Path("build") / args.oot_version

    BUILTROM = buildFolder / f"oot-{args.oot_version}.z64"
    BUILTMAP = buildFolder / f"oot-{args.oot_version}.map"

    EXPECTEDROM = Path(f"baseroms/{args.oot_version}/baserom-decompressed.z64")
    EXPECTEDMAP = "expected" / BUILTMAP

    mapfile_parser.frontends.first_diff.doFirstDiff(BUILTMAP, EXPECTEDMAP, BUILTROM, EXPECTEDROM, args.count, mismatchSize=True, addColons=args.add_colons, bytesConverterCallback=decodeInstruction)

if __name__ == "__main__":
    firstDiffMain()
