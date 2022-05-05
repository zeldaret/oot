#!/usr/bin/python3

import os
import sys
import struct
import argparse
import re
from overlayhelpers.filemap import FileResult, GetFromVRam, GetFromRom

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

Z64_ACTOR_PATH = "../include/z64actor.h"

def get_rom_address(offset):

    if offset.startswith("D_"):
        offset = offset[2:]

    offset = int(offset, 16)

    if offset >= 0x80000000:
        result = GetFromVRam(offset)
        offset = result.vrom.start + result.offset

    return hex(offset)

def get_actor_var_names():
    in_actor = False
    actor_vars = {}
    with open(os.path.dirname(os.path.realpath(__file__)) + "/" + Z64_ACTOR_PATH) as actor_h:
        for line in actor_h:
            if in_actor:
                if "}" in line:
                    # Reached the end of the actor struct so break out
                    break

                # Parse out the memory address (from the comment) and the variable name
                regex = r'.*\/\* (.*) \*\/\s+(struct)?\s*.+\s+(.+);.*'
                actor_var_info = re.match(regex, line)

                if actor_var_info:
                    # Strip off the 0x0* part and store it
                    new_var_index = re.sub('0x0*', '', actor_var_info[1])
                    actor_vars[new_var_index] = actor_var_info[3]

            elif "typedef struct Actor {" in line:
                # Found the Actor struct
                in_actor = True
    return actor_vars

def main():
    parser = argparse.ArgumentParser(description='Decompiles an InitChain')
    parser.add_argument('filename', help='ROM file path')
    parser.add_argument('offset', help='ROM offset or symbol of an InitChain')
    parser.add_argument('--names', action="store_true", help='Retrieve variable names from the actor struct')
    args = parser.parse_args()

    # Get the ROM address, if the offset is already a ROM address it will just be returned.
    args.offset = get_rom_address(args.offset)

    romOff = int(args.offset, 16)

    try:
        with open(args.filename, 'rb') as f:
            romData = f.read()
    except IOError:
        print('failed to read file ' + args.filename)
        sys.exit(1)

    print ('static InitChainEntry sInitChain[] = {')

    if args.names:
        actor_variable_names = get_actor_var_names()

    while True:
        entry = struct.unpack('>I', romData[romOff:romOff+4])[0]
        romOff += 4

        cont = entry >> 31
        t = (entry >> 27) & 0xF
        offset = ((entry) >> 16) & 0x7FF
        value = (entry) & 0xFFFF
        if value >= 0x8000 and not ICHAIN_MACROS[t].startswith('ICHAIN_U'):
            value -= 0x10000

        var_name = '{0:X}'.format(offset)

        if args.names and var_name in actor_variable_names:
            var_name = actor_variable_names[var_name]
        else:
            var_name = "unk_" + var_name

        print('    {0}({1}, {2}, {3}),'.format(ICHAIN_MACROS[t], var_name, value, ('ICHAIN_CONTINUE' if cont == 1 else 'ICHAIN_STOP')))
        if cont == 0:
            break
    print ('};')

if __name__ == "__main__":
    main()
