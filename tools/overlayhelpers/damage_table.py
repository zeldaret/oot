#!/usr/bin/env python3

import os
import argparse
from filemap import FileResult, GetFromVRam, GetFromRom

damage_types = [
    'Deku nut',
    'Deku stick',
    'Slingshot',
    'Explosive',
    'Boomerang',
    'Normal arrow',
    'Hammer swing',
    'Hookshot',
    'Kokiri sword',
    'Master sword',
    "Giant's Knife",
    'Fire arrow',
    'Ice arrow',
    'Light arrow',
    'Unk arrow 1',
    'Unk arrow 2',
    'Unk arrow 3',
    'Fire magic',
    'Ice magic',
    'Light magic',
    'Shield',
    'Mirror Ray',
    'Kokiri spin',
    'Giant spin',
    'Master spin',
    'Kokiri jump',
    'Giant jump',
    'Master jump',
    'Unknown 1',
    'Unblockable',
    'Hammer jump',
    'Unknown 2'
]

def convert_dmg_table_str(dmg_table_str):
    split_data = dmg_table_str.replace(' ','').replace('\n','').replace('{',',').replace('}',',').split(',')
    hex_data = [int(x, 16) for x in split_data if '0x' in x]

    name = dmg_table_str.split('=')[0].split()[-1]

    return make_table(name, hex_data)

def replace_damage_table_all(repo):
    actors = 'src' + os.sep + 'overlays' + os.sep + 'actors'
    for subdir, dirs, files in os.walk(repo + os.sep + actors):
        for filename in files:
            if(filename.endswith('.c')):
                file = subdir + os.sep + filename
                status = replace_damage_table(file)
                if(status < 0):
                    print('Encountered error in', file)
                elif(status > 0):
                    print('Updated', status, 'table' + ('s' if status > 1 else ''), file)
    return 1

def replace_damage_table(src):
    with open(src, 'r', encoding = 'utf-8') as srcfile:
        srcdata = srcfile.readlines()
    read_table = False
    replacements = []

    for i, line in enumerate(srcdata):
        if("DamageTable" in line and "= {" in line):
            if(read_table):
                print('Bad formatting in', file, 'at line', i)
                return -1
            else:
                read_table = True
                start = i

        if(read_table and "DMG_" in line):
            read_table = False

        if(read_table and ";" in line):
            dmg_table_str = "".join(srcdata[start:i+1])
            damage_table = convert_dmg_table_str(dmg_table_str)
            replacements += [[dmg_table_str, damage_table]]
            read_table = False

    if len(replacements) == 0:
        return 0

    with open(src,'r', encoding = 'utf-8') as srcfile:
        srcstr = srcfile.read()
    for replace in replacements:
        srcstr = srcstr.replace(replace[0], replace[1])
    with open(src,'w', encoding = 'utf-8', newline = '\n') as outfile:
        outfile.write(srcstr)
    return len(replacements)

def make_table(name, data):
    damage_table = "DamageTable " + name + " = {\n"
    linestart = "    /* "
    padlen = max([len(x) for x in damage_types])
    for i, dbyte in enumerate(data):
        typestr = damage_types[i]
        typestr += ' ' * (padlen - len(typestr)) + ' */ '
        damage_table += linestart + typestr + format_damage_byte(dbyte)
    damage_table += '};\n'

    return damage_table

def format_damage_byte(dbyte):
    effect = (dbyte >> 4) & 0xF
    damage = dbyte & 0xF

    effstr = format(effect, 'X')
    dstr = str(damage)

    dtentry = 'DMG_ENTRY(' + dstr + ' , 0x' + effstr + '),\n'

    return dtentry

def get_damage_bytes(address, repo):
    file_result = None

    if address >= 0x80000000:
        file_result = GetFromVRam(address)
    else:
        file_result = GetFromRom(address)

    if file_result is None:
        print("Invalid address")
        exit()

    print(file_result)

    with open(repo + os.sep + "baserom" + os.sep + file_result.name, "rb") as ovl_file:
        ovl_data = bytearray(ovl_file.read())

    damage_data = ovl_data[file_result.offset:file_result.offset+0x20]

    damage_table = make_table('D_' + format(address, 'X'), damage_data)

    return damage_table

def hex_parse(s):
    return int(s, 16)

parser = argparse.ArgumentParser(description = "Converts raw bytes into a formatted damage table")
parser.add_argument('-a', metavar='address', dest='address', help="VRam or Rom address of the damage table", type=hex_parse)
parser.add_argument('-f', metavar='file', dest='file', help='C file with unformatted damage tables')

if __name__ == "__main__":
    args = parser.parse_args()
    script_dir = os.path.dirname(os.path.realpath(__file__))
    repo = script_dir + os.sep +  ".." + os.sep + ".."
    if(args.address):
        print(get_damage_bytes(args.address, repo))
    elif(args.file):
        replace_damage_table(args.file)
    else:
        print('Error: address or file required. Use -h for more detail.')
