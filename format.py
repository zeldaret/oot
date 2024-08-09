#!/usr/bin/env python3

import argparse
import glob
import multiprocessing
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
from functools import partial
from typing import List


# clang-format, clang-tidy and clang-apply-replacements default version
# This specific version is used when available, for more consistency between contributors
CLANG_VER = 14

# Clang-Format options (see .clang-format for rules applied)
FORMAT_OPTS = "-i -style=file"

# Clang-Tidy options (see .clang-tidy for checks enabled)
TIDY_OPTS = "-p ."
TIDY_FIX_OPTS = "--fix --fix-errors"

# Clang-Apply-Replacements options (used for multiprocessing)
APPLY_OPTS = "--format --style=file"

# Compiler options used with Clang-Tidy
# Normal warnings are disabled with -Wno-everything to focus only on tidying
INCLUDES = "-Iinclude -Isrc -Ibuild/gc-eu-mq-dbg -I."
DEFINES = "-D_LANGUAGE_C -DNON_MATCHING -DF3DEX_GBI_2"
COMPILER_OPTS = f"-fno-builtin -std=gnu90 -m32 -Wno-everything {INCLUDES} {DEFINES}"


def get_clang_executable(allowed_executables: List[str]):
    for executable in allowed_executables:
        try:
            subprocess.check_call([executable, "--version"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            return executable
        except FileNotFoundError or subprocess.CalledProcessError:
            pass
    return None


def get_tidy_version(tidy_executable: str):
    tidy_version_run = subprocess.run([tidy_executable, "--version"], stdout=subprocess.PIPE, universal_newlines=True)
    match = re.search(r"LLVM version ([0-9]+)", tidy_version_run.stdout)
    return int(match.group(1))


CLANG_FORMAT = get_clang_executable([f"clang-format-{CLANG_VER}", "clang-format"])
if CLANG_FORMAT is None:
    sys.exit(f"Error: neither clang-format nor clang-format-{CLANG_VER} found")

CLANG_TIDY = get_clang_executable([f"clang-tidy-{CLANG_VER}", "clang-tidy"])
if CLANG_TIDY is None:
    sys.exit(f"Error: neither clang-tidy nor clang-tidy-{CLANG_VER} found")

CLANG_APPLY_REPLACEMENTS = get_clang_executable([f"clang-apply-replacements-{CLANG_VER}", "clang-apply-replacements"])

# Try to detect the clang-tidy version and add --fix-notes for version 13+
# This is used to ensure all fixes are applied properly in recent versions
if get_tidy_version(CLANG_TIDY) >= 13:
    TIDY_FIX_OPTS += " --fix-notes"


def list_chunks(list: List, chunk_length: int):
    for i in range(0, len(list), chunk_length):
        yield list[i : i + chunk_length]


def run_clang_format(files: List[str]):
    exec_str = f"{CLANG_FORMAT} {FORMAT_OPTS} {' '.join(files)}"
    subprocess.run(exec_str, shell=True)


def run_clang_tidy(files: List[str]):
    exec_str = f"{CLANG_TIDY} {TIDY_OPTS} {TIDY_FIX_OPTS} {' '.join(files)} -- {COMPILER_OPTS}"
    subprocess.run(exec_str, shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)


def run_clang_tidy_with_export(tmp_dir: str, files: List[str]):
    (handle, tmp_file) = tempfile.mkstemp(suffix=".yaml", dir=tmp_dir)
    os.close(handle)

    exec_str = f"{CLANG_TIDY} {TIDY_OPTS} --export-fixes={tmp_file} {' '.join(files)} -- {COMPILER_OPTS}"
    subprocess.run(exec_str, shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)


def run_clang_apply_replacements(tmp_dir: str):
    exec_str = f"{CLANG_APPLY_REPLACEMENTS} {APPLY_OPTS} {tmp_dir}"
    subprocess.run(exec_str, shell=True)


def cleanup_whitespace(file: str):
    """
    Remove whitespace at the end of lines,
    ensure the file ends with an empty line.
    """
    file_p = Path(file)
    contents = file_p.read_text(encoding="UTF-8")
    modified = False

    contents, n_subst = re.subn(r"[^\S\n]+\n", "\n", contents)
    if n_subst != 0:
        modified = True

    if not contents.endswith("\n"):
        contents += "\n"
        modified = True

    if modified:
        file_p.write_text(contents, encoding="UTF-8")


def format_files(src_files: List[str], extra_files: List[str], nb_jobs: int):
    if nb_jobs != 1:
        print(f"Formatting files with {nb_jobs} jobs")
    else:
        print("Formatting files with a single job (consider using -j to make this faster)")

    # Format files in chunks to improve performance while still utilizing jobs
    file_chunks = list(list_chunks(src_files, (len(src_files) // nb_jobs) + 1))

    print("Running clang-format...")
    # clang-format only applies changes in the given files, so it's safe to run in parallel
    with multiprocessing.get_context("fork").Pool(nb_jobs) as pool:
        pool.map(run_clang_format, file_chunks)

    print("Running clang-tidy...")
    if nb_jobs > 1:
        # clang-tidy may apply changes in #included files, so when running it in parallel we use --export-fixes
        # then we call clang-apply-replacements to apply all suggested fixes at the end
        tmp_dir = tempfile.mkdtemp()

        try:
            with multiprocessing.get_context("fork").Pool(nb_jobs) as pool:
                pool.map(partial(run_clang_tidy_with_export, tmp_dir), file_chunks)

            run_clang_apply_replacements(tmp_dir)
        finally:
            shutil.rmtree(tmp_dir)
    else:
        run_clang_tidy(src_files)

    print("Cleaning up whitespace...")
    # Safe to do in parallel and can be applied to all types of files
    with multiprocessing.get_context("fork").Pool(nb_jobs) as pool:
        pool.map(cleanup_whitespace, src_files + extra_files)

    print("Done formatting files.")


def list_files_to_format():
    files = glob.glob("src/**/*.c", recursive=True)
    extra_files = (
        glob.glob("assets/**/*.xml", recursive=True)
        + glob.glob("include/**/*.h", recursive=True)
        + glob.glob("src/**/*.h", recursive=True)
    )
    return files, extra_files


def main():
    parser = argparse.ArgumentParser(description="Format files in the codebase to enforce most style rules")
    parser.add_argument(
        "--show-paths",
        dest="show_paths",
        action="store_true",
        help="Print the paths to the clang-* binaries used",
    )
    parser.add_argument("files", metavar="file", nargs="*")
    parser.add_argument(
        "-j",
        dest="jobs",
        type=int,
        nargs="?",
        default=1,
        help="number of jobs to run (default: 1 without -j, number of cpus with -j)",
    )
    args = parser.parse_args()

    if args.show_paths:
        import shutil

        print("CLANG_FORMAT             ->", shutil.which(CLANG_FORMAT))
        print("CLANG_TIDY               ->", shutil.which(CLANG_TIDY))
        print("CLANG_APPLY_REPLACEMENTS ->", shutil.which(CLANG_APPLY_REPLACEMENTS))

    nb_jobs = args.jobs or multiprocessing.cpu_count()
    if nb_jobs > 1:
        if CLANG_APPLY_REPLACEMENTS is None:
            sys.exit(
                f"Error: neither clang-apply-replacements nor clang-apply-replacements-{CLANG_VER} found (required to use -j)"
            )

    if args.files:
        files = args.files
        extra_files = []
    else:
        files, extra_files = list_files_to_format()

    format_files(files, extra_files, nb_jobs)


if __name__ == "__main__":
    main()
