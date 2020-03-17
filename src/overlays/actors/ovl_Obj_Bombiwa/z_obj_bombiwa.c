#include "z_obj_bombiwa.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void ObjBombiwa_Init(ObjBombiwa* this, GlobalContext* globalCtx);
void ObjBombiwa_Destroy(ObjBombiwa* this, GlobalContext* globalCtx);
void ObjBombiwa_Update(ObjBombiwa* this, GlobalContext* globalCtx);
void ObjBombiwa_Draw(ObjBombiwa* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Bombiwa_InitVars =
{
    ACTOR_OBJ_BOMBIWA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_BOMBIWA,
    sizeof(ObjBombiwa),
    (ActorFunc)ObjBombiwa_Init,
    (ActorFunc)ObjBombiwa_Destroy,
    (ActorFunc)ObjBombiwa_Update,
    (ActorFunc)ObjBombiwa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bombiwa/func_80B915F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bombiwa/ObjBombiwa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bombiwa/ObjBombiwa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bombiwa/func_80B91738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bombiwa/ObjBombiwa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Bombiwa/ObjBombiwa_Draw.s")



