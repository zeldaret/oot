#!/usr/bin/env python3
import os
import struct
import sys

SIMPLIFY_OUTPUT = True
OVL_KALEIDO_SCOPE_RAM = 0x80813820
gPauseMapMarkDataTable = 0x8082B2C0

SCENES = [
    ("Deku Tree", 5),
    ("Dodongo's Cavern", 2),
    ("Jabu-Jabu's Belly", 2),
    ("Forest Temple", 4),
    ("Fire Temple", 5),
    ("Water Temple", 4),
    ("Spirit Temple", 4),
    ("Shadow Temple", 4),
    ("Bottom of the Well", 3),
    ("Ice Cavern", 1),
]

def RamToOff(vram):
    return vram - OVL_KALEIDO_SCOPE_RAM

def GetPoints(data, ptr):
    points = []
    off = RamToOff(ptr)
    for i in range(12):
        v = struct.unpack_from(">hhff", data[off:off+0x0C])
        if not (SIMPLIFY_OUTPUT and v[0] == 0 and v[2] == 0 and v[3] == 0):
            points.append([v[0], v[2], v[3]])
        off = off + 0x0C
    return points

def GetIconData(data, ptr):
    off = RamToOff(ptr)
    v = struct.unpack_from(">hhiIii", data[off:off+0x14])
    points = GetPoints(data, ptr+0x14)
    return [v[0], v[2], v[3], v[4], v[5], points]

def GetSceneMap(data, ptr):
    icons = []
    for i in range(3):
        icon = GetIconData(data, ptr + (i * 0xA4))
        if not SIMPLIFY_OUTPUT or icon[0] != 0 or icon[4] > 0:
            icons.append(icon)
    return icons

def GetIconName(v):
    if v == 0:
        return "PAUSE_MAP_MARK_CHEST"
    if v == 1:
        return "PAUSE_MAP_MARK_BOSS"
    if v == -1:
        return "PAUSE_MAP_MARK_NONE"
    return v

def GetVtxPointer(v):
    if v == 0:
        return "NULL"
    if v == 0x80830610:
        return "sMarkBossVtx"
    if v == 0x80830650:
        return "sMarkChestVtx"

def IND(n):
    return ' ' * 4 * n


scriptDir = os.path.dirname(os.path.realpath(__file__))
repo = scriptDir + os.sep +  ".." + os.sep + ".."


kaleido_scope_data = []
with open(repo + "/baserom/ovl_kaleido_scope", "rb") as file:
    kaleido_scope_data = bytearray(file.read())

scenemaps = []
i = 0

for name, numMaps in SCENES:
    maps = []
    for k in range(numMaps):
        maps.append(GetSceneMap(kaleido_scope_data, gPauseMapMarkDataTable + (i * 0x1EC)))
        i += 1
    scenemaps.append((name, maps))

cstr = ""

cstr += f"PauseMapMarksData gPauseMapMarkDataTable[] = {{\n"
for scenemap in scenemaps:
    for mapId, map in enumerate(scenemap[1]):
        cstr += IND(1) + f"// {scenemap[0]} map {mapId}\n"
        cstr += IND(1) + "{\n"
        for icon in map:
            if SIMPLIFY_OUTPUT and icon[0] == -1:
                cstr += IND(2) + f"{{ {GetIconName(icon[0])}, 0, NULL, 0, 0, {{ 0 }} }},\n"
            else:
                cstr += IND(2) + "{\n"
                cstr += IND(3) + f"{GetIconName(icon[0])}, {icon[1]}, {GetVtxPointer(icon[2])}, {icon[3]}, {icon[4]},\n"
                cstr += IND(3) + "{\n"
                for point in icon[5]:
                    cstr += IND(4) + f"{{ {point[0]}, {point[1]}f, {point[2]}f }},\n"
                cstr += IND(3) + "}\n"
                cstr += IND(2) + "},\n"
        cstr += IND(1) + "},\n"
cstr += "};"

print(cstr)
