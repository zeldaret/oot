/*
 * File: z_obj_hamishi.c
 * Overlay: ovl_Obj_Hamishi
 * Description: Bronze Boulder
 */

#include "z_obj_hamishi.h"

#define FLAGS 0x00000000

#define THIS ((ObjHamishi*)thisx)

void ObjHamishi_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjHamishi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjHamishi_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjHamishi_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Obj_Hamishi_InitVars = {
    ACTOR_OBJ_HAMISHI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(ObjHamishi),
    (ActorFunc)ObjHamishi_Init,
    (ActorFunc)ObjHamishi_Destroy,
    (ActorFunc)ObjHamishi_Update,
    (ActorFunc)ObjHamishi_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hamishi/func_80B92F90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hamishi/func_80B92FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hamishi/func_80B93164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hamishi/ObjHamishi_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hamishi/ObjHamishi_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hamishi/ObjHamishi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hamishi/ObjHamishi_Draw.s")
