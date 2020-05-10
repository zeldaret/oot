#include "z_bg_spot11_oasis.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot11Oasis*)thisx)

void BgSpot11Oasis_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Oasis_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot11_Oasis_InitVars = {
    ACTOR_BG_SPOT11_OASIS,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT11_OBJ,
    sizeof(BgSpot11Oasis),
    (ActorFunc)BgSpot11Oasis_Init,
    (ActorFunc)Actor_Noop,
    (ActorFunc)BgSpot11Oasis_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/func_808B27F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/func_808B280C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/BgSpot11Oasis_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/func_808B2970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/func_808B2980.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/func_808B29E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/func_808B29F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/func_808B2AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/func_808B2AB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/BgSpot11Oasis_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Oasis/func_808B2CA8.s")
