/*
 * File: z_en_vali.c
 * Overlay: ovl_En_Vali
 * Description: Bari (Big Jellyfish)
 */

#include "z_en_vali.h"

#define FLAGS 0x00001015

#define THIS ((EnVali*)thisx)

void EnVali_Init(Actor* thisx, GlobalContext* globalCtx);
void EnVali_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnVali_Update(Actor* thisx, GlobalContext* globalCtx);
void EnVali_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000710;
extern UNK_TYPE D_06000854;
extern UNK_TYPE D_06000B34;
extern UNK_TYPE D_060014AC;
extern UNK_TYPE D_06002610;
extern UNK_TYPE D_06002740;
extern UNK_TYPE D_060027D8;
extern UNK_TYPE D_06004848;

/*
const ActorInit En_Vali_InitVars = {
    ACTOR_EN_VALI,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_VALI,
    sizeof(EnVali),
    (ActorFunc)EnVali_Init,
    (ActorFunc)EnVali_Destroy,
    (ActorFunc)EnVali_Update,
    (ActorFunc)EnVali_Draw,
};

static ColliderQuadInit D_80B288A0 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x07, 0x08 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static ColliderCylinderInit D_80B288F0 = {
    {
        COLTYPE_HIT8,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x07, 0x08 },
        { 0xFFCFFFFF, 0x01, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 17, 35, -15, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B268C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B268FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26B18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26B4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26BBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26C50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26D54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26DE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B26E9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B27098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B270D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B2716C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B27318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B273D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B2742C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B27464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B274A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B27654.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B27710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B278A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B2790C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B27C1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B27E38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B28054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B281F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B28280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/func_80B28344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vali/EnVali_Draw.s")
