#ifndef _Z_EN_OE2_H_
#define _Z_EN_OE2_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x44];
    /* 0x0190 */ ActorFunc actionFunc;
} EnOE2; // size = 0x0194

extern const ActorInit En_OE2_InitVars;
#endif
