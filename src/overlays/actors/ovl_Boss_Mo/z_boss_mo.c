#include "z_boss_mo.h"

#define FLAGS 0x00000035

#define THIS ((BossMo*)thisx)

void BossMo_Init(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Update(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Boss_Mo_InitVars = {
    ACTOR_BOSS_MO,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_MO,
    sizeof(BossMo),
    (ActorFunc)BossMo_Init,
    (ActorFunc)BossMo_Destroy,
    (ActorFunc)BossMo_Update,
    (ActorFunc)BossMo_Draw,
};

static ColliderCylinderInit D_8092603C = {
    {
        COLTYPE_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x10 },
        { 0xFFDFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 20, 40, -20, { 0, 0, 0 } },
};

static ColliderJntSphElementInit D_80925D80[19] = {
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 0 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 1, { { 0, 0, 0 }, 0 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 2, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 3, { { 0, 0, 0 }, 24 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 4, { { 0, 0, 0 }, 22 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 5, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 6, { { 0, 0, 0 }, 18 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 7, { { 0, 0, 0 }, 16 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 8, { { 0, 0, 0 }, 14 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 9, { { 0, 0, 0 }, 12 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 10, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 11, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 12, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 13, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 14, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 15, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 16, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 17, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK4,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 18, { { 0, 0, 0 }, 10 }, 100 },
    },
};

static ColliderJntSphInit D_8092602C = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    19,
    D_80925D80,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BB00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BB1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BC40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BE5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091BFFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/BossMo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/BossMo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091C4E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091C538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091F2FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091F5A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_809206C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80921280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_809216D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80922D30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/BossMo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_809237C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80923870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80923FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80924228.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/BossMo_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80924D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80925480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80925C18.s")
