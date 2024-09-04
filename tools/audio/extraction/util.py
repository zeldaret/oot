# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   Misc utilities
#

import struct, subprocess, sys

def debugm(msg):
    """
    Debug message on stderr
    """
    print(msg, file=sys.stderr)

def error(msg):
    """
    Debug message + exit
    """
    debugm(msg)
    sys.exit(1)

def incbin(rom, offset, size):
    return rom[offset:offset+size]

def f32(f):
    """
    Reduces precision of f to a 32-bit float for correct intermediate calculations
    """
    return struct.unpack("f", struct.pack("f", f))[0]

def u32_to_f32(u):
    """
    Convert IEEE-754 binary rep to float
    """
    return struct.unpack(">f", struct.pack(">I", u))[0]

def f32_to_u32(f):
    """
    Convert float to IEEE-754 binary rep
    """
    return struct.unpack(">I", struct.pack(">f", f))[0]

def align(x, n):
    """
    Align to next n (power of 2)
    """
    return (x + (n - 1)) & ~(n - 1)

def merge_ranges(intervals):
    if len(intervals) == 0:
        return []

    intervals = sorted(intervals, key=lambda x: x[0][0])

    stack = [intervals[0]]
    for i in range(1, len(intervals)):
        last_element = stack[len(stack) - 1]
        if last_element[1][0] >= intervals[i][0][0]:
            last_element[1] = max(intervals[i][1], last_element[1], key=lambda x: x[0])
            stack.pop(len(stack) - 1)
            stack.append(last_element)
        else:
            stack.append(intervals[i])
    return stack

def merge_like_ranges(intervals):
    if len(intervals) == 0:
        return []

    intervals = sorted(intervals, key=lambda x: x[0][0])

    stack = [intervals[0]]
    for i in range(1, len(intervals)):
        last_element = stack[len(stack) - 1]
        if last_element[1][0] >= intervals[i][0][0] and last_element[1][1] == intervals[i][1][1]:
            last_element[1] = max(intervals[i][1], last_element[1], key=lambda x: x[0])
            stack.pop(len(stack) - 1)
            stack.append(last_element)
        else:
            stack.append(intervals[i])
    return stack

def list_is_in_order(l):
    return all(l[i] <= l[i + 1] for i in range(len(l) - 1))

def program_call(cmd):
    subprocess.check_call(cmd, shell=True)

def program_get(cmd):
    return subprocess.check_output(cmd, shell=True).decode("ascii")

class XMLWriter:
    """
    Simple XML builder for writing with desired formatting characteristics (no tabs, 4 space indent)
    """

    def __init__(self):
        self.contents = ""
        self.tag_stack = []

    def __str__(self):
        return self.contents

    def write_line(self, name, open, close, attributes):
        indent = "    " * len(self.tag_stack)
        if attributes is None:
            self.contents += f"{indent}{open}{name}{close}\n"
        else:
            attributes_str = " ".join(f"{k}=\"{v}\"" for k,v in attributes.items())
            self.contents += f"{indent}{open}{name} {attributes_str}{close}\n"

    def write_comment(self, comment):
        self.write_line(comment, "<!-- ", " -->", None)

    def write_start_tag(self, name, attributes=None):
        self.write_line(name, "<", ">", attributes)
        self.tag_stack.append(name)

    def write_end_tag(self):
        self.write_line(self.tag_stack.pop(), "</", ">", None)

    def write_element(self, name, attributes=None):
        self.write_line(name, "<", "/>", attributes)

    def write_raw(self, contents):
        self.write_line(contents, "", "", None)
