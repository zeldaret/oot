#ifndef _Z_EN_ANUBICE_FIRE_H_
#define _Z_EN_ANUBICE_FIRE_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xA8];
} EnAnubiceFire; // size = 0x01F4

extern const ActorInit En_Anubice_Fire_InitVars;

#endif
