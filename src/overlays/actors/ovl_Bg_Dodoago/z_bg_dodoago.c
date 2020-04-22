/*
 * File: z_bg_dodoago.c
 * Overlay: ovl_Bg_Dodoago
 * Description: Dodongo Head Statue in Dodongo's Cavern
 */

#include "z_bg_dodoago.h"

#define FLAGS 0x00000000

void BgDodoago_Init(BgDodoago* this, GlobalContext* globalCtx);
void BgDodoago_Destroy(BgDodoago* this, GlobalContext* globalCtx);
void BgDodoago_Update(BgDodoago* this, GlobalContext* globalCtx);
void BgDodoago_Draw(BgDodoago* this, GlobalContext* globalCtx);
void BgDodoago_SetupAction(BgDodoago* this, ActorFunc actionFunc);
// void func_80871A08(Vec3f* vec, GlobalContext* globalCtx); // Not 100% sure
void func_80871CF4(BgDodoago* this, GlobalContext* globalCtx);
void func_80871FB8(BgDodoago* this, GlobalContext* globalCtx);
void func_8087227C(BgDodoago* this, GlobalContext* globalCtx);
void func_80872288(BgDodoago* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Dodoago_InitVars = {
    ACTOR_BG_DODOAGO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_DDAN_OBJECTS,
    sizeof(BgDodoago),
    (ActorFunc)BgDodoago_Init,
    (ActorFunc)BgDodoago_Destroy,
    (ActorFunc)BgDodoago_Update,
    (ActorFunc)BgDodoago_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_SetupAction.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80871FB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_8087227C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/func_80872288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dodoago/BgDodoago_Draw.s")
