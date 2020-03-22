#include "z_obj_warp2block.h"

#define ROOM 0x00
#define FLAGS 0x0A000011

void ObjWarp2block_Init(ObjWarp2block* this, GlobalContext* globalCtx);
void ObjWarp2block_Destroy(ObjWarp2block* this, GlobalContext* globalCtx);
void ObjWarp2block_Update(ObjWarp2block* this, GlobalContext* globalCtx);
void ObjWarp2block_Draw(ObjWarp2block* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Warp2block_InitVars =
{
    ACTOR_OBJ_WARP2BLOCK,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_TIMEBLOCK,
    sizeof(ObjWarp2block),
    (ActorFunc)ObjWarp2block_Init,
    (ActorFunc)ObjWarp2block_Destroy,
    (ActorFunc)ObjWarp2block_Update,
    (ActorFunc)ObjWarp2block_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA1DF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA1ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA2048.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA2218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA228C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA2304.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/ObjWarp2block_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/ObjWarp2block_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA24C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA24DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA24E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA24F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA2600.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/func_80BA2610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/ObjWarp2block_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Warp2block/ObjWarp2block_Draw.s")
