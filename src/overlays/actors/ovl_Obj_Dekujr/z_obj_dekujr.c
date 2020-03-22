#include "z_obj_dekujr.h"

#define ROOM 0x00
#define FLAGS 0x00000009

void ObjDekujr_Init(ObjDekujr* this, GlobalContext* globalCtx);
void ObjDekujr_Destroy(ObjDekujr* this, GlobalContext* globalCtx);
void ObjDekujr_Update(ObjDekujr* this, GlobalContext* globalCtx);
void ObjDekujr_Draw(ObjDekujr* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Dekujr_InitVars =
{
    ACTOR_OBJ_DEKUJR,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_DEKUJR,
    sizeof(ObjDekujr),
    (ActorFunc)ObjDekujr_Init,
    (ActorFunc)ObjDekujr_Destroy,
    (ActorFunc)ObjDekujr_Update,
    (ActorFunc)ObjDekujr_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/ObjDekujr_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/ObjDekujr_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/func_80B92538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/func_80B92578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/func_80B925B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/ObjDekujr_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Dekujr/ObjDekujr_Draw.s")
