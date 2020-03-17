#ifndef _Z_MIR_RAY_H_
#define _Z_MIR_RAY_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x164];
} MirRay; // size = 0x02B0

extern const ActorInit Mir_Ray_InitVars;

#endif
