#ifndef GAMEPLAY_KEEP_0x4A090_H
#define GAMEPLAY_KEEP_0x4A090_H

#include "tex_len.h"
#include "ultra64.h"

#define gDoorMetalBarsTex_WIDTH 32
#define gDoorMetalBarsTex_HEIGHT 128
extern u64 gDoorMetalBarsTex[TEX_LEN(u64, gDoorMetalBarsTex_WIDTH, gDoorMetalBarsTex_HEIGHT, 8)];
extern Vtx gDoorMetalBarsVtx[];
extern Gfx gDoorMetalBarsDL[18];
#define gGenericDungeonDoorTex_WIDTH 32
#define gGenericDungeonDoorTex_HEIGHT 64
extern u64 gGenericDungeonDoorTex[TEX_LEN(u64, gGenericDungeonDoorTex_WIDTH, gGenericDungeonDoorTex_HEIGHT, 16)];

#endif
