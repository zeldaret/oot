/*
 * File: z_obj_mure2.c
 * Overlay: ovl_Obj_Mure2
 * Description: Rock/Bush groups
 */

#include "z_obj_mure2.h"

#define FLAGS 0x00000000

void ObjMure2_Init(ObjMure2* this, GlobalContext* globalCtx);
void ObjMure2_Update(ObjMure2* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Mure2_InitVars = {
    ACTOR_OBJ_MURE2,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjMure2),
    (ActorFunc)ObjMure2_Init,
    (ActorFunc)Actor_Noop,
    (ActorFunc)ObjMure2_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B99F40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A2B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A534.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/ObjMure2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A628.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A6E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/func_80B9A6F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure2/ObjMure2_Update.s")
