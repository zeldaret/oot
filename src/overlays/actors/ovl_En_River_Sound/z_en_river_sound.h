#ifndef _Z_EN_RIVER_SOUND_H_
#define _Z_EN_RIVER_SOUND_H_

#include "ultra64.h"
#include "global.h"

struct EnRiverSound;

typedef struct EnRiverSound {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u8 playSound;
    /* 0x014D */ u8 soundPitchIndex;
    /* 0x014E */ s16 pathIndex;
} EnRiverSound; // size = 0x0150

typedef enum {
    /* 0 */ RS_UNK_0,
    /* 1 */ RS_SMALL_WATERFALL,
    /* 2 */ RS_LAVA_BUBBLES_1,
    /* 3 */ RS_LARGE_WATERFALL,
    /* 4 */ RS_UNK_4,
    /* 5 */ RS_UNK_5,
    /* 6 */ RS_LAVA_BUBBLES_2,
    /* 7 */ RS_LAVA_BUBBLES_3,
    /* 8 */ RS_DRIPPING_WATER,
    /* 9 */ RS_FOUNTAIN_WATER,
    /* 10 */ RS_MARKET_CROWD,
    /* 11 */ RS_UNK_11,
    /* 12 */ RS_PROXIMITY_LOST_WOODS_BGM,
    /* 13 */ RS_UNK_13,
    /* 14 */ RS_SANDSTORM,
    /* 15 */ RS_LAKESIDE_LAB_TANK,
    /* 16 */ RS_CHAMBER_OF_SAGES_1,
    /* 17 */ RS_CHAMBER_OF_SAGES_2,
    /* 18 */ RS_RUMBLING,
    /* 19 */ RS_UNK_19,
    /* 20 */ RS_TORCH_CRACKLING,
    /* 21 */ RS_COW_MOOING,
    /* 247 */ RS_UNK_247 = 247,
    /* 248 */ RS_MAX
} RiverSoundType;

extern const ActorInit En_River_Sound_InitVars;

#endif
