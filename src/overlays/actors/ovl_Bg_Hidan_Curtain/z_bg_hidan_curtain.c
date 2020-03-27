#include "z_bg_hidan_curtain.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgHidanCurtain_Init(BgHidanCurtain* this, GlobalContext* globalCtx);
void BgHidanCurtain_Destroy(BgHidanCurtain* this, GlobalContext* globalCtx);
void BgHidanCurtain_Update(BgHidanCurtain* this, GlobalContext* globalCtx);
void BgHidanCurtain_Draw(BgHidanCurtain* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Curtain_InitVars = {
    ACTOR_BG_HIDAN_CURTAIN,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHidanCurtain),
    (ActorFunc)BgHidanCurtain_Init,
    (ActorFunc)BgHidanCurtain_Destroy,
    (ActorFunc)BgHidanCurtain_Update,
    (ActorFunc)BgHidanCurtain_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/BgHidanCurtain_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/BgHidanCurtain_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/func_80885434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/func_808854E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/func_80885514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/func_80885554.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/func_80885594.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/func_80885604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/func_808856F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/BgHidanCurtain_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Curtain/BgHidanCurtain_Draw.s")
