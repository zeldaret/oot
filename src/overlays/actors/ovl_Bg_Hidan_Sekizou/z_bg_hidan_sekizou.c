#include "z_bg_hidan_sekizou.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanSekizou*)thisx)

void BgHidanSekizou_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSekizou_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSekizou_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSekizou_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Sekizou_InitVars = {
    ACTOR_BG_HIDAN_SEKIZOU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanSekizou),
    (ActorFunc)BgHidanSekizou_Init,
    (ActorFunc)BgHidanSekizou_Destroy,
    (ActorFunc)BgHidanSekizou_Update,
    (ActorFunc)BgHidanSekizou_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088CEC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/BgHidanSekizou_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/BgHidanSekizou_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088D434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088D720.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088D750.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/BgHidanSekizou_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088D9F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088DC50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/func_8088DE08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sekizou/BgHidanSekizou_Draw.s")
