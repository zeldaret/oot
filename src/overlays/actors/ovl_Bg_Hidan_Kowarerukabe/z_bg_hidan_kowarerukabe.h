#ifndef Z_BG_HIDAN_KOWARERUKABE_H
#define Z_BG_HIDAN_KOWARERUKABE_H

#include "ultra64.h"
#include "z64actor.h"

struct BgHidanKowarerukabe;

typedef struct BgHidanKowarerukabe {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ColliderJntSph collider;
    /* 0x0184 */ ColliderJntSphElement colliderElements[1];
} BgHidanKowarerukabe; // size = 0x01C4

#endif
