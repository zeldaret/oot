#include "z_arms_hook.h"

#define FLAGS 0x00000030

#define THIS ((ArmsHook*)thisx)

void ArmsHook_Init(Actor* thisx, GlobalContext* globalCtx);
void ArmsHook_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ArmsHook_Update(Actor* thisx, GlobalContext* globalCtx);
void ArmsHook_Draw(Actor* thisx, GlobalContext* globalCtx);

void ArmsHook_SetupAction(ArmsHook* this, ActorFunc actionFunc);
void func_80864FC4(ArmsHook* this, GlobalContext* globalCtx);

/*
const ActorInit Arms_Hook_InitVars = {
    ACTOR_ARMS_HOOK,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_LINK_BOY,
    sizeof(ArmsHook),
    (ActorFunc)ArmsHook_Init,
    (ActorFunc)ArmsHook_Destroy,
    (ActorFunc)ArmsHook_Update,
    (ActorFunc)ArmsHook_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/ArmsHook_SetupAction.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/ArmsHook_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/ArmsHook_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/func_80864FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/func_80865044.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/func_80865054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/func_80865084.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/func_808650AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/func_80865148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/func_8086518C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/ArmsHook_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arms_Hook/ArmsHook_Draw.s")
