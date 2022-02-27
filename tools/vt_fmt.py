#!/usr/bin/python3

import os
import sys
import struct
import argparse
import re

COLORS = [
    'BLACK',
    'RED',
    'GREEN',
    'YELLOW',
    'BLUE',
    'PURPLE',
    'CYAN',
    'WHITE',
]

def re_match(exp, text):
    return re.compile(exp).match(text) is not None

def vt_fmt(text):
    curLiteral = False
    chars = ""

    i = 0
    while i < len(text):
        if text[i:i+5].lower() == '\\x1b[':
            if curLiteral:
                chars += '\"'
            if i > 0:
                chars += ' '

            i += 5

            code = text[i:text.find('m', i)]
            i += len(code)

            if re_match('^4[0-7];3[0-7]$', code):
                chars += 'VT_COL(' + COLORS[int(code[1])] + ', ' + COLORS[int(code[4])] + ')'
            elif re_match('^4[0-7]$', code):
                chars += 'VT_BGCOL(' + COLORS[int(code[1])] + ')'
            elif re_match('^3[0-7]$', code):
                chars += 'VT_FGCOL(' + COLORS[int(code[1])] + ')'
            elif len(code) == 0:
                chars += 'VT_RST'
            else:
                raise Exception('Invalid String')

            curLiteral = False
        else:
            if not curLiteral:
                chars += ' \"'
            chars += text[i]
            curLiteral = True

        i += 1


    if curLiteral:
        chars += '\"'

    return chars


def main():
    parser = argparse.ArgumentParser(description='Properly formats VT macros')
    parser.add_argument('string', help='String to format')
    args = parser.parse_args()

    print(vt_fmt(args.string))


if __name__ == "__main__":
    main()
