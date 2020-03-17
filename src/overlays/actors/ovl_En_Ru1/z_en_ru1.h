#ifndef _Z_EN_RU1_H_
#define _Z_EN_RU1_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x250];
} EnRu1; // size = 0x039C

extern const ActorInit En_Ru1_InitVars;

#endif
