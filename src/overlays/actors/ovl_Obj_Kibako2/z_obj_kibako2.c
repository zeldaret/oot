/*
 * File: z_obj_kibako2.c
 * Overlay: ovl_Obj_Kibako2
 * Description: Large crate
 */

#include "z_obj_kibako2.h"

#define FLAGS 0x00000000

#define THIS ((ObjKibako2*)thisx)

void ObjKibako2_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjKibako2_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000960;
extern UNK_TYPE D_06000B70;
extern UNK_TYPE D_06001000;

/*
const ActorInit Obj_Kibako2_InitVars = {
    ACTOR_OBJ_KIBAKO2,
    ACTORTYPE_BG,
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
