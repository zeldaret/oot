#ifndef _Z_EN_FHG_FIRE_H_
#define _Z_EN_FHG_FIRE_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xB8];
} EnFhgFire; // size = 0x0204

extern const ActorInit En_Fhg_Fire_InitVars;

#endif
