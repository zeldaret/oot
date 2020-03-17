#ifndef _Z_EN_BB_H_
#define _Z_EN_BB_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1DC];
} EnBb; // size = 0x0328

extern const ActorInit En_Bb_InitVars;

#endif
