#ifndef _Z_EN_DIVING_GAME_H_
#define _Z_EN_DIVING_GAME_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24C];
} EnDivingGame; // size = 0x0398

extern const ActorInit En_Diving_Game_InitVars;

#endif
