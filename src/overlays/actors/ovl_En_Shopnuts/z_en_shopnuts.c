#include "z_en_shopnuts.h"

#define FLAGS 0x00000005

#define THIS ((EnShopnuts*)thisx)

void EnShopnuts_Init(Actor* thisx, GlobalContext* globalCtx);
void EnShopnuts_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnShopnuts_Update(Actor* thisx, GlobalContext* globalCtx);
void EnShopnuts_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_060001EC;
extern UNK_TYPE D_0600039C;
extern UNK_TYPE D_06000764;
extern UNK_TYPE D_06000BA0;
extern UNK_TYPE D_0600139C;
extern UNK_TYPE D_06003B68;
extern UNK_TYPE D_060041A8;
extern UNK_TYPE D_06004574;

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
