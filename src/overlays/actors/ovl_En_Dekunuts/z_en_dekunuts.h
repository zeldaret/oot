#ifndef _Z_EN_DEKUNUTS_H_
#define _Z_EN_DEKUNUTS_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C8];
} EnDekunuts; // size = 0x0314

extern const ActorInit En_Dekunuts_InitVars;

#endif
