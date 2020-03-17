#ifndef _Z_EN_TA_H_
#define _Z_EN_TA_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x19C];
} EnTa; // size = 0x02E8

extern const ActorInit En_Ta_InitVars;

#endif
