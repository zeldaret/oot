#ifndef _Z_EN_WOOD02_H_
#define _Z_EN_WOOD02_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x58];
} EnWood02; // size = 0x01A4

extern const ActorInit En_Wood02_InitVars;

#endif
