#ifndef _Z_BOSS_DODONGO_H_
#define _Z_BOSS_DODONGO_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x16D4];
} BossDodongo; // size = 0x1820

extern const ActorInit Boss_Dodongo_InitVars;

#endif
