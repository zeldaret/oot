#ifndef _Z_EN_GS_H_
#define _Z_EN_GS_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xBC];
} EnGs; // size = 0x0208

extern const ActorInit En_Gs_InitVars;

#endif
