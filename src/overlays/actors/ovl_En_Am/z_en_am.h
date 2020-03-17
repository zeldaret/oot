#ifndef _Z_EN_AM_H_
#define _Z_EN_AM_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x240];
} EnAm; // size = 0x038C

extern const ActorInit En_Am_InitVars;

#endif
