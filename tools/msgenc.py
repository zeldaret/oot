#!/usr/bin/env python3
#
#   message_data_static text encoder
#

import argparse, ast, re

charmap = {}

string_regex = re.compile(r"([\"'`])(?:[\s\S])*?(?:(?<!\\)\1)")

def read_charmap(path):
    global charmap

    with open(path) as infile:
        charmap = infile.read()

    charmap = ast.literal_eval(charmap)
    charmap = dict([(repr(k)[1:-1],chr(v)) for k,v in charmap.items()])

def cvt_str(m):
    string = m.group(0)

    for orig,char in charmap.items():
        string = string.replace(orig, char)

    return string

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Encode message_data_static text headers")
    parser.add_argument("charmap", help="path to charmap file specifying custom encoding elements")
    parser.add_argument("input", help="path to file to be encoded")
    parser.add_argument("output", help="encoded file")
    args = parser.parse_args()

    read_charmap(args.charmap)

    contents = ""
    with open(args.input, "r") as infile:
        contents = infile.read()

    contents = re.sub(string_regex, cvt_str, contents)

    with open(args.output, "w", encoding="raw_unicode_escape") as outfile:
        outfile.write(contents)
