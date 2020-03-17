#ifndef _Z_EN_NWC_H_
#define _Z_EN_NWC_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5E8];
} EnNwc; // size = 0x0734

extern const ActorInit En_Nwc_InitVars;

#endif
