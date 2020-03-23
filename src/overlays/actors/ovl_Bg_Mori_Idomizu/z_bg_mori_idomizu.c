#include "z_bg_mori_idomizu.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void BgMoriIdomizu_Init(BgMoriIdomizu* this, GlobalContext* globalCtx);
void BgMoriIdomizu_Destroy(BgMoriIdomizu* this, GlobalContext* globalCtx);
void BgMoriIdomizu_Update(BgMoriIdomizu* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mori_Idomizu_InitVars =
{
    ACTOR_BG_MORI_IDOMIZU,
    ACTORTYPE_BG,
    ROOM,
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
