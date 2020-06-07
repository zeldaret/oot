#ifndef _Z_EN_HS_H_
#define _Z_EN_HS_H_

#include <ultra64.h>
#include <global.h>

struct EnHs;

typedef struct EnHs {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x164];
} EnHs; // size = 0x02B0

extern const ActorInit En_Hs_InitVars;

#endif
