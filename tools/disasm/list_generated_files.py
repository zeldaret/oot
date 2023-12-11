#!/usr/bin/env python3

import argparse
import csv
from pathlib import Path

from file_addresses import parse_file_addresses, get_z_name_for_overlay

def main():
    parser = argparse.ArgumentParser(description="List generated files for the Makefile.")
    parser.add_argument("-o", "--output-dir", help="Output directory", type=Path, required=True)
    parser.add_argument("--config-dir", help="Config directory", type=Path, required=True)

    args = parser.parse_args()

    if not args.config_dir.exists():  # disassembly is not set up for this version
        return

    file_addresses = parse_file_addresses(args.config_dir / "file_addresses.csv")

    generated_files = set()
    for dma_file in file_addresses:
        file_splits_path = args.config_dir / f"files_{dma_file.name}.csv"
        if file_splits_path.exists():
            with open(file_splits_path) as f:
                reader = csv.reader(f)
                for row in reader:
                    if (
                        not row  # blank line
                        or row[2].startswith(".")  # section name or .end
                        or row[2].endswith("_reloc.s")  # TODO: disassemble overlay reloc sections?
                    ):
                        continue
                    generated_files.add(row[2])
        elif dma_file.overlay_dir is not None:
            z_name = get_z_name_for_overlay(dma_file.name)
            generated_files.add(f"src/overlays/{dma_file.overlay_dir}/{dma_file.name}/{z_name}.s")
        else:
            raise Exception(f"DMA file {dma_file.name} is not an overlay but has no file splits")

    for filename in sorted(generated_files):
        print(args.output_dir / filename)

if __name__ == "__main__":
    main()
