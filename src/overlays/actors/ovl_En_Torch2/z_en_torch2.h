#ifndef _Z_EN_TORCH2_H_
#define _Z_EN_TORCH2_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x948];
} EnTorch2; // size = 0x0A94

extern const ActorInit En_Torch2_InitVars;

#endif
