#ifndef _Z_EN_REEBA_H_
#define _Z_EN_REEBA_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x190];
} EnReeba; // size = 0x02DC

extern const ActorInit En_Reeba_InitVars;

#endif
