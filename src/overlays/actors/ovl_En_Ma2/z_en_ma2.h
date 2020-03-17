#ifndef _Z_EN_MA2_H_
#define _Z_EN_MA2_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x138];
} EnMa2; // size = 0x0284

extern const ActorInit En_Ma2_InitVars;

#endif
