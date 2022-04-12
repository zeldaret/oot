#! /usr/bin/python3

import os
import re
import sys

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"


def handle_match(match):
    original_text = match.group()

    match_text = original_text.replace("\\x", "")

    if match_text.lower() == "1b":
        return original_text

    end = ""
    if original_text.lower().endswith("\\x1b"):
        end = original_text[-4:]
        match_text = match_text[:-2]

    try:
        text = bytes.fromhex(match_text).decode("EUC-JP")
    except UnicodeDecodeError:
        return original_text

    if text[2:].lower() == match_text.lower():
        return original_text

    return text + end


def process_file(file_path):
    with open(file_path) as f:
        file_text = f.read()

    new_file_text = re.sub("(\\\\x[0-9a-zA-Z]{2})+", handle_match, file_text)

    if new_file_text != file_text:
        with open(file_path, "w") as f:
            f.write(new_file_text)
        return True
    return False


def main():
    i = 0
    skip_list = ["z_file_choose.rodata.s", "z_kaleido_scope.rodata.s"]
    for root, dirs, files in os.walk(root_dir):
        for file in files:
            if i == 100:
                return
            if file.endswith(".s") and file not in skip_list:
                path = os.path.join(root, file)
                if process_file(path):
                    print("Processed " + path)
                    i += 1


main()
