#ifndef _Z_BG_HIDAN_RSEKIZOU_H_
#define _Z_BG_HIDAN_RSEKIZOU_H_

#include "ultra64.h"
#include "global.h"

struct BgHidanRsekizou;

typedef struct BgHidanRsekizou {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s16 blastFrame;
    /* 0x0166 */ s16 burnFrame;
    /* 0x0168 */ ColliderJntSph collider;
    /* 0x0188 */ ColliderJntSphItem colliderItems[6];
} BgHidanRsekizou; // size = 0x0308

extern const ActorInit Bg_Hidan_Rsekizou_InitVars;

#endif
