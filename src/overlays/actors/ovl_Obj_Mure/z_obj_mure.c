/*
 * File: z_obj_mure.c
 * Overlay: ovl_Obj_Mure
 * Description: Fish, Bugs, Butterflies
 */

#include "z_obj_mure.h"

#define FLAGS 0x00000000

void ObjMure_Init(ObjMure* this, GlobalContext* globalCtx);
void ObjMure_Destroy(ObjMure* this, GlobalContext* globalCtx);
void ObjMure_Update(ObjMure* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Mure_InitVars = {
    ACTOR_OBJ_MURE,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjMure),
    (ActorFunc)ObjMure_Init,
    (ActorFunc)ObjMure_Destroy,
    (ActorFunc)ObjMure_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98AA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98B1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B990BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B9910C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B992E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B992F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B9942C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B995A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B997CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Update.s")
