#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from __future__ import annotations

import argparse
from pathlib import Path
import sys

import dmadata


def main():
    parser = argparse.ArgumentParser(
        description="Extract DMA segments from an uncompressed ROM."
    )
    parser.add_argument(
        "rom", metavar="ROM", type=Path, help="Path to uncompressed ROM"
    )
    parser.add_argument(
        "-o",
        "--output-dir",
        type=Path,
        required=True,
        help="Output directory for segments",
    )
    parser.add_argument(
        "--dma-start",
        type=lambda s: int(s, 16),
        required=True,
        help=(
            "The dmadata location in the rom, as a hexadecimal offset (e.g. 0x12f70)"
        ),
    )
    parser.add_argument(
        "--dma-names",
        type=Path,
        required=True,
        help="Path to file containing names of DMA segments",
    )

    args = parser.parse_args()

    rom_data = args.rom.read_bytes()

    dma_names = args.dma_names.read_text().splitlines()
    dma_entries = dmadata.read_dmadata(rom_data, args.dma_start)
    if len(dma_names) != len(dma_entries):
        print(
            f"Error: expected {len(dma_names)} DMA entries but found {len(dma_entries)} in ROM",
            file=sys.stderr,
        )
        exit(1)

    args.output_dir.mkdir(parents=True, exist_ok=True)
    for dma_name, dma_entry in zip(dma_names, dma_entries):
        if dma_entry.is_compressed():
            print(f"Error: segment {dma_name} is compressed", file=sys.stderr)
            exit(1)
        segment_data = rom_data[dma_entry.vrom_start : dma_entry.vrom_end]
        segment_path = args.output_dir / dma_name
        segment_path.write_bytes(segment_data)

    print(f"Extracted {len(dma_entries)} segments to {args.output_dir}")


if __name__ == "__main__":
    main()