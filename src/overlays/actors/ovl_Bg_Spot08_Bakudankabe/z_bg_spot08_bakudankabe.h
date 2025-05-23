#ifndef Z_BG_SPOT08_BAKUDANKABE_H
#define Z_BG_SPOT08_BAKUDANKABE_H

#include "ultra64.h"
#include "z64actor.h"

struct BgSpot08Bakudankabe;

typedef struct BgSpot08Bakudankabe {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ColliderJntSph collider;
    /* 0x0184 */ ColliderJntSphElement colliderElements[3];
} BgSpot08Bakudankabe; // size = 0x0244

#endif
