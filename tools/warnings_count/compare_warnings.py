#!/usr/bin/env python3

import argparse


def countFileLines(filename: str) -> int:
    with open(filename) as f:
        return len(f.readlines())


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('currentwarnings', help="Name of file which contains the current warnings of the repo.")
    parser.add_argument('newwarnings', help="Name of file which contains the *new* warnings of the repo.")
    args = parser.parse_args()

    currentLines = countFileLines(args.currentwarnings)
    newLines = countFileLines(args.newwarnings)
    if newLines > currentLines:
        print()
        print("There are more warnings now. Go fix them!")
        print("\tCurrent warnings: " + str(currentLines))
        print("\tNew warnings: " + str(newLines))
        print()
        print("If these warnings are needed to produce a matching build, run `tools/warnings_count/update_current_warnings.sh` and commit the updated files in `tools/warnings_count/`.")
        print()
        with open(args.newwarnings) as f:
            print("Warnings:\n\n" + f.read())
        print()
        exit(-1)
    print("There are no new warnings. Good Job!")


if __name__ == "__main__":
    main()
