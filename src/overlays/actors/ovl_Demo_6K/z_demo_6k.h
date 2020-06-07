#ifndef _Z_DEMO_6K_H_
#define _Z_DEMO_6K_H_

#include <ultra64.h>
#include <global.h>

struct Demo6K;

typedef struct Demo6K {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x148];
} Demo6K; // size = 0x0294

extern const ActorInit Demo_6k_InitVars;

#endif
