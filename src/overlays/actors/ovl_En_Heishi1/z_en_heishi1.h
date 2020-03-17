#ifndef _Z_EN_HEISHI1_H_
#define _Z_EN_HEISHI1_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x160];
} EnHeishi1; // size = 0x02AC

extern const ActorInit En_Heishi1_InitVars;

#endif
