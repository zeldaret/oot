/*
 * File: z_obj_hsblock.c
 * Overlay: ovl_Obj_Hsblock
 * Description: Stone Hookshot Target
 */

#include "z_obj_hsblock.h"

#define FLAGS 0x00000000

#define THIS ((ObjHsblock*)thisx)

void ObjHsblock_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjHsblock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjHsblock_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjHsblock_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Obj_Hsblock_InitVars = {
    ACTOR_OBJ_HSBLOCK,
    ACTORTYPE_BG,
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
