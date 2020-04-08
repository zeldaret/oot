#ifndef _Z_BG_DODOAGO_H_
#define _Z_BG_DODOAGO_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x4];
    /* 0x0168 */ ColliderCylinderMain collider_168;
    /* 0x01B4 */ ColliderCylinderMain collider_1B4;
    /* 0x0200 */ ColliderCylinderMain collider_200;
    /* 0x024C */ ActorFunc actionFunc;
} BgDodoago; // size = 0x0250

extern const ActorInit Bg_Dodoago_InitVars;

#endif
