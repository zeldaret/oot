#!/usr/bin/python3

import os
import sys
import subprocess
from pathlib import Path

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
src_dir = root_dir + "src/"


def get_c_dir(dirname):
    for root, dirs, files in os.walk(src_dir):
        for directory in dirs:
            if directory == dirname:
                return os.path.join(root, directory)


def get_c_file(directory):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".c") and "data" not in file:
                return file

def import_c_file(in_file):
    in_file = os.path.relpath(in_file, root_dir)
    cpp_command = ["cpp", "-P", "-Iinclude", "-Isrc", "-undef", "-D__sgi", "-D_LANGUAGE_C",
                   "-DNON_MATCHING", "-D_Static_assert(x, y)=", "-D__attribute__(x)=", in_file]
    try:
        return subprocess.check_output(cpp_command, cwd=root_dir, encoding="utf-8")
    except subprocess.CalledProcessError:
        print(
            "Failed to preprocess input file, when running command:\n"
            + cpp_command,
            file=sys.stderr,
            )
        sys.exit(1)

def main():
    if len(sys.argv) > 1:
        arg = sys.argv[1]
        if arg == "-h" or arg == "--help":
            sys.exit("Usage: ./m2ctx.py path/to/file.c\n" \
            "or ./m2ctx.py (from an actor or gamestate's asm dir)\n" \
            "Output will be saved in oot/ctx.c")
        c_file_path = Path.cwd() / sys.argv[1]
    else:
        this_dir = Path.cwd()
        c_dir_path = get_c_dir(this_dir.name)
        if c_dir_path is None:
            sys.exit("Cannot find appropriate c file dir. In argumentless mode, run this script from the c file's corresponding asm dir.")
        c_file = get_c_file(c_dir_path)
        c_file_path = os.path.join(c_dir_path, c_file)
    
    output = import_c_file(c_file_path)

    with open(os.path.join(root_dir, "ctx.c"), "w", encoding="UTF-8") as f:
        f.write(output)


if __name__ == "__main__":
    main()
