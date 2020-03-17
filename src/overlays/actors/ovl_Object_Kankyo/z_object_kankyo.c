#include "z_object_kankyo.h"

#define ROOM  0x00
#define FLAGS 0x02000030

void ObjectKankyo_Init(ObjectKankyo* this, GlobalContext* globalCtx);
void ObjectKankyo_Destroy(ObjectKankyo* this, GlobalContext* globalCtx);
void ObjectKankyo_Update(ObjectKankyo* this, GlobalContext* globalCtx);
void ObjectKankyo_Draw(ObjectKankyo* this, GlobalContext* globalCtx);

/*
const ActorInit Object_Kankyo_InitVars =
{
    ACTOR_OBJECT_KANKYO,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjectKankyo),
    (ActorFunc)ObjectKankyo_Init,
    (ActorFunc)ObjectKankyo_Destroy,
    (ActorFunc)ObjectKankyo_Update,
    (ActorFunc)ObjectKankyo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Object_Kankyo/func_80BA2AA0.s")

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
