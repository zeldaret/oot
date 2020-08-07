#ifndef _Z_EN_DIVING_GAME_H_
#define _Z_EN_DIVING_GAME_H_

#include <ultra64.h>
#include <global.h>

struct EnDivingGame;

typedef struct EnDivingGame {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x15E];//0x24C
    /* 0x02AA */ s16 unk_2AA;
    /* 0x02AE */ char unk_2AC[0xEC];
} EnDivingGame; // size = 0x0398

extern const ActorInit En_Diving_Game_InitVars;

#endif
