#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: MIT

import argparse
import itertools
import subprocess
from pathlib import Path

from elftools.elf.elffile import ELFFile
from elftools.elf.sections import SymbolTableSection


def ranges(i: list[int]):
    for _, b in itertools.groupby(enumerate(i), lambda pair: pair[1] - pair[0]):
        b = list(b)
        yield b[0][1], b[-1][1]


def get_compressed_segment_ranges(spec_path: Path) -> list[tuple[int, int]]:
    spec = spec_path.read_text()
    compress_segments = []

    shift = 0
    for i, segment in enumerate(spec.split("beginseg\n")[1:], 0):
        directives = segment.split("endseg")[0].split("\n")

        for directive in directives:
            directive = directive.strip()
            if directive.startswith("flags") and "NOLOAD" in directive:
                shift += 1
            elif directive.startswith("compress"):
                compress_segments.append(i - shift)

    return list(ranges(compress_segments))


def get_dmadata_start_len(elf_path: Path) -> tuple[int, int]:
    dmadata_start = -1
    dmadata_end = -1

    with elf_path.open("rb") as elf_file:
        elf = ELFFile(elf_file)

        for section in elf.iter_sections():
            if not isinstance(section, SymbolTableSection):
                continue

            for sym in section.iter_symbols():
                if sym.name == "_dmadataSegmentRomStart":
                    dmadata_start = int(sym["st_value"])
                elif sym.name == "_dmadataSegmentRomEnd":
                    dmadata_end = sym["st_value"]
                if dmadata_start != -1 and dmadata_end != -1:
                    break

        assert (
            dmadata_start != -1
        ), "_dmadataSegmentRomStart symbol not found in supplied ELF"
        assert (
            dmadata_end != -1
        ), "_dmadataSegmentRomEnd symbol not found in supplied ELF"

    return dmadata_start, (dmadata_end - dmadata_start) // 0x10


def main():
    parser = argparse.ArgumentParser(description="Compress ROM")

    parser.add_argument("in_rom", help="Uncompressed input ROM filename", type=Path)
    parser.add_argument("out_rom", help="Compressed output ROM filename", type=Path)
    parser.add_argument("elf", help="Path to the uncompressed ROM elf file", type=Path)
    parser.add_argument("spec", help="path to processed spec file", type=Path)
    parser.add_argument("--cache", help="Cache directory")
    parser.add_argument(
        "--threads",
        help="Number of threads to run compression on, 0 disables multithreading",
        type=int,
        default=0,
    )
    parser.add_argument(
        "--mb",
        help="compressed ROM size in MB, default is the smallest multiple of 8mb fitting the whole ROM",
    )
    parser.add_argument(
        "--matching",
        help="matching compression, forfeits some useful optimizations",
        action="store_true",
    )
    parser.add_argument(
        "--stderr",
        help="z64compress will write its output messages to stderr instead of stdout",
        action="store_true",
    )

    args = parser.parse_args()

    dma_addr, dma_len = get_dmadata_start_len(args.elf)

    compressed_ranges = get_compressed_segment_ranges(args.spec)
    indices_list = []
    for start, end in compressed_ranges:
        if start != end:
            indices_list.append(f"{start}-{end}")
        else:
            indices_list.append(f"{start}")

    command = f"./tools/z64compress/z64compress "
    command += f"--in {args.in_rom} "
    command += f"--out {args.out_rom} "
    command += f"--codec yaz "
    command += f"--dma 0x{dma_addr:X},{dma_len} "
    command += f"--compress {','.join(indices_list)} "

    if args.matching:
        command += f"--matching "
    if args.mb is not None:
        command += f"--mb {args.mb} "
    if args.cache:
        command += f"--cache {args.cache} "
    if args.threads > 0:
        command += f"--threads {args.threads} "
    if not args.stderr:
        command += f"--only-stdout "

    print(command)
    try:
        subprocess.check_call(command, shell=True)
    except subprocess.CalledProcessError as e:
        # Return the same error code for the wrapper if z64compress fails
        exit(e.returncode)


if __name__ == "__main__":
    main()
