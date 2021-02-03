#ifndef _Z_BG_HIDAN_KOWARERUKABE_H_
#define _Z_BG_HIDAN_KOWARERUKABE_H_

#include "ultra64.h"
#include "global.h"

struct BgHidanKowarerukabe;

typedef struct BgHidanKowarerukabe {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ColliderJntSph collider;
    /* 0x0184 */ ColliderJntSphElement colliderItems[1];
} BgHidanKowarerukabe; // size = 0x01C4

extern const ActorInit Bg_Hidan_Kowarerukabe_InitVars;

#endif
