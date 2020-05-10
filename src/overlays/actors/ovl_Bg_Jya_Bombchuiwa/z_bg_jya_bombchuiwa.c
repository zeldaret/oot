#include "z_bg_jya_bombchuiwa.h"

#define FLAGS 0x00000001

#define THIS ((BgJyaBombchuiwa*)thisx)

void BgJyaBombchuiwa_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBombchuiwa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBombchuiwa_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBombchuiwa_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Bombchuiwa_InitVars = {
    ACTOR_BG_JYA_BOMBCHUIWA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaBombchuiwa),
    (ActorFunc)BgJyaBombchuiwa_Init,
    (ActorFunc)BgJyaBombchuiwa_Destroy,
    (ActorFunc)BgJyaBombchuiwa_Update,
    (ActorFunc)BgJyaBombchuiwa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_808944A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_808944F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/BgJyaBombchuiwa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/BgJyaBombchuiwa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_808945B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_80894840.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_8089487C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_80894960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_808949B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_80894A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/BgJyaBombchuiwa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_80894B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_80894BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/BgJyaBombchuiwa_Draw.s")
