#! /usr/bin/python3

import os
import re
import sys
import struct

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
data_dir = root_dir + "data/"
asm_dir = root_dir + "asm/"

def try_text(text_bytes):
    bad_bytes = 0
    for byte in text_bytes:
        if byte < 32:
            bad_bytes += 1

    # Arbitrary string detection heuristic
    #if bad_bytes / len(text_bytes) >= 0.3:
    #    return None

    try:
        text = text_bytes.decode("EUC-JP")
    except UnicodeDecodeError:
        return None

    text = text.strip(" \0")
    if len(text) > 0 and bool(re.search('[a-zA-Z]', text)):
        text = text.replace("\\x00", "")
        text = text.replace("\n", "\\n")
        text = text.replace("\"", "\\\"")
        return text


def is_zeros(stuff):
    for piece in stuff:
        if piece.strip() != "0x00000000":
            return False
    return True


def try_float(word):
    if (word[:3] == "0x3") or (word[:3] == "0x4") or \
        (word[:3] == "0xB") or (word[:3] == "0xC"):
        return struct.unpack('!f', bytes.fromhex(word[2:10]))[0]


def quick_convert(words_string):
    words = words_string.split(",")
    byte_array = b""
    for word in words:
        data = word.strip()[2:]
        byte_array += bytearray.fromhex(data)
    return byte_array.decode("EUC-JP")

def word_convert(byte_string):
    try:
        words = byte_string.split(",")
        byte_array = b""
        for word in words:
            data = word.strip()[2:]
            byte_array += bytearray.fromhex(data)
    except ValueError:
        return byte_string

    if byte_array[0] == 63 and byte_array[-1] == 45:
        return byte_string
    if data == '0A0A0000':
        return "\\n\\n"
    if len(words) > 1 and not is_zeros(words[1:]):
        res = try_text(byte_array)
        if res is not None:
            return "    .asciz \"" + res + "\"\n    .balign 4\n"
    if len(words) == 1 or is_zeros(words[1:]):
        res = str(try_float(words[0].strip()))
        if res is not None:
            return "    .float " + res + "\n"

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
    i = 0
    for root, dirs, files in os.walk(asm_dir):
        for file in files:
            #if i == 10:
            #    return
            if file.endswith(".s"):
                path = os.path.join(root, file)
                if process_data_file(path):
                    print("Processed " + path)
                    i += 1


main()
