#include "z_en_shopnuts.h"

#define FLAGS 0x00000005

#define THIS ((EnShopnuts*)thisx)

void EnShopnuts_Init(Actor* thisx, GlobalContext* globalCtx);
void EnShopnuts_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnShopnuts_Update(Actor* thisx, GlobalContext* globalCtx);
void EnShopnuts_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Shopnuts_InitVars = {
    ACTOR_EN_SHOPNUTS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_SHOPNUTS,
    sizeof(EnShopnuts),
    (ActorFunc)EnShopnuts_Init,
    (ActorFunc)EnShopnuts_Destroy,
    (ActorFunc)EnShopnuts_Update,
    (ActorFunc)EnShopnuts_Draw,
};

static ColliderCylinderInit D_80AFB4E0 = {
    { COLTYPE_HIT6, AT_OFF, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 20, 40, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/EnShopnuts_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/EnShopnuts_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFA880.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFA8E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFA930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFA96C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFA9D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFAA20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFAA7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFACE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFAD64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFAE28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFAF64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFB028.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFB0C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/EnShopnuts_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFB25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/func_80AFB290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Shopnuts/EnShopnuts_Draw.s")
