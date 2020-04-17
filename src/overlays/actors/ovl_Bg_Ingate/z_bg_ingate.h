#ifndef _Z_BG_INGATE_H_
#define _Z_BG_INGATE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
} BgIngate; // size = 0x0168

extern const ActorInit Bg_Ingate_InitVars;

#endif
