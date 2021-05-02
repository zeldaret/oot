#!/usr/bin/python3
import os
import argparse

offsets = set()
replacements = {}
global_name = ''

name_fmt = 'g{0}{1}_{2}'
spec_fmt = '    include "build/assets/objects/{0}/{0}.o"\n    number 6\n'

dlist_xml = '<DList Name="{0}" Offset="0x{1}"/>'
collision_xml = '<Collision Name="{0}" Offset="0x{1}"/>'
animation_xml = '<Animation Name="{0}" Offset="0x{1}"/>'
skeleton_xml = '<Skeleton Name="{0}" Type="{2}" LimbType="{3}" Offset="0x{1}"/>'
unknown_xml = '<!-- <{2} Name="{0}" Offset="0x{1}"/> -->'

def set_globals(new_name):
    global offsets
    global global_name
    global replacements

    offsets = set()
    replacements = {}
    global_name = new_name
    return 0


def dlist_to_xml(var_name,offset):

    return dlist_xml.format(var_name,offset.lstrip('0'))

def collision_to_xml(var_name,offset):

    return collision_xml.format(var_name,offset.lstrip('0'))

def animation_to_xml(var_name,offset):

    return animation_xml.format(var_name,offset.lstrip('0'))

def skeleton_to_xml(var_name,offset, type):
    skel_type = "Flex" if "Flex" in type else "Normal"
    limb_type = "Standard"

    return skeleton_xml.format(var_name, offset.lstrip('0'), skel_type, limb_type)

def unknown_to_xml(var_name,offset, type):

    return unknown_xml.format(var_name,offset.lstrip('0'),type)

def make_xml_line(offset, type):
    if 'Gfx' in type:
        var_name = name_fmt.format(global_name,'DL',offset)
        xml_line = dlist_to_xml(var_name, offset)
    elif 'Col' in type:
        var_name = name_fmt.format(global_name,'Col',offset)
        xml_line = collision_to_xml(var_name, offset)
    elif 'Animation' in type:
        var_name = name_fmt.format(global_name,'Anim',offset)
        xml_line = animation_to_xml(var_name, offset)
    elif 'Skeleton' in type:
        var_name = name_fmt.format(global_name,'Skel',offset)
        xml_line = skeleton_to_xml(var_name, offset, type)
    else:
        var_name = name_fmt.format(global_name,'Unknown',offset)
        xml_line = unknown_to_xml(var_name, offset, type)
        print('Unknown type at offset', offset)
    replacements['06'+offset] = var_name
    return xml_line

def extern_to_xml(line):
    global offsets

    type = line.split()[1]
    sym = line.split()[2]
    offset = sym[4:10]
    if(offset in offsets):
        return ''
    else:
        offsets.add(offset)

    xml_line = ' ' * 8
    xml_line += make_xml_line(offset, type)
    # make_replace(offset, type)

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
    line = srcdata[i]

    index = line.find('0x060')
    while(index < len(line) and '0x060' in line[index:]):
        offset = line[index+4:index+10]
        type = find_type(srcdata, i)
        if(offset not in offsets):
            offsets.add(offset)
            xml_data += ' ' * 8 + make_xml_line(offset, type) + '\n'
            # make_replace(offset, type)
        index += line[index+10:].find('0x060') + 10
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
            elif '0x060' in line:
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
    global global_name

    add_header(src)
    with open(src,'r', encoding='utf-8') as srcfile:
        srcdata = srcfile.read()
    for key in list(replacements.keys()):
        srcdata = srcdata.replace(key, replacements.get(key))
        srcdata = srcdata.replace('D_g' + global_name, 'g' + global_name)
        if('Gfx' in replacements.get(key)):
            srcdata = srcdata.replace('0xg' + global_name, 'g' + global_name)
        else:
            srcdata = srcdata.replace('0xg' + global_name, '&g' + global_name)
    with open(src,'w',encoding='utf-8', newline = '\n') as outfile:
        outfile.write(srcdata)
    return 1

def fix_spec(src, spec):
    object = find_object(src)
    fix = False
    old = False
    with open(spec, 'r') as specfile:
        specdata = specfile.readlines()
    for i, line in enumerate(specdata):
        if ('"' + object + '"') in line:
            if 'number' in specdata[i+3]:
                old = True
            else:
                specdata[i+2] = spec_fmt.format(object)
                fix = True
            break
    if old:
        print('Already fixed', object, 'in', spec)
        return 0
    if not fix:
        print('Could not find',object,'in', spec)
        return -1
    with open(spec, 'w', newline='\n') as outfile:
        outfile.writelines(specdata)
    return 1

parser = argparse.ArgumentParser(description="Generate an xml object file from a source file")
parser.add_argument('file', help="overlay file to generate xml from")
parser.add_argument('name', help='name to use for xml variables')
parser.add_argument('-r',action='store_true', help="replace variables in overlay with the new names")
parser.add_argument('-s',metavar = 'spec', dest = 'spec', help="spec file to update", default=None)
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
    if(args.spec is not None):
        fix_spec(args.file, args.spec)
