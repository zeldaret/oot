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
    modified_files = modified_files_str.splitlines()
    modified_c_files = [
        f
        for f in modified_files
        if f.startswith("src" + os.path.sep) and f.endswith(".c")
    ]
    modified_c_files_existing = [f for f in modified_c_files if os.path.exists(f)]
    return modified_c_files_existing


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--verbose", action="store_true")
    parser.add_argument("--compare-to", dest="compare_to")
    args = parser.parse_args()

    if args.compare_to:
        src_files = get_modified_files_to_format(args.compare_to)
        if args.verbose:
            print("Formatting specific files:", len(src_files), src_files)
        if not src_files:
            if args.verbose:
                print("Nothing to format")
            exit(0)
    else:
        src_files = glob.glob("src/**/*.c", recursive=True)

    nb_jobs = multiprocessing.cpu_count()

    git_status_pre = get_git_status()

    format.format_files(src_files, [], nb_jobs)

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
