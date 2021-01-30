#!/usr/bin/python3

import os
#import pprint
import re
import argparse
import math

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
asm_dir = root_dir + "asm/non_matchings/overlays/actors"
build_dir = root_dir + "build/src/overlays/actors"


def get_num_instructions(f_path):
    with open(f_path) as f:
        f_lines = f.readlines()
    sum = 0
    for line in f_lines:
        if line.startswith("/* "):
            sum += 1
    return sum


def count_non_matching():
    overlays = {}

    for root, dirs, files in os.walk(asm_dir):
        for dir in dirs:
            total_size = 0
            max_size = -1
            ovl_path = os.path.join(root, dir)
            num_files = 0
            for root2, dirs2, files2 in os.walk(ovl_path):
                for f_name in files2:
                    num_files += 1
                    file_size = get_num_instructions(
                        os.path.join(ovl_path, f_name))
                    total_size += file_size
                    if file_size > max_size:
                        max_size = file_size
            overlays[dir] = (num_files, max_size, total_size,
                             total_size / num_files, "", "")
    
    return overlays


pattern_function = re.compile("^[0-9a-fA-F]+ <(.+)>:")
pattern_switchcase = re.compile("L[0-9a-fA-F]{8}")

def count_builded_funcs_and_instructions(f_path):
    f_lines = ""
    with open(f_path) as f:
        f_lines = f.readlines()
    
    current = ""
    funcs = {}
    for line in f_lines:
        if line.strip() == "":
            continue
        match_function = pattern_function.match(line)
        if match_function:
            func_name = match_function.group(1)
            if pattern_switchcase.match(func_name):
                # this is not a real function tag.
                # probably a case from a switch
                # for example: <L80979A80>
                continue
            current = func_name
            funcs[current] = 0
        elif current != "":
            funcs[current] += 1
    return funcs


def count_build():
    overlays = {}

    for root, dirs, files in os.walk(build_dir):
        for dir in dirs:
            total_size = 0
            max_size = -1
            ovl_path = os.path.join(root, dir)
            num_files = 0
            for f_name in os.listdir(ovl_path):
                if not f_name.endswith(".s"):
                    continue
                if f_name.endswith("_reloc.s"):
                    continue

                funcs = count_builded_funcs_and_instructions(
                    os.path.join(ovl_path, f_name))
                
                if len(funcs) > 0:
                    num_files += len(funcs)
                    # round up the file size to a multiple of four.
                    total_size += math.ceil(sum(funcs.values())/4)*4
                    max_size += max(funcs.values())

            overlays[dir] = (num_files, max_size, total_size,
                             total_size / num_files, "", "")

    return overlays


def get_ignored(filename):
    ignored = []
    if filename is not None:
        with open(filename) as f:
            ignored = f.read().split("\n")
    return ignored


def print_csv(overlays, ignored):
    sorted_actors = [(k, v) for k, v in overlays.items()]
    sorted_actors.sort()

    row = "{},{},{},{},{},{},{}"
    print(row.format("Overlay", "Num files", "Max size", "Total size", "Average size", "Description", "Status"))

    for actor in sorted_actors:
        name = actor[0]
        other = actor[1]
        if name in ignored:
            continue
        print(row.format(name, *other))




def main():
    parser = argparse.ArgumentParser(description="Collects actor's functions sizes, and print them in csv format.")
    parser.add_argument("--non-matching", help="Collect data of the non-matching actors instead.", action="store_true")
    parser.add_argument("--ignore", help="Path to file that contains overlays names which should be ignored.")
    args = parser.parse_args()

    if args.non_matching:
        overlays = count_non_matching()
    else:
        overlays = count_build()

    ignored = get_ignored(args.ignore)

    print_csv(overlays, ignored)


main()
