#ifndef _Z_BG_BDAN_OBJECTS_H_
#define _Z_BG_BDAN_OBJECTS_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ char unk_168[0x4];
    /* 0x016C */ ColliderCylinderMain collider;
    /* 0x01B8 */ char unk_1B8[0x4];
} BgBdanObjects; // size = 0x01BC

extern const ActorInit Bg_Bdan_Objects_InitVars;

#endif
