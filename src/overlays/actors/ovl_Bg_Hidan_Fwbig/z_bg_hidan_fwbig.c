#include "z_bg_hidan_fwbig.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void BgHidanFwbig_Init(BgHidanFwbig* this, GlobalContext* globalCtx);
void BgHidanFwbig_Destroy(BgHidanFwbig* this, GlobalContext* globalCtx);
void BgHidanFwbig_Update(BgHidanFwbig* this, GlobalContext* globalCtx);
void BgHidanFwbig_Draw(BgHidanFwbig* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Fwbig_InitVars =
{
    ACTOR_BG_HIDAN_FWBIG,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanFwbig),
    (ActorFunc)BgHidanFwbig_Init,
    (ActorFunc)BgHidanFwbig_Destroy,
    (ActorFunc)BgHidanFwbig_Update,
    (ActorFunc)BgHidanFwbig_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/BgHidanFwbig_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/BgHidanFwbig_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/func_808874B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/func_80887534.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/func_80887598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/func_808875C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/func_80887638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/func_80887718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/func_80887768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/func_808877C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/func_80887864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/BgHidanFwbig_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Fwbig/BgHidanFwbig_Draw.s")
