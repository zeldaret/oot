#!/usr/bin/env python3

"""
Display rgba32 or i8 binary data read from stdin, by (ab)using ANSI color codes.
"""

import argparse
import sys
import time


ESC = b"\x1B"  # '\e'
RESET = ESC + b"[m"


def rgb(r, g, b):
    return ESC + b"[48;2;" + ";".join((str(r), str(g), str(b))).encode("ascii") + b"m"


def lerp(a, b, t):
    assert 0 <= t <= 1
    return a * (1 - t) + b * t


def handle_rgba32(
    *,
    width,
    background=(lambda x, y: ((50, 50, 50) if (x + y) % 2 == 0 else (200, 200, 200))),
):
    count = 0
    x = 0
    y = 0
    while True:
        rgba32 = b""
        while len(rgba32) < 4:
            if rgba32:
                # Wait 10ms if wasn't able to fetch 4 bytes immediately
                time.sleep(0.010)
            data = sys.stdin.buffer.read(4 - len(rgba32))
            if not data:
                return
            rgba32 += data
        assert len(rgba32) == 4

        in_r, in_g, in_b, in_a = rgba32

        bg_r, bg_g, bg_b = background(x, y)

        r = round(lerp(bg_r, in_r, in_a / 255))
        g = round(lerp(bg_g, in_g, in_a / 255))
        b = round(lerp(bg_b, in_b, in_a / 255))

        sys.stdout.buffer.write(rgb(r, g, b))
        sys.stdout.buffer.write(b"  ")

        count += 1
        x += 1
        if count % width == 0:
            x = 0
            y += 1
            sys.stdout.buffer.write(RESET + b"\n")


def handle_rgba16(
    *,
    width,
    background=(lambda x, y: ((50, 50, 50) if (x + y) % 2 == 0 else (200, 200, 200))),
):
    count = 0
    x = 0
    y = 0
    while True:
        rgba16 = b""
        while len(rgba16) < 2:
            if rgba16:
                time.sleep(0.010)
            data = sys.stdin.buffer.read(2 - len(rgba16))
            if not data:
                return
            rgba16 += data
        assert len(rgba16) == 2

        rgba16_hi, rgba16_lo = rgba16
        rgba16 = (rgba16_hi << 8) | rgba16_lo

        def rgba16_component_expand(rgba16, shift):
            v = (rgba16 >> shift) & 0x1F
            return (v << 3) | (v >> 2)

        in_r = rgba16_component_expand(rgba16, 11)
        in_g = rgba16_component_expand(rgba16, 6)
        in_b = rgba16_component_expand(rgba16, 1)
        in_a = 255 if (rgba16 & 1) else 0

        bg_r, bg_g, bg_b = background(x, y)

        r = round(lerp(bg_r, in_r, in_a / 255))
        g = round(lerp(bg_g, in_g, in_a / 255))
        b = round(lerp(bg_b, in_b, in_a / 255))

        sys.stdout.buffer.write(rgb(r, g, b))
        sys.stdout.buffer.write(b"  ")

        count += 1
        x += 1
        if count % width == 0:
            x = 0
            y += 1
            sys.stdout.buffer.write(RESET + b"\n")


def handle_i8(
    *,
    width,
):
    count = 0
    while True:
        i = sys.stdin.buffer.read(1)
        if not i:
            return
        i = i[0]

        r = g = b = i

        sys.stdout.buffer.write(rgb(r, g, b))
        sys.stdout.buffer.write(b"  ")

        count += 1
        if count % width == 0:
            sys.stdout.buffer.write(RESET + b"\n")


handlers = {
    "rgba32": handle_rgba32,
    "i8": handle_i8,
    "rgba16": handle_rgba16,
}

argparser = argparse.ArgumentParser()
argparser.add_argument("--width", default=64, type=int)
argparser.add_argument("--format", default="rgba32", choices=handlers.keys())
args = argparser.parse_args()

try:
    handlers[args.format](
        width=args.width,
    )
finally:
    sys.stdout.buffer.write(RESET + b"\n")
