#ifndef _Z_BG_MIZU_UZU_H_
#define _Z_BG_MIZU_UZU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
} BgMizuUzu; // size = 0x0168

extern const ActorInit Bg_Mizu_Uzu_InitVars;

#endif
