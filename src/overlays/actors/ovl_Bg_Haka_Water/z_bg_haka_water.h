#ifndef _Z_BG_HAKA_WATER_H_
#define _Z_BG_HAKA_WATER_H_

#include "ultra64.h"
#include "global.h"

struct BgHakaWater;

typedef void (*BgHakaWaterActionFunc)(struct BgHakaWater*, GlobalContext*);

typedef struct BgHakaWater {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgHakaWaterActionFunc actionFunc;
    /* 0x0150 */ u8 isLowered;
} BgHakaWater; // size = 0x0154

extern const ActorInit Bg_Haka_Water_InitVars;

#endif
