#ifndef _Z_DEMO_GJ_H_
#define _Z_DEMO_GJ_H_

#include "ultra64.h"
#include "global.h"

#include "overlays/actors/ovl_Boss_Ganon2/z_boss_ganon2.h"

struct DemoGj;

typedef struct DemoGj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s32 unk_164;
    /* 0x0168 */ s32 unk_168;
    /* 0x016C */ Vec3s unk_16C; // x,y,z?
    /* 0x0172 */ Vec3s unk_172;
    /* 0x0178 */ BossGanon2* ganon;
    /* 0x017C */ s32 unk_17C;
    /* 0x0180 */ s32 unk_180;
    /* 0x0184 */ ColliderCylinder cylinders[3];
    /* 0x0268 */ s32 unk_268;
    /* 0x026C */ Vec3f unk_26C;
} DemoGj; // size = 0x0278

extern const ActorInit Demo_Gj_InitVars;

#endif
