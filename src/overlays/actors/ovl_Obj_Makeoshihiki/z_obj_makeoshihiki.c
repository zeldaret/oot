/*
 * File: z_obj_makeoshihiki.c
 * Overlay: ovl_Obj_Makeoshihiki
 * Description: Push Block (Hardcoded)
 */

#include "z_obj_makeoshihiki.h"

#define FLAGS 0x00000020

void ObjMakeoshihiki_Init(ObjMakeoshihiki* this, GlobalContext* globalCtx);
void ObjMakeoshihiki_Draw(ObjMakeoshihiki* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Makeoshihiki_InitVars = {
    ACTOR_OBJ_MAKEOSHIHIKI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(ObjMakeoshihiki),
    (ActorFunc)ObjMakeoshihiki_Init,
    (ActorFunc)Actor_Noop,
    (ActorFunc)Actor_Noop,
    (ActorFunc)ObjMakeoshihiki_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Makeoshihiki/ObjMakeoshihiki_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Makeoshihiki/ObjMakeoshihiki_Draw.s")
