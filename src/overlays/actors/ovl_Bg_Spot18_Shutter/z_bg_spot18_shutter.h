#ifndef _Z_BG_SPOT18_SHUTTER_H_
#define _Z_BG_SPOT18_SHUTTER_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot18Shutter;

typedef struct BgSpot18Shutter {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C];
} BgSpot18Shutter; // size = 0x0168

extern const ActorInit Bg_Spot18_Shutter_InitVars;

#endif
