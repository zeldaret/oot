#!/usr/bin/env python3

import struct
import argparse
from filemap import FileResult, GetFromVRam, GetFromRom

T_DEFAULT = ''
T_SET3 = '_Set3'
T_ACTOR = '_Actor'

TYPE_ENUM = [
    "COLTYPE_HIT0",
    "COLTYPE_HIT1",
    "COLTYPE_HIT2",
    "COLTYPE_HIT3",
    "COLTYPE_HIT4",
    "COLTYPE_HIT5",
    "COLTYPE_HIT6",
    "COLTYPE_HIT7",
    "COLTYPE_HIT8",
    "COLTYPE_METAL",
    "COLTYPE_NONE",
    "COLTYPE_WOOD",
    "COLTYPE_HARD",
    "COLTYPE_TREE"  ]

SHAPE_ENUM = [
    "COLSHAPE_JNTSPH",
    "COLSHAPE_CYLINDER",
    "COLSHAPE_TRIS",
    "COLSHAPE_QUAD" ]

ELEMTYPE_UNKENUM = [
    "ELEMTYPE_UNK0",
    "ELEMTYPE_UNK1",
    "ELEMTYPE_UNK2",
    "ELEMTYPE_UNK3",
    "ELEMTYPE_UNK4",
    "ELEMTYPE_UNK5",
    "ELEMTYPE_UNK6"]

ATFLAGS_ENUM = [
    "AT_ON",
    "AT_HIT",
    "AT_BOUNCED",
    "AT_PLAYER",
    "AT_ENEMY",
    "AT_BOMB",
    "AT_SELF"]

ACFLAGS_ENUM = [
    "AC_ON",
    "AC_HIT",
    "AC_HARD",
    "AC_PLAYER",
    "AC_ENEMY",
    "AC_BOMB",
    "AC_NO_DAMAGE",
    "AC_BOUNCED"]

OCFLAGS_ENUM = [
    "OC_ON",
    "OC_HIT",
    "OC_NO_PUSH",
    "OC_PLAYER",
    "OC_TYPE1",
    "OC_TYPE2"]

OCTYPE_ENUM = [
    "OT_HIT_PLAYER",
    "OT_UNK1",
    "OT_UNK2",
    "OT_PLAYER",
    "OT_TYPE1",
    "OT_TYPE2",
    "OT_FIRST_ONLY"]

TOUCHERFLAGS_ENUM = [
    "TOUCH_ON",
    "TOUCH_HIT",
    "TOUCH_NEAREST",
    "TOUCH_SFX_HARD",
    "TOUCH_SFX_WOOD",
    "TOUCH_AT_HITMARK",
    "TOUCH_DREW_HITMARK",
    "TOUCH_UNK7"]

BUMPERFLAGS_ENUM = [
    "BUMP_ON",
    "BUMP_HIT",
    "BUMP_HOOKABLE",
    "BUMP_NO_AT_INFO",
    "BUMP_NO_DAMAGE",
    "BUMP_NO_SWORD_SFX",
    "BUMP_NO_HITMARK",
    "BUMP_DRAW_HITMARK"]

OCELEMFLAGS_ENUM = [
    "OCELEM_ON",
    "OCELEM_HIT"]

sf_ColliderInit = ">BBBBBB"
sf_ColliderInit_Set3 = ">BBBBB"
sf_ColliderInitToActor = ">IBBBB"
sf_ColliderBodyInit = ">B3xIBB2xIBB2xBBB"
sf_JntSph = ">II"
sf_JntSphElement = ">Bx5h"
sf_Cylinder16 = ">6h"
sf_Tris = ">II"
sf_TrisElement = ">9f"
sf_Quad = ">12f"

f_ColliderInit = "{{ {0}, {1}, {2}, {3}, {4}, {5} }}"
f_ColliderInit_Set3 = "{{ {0}, {1}, {2}, {3}, {4} }}"
f_ColliderInitToActor = "{{ {0}, {1}, {2}, {3}, {4} }}"
f_ColliderBodyInit = "{{ {0}, {{ 0x{1:08X}, 0x{2:02X}, 0x{3:02X} }}, {{ 0x{4:08X}, 0x{5:02X}, 0x{6:02X} }}, {7}, {8}, {9} }}"
f_JntSph = "{0}, D_{1:08X}"
f_JntSphElement = "{{ {0}, {{ {{ {1}, {2}, {3} }}, {4} }}, {5} }}"
f_Cylinder16 = "{{ {0}, {1}, {2}, {{ {3}, {4}, {5} }} }}"
f_Tris = "{0}, D_{1:08X}"
f_TrisElement = "{{ {{ {{ {0}f, {1}f, {2}f }}, {{ {3}f, {4}f, {5}f }}, {{ {6}f, {7}f, {8}f }} }} }}"
f_Quad = "{{ {{ {{ {0}f, {1}f, {2}f }}, {{ {3}f, {4}f, {5}f }}, {{ {6}f, {7}f, {8}f }}, {{ {9}f, {10}f, {11}f }} }} }}"

