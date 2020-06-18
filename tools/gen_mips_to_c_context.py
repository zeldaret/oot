#!/usr/bin/python3

import os
import sys
import subprocess

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
build_dir = root_dir + "build/"
src_dir = root_dir + "src/"


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


def main():
    this_dir = os.getcwd().split("/")[-1]
    c_dir_path = get_c_dir(this_dir)
    c_file = get_c_file(c_dir_path)
    c_file_path = os.path.join(c_dir_path, c_file)

    output = import_c_file(c_file_path)

    with open(os.path.join(build_dir, "ctx.c"), "w") as f:
        f.write(output)


if __name__ == "__main__":
    main()
