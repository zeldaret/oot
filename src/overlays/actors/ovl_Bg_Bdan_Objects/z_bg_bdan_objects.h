#ifndef _Z_BG_BDAN_OBJECTS_H_
#define _Z_BG_BDAN_OBJECTS_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ u8 unk_168;
    /* 0x016A */ s16 unk_16A;
    /* 0x016C */ ColliderCylinderMain collider;
    /* 0x01B8 */ s32 unk_1B8;
} BgBdanObjects; // size = 0x01BC

extern const ActorInit Bg_Bdan_Objects_InitVars;

#endif
