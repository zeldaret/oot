#ifndef _Z_BG_MIZU_WATER_H_
#define _Z_BG_MIZU_WATER_H_

#include <ultra64.h>
#include <global.h>

struct BgMizuWater;

typedef void (*BgMizuWaterActionFunc)(struct BgMizuWater*, GlobalContext*);

typedef struct BgMizuWater {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgMizuWaterActionFunc actionFunc;
    /* 0x0150 */ s32 type;
    /* 0x0154 */ f32 targetY;
    /* 0x0158 */ f32 baseY;
    /* 0x015C */ s32 switchFlag; // only used for types 2-4
} BgMizuWater; // size = 0x0160

extern const ActorInit Bg_Mizu_Water_InitVars;

#endif
