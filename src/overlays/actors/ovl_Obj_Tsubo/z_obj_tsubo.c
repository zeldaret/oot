#include "z_obj_tsubo.h"

#define ROOM 0x00
#define FLAGS 0x00800010

void ObjTsubo_Init(ObjTsubo* this, GlobalContext* globalCtx);
void ObjTsubo_Destroy(ObjTsubo* this, GlobalContext* globalCtx);
void ObjTsubo_Update(ObjTsubo* this, GlobalContext* globalCtx);

/*
const ActorInit Obj_Tsubo_InitVars = {
    ACTOR_OBJ_TSUBO,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjTsubo),
    (ActorFunc)ObjTsubo_Init,
    (ActorFunc)ObjTsubo_Destroy,
    (ActorFunc)ObjTsubo_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA0D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA0DC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA0DF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA0E98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/ObjTsubo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/ObjTsubo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA100C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA1294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA152C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA153C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA15AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA15BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA17C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA180C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA188C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA1958.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/ObjTsubo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Tsubo/func_80BA1B0C.s")
