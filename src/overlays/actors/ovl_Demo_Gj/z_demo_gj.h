#ifndef _Z_DEMO_GJ_H_
#define _Z_DEMO_GJ_H_

#include "ultra64.h"
#include "global.h"

#include "overlays/actors/ovl_Boss_Ganon2/z_boss_ganon2.h"

struct DemoGj;

typedef struct DemoGj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ s32 updateIndex;
    /* 0x0168 */ s32 drawIndex;
    /* 0x016C */ Vec3s rotationVec;
    /* 0x0172 */ Vec3s unk_172;
    /* 0x0178 */ BossGanon2* ganon;
    /* 0x017C */ s32 flag1;
    /* 0x0180 */ s32 flag2;
    /* 0x0184 */ ColliderCylinder cylinders[3];
    /* 0x0268 */ s32 flag3;
    /* 0x026C */ Vec3f unk_26C;
} DemoGj; // size = 0x0278

extern const ActorInit Demo_Gj_InitVars;

#endif
