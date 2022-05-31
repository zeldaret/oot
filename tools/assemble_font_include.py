#!/usr/bin/env python3
import argparse
import os
from pathlib import Path
import struct
import sys
import tempfile

import xml.etree.ElementTree as XmlTree

from makeelf.elf import *
from audio_common import *

def get_font_count(font_file):
    parent = Path(font_file).parent
    count = 0
    for file in os.listdir(parent):
        if file.endswith(".xml"):
            count += 1
    return count

def parse_font(font_file):
    xml = XmlTree.parse(font_file)
    root = xml.getroot()
    font = Soundfont()
    font.fromXML(root)
    font_name = os.path.basename(font_file)[:-4]
    if font_name[0:1].isnumeric():
        idx = font_name.find(' ')
        if idx >= 0:
            font.idx = int(font_name[:idx])
            font.name = font_name[idx + 1:]
    return font

def main(args):
    count = get_font_count(args.infont)
    os.makedirs(args.outpath, exist_ok=True)
    font = parse_font(args.infont)
    incfile = os.path.join(args.outpath, f"{font.idx}.inc")
    if not args.quiet:
        print(f"Generating {incfile} from {args.infont}")
    write_soundfont_define(font, count, incfile)

if __name__ == "__main__":
    # Args
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("infont", type=Path, help="Soundfont XML to create an INC file for.")
    parser.add_argument("outpath", type=Path, help="The path to generate the INC file.")
    parser.add_argument("--quiet", "-q", action="store_true", help="Suppresses output to standard out.")
    parser.add_argument("--help", "-h", "-?", action="help", help="Show this help message and exit.")
    args = parser.parse_args()
    main(args)
