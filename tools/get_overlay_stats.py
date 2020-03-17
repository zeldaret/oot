#!/usr/bin/python3

import os
import pprint

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
asm_dir = root_dir + "asm/non_matchings/overlays/actors"

overlays = {}


def main():
    for root, dirs, files in os.walk(asm_dir):
        for dir in dirs:
            if dir.startswith("ovl_"):
                avg_size = 0
                max_size = -1
                ovl_path = os.path.join(root, dir)
                count = 0
                for root2, dirs2, files2 in os.walk(ovl_path):
                    for file in files2:
                        count += 1
                        file_size = os.path.getsize(os.path.join(ovl_path, file))
                        avg_size += file_size
                        if file_size > max_size:
                            max_size = file_size
                overlays[dir] = (max_size, count, avg_size / count)
    print({k: v for k, v in sorted(overlays.items(), key=lambda item: item[1][2])})


main()
