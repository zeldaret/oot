#ifndef _Z_EN_GOMA_H_
#define _Z_EN_GOMA_H_

#include <ultra64.h>
#include <global.h>

struct EnGoma;

typedef struct EnGoma {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x258];
} EnGoma; // size = 0x03A4

extern const ActorInit En_Goma_InitVars;

#endif
