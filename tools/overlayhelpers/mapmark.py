#!/usr/bin/env python3
import os
import struct
import sys

NUM_SCENES = 10
SIMPLIFY_OUTPUT = True # setting to True reduces the final output by ~9k lines
MAP_MARK_RAM = 0x80858B70
gMapMarkDataTable = 0x8085F5E8

DUNGEON_NAMES = [
    ("DekuTree", "Deku Tree"),
    ("DodongosCavern", "Dodongo's Cavern"),
    ("JabuJabuBelly", "Jabu-Jabu's Belly"),
    ("ForestTemple", "Forest Temple"),
    ("FireTemple", "Fire Temple"),
    ("WaterTemple", "Water Temple"),
    ("SpiritTemple", "Spirit Temple"),
    ("ShadowTemple", "Shadow Temple"),
    ("BottomWell", "Bottom of the Well"),
    ("IceCavern", "Ice Cavern")
]

HEADER = """\
#include "global.h"
"""

def RamToOff(vram):
    return vram - MAP_MARK_RAM

def GetMapPtrs(data):
    off = RamToOff(gMapMarkDataTable)
    return struct.unpack_from(">10L", data[off:off+(NUM_SCENES * 4)])

def GetMapsPerScene(ptrs):
    result = []
    endAddr = list(ptrs)
    endAddr.append(gMapMarkDataTable)
    for i, ptr in enumerate(ptrs):
        v = (endAddr[i+1] - ptr) // 0x72
        result.append(v)
    return result

def GetPoints(data, ptr, numPoints):
    points = []
    off = RamToOff(ptr);
    for i in range(numPoints):
        points.append(struct.unpack_from(">bBB", data[off:off+3]))
        off = off + 3
    return points

def GetIconData(data, ptr):
    off = RamToOff(ptr)
    v = struct.unpack_from(">bB", data[off:off+2])
    points = GetPoints(data, ptr+2, v[1] if SIMPLIFY_OUTPUT else 12)
    return [v[0], v[1], points]

def GetSceneMap(data, ptr):
    icons = []
    for i in range(3):
        icon = GetIconData(data, ptr + (i * 0x26))
        if not SIMPLIFY_OUTPUT or icon[0] != 0 or icon[1] > 0:
            icons.append(icon)
    return icons

def GetSceneMaps(data, ptr, numMaps):
    maps = []
    for i in range(numMaps):
        maps.append(GetSceneMap(data, ptr + (i * 0x72)))
    return maps

def GetDungeonSymbol(i):
    return f"sMapMark{DUNGEON_NAMES[i][0]}"

def GetDungeonName(i):
    return DUNGEON_NAMES[i][1]

def GetIconName(v):
    if v == 0:
        return "MAP_MARK_CHEST"
    if v == 1:
        return "MAP_MARK_BOSS"
    if v == -1:
        return "MAP_MARK_NONE"
    return v

def IND(n):
    return ' ' * 4 * n


if len(sys.argv) != 2:
    print("Script requires an output filename for the generated .c file")
    quit()

scriptDir = os.path.dirname(os.path.realpath(__file__))
repo = scriptDir + os.sep +  ".." + os.sep + ".."


map_mark_data = []
with open(repo + "/baserom/ovl_map_mark_data", "rb") as file:
    map_mark_data = bytearray(file.read())

scenemaps = []

scenemap_ptrs = GetMapPtrs(map_mark_data)
maps_per_scene = GetMapsPerScene(scenemap_ptrs)
for i in range(NUM_SCENES):
    scenemaps.append((i, GetSceneMaps(map_mark_data, scenemap_ptrs[i], maps_per_scene[i])))

cstr = HEADER

for scenemap in scenemaps:
    cstr += f"MapMarkData {GetDungeonSymbol(scenemap[0])}[] = {{\n"
    for mapId, map in enumerate(scenemap[1]):
        cstr += IND(1) + f"// {GetDungeonName(scenemap[0])} minimap {mapId}\n"
        cstr += IND(1) + "{\n"
        for icon in map:
            if SIMPLIFY_OUTPUT and icon[0] == -1:
                cstr += IND(2) + f"{{ {GetIconName(icon[0])}, 0, {{ 0 }} }},\n"
            else:
                cstr += IND(2) + "{\n"
                cstr += IND(3) + f"{GetIconName(icon[0])}, {icon[1]},\n"
                cstr += IND(3) + "{\n"
                for point in icon[2]:
                    cstr += IND(4) + f"{{ {point[0]}, {point[1]}, {point[2]} }},\n"
                cstr += IND(3) + "}\n"
                cstr += IND(2) + "},\n"
        cstr += IND(1) + "},\n"
    cstr += "};\n\n"

cstr += "MapMarkData* gMapMarkDataTable[] = {\n"
for scenemap in scenemaps:
    cstr += f"    {GetDungeonSymbol(scenemap[0])},\n"
cstr += "};\n"

with open(sys.argv[1], "w") as file:
    file.write(cstr)
