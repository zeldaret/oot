#include "z_bg_hidan_sima.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanSima*)thisx)

void BgHidanSima_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSima_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSima_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSima_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Sima_InitVars = {
    ACTOR_BG_HIDAN_SIMA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanSima),
    (ActorFunc)BgHidanSima_Init,
    (ActorFunc)BgHidanSima_Destroy,
    (ActorFunc)BgHidanSima_Update,
    (ActorFunc)BgHidanSima_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/BgHidanSima_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/BgHidanSima_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E5D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E6D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E7A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088E90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/BgHidanSima_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/func_8088EB54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Sima/BgHidanSima_Draw.s")
