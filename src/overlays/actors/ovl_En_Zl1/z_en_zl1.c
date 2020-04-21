/*
 * File: z_en_zl1.c
 * Overlay: ovl_En_Zl1
 * Description: Child Princess Zelda (at window)
 */

#include "z_en_zl1.h"

#define FLAGS 0x00000019

void EnZl1_Init(EnZl1* this, GlobalContext* globalCtx);
void EnZl1_Destroy(EnZl1* this, GlobalContext* globalCtx);
void EnZl1_Update(EnZl1* this, GlobalContext* globalCtx);
void EnZl1_Draw(EnZl1* this, GlobalContext* globalCtx);

/*
const ActorInit En_Zl1_InitVars = {
    ACTOR_EN_ZL1,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZL1,
    sizeof(EnZl1),
    (ActorFunc)EnZl1_Init,
    (ActorFunc)EnZl1_Destroy,
    (ActorFunc)EnZl1_Update,
    (ActorFunc)EnZl1_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4AB40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/EnZl1_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/EnZl1_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4AE18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4AF18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4B010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4B240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4B7F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4B834.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4B874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4B8B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4BBC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4BC78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4BF2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/EnZl1_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4C340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4C400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/EnZl1_Draw.s")
