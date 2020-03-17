#ifndef _Z_EN_BOX_H_
#define _Z_EN_BOX_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xB0];
} EnBox; // size = 0x01FC

extern const ActorInit En_Box_InitVars;

#endif
