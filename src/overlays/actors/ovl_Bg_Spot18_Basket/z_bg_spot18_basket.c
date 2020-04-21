#include "z_bg_spot18_basket.h"

#define FLAGS 0x00000010

void BgSpot18Basket_Init(BgSpot18Basket* this, GlobalContext* globalCtx);
void BgSpot18Basket_Destroy(BgSpot18Basket* this, GlobalContext* globalCtx);
void BgSpot18Basket_Update(BgSpot18Basket* this, GlobalContext* globalCtx);
void BgSpot18Basket_Draw(BgSpot18Basket* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot18_Basket_InitVars = {
    ACTOR_BG_SPOT18_BASKET,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT18_OBJ,
    sizeof(BgSpot18Basket),
    (ActorFunc)BgSpot18Basket_Init,
    (ActorFunc)BgSpot18Basket_Destroy,
    (ActorFunc)BgSpot18Basket_Update,
    (ActorFunc)BgSpot18Basket_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7B58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7BB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7BCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7D38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B7FC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B818C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/func_808B81A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Basket/BgSpot18Basket_Draw.s")
