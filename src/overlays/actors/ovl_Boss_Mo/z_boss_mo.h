#ifndef _Z_BOSS_MO_H_
#define _Z_BOSS_MO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1440];
} BossMo; // size = 0x158C

extern const ActorInit Boss_Mo_InitVars;

#endif
