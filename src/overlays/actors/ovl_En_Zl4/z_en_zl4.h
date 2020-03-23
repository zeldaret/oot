#ifndef _Z_EN_ZL4_H_
#define _Z_EN_ZL4_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1A4];
} EnZl4; // size = 0x02F0

extern const ActorInit En_Zl4_InitVars;

#endif
