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
        description="Extract incbin pieces from an uncompressed ROM."
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
    baserom_segments_dir = version_config.extracted_dir(version) / "baserom"
    output_dir = version_config.extracted_dir(version) / "incbin"

    config = version_config.load_version_config(version)

    output_dir.mkdir(parents=True, exist_ok=True)
    for incbin in config.incbins:
        incbin_path = output_dir / incbin.name
        with open(baserom_segments_dir / incbin.segment, "rb") as f:
            offset = incbin.vram - config.dmadata_segments[incbin.segment].vram
            f.seek(offset)
            incbin_data = f.read(incbin.size)
            incbin_path.write_bytes(incbin_data)

    print(f"Extracted {len(config.incbins)} incbin pieces to {output_dir}")


if __name__ == "__main__":
    main()
