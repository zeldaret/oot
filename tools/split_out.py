#!/usr/bin/python3

import os
import sys


def search_files(search_path, ext, search_str):
    for root, dirs, files in os.walk(search_path):
        for file in files:
            if file.endswith(ext):
                file_path = os.path.join(root, file)
                with open(file_path) as f:
                    file_text = f.read()
                if search_str in file_text:
                    print("Found \"" + search_str + "\" in " + file_path)
                    return root, file_path, file_text


def split_files(file_text, func_search):
    s_pos = file_text.index(func_search)
    line_pos = file_text.rindex("\n", 0, s_pos) + 1
    chunk = file_text[line_pos:]
    new_file = "glabel func_" + func_search[1:-1] + "\n" + chunk
    initial_file = file_text[:line_pos]
    return initial_file, new_file


def main():
    if len(sys.argv) != 2:
        print("Usage: ./split_out.py func_ASDFASDF")
        return

    func = sys.argv[1]
    func_addr = func.replace("func_", "")
    func_search = " " + func_addr + " "

    fs_root, fs_path, fs_text = search_files("asm", ".s", func_search)

    initial_file, new_file = split_files(fs_text, func_search)

    print("Removing and replacing " + fs_path)
    os.remove(fs_path)
    with open(fs_path, "w", newline="\n") as f:
        f.write(initial_file)

    new_file_path = os.path.join(fs_root, func + ".s")
    print("Creating " + new_file_path)
    with open(new_file_path, "w", newline="\n") as f:
        f.write(new_file)

    search_path = fs_path.replace("\\", "/")
    ps_root, ps_path, ps_text = search_files("src", ".c", search_path)

    print("Splicing new pragma statement into " + ps_path)
    with open(ps_path, "r+", newline="\n") as f:
        file_text = f.read()
        s_pos = file_text.index(search_path)
        line_pos = file_text.index("\n", s_pos + 1)
        file_text = file_text[0:line_pos] + "\n\n#pragma GLOBAL_ASM(\"" + search_path[:-15] + func + ".s\")" \
            + file_text[line_pos:]
        f.seek(0)
        f.write(file_text)
        f.truncate()


main()
