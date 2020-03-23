#include "z_obj_comb.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void ObjComb_Init(ObjComb* this, GlobalContext* globalCtx);
void ObjComb_Destroy(ObjComb* this, GlobalContext* globalCtx);
void ObjComb_Update(ObjComb* this, GlobalContext* globalCtx);
void ObjComb_Draw(ObjComb* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Comb_InitVars =
{
    ACTOR_OBJ_COMB,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(ObjComb),
    (ActorFunc)ObjComb_Init,
    (ActorFunc)ObjComb_Destroy,
    (ActorFunc)ObjComb_Update,
    (ActorFunc)ObjComb_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Comb/func_80B91B60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Comb/func_80B91E4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Comb/ObjComb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Comb/ObjComb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Comb/func_80B91FB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Comb/func_80B91FC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Comb/ObjComb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Comb/ObjComb_Draw.s")
