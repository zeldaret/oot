#ifndef _Z_EN_PART_H_
#define _Z_EN_PART_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x10];
} EnPart; // size = 0x015C

extern const ActorInit En_Part_InitVars;

#endif
