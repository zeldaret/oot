#include "z_boss_sst.h"

#define FLAGS 0x00000435

#define THIS ((BossSst*)thisx)

void BossSst_Init(Actor* thisx, GlobalContext* globalCtx);
void BossSst_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossSst_Update(Actor* thisx, GlobalContext* globalCtx);
void BossSst_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Boss_Sst_InitVars = {
    ACTOR_BOSS_SST,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_SST,
    sizeof(BossSst),
    (ActorFunc)BossSst_Init,
    (ActorFunc)BossSst_Destroy,
    (ActorFunc)BossSst_Update,
    (ActorFunc)BossSst_Draw,
};

static ColliderJntSphElementInit D_80937630[11] = {
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 7, { { 1500, 0, 0 }, 70 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 6, { { 0, 0, 0 }, 75 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 4, { { 5000, 0, 0 }, 120 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 3, { { -2500, 0, 0 }, 150 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 43, { { 1500, 0, 0 }, 80 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 43, { { 7500, 0, 0 }, 70 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 44, { { 3000, 0, 0 }, 60 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 40, { { 1500, 0, 0 }, 80 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 40, { { 7500, 0, 0 }, 70 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 41, { { 3000, 0, 0 }, 60 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x30 },
            { 0x00000080, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 8, { { 1500, 0, 0 }, 70 }, 100 },
    },
};

static ColliderJntSphInit D_809377BC = {
    {
        COLTYPE_HARD,
        AT_TYPE_ENEMY,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    11,
    D_80937630,
};

static ColliderCylinderInit D_809377CC = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_NONE | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 85, 100, -50, { 0, 0, 0 } },
};

static ColliderJntSphElementInit D_80937494[11] = {
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 2, { { 2000, -1500, 250 }, 65 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 10, { { 0, 0, 0 }, 22 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 11, { { 500, 0, 0 }, 22 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 15, { { -250, -250, 0 }, 25 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 16, { { 500, -250, 0 }, 25 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 20, { { 250, -250, 0 }, 25 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 21, { { 500, -250, 0 }, 25 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 25, { { 0, 0, 0 }, 27 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 26, { { 750, 0, 0 }, 26 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 5, { { 750, -150, 0 }, 21 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x20000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 6, { { 750, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit D_80937620 = {
    {
        COLTYPE_HIT0,
        AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    11,
    D_80937494,
};

static ColliderCylinderInit D_809377F8 = {
    {
        COLTYPE_NONE,
        AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x20000000, 0x04, 0x10 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { 85, 1, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/BossSst_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/BossSst_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092CAA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092CAD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092CB0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092CC58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DA6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DAB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DB30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DB4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DCEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DD50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DE48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DEA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DF40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092DFFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E2E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E34C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E3A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E3E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E470.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E510.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092E930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092EA00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092EA50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092EAE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092EC74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092ED9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092EF28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F0BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F30C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F374.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F3F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F65C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F6F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F790.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F7DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F894.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092F8F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092FBE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092FC60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092FDD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092FE44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092FF94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8092FFF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809300E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930238.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930284.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809303C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8093043C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8093051C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809307B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809308A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930B18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930CE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930F80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80930FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931044.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809310CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809314F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931560.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931788.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809317F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809318A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931928.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809319D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931A5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931D04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931D5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931E70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931EF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80931F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809322B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8093234C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809324A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809324F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8093265C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80932674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80932808.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8093285C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809329D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80932A80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80932BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80932C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80932D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80932DAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80932FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80932FF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933064.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809330B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933170.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809331E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8093323C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809333F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933554.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933724.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809338DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809339F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933B84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933C80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933D2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933D54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80933EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/BossSst_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80934338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809345A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809345F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80934628.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/BossSst_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80934A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80935238.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809352DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80935764.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80935890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80935948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80935A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80935CDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_80935F30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_809360FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Sst/func_8093639C.s")
