#include "z_en_sth.h"

#define FLAGS 0x00000019

#define THIS ((EnSth*)thisx)

void EnSth_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSth_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSth_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Sth_InitVars = {
    ACTOR_EN_STH,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnSth),
    (ActorFunc)EnSth_Init,
    (ActorFunc)EnSth_Destroy,
    (ActorFunc)EnSth_Update,
    NULL,
};

static ColliderCylinderInit D_80B0B404 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 30, 40, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07540.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/EnSth_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B076B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/EnSth_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B078C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B079E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07AF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07B68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07BEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07D7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07E18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/EnSth_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B07FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B0813C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B081EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sth/func_80B08258.s")
