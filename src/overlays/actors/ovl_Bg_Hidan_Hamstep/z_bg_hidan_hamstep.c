#include "z_bg_hidan_hamstep.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanHamstep*)thisx)

void BgHidanHamstep_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanHamstep_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanHamstep_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanHamstep_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_0600A548;
extern UNK_TYPE D_0600A668;
extern UNK_TYPE D_0600DE44;

/*
const ActorInit Bg_Hidan_Hamstep_InitVars = {
    ACTOR_BG_HIDAN_HAMSTEP,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanHamstep),
    (ActorFunc)BgHidanHamstep_Init,
    (ActorFunc)BgHidanHamstep_Destroy,
    (ActorFunc)BgHidanHamstep_Update,
    (ActorFunc)BgHidanHamstep_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_8088805C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/BgHidanHamstep_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/BgHidanHamstep_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_808884C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888694.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_808887C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_808889B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888A58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/func_80888C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/BgHidanHamstep_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hamstep/BgHidanHamstep_Draw.s")
