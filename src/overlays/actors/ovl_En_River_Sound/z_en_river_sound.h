#ifndef _Z_EN_RIVER_SOUND_H_
#define _Z_EN_RIVER_SOUND_H_

#include "ultra64.h"
#include "global.h"

struct EnRiverSound;

typedef struct EnRiverSound {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u8 playSound;
    /* 0x014D */ u8 soundVolumeIndex;
    /* 0x014E */ s16 pathIndex;
} EnRiverSound; // size = 0x0150

extern const ActorInit En_River_Sound_InitVars;

#endif
