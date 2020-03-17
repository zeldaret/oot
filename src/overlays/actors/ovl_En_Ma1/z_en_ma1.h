#ifndef _Z_EN_MA1_H_
#define _Z_EN_MA1_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC4];
} EnMa1; // size = 0x0210

extern const ActorInit En_Ma1_InitVars;

#endif
