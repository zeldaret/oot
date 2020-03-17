#ifndef _Z_EN_DODOJR_H_
#define _Z_EN_DODOJR_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x174];
} EnDodojr; // size = 0x02C0

extern const ActorInit En_Dodojr_InitVars;

#endif
