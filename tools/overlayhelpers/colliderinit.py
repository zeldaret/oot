#!/usr/bin/env python3

import os
import struct
import argparse
from filemap import FileResult, GetFromVRam, GetFromRom

T_DEFAULT = ''
T_SET3 = '_Set3'
T_ACTOR = '_Actor'

TYPE_ENUM = [
    "COLTYPE_UNK0",
    "COLTYPE_UNK1",
    "COLTYPE_UNK2",
    "COLTYPE_UNK3",
    "COLTYPE_UNK4",
    "COLTYPE_UNK5",
    "COLTYPE_UNK6",
    "COLTYPE_UNK7",
    "COLTYPE_UNK8",
    "COLTYPE_METAL_SHIELD",
    "COLTYPE_UNK10",
    "COLTYPE_WOODEN_SHIELD",
    "COLTYPE_UNK12",
    "COLTYPE_UNK13"  ]

SHAPE_ENUM = [
    "COLSHAPE_JNTSPH",
    "COLSHAPE_CYLINDER",
    "COLSHAPE_TRIS",
    "COLSHAPE_QUAD" ]

sf_ColliderInit = ">BBBBBB"
sf_ColliderInit_Set3 = ">BBBBB"
sf_ColliderInit_Actor = ">IBBBB"
sf_ColliderBodyInit = ">B3xIBB2xIBB2xBBB"
sf_JntSph = ">II"
sf_JntSphItem = ">Bx5h"
sf_Cylinder16 = ">6h"
sf_Tris = ">II"
sf_TrisItem = ">9f"
sf_Quad = ">12f"

f_ColliderInit = "{{ {0}, 0x{1:02X}, 0x{2:02X}, 0x{3:02X}, 0x{4:02X}, {5} }}"
f_ColliderInit_Set3 = "{{ {0}, 0x{1:02X}, 0x{2:02X}, 0x{3:02X}, {4} }}"
f_ColliderInit_Actor = "{{ {0}, 0x{1:02X}, 0x{2:02X}, 0x{3:02X}, {4} }}"
f_ColliderBodyInit = "{{ 0x{0:02X}, {{ 0x{1:08X}, 0x{2:02X}, 0x{3:02X} }}, {{ 0x{4:08X}, 0x{5:02X}, 0x{6:02X} }}, 0x{7:02X}, 0x{8:02X}, 0x{9:02X} }}"
f_JntSph = "{0}, D_{1:08X}"
f_JntSphItem = "{{ {0}, {{ {{ {1}, {2}, {3} }}, {4} }}, {5} }}"
f_Cylinder16 = "{{ {0}, {1}, {2}, {{ {3}, {4}, {5} }} }}"
f_Tris = "{0}, D_{1:08X}"
f_TrisItem = "{{ {{ {{ {0}f, {1}f, {2}f }}, {{ {3}f, {4}f, {5}f }}, {{ {6}f, {7}f, {8}f }} }} }}"
f_Quad = "{{ {{ {{ {0}f, {1}f, {2}f }}, {{ {3}f, {4}f, {5}f }}, {{ {6}f, {7}f, {8}f }}, {{ {9}f, {10}f, {11}f }} }} }}"

def GetColliderFormat(type):
    if type == T_DEFAULT:
        return (sf_ColliderInit, f_ColliderInit)
    if type == T_SET3:
        return (sf_ColliderInit_Set3, f_ColliderInit_Set3)
    if type == T_ACTOR:
        return (sf_ColliderInit_Actor, f_ColliderInit_Actor)
    return None

def GetColliderStr(data, off, type):
    cf = GetColliderFormat(type)
    cBase = list(struct.unpack_from(cf[0], data, off))
    if type == T_ACTOR:
        if cBase[0] == 0:
            cBase[0] = 'NULL'
        else:
            cBase[0] = '0x{0:08X}'.format(cBase[0])
    else:
        if cBase[0] < 14:
            cBase[0] = TYPE_ENUM[cBase[0]]
        else:
            cBase[0] = '0x{0:02X}'.format(cBase[0])

    i = 4
    if type == T_DEFAULT:
        i = 5

    if cBase[i] < 4:
        cBase[i] = SHAPE_ENUM[cBase[i]]
    else:
        cBase[i] = '0x{0:02X}'.format(cBase[i])

    return cf[1].format(*cBase);

def GetItems(data, off, count, structf, fmt, size):
    result = ''
    for i in range(count):
        ioff =  (i * size)
        cBody = struct.unpack_from(sf_ColliderBodyInit, data, off + ioff)
        cItem = struct.unpack_from(structf, data, off + 0x18 + ioff)
        result += '''
    {{
        {0},
        {1},
    }},'''.format(f_ColliderBodyInit.format(*cBody), fmt.format(*cItem))
    return result

