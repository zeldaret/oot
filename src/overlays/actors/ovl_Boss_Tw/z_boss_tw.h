#ifndef _Z_BOSS_TW_H_
#define _Z_BOSS_TW_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x568];
} BossTw; // size = 0x06B4

extern const ActorInit Boss_Tw_InitVars;

#endif
