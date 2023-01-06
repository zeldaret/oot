#!/usr/bin/env python3
import argparse
import os
from pathlib import Path

import xml.etree.ElementTree as XmlTree

from audio_common import Soundfont, write_soundfont_define

def get_fonts(font_path):
    return [parse_font(os.path.join(font_path, font_file)) for font_file in os.listdir(font_path) if font_file.endswith(".xml")]

def parse_font(font_file):
    xml = XmlTree.parse(font_file)
    root = xml.getroot()
    font = Soundfont()
    font.fromXML(root)
    font_name = os.path.basename(font_file)[:-4]
    if font_name[0:1].isnumeric():
        idx = font_name.find('_')
        if idx >= 0:
            font.idx = int(font_name[:idx])
            font.name = font_name[idx + 1:]
    return font

def main(args):
    fonts = get_fonts(args.xmlpath)
    os.makedirs(args.outpath, exist_ok=True)
    for font in fonts:
        incfile = os.path.join(args.outpath, f"{font.idx}.inc")
        if not args.quiet:
            print(f"Generating {incfile} from {args.xmlpath}")
        write_soundfont_define(font, len(fonts), incfile)

if __name__ == "__main__":
    # Args
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("xmlpath", type=Path, help="Path to soundfont XMLs.")
    parser.add_argument("outpath", type=Path, help="The path to generate the INC files.")
    parser.add_argument("--quiet", "-q", action="store_true", help="Suppresses output to standard out.")
    parser.add_argument("--help", "-h", "-?", action="help", help="Show this help message and exit.")
    args = parser.parse_args()
    main(args)
