/*
 * File: z_obj_syokudai.c
 * Overlay: ovl_Obj_Syokudai
 * Description: Torch
 */

#include "z_obj_syokudai.h"

#define FLAGS 0x00000410

void ObjSyokudai_Init(ObjSyokudai* this, GlobalContext* globalCtx);
void ObjSyokudai_Destroy(ObjSyokudai* this, GlobalContext* globalCtx);
void ObjSyokudai_Update(ObjSyokudai* this, GlobalContext* globalCtx);
void ObjSyokudai_Draw(ObjSyokudai* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Syokudai_InitVars = {
    ACTOR_OBJ_SYOKUDAI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SYOKUDAI,
    sizeof(ObjSyokudai),
    (ActorFunc)ObjSyokudai_Init,
    (ActorFunc)ObjSyokudai_Destroy,
    (ActorFunc)ObjSyokudai_Update,
    (ActorFunc)ObjSyokudai_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Syokudai/ObjSyokudai_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Syokudai/ObjSyokudai_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Syokudai/ObjSyokudai_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Syokudai/ObjSyokudai_Draw.s")
