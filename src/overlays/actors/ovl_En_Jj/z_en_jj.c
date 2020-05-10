/*
 * File: z_en_jj.c
 * Overlay: ovl_En_Jj
 * Description: Lord Jabu-Jabu
 */

#include "z_en_jj.h"

#define FLAGS 0x00000030

#define THIS ((EnJj*)thisx)

void EnJj_Init(Actor* thisx, GlobalContext* globalCtx);
void EnJj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnJj_Update(Actor* thisx, GlobalContext* globalCtx);
void EnJj_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Jj_InitVars = {
    ACTOR_EN_JJ,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_JJ,
    sizeof(EnJj),
    (ActorFunc)EnJj_Init,
    (ActorFunc)EnJj_Destroy,
    (ActorFunc)EnJj_Update,
    (ActorFunc)EnJj_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/func_80A87800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/EnJj_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/EnJj_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/func_80A87B1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/func_80A87B9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/func_80A87BEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/func_80A87C30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/func_80A87CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/func_80A87D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/func_80A87EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/func_80A87F44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/EnJj_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Jj/EnJj_Draw.s")
