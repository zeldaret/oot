#ifndef _Z_EN_RIVER_SOUND_H_
#define _Z_EN_RIVER_SOUND_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4];
} EnRiverSound; // size = 0x0150

extern const ActorInit En_River_Sound_InitVars;

#endif
