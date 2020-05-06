#ifndef _Z_DEMO_IK_H_
#define _Z_DEMO_IK_H_

#include <ultra64.h>
#include <global.h>

struct DemoIk;

typedef struct DemoIk {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x68];
} DemoIk; // size = 0x01B4

extern const ActorInit Demo_Ik_InitVars;

#endif
