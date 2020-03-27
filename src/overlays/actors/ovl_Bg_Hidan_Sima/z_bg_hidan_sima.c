#include "z_bg_hidan_sima.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgHidanSima_Init(BgHidanSima* this, GlobalContext* globalCtx);
void BgHidanSima_Destroy(BgHidanSima* this, GlobalContext* globalCtx);
void BgHidanSima_Update(BgHidanSima* this, GlobalContext* globalCtx);
void BgHidanSima_Draw(BgHidanSima* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Sima_InitVars = {
    ACTOR_BG_HIDAN_SIMA,
    ACTORTYPE_BG,
    ROOM,
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
