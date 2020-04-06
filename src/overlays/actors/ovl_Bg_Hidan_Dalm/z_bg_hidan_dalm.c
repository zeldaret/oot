#include "z_bg_hidan_dalm.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgHidanDalm_Init(BgHidanDalm* this, GlobalContext* globalCtx);
void BgHidanDalm_Destroy(BgHidanDalm* this, GlobalContext* globalCtx);
void BgHidanDalm_Update(BgHidanDalm* this, GlobalContext* globalCtx);
void BgHidanDalm_Draw(BgHidanDalm* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Dalm_InitVars = {
    ACTOR_BG_HIDAN_DALM,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanDalm),
    (ActorFunc)BgHidanDalm_Init,
    (ActorFunc)BgHidanDalm_Destroy,
    (ActorFunc)BgHidanDalm_Update,
    (ActorFunc)BgHidanDalm_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Dalm/BgHidanDalm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Dalm/BgHidanDalm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Dalm/func_80885F4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Dalm/func_808860CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Dalm/BgHidanDalm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Dalm/func_808862D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Dalm/BgHidanDalm_Draw.s")
