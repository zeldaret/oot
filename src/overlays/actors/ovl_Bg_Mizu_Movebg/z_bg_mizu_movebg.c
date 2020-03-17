#include "z_bg_mizu_movebg.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void BgMizuMovebg_Init(BgMizuMovebg* this, GlobalContext* globalCtx);
void BgMizuMovebg_Destroy(BgMizuMovebg* this, GlobalContext* globalCtx);
void BgMizuMovebg_Update(BgMizuMovebg* this, GlobalContext* globalCtx);
void BgMizuMovebg_Draw(BgMizuMovebg* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mizu_Movebg_InitVars =
{
    ACTOR_BG_MIZU_MOVEBG,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_MIZU_OBJECTS,
    sizeof(BgMizuMovebg),
    (ActorFunc)BgMizuMovebg_Init,
    (ActorFunc)BgMizuMovebg_Destroy,
    (ActorFunc)BgMizuMovebg_Update,
    (ActorFunc)BgMizuMovebg_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/func_8089DC30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/BgMizuMovebg_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/BgMizuMovebg_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/func_8089E108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/func_8089E198.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/func_8089E318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/func_8089E650.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/BgMizuMovebg_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Movebg/BgMizuMovebg_Draw.s")

