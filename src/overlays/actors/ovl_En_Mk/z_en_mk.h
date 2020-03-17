#ifndef _Z_EN_MK_H_
#define _Z_EN_MK_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x13C];
} EnMk; // size = 0x0288

extern const ActorInit En_Mk_InitVars;

#endif
