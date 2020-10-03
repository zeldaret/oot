#ifndef _Z_BG_MIZU_BWALL_H_
#define _Z_BG_MIZU_BWALL_H_

#include "ultra64.h"
#include "global.h"

struct BgMizuBwall;

typedef struct BgMizuBwall {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x170];
} BgMizuBwall; // size = 0x02BC

extern const ActorInit Bg_Mizu_Bwall_InitVars;

#endif
