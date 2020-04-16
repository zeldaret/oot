#ifndef _Z_EN_EG_H_
#define _Z_EN_EG_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 funcIndex;
} EnEg; // size = 0x0154

extern const ActorInit En_Eg_InitVars;
#endif
