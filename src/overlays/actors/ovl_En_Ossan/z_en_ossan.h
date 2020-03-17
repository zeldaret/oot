#ifndef _Z_EN_OSSAN_H_
#define _Z_EN_OSSAN_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x18C];
} EnOssan; // size = 0x02D8

extern const ActorInit En_Ossan_InitVars;

#endif
