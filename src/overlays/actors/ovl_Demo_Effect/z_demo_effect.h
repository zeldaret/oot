#ifndef _Z_DEMO_EFFECT_H_
#define _Z_DEMO_EFFECT_H_

#include <ultra64.h>
#include <global.h>

struct DemoEffect;

typedef struct DemoEffect {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x54];
} DemoEffect; // size = 0x01A0

extern const ActorInit Demo_Effect_InitVars;

#endif
