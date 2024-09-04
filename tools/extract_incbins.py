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
        "baserom_dir", metavar="BASEROM_DIR", type=Path, help="Directory of uncompressed ROM segments"
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
        help="Output directory for incbin pieces",
    )

    args = parser.parse_args()

    config = version_config.load_version_config(args.oot_version)

    args.output_dir.mkdir(parents=True, exist_ok=True)
    for incbin in config.incbins:
        incbin_path = args.output_dir / incbin.name
        with open(args.baserom_dir / incbin.segment, "rb") as f:
            offset = incbin.vram - config.dmadata_segments[incbin.segment].vram
            f.seek(offset)
            incbin_data = f.read(incbin.size)
            incbin_path.write_bytes(incbin_data)

    print(f"Extracted {len(config.incbins)} incbin pieces to {args.output_dir}")


if __name__ == "__main__":
    main()
