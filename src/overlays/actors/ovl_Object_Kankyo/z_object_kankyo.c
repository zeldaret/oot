/*
 * File: z_object_kankyo.c
 * Overlay: ovl_Object_Kankyo
 * Description: Environmental Effects
 */

#include "z_object_kankyo.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x02000030

#define THIS ((ObjectKankyo*)thisx)

void ObjectKankyo_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjectKankyo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjectKankyo_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjectKankyo_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_01000000;
extern UNK_TYPE D_06005FF0;
extern UNK_TYPE D_06009620;

/*
const ActorInit Object_Kankyo_InitVars = {
    ACTOR_OBJECT_KANKYO,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjectKankyo),
    (ActorFunc)ObjectKankyo_Init,
    (ActorFunc)ObjectKankyo_Destroy,
    (ActorFunc)ObjectKankyo_Update,
    (ActorFunc)ObjectKankyo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/ObjectKankyo_SetupAction.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/ObjectKankyo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/ObjectKankyo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA2DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA2DD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/ObjectKankyo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/ObjectKankyo_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA3C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA414C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA4914.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA49BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA4BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA4C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA4CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA4D7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA5304.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA5370.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA53CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA54AC.s")
