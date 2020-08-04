#!/usr/bin/python3

import os
import sys
import struct
import argparse

ICHAIN_MACROS = [
    'ICHAIN_U8',
    'ICHAIN_S8',
    'ICHAIN_U16',
    'ICHAIN_S16',
    'ICHAIN_U32',
    'ICHAIN_S32',
    'ICHAIN_F32',
    'ICHAIN_F32_DIV1000',
    'ICHAIN_VEC3F',
    'ICHAIN_VEC3F_DIV1000',
    'ICHAIN_VEC3S',
]

def main():
    parser = argparse.ArgumentParser(description='Decompiles an InitChain')
    parser.add_argument('filename', help='ROM file path')
    parser.add_argument('offset', help='ROM offset to an InitChain')
    args = parser.parse_args()
    romOff = int(args.offset, 16)

    try:
        with open(args.filename, 'rb') as f:
            romData = f.read()
    except IOError:
        print('failed to read file ' + args.filename)
        sys.exit(1)

    print ('static InitChainEntry sInitChain[] = {')
    while True:
        entry = struct.unpack('>I', romData[romOff:romOff+4])[0]
        romOff += 4

        cont = entry >> 31
        t = (entry >> 27) & 0xF
        offset = ((entry) >> 16) & 0x7FF
        value = (entry) & 0xFFFF

        print('    {0}(unk_{1:X}, {2}, {3}),'.format(ICHAIN_MACROS[t], offset, value, ('ICHAIN_CONTINUE' if cont == 1 else 'ICHAIN_STOP')))
        if cont == 0:
            break
    print ('};')

if __name__ == "__main__":
    main()
