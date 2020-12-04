#ifndef _Z_BOSS_GOMA_H_
#define _Z_BOSS_GOMA_H_

#include "ultra64.h"
#include "global.h"

struct BossGoma;

typedef struct BossGoma {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x70];
    /* 0x01BC */ s16 subCameraId;
    /* 0x01BE */ char unk_1BE[0x95E];
} BossGoma; // size = 0x0B1C

extern const ActorInit Boss_Goma_InitVars;

#endif
