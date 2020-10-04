#ifndef _Z_BG_HIDAN_DALM_H_
#define _Z_BG_HIDAN_DALM_H_

#include "ultra64.h"
#include "global.h"

struct BgHidanDalm;

typedef void (*BgHidanDalmActionFunc)(struct BgHidanDalm*, GlobalContext*);

typedef struct BgHidanDalm {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHidanDalmActionFunc actionFunc;
    /* 0x0168 */ u8 switchFlag;
    /* 0x016C */ ColliderTris collider;
    /* 0x018C */ ColliderTrisItem colliderItems[4];
} BgHidanDalm; // size = 0x02FC

extern const ActorInit Bg_Hidan_Dalm_InitVars;

#endif
