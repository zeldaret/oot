#include "z_obj_oshihiki.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void ObjOshihiki_Init(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_Destroy(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_Update(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_Draw(ObjOshihiki* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Oshihiki_InitVars = {
    ACTOR_OBJ_OSHIHIKI,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(ObjOshihiki),
    (ActorFunc)ObjOshihiki_Init,
    (ActorFunc)ObjOshihiki_Destroy,
    (ActorFunc)ObjOshihiki_Update,
    (ActorFunc)ObjOshihiki_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B208.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B2D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B38C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B4BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B584.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B5F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B62C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B678.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B68C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/ObjOshihiki_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/ObjOshihiki_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9B8C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9BA28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9BB70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9BBC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9BC20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9BCB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9BF08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9BFF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9C02C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9C110.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9C14C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9C340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9C368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9C584.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/func_80B9C5DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/ObjOshihiki_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Oshihiki/ObjOshihiki_Draw.s")
