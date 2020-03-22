#include "z_bg_hidan_hrock.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgHidanHrock_Init(BgHidanHrock* this, GlobalContext* globalCtx);
void BgHidanHrock_Destroy(BgHidanHrock* this, GlobalContext* globalCtx);
void BgHidanHrock_Update(BgHidanHrock* this, GlobalContext* globalCtx);
void BgHidanHrock_Draw(BgHidanHrock* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Hrock_InitVars =
{
    ACTOR_BG_HIDAN_HROCK,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanHrock),
    (ActorFunc)BgHidanHrock_Init,
    (ActorFunc)BgHidanHrock_Destroy,
    (ActorFunc)BgHidanHrock_Update,
    (ActorFunc)BgHidanHrock_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hrock/BgHidanHrock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hrock/BgHidanHrock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hrock/func_808894A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hrock/func_808894B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hrock/func_8088960C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hrock/func_808896B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hrock/BgHidanHrock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hrock/BgHidanHrock_Draw.s")
