#ifndef _Z_BG_SPOT01_IDOSOKO_H_
#define _Z_BG_SPOT01_IDOSOKO_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
} BgSpot01Idosoko; // size = 0x0168

extern const ActorInit Bg_Spot01_Idosoko_InitVars;

#endif