def GetJntSphItems(data, off, count):
    items = GetItems(data, off, count, sf_JntSphItem, f_JntSphItem, 0x24)
    print('''
static ColliderJntSphItemInit sJntSphItemsInit[{0}] = {{{1}
}};
'''.format(count, items))

def GetJntSph(data, off, type):
    sBase = GetColliderStr(data, off, type)
    cJntSph = struct.unpack_from(sf_JntSph, data, off + 8)

    print('''
static ColliderJntSphInit{0} sJntSphInit = 
{{
    {1},
    {2},
}};
    '''.format(type, sBase, f_JntSph.format(*cJntSph)))


def GetTrisItems(data, off, count):
    items = GetItems(data, off, count, sf_TrisItem, f_TrisItem, 0x3C)
    print('''
static ColliderTrisItemInit sTrisItemsInit[{0}] = {{{1}
}};
'''.format(count, items))


def GetCylinder(data, off, type):
    sBase = GetColliderStr(data, off, type)
    cBody = struct.unpack_from(sf_ColliderBodyInit, data, off + 0x08)
    cCyl16 = struct.unpack_from(sf_Cylinder16, data, off + 0x20)

    print('''
static ColliderCylinderInit{0} sCylinderInit = 
{{
    {1},
    {2},
    {3},
}};
    '''.format(type, sBase, f_ColliderBodyInit.format(*cBody),f_Cylinder16.format(*cCyl16)))

def GetTris(data, off, type):
    sBase = GetColliderStr(data, off, type)
    cTris = struct.unpack_from(sf_Tris, data, off + 8)

    print('''
static ColliderTrisInit{0} sTrisInit = 
{{
    {1},
    {2},
}};
    '''.format(type, sBase, f_Tris.format(*cTris)))

def GetQuad(data, off, type):
    sBase = GetColliderStr(data, off, type)
    cBody = struct.unpack_from(sf_ColliderBodyInit, data, off + 0x08)
    cQuad = struct.unpack_from(sf_Quad, data, off + 0x20)
    print('''
static ColliderQuadInit{0} sQuadInit = 
{{
    {1},
    {2},
    {3},
}};
    '''.format(type, sBase, f_ColliderBodyInit.format(*cBody), f_Quad.format(*cQuad)))

TYPE_DICT = {
    'ColliderJntSphInit' : (GetJntSph, 'Shape', T_DEFAULT),
    'ColliderCylinderInit' : (GetCylinder, 'Shape', T_DEFAULT),
    'ColliderTrisInit': (GetTris, 'Shape', T_DEFAULT),
    'ColliderQuadInit': (GetQuad, 'Shape', T_DEFAULT),
    'ColliderJntSphItemInit' : (GetJntSphItems, 'Item'),
    'ColliderTrisItemInit' : (GetTrisItems, 'Item')
}

update = [(k, v[0]) for k,v in TYPE_DICT.items() if v[1] == 'Shape']
for i in update:
    for j in (T_SET3, T_ACTOR):
        TYPE_DICT[i[0] + j] = (i[1], 'Shape', j)
       
#ovlName = 'ovl_Obj_Comb'
#address = 0x000780 
#inputType = 'ColliderJntSphItemInit'

#ovlName = 'ovl_En_Boom'
#address = 0x0007D0
#inputType = 'ColliderQuadInit'

#ovlName = input("Overlay Name (baserom): ")

def HexParse(s):
    return int(s, 16)

parser = argparse.ArgumentParser()
parser.add_argument('address', help="VRam or Rom address of the struct", type=HexParse)
parser.add_argument('type', help="Type name (e.g. ColliderQuadInit)")
parser.add_argument('num', nargs='?', default=0, type=HexParse, help="Number of elements. Only applies to ItemInit types")

args = parser.parse_args()

fileResult = None

if args.address >= 0x80000000:
    fileResult = GetFromVRam(args.address)
else:
    fileResult = GetFromRom(args.address)

if fileResult is None:
    print("Invalid address")
    exit()

print(fileResult)

selectedType = TYPE_DICT[args.type]
arg2 = None
if selectedType[1] == 'Shape':
    arg2 = selectedType[2]
elif args.num > 0:
    arg2 = args.num
else:
    print("ItemInit type must specify number of elements")
    exit()

script_dir = os.path.dirname(os.path.realpath(__file__))

ovlFile = open(script_dir + "/../../baserom/" + fileResult.name, "rb")
ovlData = bytearray(ovlFile.read())
ovlFile.close()

selectedType[0](ovlData, fileResult.offset, arg2)
