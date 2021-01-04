#!/usr/bin/python3
import os
import argparse

dlist_count = 0
collision_count = 0
skeleton_count = 0
animation_count = 0
texture_count = 0
unknown_count = 0
offsets = set()
replacements = {}

name = ''

dlist_xml = '<DList Name="g{0}DL{1}" Offset="0x{2}"/>'
collision_xml = '<Collision Name="g{0}Col{1}" Offset="0x{2}"/>'
animation_xml = '<Animation Name="g{0}Anim{1}" Offset="0x{2}"/>'
skeleton_xml = '<Skeleton Name="g{0}Skel{1}" Type="{3}" LimbType="{4}" Offset="0x{2}"/>'
unknown_xml = '<!-- <{3} Name=g{0}Unknown{1} Offset="0x{2}"/> -->'

def set_globals(new_name):
    global dlist_count
    global collision_count
    global skeleton_count
    global animation_count
    global texture_count
    global unknown_count
    global offsets
    global name
    global replacements

    dlist_count = 0
    collision_count = 0
    skeleton_count = 0
    animation_count = 0
    texture_count = 0
    unknown_count = 0
    offsets = set()
    replacements = {}
    name = new_name
    return 0


def dlist_to_xml(offset):
    global dlist_count
    dlist_count += 1

    return dlist_xml.format(name,dlist_count,offset)

def collision_to_xml(offset):
    global collision_count
    collision_count += 1

    return collision_xml.format(name,collision_count,offset)

def animation_to_xml(offset):
    global animation_count
    animation_count += 1

    return animation_xml.format(name,animation_count,offset)

def skeleton_to_xml(offset, type):
    global skeleton_count
    skeleton_count += 1
    skel_type = "Flex" if "Flex" in type else "Standard"
    limb_type = "Standard"

    return skeleton_xml.format(name,skeleton_count,offset, skel_type, limb_type)

def unknown_to_xml(offset, type):
    global unknown_count
    unknown_count += 1

    return unknown_xml.format(name,unknown_count,offset,type)

def make_replace(symbol, type):
    global replacements

    if 'Gfx' in type:
        var_name = 'g' + name + 'DList' + str(dlist_count)
    elif 'Col' in type:
        var_name = 'g' + name + 'Collision' + str(collision_count)
    elif 'Animation' in type:
        var_name = 'g' + name + 'Anim' + str(animation_count)
    elif 'Skeleton' in type:
        var_name = 'g' + name + 'Skel' + str(skeleton_count)
    else:
        var_name = 'g' + name + 'Unknown' + str(unknown_count)
    replacements[symbol] = var_name
    return 1

def make_xml_line(offset, type):
    if 'Gfx' in type:
        xml_line = dlist_to_xml(offset)
    elif 'Col' in type:
        xml_line = collision_to_xml(offset)
    elif 'Animation' in type:
        xml_line = animation_to_xml(offset)
    elif 'Skeleton' in type:
        xml_line = skeleton_to_xml(offset, type)
    else:
        xml_line = unknown_to_xml(offset, type)
        print('Unknown type at offset', offset)
    return xml_line

def extern_to_xml(line):
    global offsets

    type = line.split()[1]
    sym = line.split()[2]
    offset = sym[5:10]
    if(offset in offsets):
        return ''
    else:
        offsets.add(offset)

    xml_line = ' ' * 8
    xml_line += make_xml_line(offset, type)
    make_replace('060' + offset, type)

    return xml_line + '\n'

def find_type(srcdata, i):
    j = i
    while(j >= 0 and ' = {' not in srcdata[j]):
        j -= 1
    if(j < 0):
        return 'UNKNOWN'
    else:
        return srcdata[j].split(' = {')[0].split()[-2]

def other_to_xml(srcdata, i):
    xml_data = ''
    index = srcdata[i].find('0x060')
    while(index< len(srcdata[i]) and '0x060' in srcdata[i][index:]):
        offset = srcdata[i][index+5:index+10]
        type = find_type(srcdata, i)
        if(offset not in offsets):
            offsets.add(offset)
            xml_data += ' ' * 8 + make_xml_line(offset, type) + '\n'
            make_replace('060' + offset, type)
        index += srcdata[i][index+10:].find('0x060') + 10
    return xml_data

def find_object(src):
    with open(src,'r',encoding='utf-8') as srcfile:
        srcdata = srcfile.readlines()
    for i, line in enumerate(srcdata):
        if 'OBJECT_' in line and '    FLAGS,' in srcdata[i-1]:
            object = line.strip().strip(',')
            return object.lower()

    print('Object not found in', src)
    object = ''
    return object

def create_xml(src, name):
    set_globals(name)
    with open(src,'r',encoding='utf-8') as srcfile:
        srcdata = srcfile.readlines()
    object = find_object(src)
    xml = '<Root>\n    <File Name="' + object + '" Segment="6">\n'
    symbols = {}
    for i, line in enumerate(srcdata):
        if '0x060' in line or 'D_060' in line:
            if 'extern' in line:
                xml += extern_to_xml(line)
            else:
                xml += other_to_xml(srcdata, i)
    xml += '    </File>\n</Root>\n'
    return xml

def add_header(src):
    object = find_object(src)
    if(object == ''):
        return 0
    with open(src,'r', encoding='utf-8') as srcfile:
        srcdata = srcfile.readlines()
    for i, line in enumerate(srcdata):
        if('#include' in line):
            break
    srcdata = srcdata[0:i+1] + ['#include "objects/' + object + '/' + object + '.h"\n'] + srcdata[i+1:]
    with open(src,'w',encoding='utf-8', newline = '\n') as outfile:
        outfile.writelines(srcdata)
    return 1

def replace_src(src):
    global replacements
    global name

    add_header(src)
    with open(src,'r', encoding='utf-8') as srcfile:
        srcdata = srcfile.read()
    for key in list(replacements.keys()):
        srcdata = srcdata.replace(key, replacements.get(key))
        srcdata = srcdata.replace('D_g' + name, 'g' + name)
        if('Gfx' in replacements.get(key)):
            srcdata = srcdata.replace('0xg' + name, 'g' + name)
        else:
            srcdata = srcdata.replace('0xg' + name, '&g' + name)
    with open(src,'w',encoding='utf-8', newline = '\n') as outfile:
        outfile.write(srcdata)
    return 1

parser = argparse.ArgumentParser(description="Generate an xml object file from a source file")
parser.add_argument('file', help="overlay file to generate xml from")
parser.add_argument('name', help='name to use for xml variables')
parser.add_argument('-r',action='store_true', help="replace variables in overlay with the new names")
parser.add_argument('-o', metavar = 'outfile', dest = 'outfile', help = 'file to write xml to', default = None)

if __name__ == "__main__":
    args = parser.parse_args()
    if args.outfile is None:
        print(create_xml(args.file, args.name))
    else:
        with open(args.outfile, 'w', encoding='utf-8',newline='\n') as outfile:
            outfile.write(create_xml(args.file, args.name))
    if(args.r):
        replace_src(args.file)
