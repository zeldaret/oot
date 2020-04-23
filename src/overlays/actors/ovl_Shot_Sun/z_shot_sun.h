#ifndef _Z_SHOT_SUN_H_
#define _Z_SHOT_SUN_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4C];
    /* 0x0198 */ ActorFunc actionFunc;
    /* 0x019C */ char unk_19C[0xC];
} ShotSun; // size = 0x01A8

extern const ActorInit Shot_Sun_InitVars;

#endif
