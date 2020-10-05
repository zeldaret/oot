#ifndef _Z_BG_SST_FLOOR_H_
#define _Z_BG_SST_FLOOR_H_

#include "ultra64.h"
#include "global.h"

struct BgSstFloor;

typedef struct BgSstFloor {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} BgSstFloor; // size = 0x016C

extern const ActorInit Bg_Sst_Floor_InitVars;

#endif
