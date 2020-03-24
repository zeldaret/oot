#include "z_bg_spot09_obj.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgSpot09Obj_Init(BgSpot09Obj* this, GlobalContext* globalCtx);
void BgSpot09Obj_Destroy(BgSpot09Obj* this, GlobalContext* globalCtx);
void BgSpot09Obj_Update(BgSpot09Obj* this, GlobalContext* globalCtx);
void BgSpot09Obj_Draw(BgSpot09Obj* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot09_Obj_InitVars = {
    ACTOR_BG_SPOT09_OBJ,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SPOT09_OBJ,
    sizeof(BgSpot09Obj),
    (ActorFunc)BgSpot09Obj_Init,
    (ActorFunc)BgSpot09Obj_Destroy,
    (ActorFunc)BgSpot09Obj_Update,
    (ActorFunc)BgSpot09Obj_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/func_808B1AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/func_808B1BA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/func_808B1BEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/func_808B1C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/func_808B1CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/func_808B1D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/func_808B1D44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/BgSpot09Obj_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/BgSpot09Obj_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/BgSpot09Obj_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/BgSpot09Obj_Draw.s")
