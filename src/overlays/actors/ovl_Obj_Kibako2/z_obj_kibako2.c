#include "z_obj_kibako2.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void ObjKibako2_Init(ObjKibako2* this, GlobalContext* globalCtx);
void ObjKibako2_Destroy(ObjKibako2* this, GlobalContext* globalCtx);
void ObjKibako2_Update(ObjKibako2* this, GlobalContext* globalCtx);
void ObjKibako2_Draw(ObjKibako2* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Kibako2_InitVars =
{
    ACTOR_OBJ_KIBAKO2,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_KIBAKO2,
    sizeof(ObjKibako2),
    (ActorFunc)ObjKibako2_Init,
    (ActorFunc)ObjKibako2_Destroy,
    (ActorFunc)ObjKibako2_Update,
    (ActorFunc)ObjKibako2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B959D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B95A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B95CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/ObjKibako2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/ObjKibako2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B95DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/func_80B95ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/ObjKibako2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Kibako2/ObjKibako2_Draw.s")
