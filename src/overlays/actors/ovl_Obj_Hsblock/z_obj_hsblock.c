#include "z_obj_hsblock.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void ObjHsblock_Init(ObjHsblock* this, GlobalContext* globalCtx);
void ObjHsblock_Destroy(ObjHsblock* this, GlobalContext* globalCtx);
void ObjHsblock_Update(ObjHsblock* this, GlobalContext* globalCtx);
void ObjHsblock_Draw(ObjHsblock* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Hsblock_InitVars =
{
    ACTOR_OBJ_HSBLOCK,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_D_HSBLOCK,
    sizeof(ObjHsblock),
    (ActorFunc)ObjHsblock_Init,
    (ActorFunc)ObjHsblock_Destroy,
    (ActorFunc)ObjHsblock_Update,
    (ActorFunc)ObjHsblock_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/func_80B93B60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/func_80B93B68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/func_80B93BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/ObjHsblock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/ObjHsblock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/func_80B93D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/func_80B93DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/func_80B93DF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/func_80B93E38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/func_80B93E5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/ObjHsblock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Hsblock/ObjHsblock_Draw.s")
