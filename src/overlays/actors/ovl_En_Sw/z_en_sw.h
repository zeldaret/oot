#ifndef _Z_EN_SW_H_
#define _Z_EN_SW_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x38C];
} EnSw; // size = 0x04D8

extern const ActorInit En_Sw_InitVars;

#endif
