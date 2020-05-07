#include "z_bg_spot18_shutter.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot18Shutter*)thisx)

void BgSpot18Shutter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Shutter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Shutter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot18Shutter_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot18_Shutter_InitVars = {
    ACTOR_BG_SPOT18_SHUTTER,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT18_OBJ,
    sizeof(BgSpot18Shutter),
    (ActorFunc)BgSpot18Shutter_Init,
    (ActorFunc)BgSpot18Shutter_Destroy,
    (ActorFunc)BgSpot18Shutter_Update,
    (ActorFunc)BgSpot18Shutter_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Shutter/BgSpot18Shutter_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Shutter/BgSpot18Shutter_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Shutter/func_808B95AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Shutter/func_808B95B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Shutter/func_808B9618.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Shutter/func_808B9698.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Shutter/func_808B971C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Shutter/BgSpot18Shutter_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Shutter/BgSpot18Shutter_Draw.s")
