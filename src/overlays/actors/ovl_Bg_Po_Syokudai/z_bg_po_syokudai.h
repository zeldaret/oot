#ifndef Z_BG_PO_SYOKUDAI_H
#define Z_BG_PO_SYOKUDAI_H

#include "ultra64.h"
#include "actor.h"
#include "light.h"

struct BgPoSyokudai;

typedef struct BgPoSyokudai {
    /* 0x000 */ Actor actor;
    /* 0x14C */ u8 unk14C;
    /* 0x14E */ s16 unk14E;
    /* 0x150 */ LightNode* unk150;
    /* 0x154 */ LightInfo unk154;
    /* 0x164 */ ColliderCylinder unk164;
} BgPoSyokudai; // size = 0x01B0

#endif
