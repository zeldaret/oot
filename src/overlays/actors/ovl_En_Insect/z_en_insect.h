#ifndef _Z_EN_INSECT_H_
#define _Z_EN_INSECT_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1E0];
} EnInsect; // size = 0x032C

extern const ActorInit En_Insect_InitVars;

#endif
