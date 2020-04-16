#! /usr/bin/python3

import os
import re
import sys
import struct

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = script_dir + "/../"
data_dir = root_dir + "data/"
asm_dir = root_dir + "asm/"

floats = {}
floats["0x3F800000"] = "1.0"
floats["0x46EC7A00"] = "30269.0"
floats["0x46ECC600"] = "30307.0"
floats["0x46ECE600"] = "30323.0"
floats["0x3B23D70A"] = "0.0025"
floats["0x3D4CCCCD"] = "0.05"
floats["0x3DCCCCCD"] = "0.1"
floats["0x451C4000"] = "2500.0"
floats["0x453B8000"] = "3000.0"
floats["0x44BB8000"] = "1500.0"
floats["0x3FCCCCCD"] = "1.6"
floats["0x3E99999A"] = "0.3"
floats["0x40C90FDB"] = "6.28318548203"
floats["0x3DA3D70A"] = "0.08"
floats["0x3F333333"] = "0.7"
floats["0x3F19999A"] = "0.6"
floats["0x40133333"] = "2.3"
floats["0x40933333"] = "4.6"
floats["0x44758000"] = "982.0"
floats["0x409FFFEB"] = "4.99998998642"
floats["0x40FFFFEB"] = "7.99998998642"
floats["0x3F3AE148"] = "0.73"
floats["0x3A83126F"] = "0.001"
floats["0x494EA400"] = "846400.0"
floats["0x3DE147AE"] = "0.11"
floats["0x3C23D70B"] = "0.0100000007078"
floats["0x3E16872B"] = "0.147"
floats["0x3B03126F"] = "0.002"
floats["0x40490FDB"] = "3.14159274101"
floats["0xC49C4000"] = "-1250.0"
floats["0x3FC90FDB"] = "1.57079637051"
floats["0x44278000"] = "670.0"
floats["0x3CA3D70A"] = "0.02"
floats["0x3F7851EC"] = "0.97"
floats["0x3E999999"] = "0.299999982119"
floats["0x3E4CCCCD"] = "0.2"
floats["0x3B83126E"] = "0.00399999972433"
floats["0x3F59999A"] = "0.85"
floats["0x38C90FDB"] = "9.58738019108e-05"
floats["0x3D23D70A"] = "0.04"
floats["0xC4548000"] = "-850.0"
floats["0x45034000"] = "2100.0"
floats["0xBC23D70A"] = "-0.01"
floats["0x3C23D70A"] = "0.01"
floats["0x3CCCCCCD"] = "0.025"
floats["0xBCF5C28F"] = "-0.03"
floats["0x3FE1307A"] = "1.75929188728"
floats["0x3FA4DEEC"] = "1.28805303574"
floats["0xBF20D97B"] = "-0.628318488598"
floats["0x3EF1463A"] = "0.471238911152"
floats["0x3F333334"] = "0.700000047684"
floats["0x407FEF9E"] = "3.99900007248"
floats["0x3FF33333"] = "1.9"
floats["0x3F666666"] = "0.9"
floats["0x44A8C000"] = "1350.0"
floats["0x44898000"] = "1100.0"
floats["0x40C8F5C3"] = "6.28"
floats["0x48742400"] = "250000.0"
floats["0xBF060A92"] = "-0.523598790169"
floats["0x3C888889"] = "0.0166666675359"
floats["0x3F4CCCCD"] = "0.8"
floats["0x3FFFDF3B"] = "1.99899995327"
floats["0x3A031270"] = "0.000500000081956"
floats["0x3F99999A"] = "1.2"
floats["0x471C4000"] = "40000.0"
floats["0x45992000"] = "4900.0"
floats["0x461C4000"] = "10000.0"
floats["0x3E19999A"] = "0.15"
floats["0x448FC000"] = "1150.0"
floats["0x3727C5AC"] = "9.99999974738e-06"
floats["0x358637BD"] = "9.99999997475e-07"
floats["0xBF99999A"] = "-1.2"
floats["0x3F8CCCCD"] = "1.1"
floats["0x40066666"] = "2.1"
floats["0x3ECCCCCD"] = "0.4"
floats["0x44A28000"] = "1300.0"
floats["0x3CF5C28F"] = "0.03"
floats["0x43A6AAAB"] = "333.333343506"
floats["0x3BA3D70A"] = "0.005"
floats["0x3C03126F"] = "0.008"
floats["0x459C4000"] = "5000.0"
floats["0x3FAAAAA8"] = "1.33333301544"
floats["0x3FD9999A"] = "1.7"
floats["0x45DAC000"] = "7000.0"
floats["0x4016CBE4"] = "2.35619449615"
floats["0x49095440"] = "562500.0"
floats["0x45BB8000"] = "6000.0"
floats["0x3FB33333"] = "1.4"
floats["0x3C134ACB"] = "0.00899"
floats["0x458CA000"] = "4500.0"
floats["0x3FA66666"] = "1.3"
floats["0xBF4CCCCD"] = "-0.8"
floats["0xBF666666"] = "-0.9"
floats["0xBF59999A"] = "-0.85"
floats["0x3FFEB852"] = "1.99000000954"
floats["0x404CCCCD"] = "3.2"
floats["0xBB449BA6"] = "-0.003"
floats["0x3D99999A"] = "0.075"
floats["0x3D0F5C29"] = "0.035"
floats["0xBFC90FDB"] = "-1.57079637051"
floats["0xB8D1B717"] = "-9.99999974738e-05"
floats["0x3B59E83E"] = "0.003325"
floats["0x3B9BA5E3"] = "0.00475"
floats["0x3AC49BA6"] = "0.0015"
floats["0x3CA3D70B"] = "0.0200000014156"
floats["0x4316199A"] = "150.1"
floats["0x3FD5DCA8"] = "1.67079639435"
floats["0xB8C90FDB"] = "-9.58738019108e-05"
floats["0x3B6BEDFA"] = "0.0036"
floats["0x3DF5C28F"] = "0.12"
floats["0x3B30F27C"] = "0.0027"
floats["0xC3E28000"] = "-453.0"
floats["0xC4DC2000"] = "-1761.0"
floats["0x449FC000"] = "1278.0"
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
    if (word in floats):
        return floats[word]
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


#main()
