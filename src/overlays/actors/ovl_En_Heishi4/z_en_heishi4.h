#ifndef _Z_EN_HEISHI4_H_
#define _Z_EN_HEISHI4_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1BC];
} EnHeishi4; // size = 0x0308

extern const ActorInit En_Heishi4_InitVars;

#endif
