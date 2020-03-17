#ifndef _Z_EN_HEISHI3_H_
#define _Z_EN_HEISHI3_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x17C];
} EnHeishi3; // size = 0x02C8

extern const ActorInit En_Heishi3_InitVars;

#endif
