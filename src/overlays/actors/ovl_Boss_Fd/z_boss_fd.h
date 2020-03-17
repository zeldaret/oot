#ifndef _Z_BOSS_FD_H_
#define _Z_BOSS_FD_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4254];
} BossFd; // size = 0x43A0

extern const ActorInit Boss_Fd_InitVars;

#endif
