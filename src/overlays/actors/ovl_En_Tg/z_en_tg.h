#ifndef _Z_EN_TG_H_
#define _Z_EN_TG_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC0];
} EnTg; // size = 0x020C

extern const ActorInit En_Tg_InitVars;

#endif
