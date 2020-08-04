#!/usr/bin/env python3

import argparse

def decode_rgba5551(short, max=False):
    red = (short & 0xF800) >> 8
    green = (short & 0x07C0) >> 3
    blue = (short & 0x003E) << 2
    alpha = 1 if (short % 2) else 0
    if max:
        red |= red >> 5
        green |= green >> 5
        blue |= blue >> 5
    return (red, green, blue, alpha)

def u16(x):
    x = int(x, 16)
    if x > 0xFFFF:
        raise argparse.ArgumentTypeError("expecting a short (u16) representing a single color.")
    return x

def main():
    parser = argparse.ArgumentParser(description="Decodes a color encoded in rgba5551.")
    parser.add_argument("short", type=u16, help="u16 raw value of the color to decode")
    args = parser.parse_args()
    print("Min: GPACK_RGBA5551(%d, %d, %d, %d)" % decode_rgba5551(args.short, max=False))
    print("Max: GPACK_RGBA5551(%d, %d, %d, %d)" % decode_rgba5551(args.short, max=True))
    print("Note: All RGB values between these encode to the given value.")
    print("      Use the representation that makes the most sense.\n")

if __name__ == "__main__":
    main()
