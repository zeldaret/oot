#ifndef _Z_BG_HIDAN_SIMA_H_
#define _Z_BG_HIDAN_SIMA_H_

#include "ultra64.h"
#include "global.h"

struct BgHidanSima;

typedef void (*BgHidanSimaActionFunc)(struct BgHidanSima*, GlobalContext*);

typedef struct BgHidanSima {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHidanSimaActionFunc actionFunc;
    /* 0x0168 */ s16 timer;
    /* 0x016C */ ColliderJntSph collider;
    /* 0x018C */ ColliderJntSphElement elements[2];
} BgHidanSima; // size = 0x020C

extern const ActorInit Bg_Hidan_Sima_InitVars;

#endif
