#ifndef _Z_EN_HORSE_GANON_H_
#define _Z_EN_HORSE_GANON_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x15C];
} EnHorseGanon; // size = 0x02A8

extern const ActorInit En_Horse_Ganon_InitVars;

#endif
