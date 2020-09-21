#ifndef _Z_BG_SPOT18_BASKET_H_
#define _Z_BG_SPOT18_BASKET_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot18Basket;

typedef struct BgSpot18Basket {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ ColliderJntSph colliderJntSph;
    /* 0x0184 */ ColliderJntSphItem colliderJntSphItem;
    /* 0x01A4 */ char unk_14C[0x58];
} BgSpot18Basket; // size = 0x021C

extern const ActorInit Bg_Spot18_Basket_InitVars;

#endif

