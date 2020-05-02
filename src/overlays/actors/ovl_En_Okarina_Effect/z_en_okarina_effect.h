#ifndef _Z_EN_OKARINA_EFFECT_H_
#define _Z_EN_OKARINA_EFFECT_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u16 timer;
    /* 0x0150 */ ActorFunc actionFunc;
} EnOkarinaEffect; // size = 0x0154

extern const ActorInit En_Okarina_Effect_InitVars;

#endif
