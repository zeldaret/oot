#ifndef _Z_EN_HINTNUTS_H_
#define _Z_EN_HINTNUTS_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x114];
} EnHintnuts; // size = 0x0260

extern const ActorInit En_Hintnuts_InitVars;

#endif
