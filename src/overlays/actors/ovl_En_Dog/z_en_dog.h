#ifndef _Z_EN_DOG_H_
#define _Z_EN_DOG_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x144];
} EnDog; // size = 0x0290

extern const ActorInit En_Dog_InitVars;

#endif
