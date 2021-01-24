#ifndef _Z_DEMO_GJ_H_
#define _Z_DEMO_GJ_H_

#include "ultra64.h"
#include "global.h"

struct DemoGj;

typedef struct DemoGj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ char unk_164[0x20];
    /* 0x0184 */ ColliderCylinder unk_184;
    /* 0x01D0 */ ColliderCylinder unk_1D0;
    /* 0x021C */ ColliderCylinder unk_21C;
    /* 0x0268 */ char unk_268[0x10];
} DemoGj; // size = 0x0278

extern const ActorInit Demo_Gj_InitVars;

#endif
