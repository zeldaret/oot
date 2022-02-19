#!/usr/bin/env python3

import os
import struct
import json

table = None

class AddrRange:
    def __init__(self, start, end):
        self.start = start
        self.end = end
    def __str__(self):
        return "{0:08X}:{1:08X}".format(self.start, self.end)

class FileResult:
    def __init__(self, name, vrom, vram, offset):
        self.name = name
        self.vrom = vrom
        self.vram = vram
        self.offset = offset

    def __str__(self):
        return "{0}: Rom {1} VRam {2} Offset {3:06X}".format(self.name, self.vrom, self.vram, self.offset)

def PVA(a):
    return a & 0x1FFFFFF
def UVA(a):
    #a *= 0x10
    a += 0x80000000
    return a

def CreateAddrLookup(dict, recs, tracer):
    recs = sorted(recs, key= lambda x: x[0])
    length = len(recs)
    print(length)
    recs.append((recs[length-1][1], None, None))
    recs = sorted(recs, key=lambda x: x[0], reverse=True)

    for i in range(length):
        if recs[i][0] != recs[i+1][1]:
            if tracer != "ra" or recs[i][0] != recs[i+1][1] + 0xFFF & -0x1000:
                print(tracer)
                print(recs[i])
                print(recs[i+1])
    for item in recs:
        dict[item[0]] = item[2]

def CreateTable():

    vrecs = []
    rrecs = []
    vrecs.append((PVA(0x80157D90), PVA(0x80800000), None))

    dict = {
        "va" : {},
        "ra" : {},
        "ft" : {}
    }

    with open("filetable.txt", "r") as file:
        for line in file:
            li = line.rstrip().split('\t')
            rrec = (int(li[2],16), int(li[3],16), li[7])
            vrec = (PVA(int(li[4],16)), PVA(int(li[5],16)), li[7])
            rrecs.append(rrec)
            vrecs.append(vrec)
            dict["ft"][li[7]] = (rrec[0], rrec[1])
    file = None

    with open("filetable2.txt", "r") as file:
        for line in file:
            li = line.rstrip().split('\t')
            rrec = (int(li[2],16), int(li[3],16), li[5])
            rrecs.append(rrec)
            dict["ft"][li[5]] = (rrec[0], rrec[1])

    CreateAddrLookup(dict["va"], vrecs, "va")
    CreateAddrLookup(dict["ra"], rrecs, "ra")

    with open("filetable.json", "w") as table:
        json.dump(dict, table)

def AddressLookup(lookupTable, addr):
    start = 0;
    end = 0;
    key = None;

    for k, v in lookupTable.items():
        if addr >= k:
            start = k
            key = v
            break
        end = k
    return (key, start, end)

def GetFromVRam(addr):
    key, vramStart, vramEnd = AddressLookup(table["va"], PVA(addr))

    if key is None:
        return None

    ftl = table["ft"][key]
    vrom = AddrRange(ftl[0], ftl[1])
    vram = AddrRange(UVA(vramStart), UVA(vramEnd))

    offset = addr - vram.start

    return FileResult(key, vrom, vram, offset)

def GetFromRom(addr):
    key, romStart, romEnd = AddressLookup(table["ra"], addr)

    if key is None:
        return None

    vrom = AddrRange(romStart, romEnd)
    offset = addr - vrom.start

    return FileResult(key, vrom, None, offset)

#CreateTable()
with open(os.path.join(os.path.dirname(__file__), 'filetable.json'), "r") as table:
    table = json.load(table)
table["va"] = {int(k):v for k,v in table["va"].items()}
table["ra"] = {int(k):v for k,v in table["ra"].items()}
