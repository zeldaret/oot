#ifndef _Z_EN_HORSE_GAME_CHECK_H_
#define _Z_EN_HORSE_GAME_CHECK_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x58];
} EnHorseGameCheck; // size = 0x01A4

extern const ActorInit En_Horse_Game_Check_InitVars;

#endif
