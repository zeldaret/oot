/*
 * File: z_en_mk.c
 * Overlay: ovl_En_Mk
 * Description: Lakeside Professor
 */

#include "z_en_mk.h"

#define FLAGS 0x00000019

#define THIS ((EnMk*)thisx)

void EnMk_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMk_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMk_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000368;
extern UNK_TYPE D_06000724;
extern UNK_TYPE D_06000AC0;
extern UNK_TYPE D_06000D88;
extern UNK_TYPE D_06005DF0;

/*
const ActorInit En_Mk_InitVars = {
    ACTOR_EN_MK,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MK,
    sizeof(EnMk),
    (ActorFunc)EnMk_Init,
    (ActorFunc)EnMk_Destroy,
    (ActorFunc)EnMk_Update,
    (ActorFunc)EnMk_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/EnMk_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/EnMk_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACA94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACB14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACB6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACBAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACC04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACCA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACD48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACE2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACEE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AAD014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AAD080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/EnMk_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AAD518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AAD55C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/EnMk_Draw.s")
