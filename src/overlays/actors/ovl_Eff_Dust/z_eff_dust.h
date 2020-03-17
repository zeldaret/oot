#ifndef _Z_EFF_DUST_H_
#define _Z_EFF_DUST_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x41C];
} EffDust; // size = 0x0568

extern const ActorInit Eff_Dust_InitVars;

#endif
