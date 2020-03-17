#include "z_obj_hana.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void ObjHana_Init(ObjHana* this, GlobalContext* globalCtx);
void ObjHana_Destroy(ObjHana* this, GlobalContext* globalCtx);
void ObjHana_Update(ObjHana* this, GlobalContext* globalCtx);
void ObjHana_Draw(ObjHana* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Hana_InitVars =
{
    ACTOR_OBJ_HANA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(ObjHana),
    (ActorFunc)ObjHana_Init,
    (ActorFunc)ObjHana_Destroy,
    (ActorFunc)ObjHana_Update,
    (ActorFunc)ObjHana_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hana/ObjHana_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hana/ObjHana_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hana/ObjHana_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hana/ObjHana_Draw.s")



