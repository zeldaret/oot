/*
 * File: z_en_wf.c
 * Overlay: ovl_En_Wf
 * Description: Wolfos
 */

#include "z_en_wf.h"

#define FLAGS 0x00000015

#define THIS ((EnWf*)thisx)

void EnWf_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWf_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWf_Update(Actor* thisx, GlobalContext* globalCtx);
void EnWf_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06004638;
extern UNK_TYPE D_06004AD0;
extern UNK_TYPE D_06004CA4;
extern UNK_TYPE D_06005430;
extern UNK_TYPE D_060057A0;
extern UNK_TYPE D_06009690;
extern UNK_TYPE D_060098C8;
extern UNK_TYPE D_06009B20;
extern UNK_TYPE D_0600A4AC;

/*
const ActorInit En_Wf_InitVars = {
    ACTOR_EN_WF,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_WF,
    sizeof(EnWf),
    (ActorFunc)EnWf_Init,
    (ActorFunc)EnWf_Destroy,
    (ActorFunc)EnWf_Update,
    (ActorFunc)EnWf_Draw,
};

static ColliderJntSphElementInit D_80B37990[4] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 15, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x04 },
            { 0x00000000, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 21, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFC1FFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON | BUMP_HOOKABLE,
            OCELEM_ON,
        },
        { 17, { { 800, 0, 0 }, 25 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFC1FFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON | BUMP_HOOKABLE,
            OCELEM_ON,
        },
        { 12, { { 0, 0, 0 }, 30 }, 100 },
    },
};

static ColliderJntSphInit D_80B37A20 = {
    {
        COLTYPE_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    4,
    D_80B37990,
};

static ColliderCylinderInit D_80B37A30 = {
    {
        COLTYPE_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 20, 50, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80B37A5C = {
    {
        COLTYPE_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 15, 20, -15, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B33CB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/EnWf_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/EnWf_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B33FB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B34380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B34428.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B3455C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B345E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B347FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B3487C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B34CFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B34D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B34F28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35024.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35540.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B355BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B3590C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B359A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35B94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35E4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B35EE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B360E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B361A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B36288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B36328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B365A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B36740.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B36C8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B36D3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B36F40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B37038.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/EnWf_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B37454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B37494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/EnWf_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wf/func_80B37830.s")
