#include "z_bg_mizu_shutter.h"

#define FLAGS 0x00000010

#define THIS ((BgMizuShutter*)thisx)

void BgMizuShutter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMizuShutter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMizuShutter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMizuShutter_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mizu_Shutter_InitVars = {
    ACTOR_BG_MIZU_SHUTTER,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_MIZU_OBJECTS,
    sizeof(BgMizuShutter),
    (ActorFunc)BgMizuShutter_Init,
    (ActorFunc)BgMizuShutter_Destroy,
    (ActorFunc)BgMizuShutter_Update,
    (ActorFunc)BgMizuShutter_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Shutter/BgMizuShutter_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Shutter/BgMizuShutter_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Shutter/func_8089F0DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Shutter/func_8089F170.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Shutter/func_8089F1BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Shutter/func_8089F3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Shutter/BgMizuShutter_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Shutter/BgMizuShutter_Draw.s")
