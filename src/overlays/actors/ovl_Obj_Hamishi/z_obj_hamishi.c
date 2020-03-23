#include "z_obj_hamishi.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void ObjHamishi_Init(ObjHamishi* this, GlobalContext* globalCtx);
void ObjHamishi_Destroy(ObjHamishi* this, GlobalContext* globalCtx);
void ObjHamishi_Update(ObjHamishi* this, GlobalContext* globalCtx);
void ObjHamishi_Draw(ObjHamishi* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Hamishi_InitVars =
{
    ACTOR_OBJ_HAMISHI,
    ACTORTYPE_PROP,
    ROOM,
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
