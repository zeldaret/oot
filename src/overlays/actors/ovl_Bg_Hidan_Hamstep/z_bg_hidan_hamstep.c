#include "z_bg_hidan_hamstep.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgHidanHamstep_Init(BgHidanHamstep* this, GlobalContext* globalCtx);
void BgHidanHamstep_Destroy(BgHidanHamstep* this, GlobalContext* globalCtx);
void BgHidanHamstep_Update(BgHidanHamstep* this, GlobalContext* globalCtx);
void BgHidanHamstep_Draw(BgHidanHamstep* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Hamstep_InitVars =
{
    ACTOR_BG_HIDAN_HAMSTEP,
    ACTORTYPE_BG,
    ROOM,
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
