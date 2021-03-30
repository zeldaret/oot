#ifndef _Z_BOSS_FD2_H_
#define _Z_BOSS_FD2_H_

#include "ultra64.h"
#include "global.h"

struct BossFd2;

typedef struct BossFd2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1530];
} BossFd2; // size = 0x167C

extern const ActorInit Boss_Fd2_InitVars;

#endif
