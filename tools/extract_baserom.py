#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from __future__ import annotations

import argparse
from pathlib import Path
import sys

import dmadata
import version_config


def main():
    parser = argparse.ArgumentParser(
        description="Extract segments from an uncompressed ROM, based on its dmadata."
    )
    parser.add_argument(
        "rom", metavar="ROM", type=Path, help="Path to uncompressed ROM"
    )
    parser.add_argument(
        "-v",
        "--oot-version",
        required=True,
        help="OOT version",
    )
    parser.add_argument(
        "-o",
        "--output-dir",
        type=Path,
        required=True,
        help="Output directory for segments",
    )
    parser.add_argument(
        "--dmadata-start",
        type=lambda s: int(s, 16),
        help=(
            "Override dmadata location for non-matching ROMs, as a hexadecimal offset (e.g. 0x12F70)"
        ),
    )

    args = parser.parse_args()

    rom_data = memoryview(args.rom.read_bytes())

    config = version_config.load_version_config(args.oot_version)
    dmadata_start = args.dmadata_start or config.dmadata_start
    dma_names = config.dmadata_segments.keys()

    dma_entries = dmadata.read_dmadata(rom_data, dmadata_start)
    if len(dma_names) != len(dma_entries):
        print(
            f"Error: expected {len(dma_names)} DMA entries but found {len(dma_entries)} in ROM",
            file=sys.stderr,
        )
        exit(1)

    args.output_dir.mkdir(parents=True, exist_ok=True)
    for dma_name, dma_entry in zip(dma_names, dma_entries):
        if dma_entry.is_syms():
            segment_rom_start = dma_entry.vrom_start
        elif not dma_entry.is_compressed():
            segment_rom_start = dma_entry.rom_start
        else:  # Segment compressed
            print(f"Error: segment {dma_name} is compressed", file=sys.stderr)
            exit(1)

        segment_rom_end = segment_rom_start + (
            dma_entry.vrom_end - dma_entry.vrom_start
        )

        segment_data = rom_data[segment_rom_start:segment_rom_end]
        segment_path = args.output_dir / dma_name
        segment_path.write_bytes(segment_data)

    print(f"Extracted {len(dma_entries)} segments to {args.output_dir}")


if __name__ == "__main__":
    main()
