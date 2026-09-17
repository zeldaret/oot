# SPDX-FileCopyrightText: 2024 zeldaret
# SPDX-License-Identifier: CC0-1.0

import subprocess
import difflib
import multiprocessing
import os
import sys

sys.path.insert(0, os.curdir)
import format

sys.path.pop(0)


def get_git_status():
    return subprocess.check_output("git status --porcelain".split(), text=True)


def main():
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
