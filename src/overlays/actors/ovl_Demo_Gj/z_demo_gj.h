#ifndef _Z_DEMO_GJ_H_
#define _Z_DEMO_GJ_H_

#include "ultra64.h"
#include "global.h"

struct DemoGj;

typedef struct DemoGj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s32 unk_164;
    /* 0x0168 */ s32 unk_168;
    /* 0x016C */ Vec3s unk_16C; // x,y,z?
    /* 0x0172 */ char unk_172[0x06];
    /* 0x0178 */ char unk_178[0x0C];
    /* 0x0184 */ ColliderCylinder unk_184;
    /* 0x01D0 */ ColliderCylinder unk_1D0;
    /* 0x021C */ ColliderCylinder unk_21C;
    /* 0x0268 */ char unk_268[0x10];
} DemoGj; // size = 0x0278

extern const ActorInit Demo_Gj_InitVars;

#endif
