/*
 * File: z_en_ge3.c
 * Overlay: ovl_En_Ge3
 * Description: Gerudo giving you membership card
 */

#include "z_en_ge3.h"

#define FLAGS 0x00000019

#define THIS ((EnGe3*)thisx)

void EnGe3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGe3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGe3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGe3_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ge3_InitVars = {
    ACTOR_EN_GE3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GELDB,
    sizeof(EnGe3),
    (ActorFunc)EnGe3_Init,
    (ActorFunc)EnGe3_Destroy,
    (ActorFunc)EnGe3_Update,
    (ActorFunc)EnGe3_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34620.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/EnGe3_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/EnGe3_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A347F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A3490C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34A80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34AA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34B00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34B90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34CE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/EnGe3_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A34E58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/func_80A35004.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge3/EnGe3_Draw.s")
