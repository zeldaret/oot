#include "z_en_mm.h"

#define FLAGS 0x00000019

#define THIS ((EnMm*)thisx)

void EnMm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMm_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMm_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06005E18;
extern UNK_TYPE D_0602CA38;

/*
const ActorInit En_Mm_InitVars = {
    ACTOR_EN_MM,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MM,
    sizeof(EnMm),
    (ActorFunc)EnMm_Init,
    (ActorFunc)EnMm_Destroy,
    (ActorFunc)EnMm_Update,
    (ActorFunc)EnMm_Draw,
};

static ColliderCylinderInit D_80AAEAE0 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 18, 63, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAD770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/EnMm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/EnMm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADA70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADAA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADC34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADCD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADE60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADEF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE50C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/EnMm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/EnMm_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE97C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAEA10.s")
