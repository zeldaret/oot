#!/usr/bin/python3

import argparse

def read_csv(csv_file):

    f_lines = ""
    with open(csv_file) as f:
        f_lines = f.readlines()[1:]

    overlays = {}

    for line in f_lines:
        row = line.split(",")
        overlays[row[0]] = int(row[3])

    return overlays

def main():
    parser = argparse.ArgumentParser(description="Compares two csv produced by `get_actor_sizes.py`.")
    parser.add_argument("firstcsv", help="")
    parser.add_argument("secondcsv", help="")
    args = parser.parse_args()

    first = read_csv(args.firstcsv)
    second = read_csv(args.secondcsv)

    print(f"overlay,{args.firstcsv},{args.secondcsv},diff")

    common_actors = set(first.keys()) & set(second.keys())
    for actor_name in common_actors:
        total_1 = first[actor_name]
        total_2 = second[actor_name]
        if total_1 != total_2:
            print(f"{actor_name},{total_1},{total_2},{total_1-total_2}")


main()
