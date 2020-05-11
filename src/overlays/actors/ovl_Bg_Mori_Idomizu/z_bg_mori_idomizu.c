#include "z_bg_mori_idomizu.h"

#define FLAGS 0x00000030

#define THIS ((BgMoriIdomizu*)thisx)

void BgMoriIdomizu_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriIdomizu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriIdomizu_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mori_Idomizu_InitVars = {
    ACTOR_BG_MORI_IDOMIZU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriIdomizu),
    (ActorFunc)BgMoriIdomizu_Init,
    (ActorFunc)BgMoriIdomizu_Destroy,
    (ActorFunc)BgMoriIdomizu_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/func_808A4640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/func_808A4648.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/BgMoriIdomizu_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/BgMoriIdomizu_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/func_808A47D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/func_808A47FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/func_808A4850.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/func_808A4874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/BgMoriIdomizu_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Idomizu/func_808A4A64.s")
