#ifndef _Z_ARROW_ICE_H_
#define _Z_ARROW_ICE_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} ArrowIce; // size = 0x016C

extern const ActorInit Arrow_Ice_InitVars;

#endif