def GetATflags(at):
    for i, flag in enumerate(ATFLAGS_ENUM):
        if(i == 0):
            if(at & (1 << i)):
                output = "AT_ON"
            else:
                output = "AT_OFF"
        elif(at & (1 << i)):
            output = flag + " | " + output
    return output.replace("AT_BOMB | AT_ENEMY | AT_PLAYER","AT_ALL")

def GetACflags(at):
    for i, flag in enumerate(ACFLAGS_ENUM):
        if(i == 0):
            if(at & (1 << i)):
                output = "AC_ON"
            else:
                output = "AC_OFF"
        elif(at & (1 << i)):
            output = flag + " | " + output
    return output.replace("AC_BOMB | AC_ENEMY | AC_PLAYER","AC_ALL")

def GetOCflags(at):
    for i, flag in enumerate(OCFLAGS_ENUM):
        if(i == 0):
            if(at & (1 << i)):
                output = "OC_ON"
            else:
                output = "OC_OFF"
        elif(at & (1 << i)):
            output = flag + " | " + output
    return output.replace("OC_TYPE2 | OC_TYPE1 | OC_PLAYER","OC_ALL")

def GetOCtype(at):
    output = ""
    for i, flag in enumerate(OCTYPE_ENUM):
        if(at & (1 << i)):
            output = " | " + flag + output
    if(output == ""):
        return "OT_NONE"
    else:
        return output.strip(" | ")

def GetToucherFlags(at):
    for i, flag in enumerate(TOUCHERFLAGS_ENUM):
        if(i == 0):
            if(at & (1 << i)):
                output = "TOUCH_ON"
            else:
                output = "TOUCH_OFF"
        elif(at & (1 << i)):
            output = flag + " | " + output
        if(i == 4 and output.find("SFX") == -1 and output.find("OFF") == -1):
            output = "TOUCH_SFX_0 | " + output
    return output.replace("TOUCH_SFX_2 | TOUCH_SFX_1", "TOUCH_SFX_3")

def GetBumperFlags(at):
    for i, flag in enumerate(BUMPERFLAGS_ENUM):
        if(i == 0):
            if(at & (1 << i)):
                output = "BUMP_ON"
            else:
                output = "BUMP_OFF"
        elif(at & (1 << i)):
            output = flag + " | " + output
    return output

def GetOcElemFlags(at):
    for i, flag in enumerate(OCELEMFLAGS_ENUM):
        if(i == 0):
            if(at & (1 << i)):
                output = "OCELEM_ON"
            else:
                output = "OCELEM_OFF"
        elif(at & (1 << i)):
            output = flag + " | " + output
    return output

def GetColliderFormat(type):
    if type == T_DEFAULT:
        return (sf_ColliderInit, f_ColliderInit)
    if type == T_SET3:
        return (sf_ColliderInit_Set3, f_ColliderInit_Set3)
    if type == T_ACTOR:
        return (sf_ColliderInitToActor, f_ColliderInitToActor)
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

    cBase[1] = GetATflags(cBase[1])
    cBase[2] = GetACflags(cBase[2])
    cBase[3] = GetOCflags(cBase[3])

    if type == T_DEFAULT:
        cBase[4] = GetOCtype(cBase[4])
        i = 5
    else:
        i = 4

    if cBase[i] < 4:
        cBase[i] = SHAPE_ENUM[cBase[i]]
    else:
        cBase[i] = '0x{0:02X}'.format(cBase[i])

    return cf[1].format(*cBase);

def GetItems(data, off, count, structf, fmt, size):
    result = ''
    for i in range(count):
        ioff =  (i * size)
        cBody = list(struct.unpack_from(sf_ColliderBodyInit, data, off + ioff))
        cItem = struct.unpack_from(structf, data, off + 0x18 + ioff)

        if cBody[0] < 7:
            cBody[0] = ELEMTYPE_UNKENUM[cBody[0]]
        else:
            cBody[0] = '0x{0:02X}'.format(cBody[0])

        cBody[7] = GetToucherFlags(cBody[7])
        cBody[8] = GetBumperFlags(cBody[8])
        cBody[9] = GetOcElemFlags(cBody[9])

        result += '''
    {{
        {0},
        {1},
    }},'''.format(f_ColliderBodyInit.format(*cBody), fmt.format(*cItem))
    return result

def GetJntSphElements(data, off, count):
    items = GetItems(data, off, count, sf_JntSphElement, f_JntSphElement, 0x24)
    return('''
static ColliderJntSphElementInit sJntSphElementsInit[{0}] = {{{1}
}};
'''.format(count, items))

def GetJntSph(data, off, type):
    sBase = GetColliderStr(data, off, type)
    cJntSph = struct.unpack_from(sf_JntSph, data, off + 8)

    return('''
static ColliderJntSphInit{0} sJntSphInit = {{
    {1},
    {2},
}};
'''.format(type, sBase, f_JntSph.format(*cJntSph)))


