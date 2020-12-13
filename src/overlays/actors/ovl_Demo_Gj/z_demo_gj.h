#ifndef _Z_DEMO_GJ_H_
#define _Z_DEMO_GJ_H_

#include "ultra64.h"
#include "global.h"

struct DemoGj;

typedef struct DemoGj {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x11C];
    /* 0x0268 */ s32 unk_268;
    /* 0x026C */ Vec3f unk_26C;
} DemoGj; // size = 0x0278

extern const ActorInit Demo_Gj_InitVars;

#endif
