#ifndef _Z_EN_LIGHT_H_
#define _Z_EN_LIGHT_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x18];
} EnLight; // size = 0x0164

extern const ActorInit En_Light_InitVars;

#endif