def GetTrisElements(data, off, count):
    items = GetItems(data, off, count, sf_TrisElement, f_TrisElement, 0x3C)
    return('''
static ColliderTrisElementInit sTrisElementsInit[{0}] = {{{1}
}};
'''.format(count, items))


def GetCylinder(data, off, type):
    sBase = GetColliderStr(data, off, type)
    cBody = list(struct.unpack_from(sf_ColliderBodyInit, data, off + 0x08))
    cCyl16 = struct.unpack_from(sf_Cylinder16, data, off + 0x20)

    if cBody[0] < 7:
        cBody[0] = ELEMTYPE_UNKENUM[cBody[0]]
    else:
        cBody[0] = '0x{0:02X}'.format(cBody[0])

    cBody[7] = GetToucherFlags(cBody[7])
    cBody[8] = GetBumperFlags(cBody[8])
    cBody[9] = GetOcElemFlags(cBody[9])

    return('''
static ColliderCylinderInit{0} sCylinderInit = {{
    {1},
    {2},
    {3},
}};
'''.format(type,sBase,f_ColliderBodyInit.format(*cBody),f_Cylinder16.format(*cCyl16)))

def GetTris(data, off, type):
    sBase = GetColliderStr(data, off, type)
    cTris = struct.unpack_from(sf_Tris, data, off + 8)

    return('''
static ColliderTrisInit{0} sTrisInit = {{
    {1},
    {2},
}};
'''.format(type, sBase, f_Tris.format(*cTris)))

def GetQuad(data, off, type):
    sBase = GetColliderStr(data, off, type)
    cBody = list(struct.unpack_from(sf_ColliderBodyInit, data, off + 0x08))
    cQuad = struct.unpack_from(sf_Quad, data, off + 0x20)

    if cBody[0] < 7:
        cBody[0] = ELEMTYPE_UNKENUM[cBody[0]]
    else:
        cBody[0] = '0x{0:02X}'.format(cBody[0])

    cBody[7] = GetToucherFlags(cBody[7])
    cBody[8] = GetBumperFlags(cBody[8])
    cBody[9] = GetOcElemFlags(cBody[9])

    return('''
static ColliderQuadInit{0} sQuadInit = {{
    {1},
    {2},
    {3},
}};
'''.format(type, sBase, f_ColliderBodyInit.format(*cBody), f_Quad.format(*cQuad)))

def GetColliderInit(address, type, num, path):
    TYPE_DICT = {
        'ColliderJntSphInit' : (GetJntSph, 'Shape', T_DEFAULT),
        'ColliderCylinderInit' : (GetCylinder, 'Shape', T_DEFAULT),
        'ColliderTrisInit': (GetTris, 'Shape', T_DEFAULT),
        'ColliderQuadInit': (GetQuad, 'Shape', T_DEFAULT),
        'ColliderJntSphElementInit' : (GetJntSphElements, 'Item'),
        'ColliderTrisElementInit' : (GetTrisElements, 'Item')
    }

    update = [(k, v[0]) for k,v in TYPE_DICT.items() if v[1] == 'Shape']
    for i in update:
        for j in (T_SET3, T_ACTOR):
            TYPE_DICT[i[0] + j] = (i[1], 'Shape', j)

    fileResult = None

    if address >= 0x80000000:
        fileResult = GetFromVRam(address)
    else:
        fileResult = GetFromRom(address)

    if fileResult is None:
        return("Invalid address")

    print(fileResult)

    selectedType = TYPE_DICT[type]
    arg2 = None
    if selectedType[1] == 'Shape':
        arg2 = selectedType[2]
    elif num > 0:
        arg2 = num
    else:
        return("ItemInit type must specify number of elements")

    ovlFile = open(path + "/baserom/" + fileResult.name, "rb")
    ovlData = bytearray(ovlFile.read())
    ovlFile.close()

    return selectedType[0](ovlData, fileResult.offset, arg2)

def GetColliderInitFull(address, type, path):
    base = GetColliderInit(address, type, 0, path)

    if(type.find('JntSph') != -1):
        [num, address2, dummy] = base.split('\n')[3].split(',')
        elements = GetColliderInit(int(address2.strip(' D_'),16), 'ColliderJntSphElementInit', int(num), path)
        return elements + base.replace(address2,'sJntSphElementsInit')
    elif(type.find('Tris') != -1):
        [num, address2, dummy] = base.split('\n')[3].split(',')
        elements = GetColliderInit(int(address2.strip(' D_'),16), 'ColliderTrisElementInit', int(num), path)
        return elements + base.replace(address2,'sTrisElementsInit')
    else:
        return base

#ovlName = 'ovl_Obj_Comb'
#address = 0x000780
#inputType = 'ColliderJntSphElementInit'

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

print(GetColliderInitFull(args.address, args.type, "../.."))
# print(GetColliderInit(args.address, args.type, args.num, "../.."))
