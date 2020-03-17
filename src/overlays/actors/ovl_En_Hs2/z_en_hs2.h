#ifndef _Z_EN_HS2_H_
#define _Z_EN_HS2_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x164];
} EnHs2; // size = 0x02B0

extern const ActorInit En_Hs2_InitVars;

#endif
