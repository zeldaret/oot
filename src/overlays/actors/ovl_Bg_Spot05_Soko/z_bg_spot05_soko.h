#ifndef _Z_BG_SPOT05_SOKO_H_
#define _Z_BG_SPOT05_SOKO_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ s32 switchFlag;
} BgSpot05Soko; // size = 0x016C

extern const ActorInit Bg_Spot05_Soko_InitVars;

#endif
