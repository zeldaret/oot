#!/usr/bin/python3

import os
import pprint

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
asm_dir = root_dir + "asm/non_matchings/overlays/actors"

overlays = {}


def get_num_instructions(f_path):
    with open(f_path) as f:
        f_lines = f.readlines()
    sum = 0
    for line in f_lines:
        if line.startswith("/* "):
            sum += 1
    return sum


def main():
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
                             total_size / num_files)
    
    sorted_actors = {k: v for k, v in sorted(
        overlays.items(), key=lambda item: item[1][2])
    }
    for actor in sorted_actors.items():
        print(
            f"{actor[0]}, {actor[1][0]}, {actor[1][1]}, {actor[1][2]}, {actor[1][3]}")


main()
