#include "z_obj_timeblock.h"

#define ROOM 0x00
#define FLAGS 0x0A000011

void ObjTimeblock_Init(ObjTimeblock* this, GlobalContext* globalCtx);
void ObjTimeblock_Destroy(ObjTimeblock* this, GlobalContext* globalCtx);
void ObjTimeblock_Update(ObjTimeblock* this, GlobalContext* globalCtx);
void ObjTimeblock_Draw(ObjTimeblock* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Timeblock_InitVars = {
    ACTOR_OBJ_TIMEBLOCK,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_TIMEBLOCK,
    sizeof(ObjTimeblock),
    (ActorFunc)ObjTimeblock_Init,
    (ActorFunc)ObjTimeblock_Destroy,
    (ActorFunc)ObjTimeblock_Update,
    (ActorFunc)ObjTimeblock_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80B9FFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA00CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA032C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA040C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA04F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA06AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0758.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA083C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA084C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Draw.s")
