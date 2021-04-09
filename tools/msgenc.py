#!/usr/bin/env python3

"""
message data static text encoder
"""

import re, sys

charmap = {}

string_regex = re.compile(r"([\"'`])(?:[\s\S])*?(?:(?<!\\)\1)")
arg_regex = re.compile(r"\([^\)\n]*\)(\.[^\)]*\))?")

def read_charmap(path):
    global charmap
    contents = ""
    with open(path) as infile:
        contents = infile.read()
    lines = [line for line in contents.split("\n") if (line is not "" and not line.startswith("//"))]
    for line in lines:
        charmap[line.split(" = ")[0].replace("'","")] = chr(int(line.split(" = ")[1].strip(),16))

def flip_charmap():
    return dict((v,k) for k,v in charmap.items())

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

if __name__ == "__main__":
    read_charmap(sys.argv[1])

    contents = ""
    with open(sys.argv[2], "r") as infile:
        contents = infile.read()

    if sys.argv[2].endswith(".h"):
        contents = re.sub(string_regex, cvt_str, contents)
    elif sys.argv[2].endswith(".c"):
        contents = contents\
            .replace("#include \"declare_messages.h\"", "#include \"assets/text/declare_messages.enc.h\"")\
            .replace("#include \"declare_messages_staff.h\"", "#include \"assets/text/declare_messages_staff.enc.h\"")
    #contents = re.sub(arg_regex, cvt_arg, contents)

    with open(sys.argv[3], "w", encoding="raw_unicode_escape") as outfile:
        outfile.write(contents)
