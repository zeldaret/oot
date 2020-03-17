#ifndef _Z_EN_PEEHAT_H_
#define _Z_EN_PEEHAT_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2E0];
} EnPeehat; // size = 0x042C

extern const ActorInit En_Peehat_InitVars;

#endif
