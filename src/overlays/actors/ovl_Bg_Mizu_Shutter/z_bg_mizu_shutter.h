#ifndef Z_BG_MIZU_SHUTTER_H
#define Z_BG_MIZU_SHUTTER_H

#include "ultra64.h"
#include "global.h"

#define BGMIZUSHUTTER_GET_SIZE(thisx)   PARAMS_GET_U((u16)(thisx)->params, 12, 4)
#define BGMIZUSHUTTER_GET_TIMER(thisx)  PARAMS_GET_U((u16)(thisx)->params,  6, 6)
#define BGMIZUSHUTTER_GET_SWITCH(thisx) PARAMS_GET_U((u16)(thisx)->params,  0, 6)

#define BGMIZUSHUTTER_PARAMS(size, timer, switchFlag) (((size) << 12) | ((timer) << 6) | (switchFlag))

struct BgMizuShutter;

typedef void (*BgMizuShutterActionFunc)(struct BgMizuShutter*, PlayState*);

typedef struct BgMizuShutter {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMizuShutterActionFunc actionFunc;
    /* 0x0168 */ s32 timer;
    /* 0x016C */ s32 timerMax;
    /* 0x0170 */ Gfx* displayList;
    /* 0x0174 */ f32 maxSpeed;
    /* 0x0178 */ Vec3f closedPos;
    /* 0x0184 */ Vec3f openPos;
} BgMizuShutter; // size = 0x0190

typedef enum BgMizuShutterSize {
    BGMIZUSHUTTER_SMALL,
    BGMIZUSHUTTER_LARGE
} BgMizuShutterSize;

#endif
