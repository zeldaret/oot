#ifndef _Z_BG_SPOT18_BASKET_H_
#define _Z_BG_SPOT18_BASKET_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xD0];
} BgSpot18Basket; // size = 0x021C

extern const ActorInit Bg_Spot18_Basket_InitVars;

#endif
