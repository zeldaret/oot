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
        "-v",
        "--version",
        dest="oot_version",
        required=True,
        help="OOT version",
    )

    args = parser.parse_args()

    version = args.oot_version
    output_dir = version_config.extracted_dir(version) / "baserom"
    rom = version_config.baserom_dir(version) / "baserom-decompressed.z64"

    rom_data = memoryview(rom.read_bytes())

    config = version_config.load_version_config(version)
    dmadata_start = config.dmadata_start
    dma_names = config.dmadata_segments.keys()

    dma_entries = dmadata.read_dmadata(rom_data, dmadata_start)
    if len(dma_names) != len(dma_entries):
        print(
            f"Error: expected {len(dma_names)} DMA entries but found {len(dma_entries)} in ROM",
            file=sys.stderr,
        )
        exit(1)

    output_dir.mkdir(parents=True, exist_ok=True)
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
        segment_path = output_dir / dma_name
        segment_path.write_bytes(segment_data)

    print(f"Extracted {len(dma_entries)} segments to {output_dir}")


if __name__ == "__main__":
    main()
