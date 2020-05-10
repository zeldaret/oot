#include "z_bg_mori_rakkatenjo.h"

#define FLAGS 0x00000030

#define THIS ((BgMoriRakkatenjo*)thisx)

void BgMoriRakkatenjo_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriRakkatenjo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriRakkatenjo_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mori_Rakkatenjo_InitVars = {
    ACTOR_BG_MORI_RAKKATENJO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriRakkatenjo),
    (ActorFunc)BgMoriRakkatenjo_Init,
    (ActorFunc)BgMoriRakkatenjo_Destroy,
    (ActorFunc)BgMoriRakkatenjo_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/BgMoriRakkatenjo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/BgMoriRakkatenjo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5724.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A57D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5894.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A58E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A59F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/BgMoriRakkatenjo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Rakkatenjo/func_808A5D60.s")
