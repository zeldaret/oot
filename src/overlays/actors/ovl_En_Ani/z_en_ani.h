#ifndef _Z_EN_ANI_H_
#define _Z_EN_ANI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x168];
} EnAni; // size = 0x02B4

extern const ActorInit En_Ani_InitVars;

#endif
