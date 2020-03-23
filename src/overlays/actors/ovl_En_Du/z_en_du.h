#ifndef _Z_EN_DU_H_
#define _Z_EN_DU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xD0];
} EnDu; // size = 0x021C

extern const ActorInit En_Du_InitVars;

#endif
