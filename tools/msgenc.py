#!/usr/bin/env python3
#
#   message_data_static text encoder
#

import argparse, ast, re, sys
from typing import Dict, Optional

def read_charmap(path : str, wchar : bool) -> Dict[str,str]:
    with open(path) as infile:
        charmap = infile.read()
    charmap = ast.literal_eval(charmap)

    out_charmap = {}
    for k,v in charmap.items():
        v = v[wchar]
        if v is None:
            v = 0
        assert isinstance(k, str)
        assert v in (range(0xFFFF + 1) if wchar else range(0xFF + 1))

        k = repr(k)[1:-1]

        if wchar:
            u = (v >> 8) & 0xFF
            l = (v >> 0) & 0xFF
            out_charmap[k] = f"0x{u:02X}, 0x{l:02X},"
        else:
            out_charmap[k] = f"0x{v:02X},"

    return out_charmap

# From https://stackoverflow.com/questions/241327/remove-c-and-c-comments-using-python
def remove_comments(text : str) -> str:
    def replacer(match : re.Match) -> str:
        string : str = match.group(0)
        if string.startswith("/"):
            return " "  # note: a space and not an empty string
        else:
            return string

    pattern = re.compile(
        r'//.*?$|/\*.*?\*/|\'(?:\\.|[^\\\'])*\'|"(?:\\.|[^\\"])*"', re.DOTALL | re.MULTILINE
    )
    return re.sub(pattern, replacer, text)

def convert_text(text : str, encoding : str, charmap : Dict[str, str]) -> str:
    def cvt_str(match : re.Match) -> str:
        string : str = match.group(0)

        # strip quotes
        string = string[1:-1]

        def cvt_escape(s : str):
            # Convert escape sequences such as "\\\"" to "\""
            return s.encode("ascii").decode("unicode-escape")

        run_start = 0

        def emit(text : Optional[str], advance : int):
            nonlocal out, string, i, run_start
            # flush text
            to_flush = string[run_start:i]
            if len(string[run_start:i]) != 0:
                out += ",".join(f"0x{b:02X}" for b in to_flush.encode(encoding))
                out += ","
            if text is None:
                return
            # emit + advance source pos
            out += text
            i += advance
            # start new run
            run_start = i

        out = ""

        i = 0
        while i != len(string):
            # check charmap
            for k in charmap.keys():
                if string.startswith(k, i):
                    # is in charmap, emit the mapped sequence
                    emit(charmap[k], len(k))
                    break
            else:
                if string[i] == "\\" and string[i + 1] != "\\":
                    # is already escaped, emit the escape sequence verbatim
                    if string[i + 1] == "x":
                        # \x**
                        emit("0" + string[i + 1 : i + 4] + ",", 4)
                    else:
                        # \*
                        e = cvt_escape(string[i : i + 2]).encode(encoding)
                        assert len(e) == 1
                        emit(f"0x{e[0]:02X},", 2)
                else:
                    # increment pos, accumulating text that requires encoding
                    i += 1

        # emit remaining accumulated text
        emit(None, 0)

        return out

    # Naive string matcher, assumes single line strings and no comments, handles escaped quotations
    string_regex = re.compile(r'"((?:[^\\"\n]|\\.)*)"')

    # Collapse escaped newlines
    text = text.replace("\\\n", "")
    # Encode according to charmap
    text = re.sub(string_regex, cvt_str, text)

    return text

def main():
    parser = argparse.ArgumentParser(
        description="Encode message_data_static text headers"
    )
    parser.add_argument(
        "input",
        help="path to file to be encoded, or - for stdin",
    )
    parser.add_argument(
        "output",
        help="path to write encoded file, or - for stdout",
    )
    parser.add_argument(
        "--encoding",
        help="encoding (jpn or nes)",
        required=True,
        type=str,
        choices=("jpn", "nes"),
    )
    parser.add_argument(
        "--charmap",
        help="path to charmap file specifying custom encoding elements",
        required=True,
    )
    args = parser.parse_args()

    wchar,encoding = {
        "jpn" : (True, "SHIFT-JIS"),
        "nes" : (False, "raw-unicode-escape"),
    }[args.encoding]

    charmap = read_charmap(args.charmap, wchar)

    text = ""
    if args.input == "-":
        text = sys.stdin.read()
    else:
        with open(args.input, "r") as infile:
            text = infile.read()

    text = remove_comments(text)
    text = convert_text(text, encoding, charmap)

    if args.output == "-":
        sys.stdout.buffer.write(text.encode("utf-8"))
    else:
        with open(args.output, "w") as outfile:
            outfile.write(text)

if __name__ == "__main__":
    main()
