# SPDX-FileCopyrightText: 2024 zeldaret
# SPDX-License-Identifier: CC0-1.0

import subprocess
import argparse
import difflib
import multiprocessing
import glob
import os.path
import sys

sys.path.insert(0, os.curdir)
import format

sys.path.pop(0)


def get_git_status():
    return subprocess.check_output("git status --porcelain".split(), text=True)


def get_modified_files_to_format(compare_to):
    modified_files_str = subprocess.check_output(
        ["git", "diff", "--name-only", compare_to], text=True
    )
    modified_files = set(modified_files_str.splitlines())

    all_src_files, all_extra_files = format.list_files_to_format()
    # Split modified_files between source files and extra files (see format.py)
    # This also filters out deleted files that no logner exist
    modified_src_files_existing = list(modified_files.intersection(all_src_files))
    modified_extra_files_existing = list(modified_files.intersection(all_extra_files))

    return modified_src_files_existing, modified_extra_files_existing


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--verbose", action="store_true")
    parser.add_argument("--compare-to", dest="compare_to")
    args = parser.parse_args()

    if args.compare_to:
        src_files, extra_files = get_modified_files_to_format(args.compare_to)
        if args.verbose:
            print("Formatting specific files:")
            print(len(src_files), src_files)
            print(len(extra_files), extra_files)
        if not src_files and not extra_files:
            if args.verbose:
                print("Nothing to format")
            exit(0)
    else:
        src_files, extra_files = format.list_files_to_format()

    nb_jobs = multiprocessing.cpu_count()

    git_status_pre = get_git_status()

    format.format_files(src_files, extra_files, nb_jobs)

    git_status_post = get_git_status()

    if git_status_pre != git_status_post:
        print(
            "Misformatted files found."
            " Run ./format.py and verify codegen is not impacted."
        )
        for l in difflib.unified_diff(
            git_status_pre.splitlines(),
            git_status_post.splitlines(),
            "Old git status",
            "New git status",
        ):
            print(l)
        exit(1)


if __name__ == "__main__":
    main()
