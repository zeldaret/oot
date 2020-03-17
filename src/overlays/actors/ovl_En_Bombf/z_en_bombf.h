#ifndef _Z_EN_BOMBF_H_
#define _Z_EN_BOMBF_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC4];
} EnBombf; // size = 0x0210

extern const ActorInit En_Bombf_InitVars;

#endif
