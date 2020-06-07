#include "z_bg_mori_bigst.h"

#define FLAGS 0x00000010

#define THIS ((BgMoriBigst*)thisx)

void BgMoriBigst_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriBigst_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriBigst_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mori_Bigst_InitVars = {
    ACTOR_BG_MORI_BIGST,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriBigst),
    (ActorFunc)BgMoriBigst_Init,
    (ActorFunc)BgMoriBigst_Destroy,
    (ActorFunc)BgMoriBigst_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A0BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A0BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/BgMoriBigst_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/BgMoriBigst_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A0DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A0E04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A0ED0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A0EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A0FB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A1024.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A104C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A10D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A1164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A1190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A12C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A1320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/BgMoriBigst_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Bigst/func_808A13B4.s")
