/*
 * File: z_obj_hana.c
 * Overlay: Obj_Hana
 * Description: Grave Flower
 */

#include "z_obj_hana.h"

#define FLAGS 0x00000000

#define THIS ((ObjHana*)thisx)

void ObjHana_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjHana_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjHana_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjHana_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Obj_Hana_InitVars = {
    ACTOR_OBJ_HANA,
    ACTORTYPE_PROP,
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
