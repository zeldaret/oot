#ifndef _Z_EN_ZL1_H_
#define _Z_EN_ZL1_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC0];
} EnZl1; // size = 0x020C

extern const ActorInit En_Zl1_InitVars;

#endif
