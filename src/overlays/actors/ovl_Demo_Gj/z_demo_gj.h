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
    /* 0x0172 */ Vec3s unk_172; // it is assigned only
    /* 0x0178 */ BossGanon2* ganon;
    /* 0x017C */ s32 flag1;
    /* 0x0180 */ s32 flag2;
    /* 0x0184 */ ColliderCylinder cylinders[3];
    /* 0x0268 */ s32 flag3;
    /* 0x026C */ Vec3f unk_26C; // it is read only
} DemoGj; // size = 0x0278

extern const ActorInit Demo_Gj_InitVars;

typedef enum DemoGjType {
    /* 0x04 */ DemoGj_Type_04 = 4,
    /* 0x08 */ DemoGj_Type_08 = 8,
    /* 0x09 */ DemoGj_Type_09 = 9,
    /* 0x0A */ DemoGj_Type_10 = 10,
    /* 0x0B */ DemoGj_Type_11 = 11,
    /* 0x0C */ DemoGj_Type_12 = 12,
    /* 0x0D */ DemoGj_Type_13 = 13,
    /* 0x0E */ DemoGj_Type_14 = 14,
    /* 0x10 */ DemoGj_Type_16 = 16,
    /* 0x11 */ DemoGj_Type_17 = 17,
    /* 0x16 */ DemoGj_Type_22 = 22,
} DemoGjType;

#endif
