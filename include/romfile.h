#ifndef ROMFILE_H
#define ROMFILE_H

#include "ultra64.h"

typedef struct RomFile {
    /* 0x00 */ uintptr_t vromStart;
    /* 0x04 */ uintptr_t vromEnd;
} RomFile; // size = 0x8

#define ROM_FILE(name) \
    { (uintptr_t)_##name##SegmentRomStart, (uintptr_t)_##name##SegmentRomEnd }
#define ROM_FILE_EMPTY(name) \
    { (uintptr_t)_##name##SegmentRomStart, (uintptr_t)_##name##SegmentRomStart }
#define ROM_FILE_UNSET \
    { 0, 0 }

#endif
