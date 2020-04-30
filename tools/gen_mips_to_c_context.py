#!/usr/bin/python3

import os
import sys
import subprocess
import re
import shlex
from disassemble import get_z_name

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
build_dir = root_dir + "build/"
src_dir = root_dir + "src/"


def find_build_command_line(c_file):
    rel_c_file = os.path.relpath(c_file, root_dir)
    make_cmd = ["make", "--always-make", "--dry-run", "--debug=j", "PERMUTER=1"]
    debug_output = (
        subprocess.check_output(make_cmd, cwd=root_dir).decode("utf-8").split("\n")
    )
    output = []

    for line in debug_output:
        while "//" in line:
            line = line.replace("//", "/")
        while "/./" in line:
            line = line.replace("/./", "/")
        if rel_c_file not in line:
            continue
        parts = shlex.split(line)
        if rel_c_file not in parts:
            continue
        if "-o" not in parts:
            continue
        if "-fsyntax-only" in parts:
            continue
        output.append(line)

    if len(output) > 1:
        output_lines = "\n".join(output)
        print(
            f"Error: found multiple compile commands for {rel_c_file}:\n{output_lines}\n"
            "Please modify the makefile such that if PERMUTER = 1, "
            "only a single compile command is included.",
            file=sys.stderr,
        )
        sys.exit(1)

    return output[0]


def import_c_file(compiler, in_file):
    in_file = os.path.relpath(in_file, root_dir)
    include_next = 0
    cpp_command = ["cpp", "-P"]
    compiler_split = compiler.split(" ")
    for arg in compiler_split:
        if include_next > 0:
            include_next -= 1
            cpp_command.append(arg)
            continue
        if arg in ["-D", "-U", "-I"]:
            cpp_command.append(arg)
            include_next = 1
            continue
        if (
            arg.startswith("-D")
            or arg.startswith("-U")
            or arg.startswith("-I")
            or arg in ["-nostdinc"]
        ):
            cpp_command.append(arg)

    cpp_command.extend(
        [
            "-undef",
            "-D__sgi",
            "-D_LANGUAGE_C",
            "-DNON_MATCHING",
            "-D_Static_assert(x, y)=",
            "-D__attribute__(x)=",
        ]
    )
    cpp_command.append(in_file)

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
        for dir in dirs:
            if dir == dirname:
                return os.path.join(root, dir)


def get_c_file(dir):
    for root, dirs, files in os.walk(dir):
        for file in files:
            if file.endswith(".c") and "data" not in file:
                return file


def main():
    target_script = sys.argv[1]

    this_dir = os.getcwd().split("/")[-1]
    c_dir_path = get_c_dir(this_dir)
    c_file = get_c_file(c_dir_path)
    c_file_path = os.path.join(c_dir_path, c_file)

    compiler = find_build_command_line(c_file_path)
    output = import_c_file(compiler, c_file_path)
    
    with open(os.path.join(build_dir, "ctx.c"), "w") as f:
        f.write(output)



if __name__ == "__main__":
    main()
