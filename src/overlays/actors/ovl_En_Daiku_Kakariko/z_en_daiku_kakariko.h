#ifndef _Z_EN_DAIKU_KAKARIKO_H_
#define _Z_EN_DAIKU_KAKARIKO_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1BC];
} EnDaikuKakariko; // size = 0x0308

extern const ActorInit En_Daiku_Kakariko_InitVars;

#endif
