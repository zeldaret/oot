#ifndef Z_BG_HIDAN_RSEKIZOU_H
#define Z_BG_HIDAN_RSEKIZOU_H

#include "ultra64.h"
#include "actor.h"

struct BgHidanRsekizou;

typedef struct BgHidanRsekizou {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x164 */ s16 unk164;
    /* 0x166 */ s16 unk166;
    /* 0x168 */ ColliderJntSph unk168;
    /* 0x188 */ ColliderJntSphElement unk188[6];
} BgHidanRsekizou; // size = 0x0308

#endif
