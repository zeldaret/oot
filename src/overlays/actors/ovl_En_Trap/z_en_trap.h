#ifndef _Z_EN_TRAP_H_
#define _Z_EN_TRAP_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xA0];
} EnTrap; // size = 0x01EC

extern const ActorInit En_Trap_InitVars;

#endif
