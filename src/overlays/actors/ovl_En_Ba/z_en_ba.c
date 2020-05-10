/*
 * File: z_en_ba.c
 * Overlay: ovl_En_Ba
 * Description: Tentacle from inside Lord Jabu-Jabu
 */

#include "z_en_ba.h"

#define FLAGS 0x00000015

#define THIS ((EnBa*)thisx)

void EnBa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ba_InitVars = {
    ACTOR_EN_BA,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BXA,
    sizeof(EnBa),
    (ActorFunc)EnBa_Init,
    (ActorFunc)EnBa_Destroy,
    (ActorFunc)EnBa_Update,
    (ActorFunc)EnBa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B65A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B69D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6B58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B7174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B71F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B75A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B781C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Draw.s")
