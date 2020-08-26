#ifndef _Z_BG_SPOT08_BAKUDANKABE_H_
#define _Z_BG_SPOT08_BAKUDANKABE_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot08Bakudankabe;

typedef struct BgSpot08Bakudankabe {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ColliderJntSph collider;
    /* 0x0184 */ ColliderJntSphItem colliderItems[3];
} BgSpot08Bakudankabe; // size = 0x0244

extern const ActorInit Bg_Spot08_Bakudankabe_InitVars;

#endif
