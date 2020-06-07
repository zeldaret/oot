#include "z_bg_hidan_rsekizou.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanRsekizou*)thisx)

void BgHidanRsekizou_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRsekizou_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRsekizou_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRsekizou_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Rsekizou_InitVars = {
    ACTOR_BG_HIDAN_RSEKIZOU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanRsekizou),
    (ActorFunc)BgHidanRsekizou_Init,
    (ActorFunc)BgHidanRsekizou_Destroy,
    (ActorFunc)BgHidanRsekizou_Update,
    (ActorFunc)BgHidanRsekizou_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/BgHidanRsekizou_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/BgHidanRsekizou_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/BgHidanRsekizou_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/func_8088C70C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rsekizou/BgHidanRsekizou_Draw.s")
