#ifndef _Z_BG_HAKA_H_
#define _Z_BG_HAKA_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
} BgHaka; // size = 0x0168

extern const ActorInit Bg_Haka_InitVars;

#endif
