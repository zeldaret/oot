#ifndef _Z_EN_FIREFLY_H_
#define _Z_EN_FIREFLY_H_

#include <ultra64.h>
#include <global.h>

struct EnFirefly;

typedef struct EnFirefly {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x228];
} EnFirefly; // size = 0x0374

extern const ActorInit En_Firefly_InitVars;

#endif
