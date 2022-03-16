#!/usr/bin/env python3
#
#   message_data_static text encoder
#

import argparse, ast, re

def read_charmap(path):
    with open(path) as infile:
        charmap = infile.read()

    charmap = ast.literal_eval(charmap)
    charmap = { repr(k)[1:-1] : chr(v) for k,v in charmap.items() }

    return charmap

# From https://stackoverflow.com/questions/241327/remove-c-and-c-comments-using-python
def remove_comments(text):
    def replacer(match):
        s = match.group(0)
        if s.startswith('/'):
            return " " # note: a space and not an empty string
        else:
            return s

    pattern = re.compile(
        r'//.*?$|/\*.*?\*/|\'(?:\\.|[^\\\'])*\'|"(?:\\.|[^\\"])*"',
        re.DOTALL | re.MULTILINE
    )
    return re.sub(pattern, replacer, text)

def convert_text(text, charmap):
    def cvt_str(m):
        string = m.group(0)

        for orig,char in charmap.items():
            string = string.replace(orig, char)

        return string

    # Naive string matcher, assumes single line strings and no comments, handles escaped quotations
    string_regex = re.compile(r'"((?:[^\\"\n]|\\.)*)"')

    # Collapse escaped newlines
    text = text.replace("\\\n", "")
    # Encode according to charmap
    text = re.sub(string_regex, cvt_str, text)

    return text

def main():
    parser = argparse.ArgumentParser(description="Encode message_data_static text headers")
    parser.add_argument("charmap", help="path to charmap file specifying custom encoding elements")
    parser.add_argument("input", help="path to file to be encoded")
    parser.add_argument("output", help="encoded file")
    args = parser.parse_args()

    charmap = read_charmap(args.charmap)

    text = ""
    with open(args.input, "r") as infile:
        text = infile.read()

    text = remove_comments(text)
    text = convert_text(text, charmap)

    with open(args.output, "w", encoding="raw_unicode_escape") as outfile:
        outfile.write(text)

if __name__ == "__main__":
    main()
