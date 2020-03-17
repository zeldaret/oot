#include "z_bg_jya_goroiwa.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void BgJyaGoroiwa_Init(BgJyaGoroiwa* this, GlobalContext* globalCtx);
void BgJyaGoroiwa_Destroy(BgJyaGoroiwa* this, GlobalContext* globalCtx);
void BgJyaGoroiwa_Update(BgJyaGoroiwa* this, GlobalContext* globalCtx);
void BgJyaGoroiwa_Draw(BgJyaGoroiwa* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Goroiwa_InitVars =
{
    ACTOR_BG_JYA_GOROIWA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GOROIWA,
    sizeof(BgJyaGoroiwa),
    (ActorFunc)BgJyaGoroiwa_Init,
    (ActorFunc)BgJyaGoroiwa_Destroy,
    (ActorFunc)BgJyaGoroiwa_Update,
    (ActorFunc)BgJyaGoroiwa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/func_80897970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/func_808979C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/func_80897A2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/BgJyaGoroiwa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/BgJyaGoroiwa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/func_80897B1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/func_80897B48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/func_80897DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/func_80897DF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/BgJyaGoroiwa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Goroiwa/BgJyaGoroiwa_Draw.s")
