#ifndef _Z_EN_ENCOUNT1_H_
#define _Z_EN_ENCOUNT1_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24];
} EnEncount1; // size = 0x0170

extern const ActorInit En_Encount1_InitVars;

#endif
