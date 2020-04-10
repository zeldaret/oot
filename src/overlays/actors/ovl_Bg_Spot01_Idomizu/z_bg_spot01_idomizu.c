/*
 * File: z_bg_spot01_idomizu.c
 * Overlay: ovl_Bg_Spot01_Idomizu
 * Description: Kakariko Village Well Water
 */

#include "z_bg_spot01_idomizu.h"

#define FLAGS 0x00000020

void BgSpot01Idomizu_Init(BgSpot01Idomizu* this, GlobalContext* globalCtx);
void BgSpot01Idomizu_Destroy(BgSpot01Idomizu* this, GlobalContext* globalCtx);
void BgSpot01Idomizu_Update(BgSpot01Idomizu* this, GlobalContext* globalCtx);
void BgSpot01Idomizu_Draw(BgSpot01Idomizu* this, GlobalContext* globalCtx);
void func_808ABB84(BgSpot01Idomizu* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot01_Idomizu_InitVars = {
    ACTOR_BG_SPOT01_IDOMIZU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT01_OBJECTS,
    sizeof(BgSpot01Idomizu),
    (ActorFunc)BgSpot01Idomizu_Init,
    (ActorFunc)BgSpot01Idomizu_Destroy,
    (ActorFunc)BgSpot01Idomizu_Update,
    (ActorFunc)BgSpot01Idomizu_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/BgSpot01Idomizu_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/BgSpot01Idomizu_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/func_808ABB84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/BgSpot01Idomizu_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idomizu/BgSpot01Idomizu_Draw.s")
