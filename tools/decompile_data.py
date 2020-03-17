#! /usr/bin/python3

import os
import re
import sys

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
data_dir = root_dir + "data/"


def try_text(text_bytes):
    bad_bytes = 0
    for byte in text_bytes:
        if byte < 32:
            bad_bytes += 1

    # Arbitrary string detection heuristic
    if bad_bytes / len(text_bytes) >= 0.3:
        return None

    try:
        text = text_bytes.decode("EUC-JP")
    except UnicodeDecodeError:
        return None

    text = text.strip(" \0")
    if len(text) > 0 and bool(re.search('[a-zA-Z]', text)):
        text = text.replace("\\x00", "")
        text = text.replace("\n", "\\n")
        text = text.replace("\"", "\\\"")
        ret = "\n    .asciz \"" + text + "\"\n    .balign 4\n"
        return ret


def word_convert(byte_string):
    try:
        words = byte_string.split(",")
        byte_array = b""
        for word in words:
            data = word.strip()[2:]
            byte_array += bytearray.fromhex(data)
    except ValueError:
        return byte_string

    if len(words) > 1:
        res = try_text(byte_array)
        if res is not None:
            return res

    return byte_string


def handle_match(match):
    in_str = match.group()[6:]
    ret = word_convert(in_str)
    if ret == in_str:
        return match.group()
    return ret


def process_data_file(file_path):
    with open(file_path) as f:
        file_text = f.read()

    new_file_text = re.sub(" \\.word 0x.*", handle_match, file_text)

    if new_file_text != file_text:
        with open(file_path, "w") as f:
            f.write(new_file_text)
        return True
    return False


def main():
    skip_list = ['z_en_kanban.rodata.s', 'z_demo_tre_lgt.rodata.s', 'z_en_light.rodata.s']

    i = 0
    for root, dirs, files in os.walk(data_dir):
        for file in files:
            if i == 10:
                return
            if file.endswith(".rodata.s") and file not in skip_list:
                path = os.path.join(root, file)
                if process_data_file(path):
                    print("Processed " + path)
                    i += 1


main()
