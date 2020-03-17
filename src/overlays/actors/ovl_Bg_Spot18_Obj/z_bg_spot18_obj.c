#include "z_bg_spot18_obj.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgSpot18Obj_Init(BgSpot18Obj* this, GlobalContext* globalCtx);
void BgSpot18Obj_Destroy(BgSpot18Obj* this, GlobalContext* globalCtx);
void BgSpot18Obj_Update(BgSpot18Obj* this, GlobalContext* globalCtx);
void BgSpot18Obj_Draw(BgSpot18Obj* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot18_Obj_InitVars =
{
    ACTOR_BG_SPOT18_OBJ,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SPOT18_OBJ,
    sizeof(BgSpot18Obj),
    (ActorFunc)BgSpot18Obj_Init,
    (ActorFunc)BgSpot18Obj_Destroy,
    (ActorFunc)BgSpot18Obj_Update,
    (ActorFunc)BgSpot18Obj_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8910.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8A5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8A98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8B08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8BB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8C90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8CC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/BgSpot18Obj_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/BgSpot18Obj_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8DC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8DD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8E20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8E64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B8F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B9030.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/func_808B9040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/BgSpot18Obj_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot18_Obj/BgSpot18Obj_Draw.s")
