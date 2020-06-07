/*
 * File: z_en_hs2.c
 * Overlay: ovl_En_Hs2
 * Description: Carpenter's Son (Child Link version)
 */

#include "z_en_hs2.h"

#define FLAGS 0x00000009

#define THIS ((EnHs2*)thisx)

void EnHs2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHs2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHs2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHs2_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Hs2_InitVars = {
    ACTOR_EN_HS2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_HS,
    sizeof(EnHs2),
    (ActorFunc)EnHs2_Init,
    (ActorFunc)EnHs2_Destroy,
    (ActorFunc)EnHs2_Update,
    (ActorFunc)EnHs2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/EnHs2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/EnHs2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/func_80A6F0B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/func_80A6F164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/func_80A6F1A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/EnHs2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/func_80A6F358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/func_80A6F390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/func_80A6F3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/func_80A6F3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs2/EnHs2_Draw.s")
