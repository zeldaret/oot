#!/usr/bin/env python3

"""
message data static text encoder
"""

import sys
import re

charmap = {}

def read_charmap():
    global charmap
    contents = ""
    with open("text/charmap.txt") as infile:
        contents = infile.read()
    for line in contents.split("\n"):
        if line is not "" and not line.startswith("//"):
            charmap[line.split(" = ")[0].replace("'","")] = chr(int(line.split(" = ")[1].strip(),16))

def flip_charmap():
    return dict((v,k) for k,v in charmap.items())

string_regex = re.compile(r"([\"'`])(?:[\s\S])*?(?:(?<!\\)\1)")
arg_regex = re.compile(r"\([^\)\n]*\)(\.[^\)]*\))?")

def cvt_str(m):
    string = m.group(0).replace("\\n",charmap["\\n"])
    for orig,char in charmap.items():
        string = string.replace(orig,char)
    return string

def empty_str(m):
    return ""

def cvt_arg(m):
    string = m.group(0).replace("(","").replace(")","")
    if "textId" in string:
        return string
    for arg in re.sub(string_regex, empty_str, string).split(","):
        if "\\x" not in arg:
            length = len(arg)-2 if "0x" in arg else len(arg)
            
            value = int(arg,16) if "0x" in arg else int(arg)
            string = string.replace(arg,"\""+chr(value)+"\"") # hex(value).upper().replace("0X","\\x")
    return string

read_charmap()

contents = ""
with open(sys.argv[1], "r") as infile:
    contents = infile.read()

contents = re.sub(string_regex, cvt_str, contents)
#contents = re.sub(arg_regex, cvt_arg, contents)

with open(sys.argv[2], "w", encoding="raw_unicode_escape") as outfile:
    outfile.write(contents)
