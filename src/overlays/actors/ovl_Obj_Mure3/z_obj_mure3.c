/*
 * File: z_obj_mure3.c
 * Overlay: ovl_Obj_Mure3
 * Description: Tower of Rupees
 */

#include "z_obj_mure3.h"

#define FLAGS 0x00000000

void ObjMure3_Init(ObjMure3* this, GlobalContext* globalCtx);
void ObjMure3_Destroy(ObjMure3* this, GlobalContext* globalCtx);
void ObjMure3_Update(ObjMure3* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Mure3_InitVars = {
    ACTOR_OBJ_MURE3,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjMure3),
    (ActorFunc)ObjMure3_Init,
    (ActorFunc)ObjMure3_Destroy,
    (ActorFunc)ObjMure3_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9A9D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9AA90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9ABA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9ACE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9ADCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/ObjMure3_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/ObjMure3_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9AF24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9AF34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9AF54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9AF64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9AFEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/func_80B9AFFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure3/ObjMure3_Update.s")
