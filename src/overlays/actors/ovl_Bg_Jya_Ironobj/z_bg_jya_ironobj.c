#include "z_bg_jya_ironobj.h"

#define FLAGS 0x00000000

#define THIS ((BgJyaIronobj*)thisx)

void BgJyaIronobj_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaIronobj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaIronobj_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaIronobj_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Jya_Ironobj_InitVars = {
    ACTOR_BG_JYA_IRONOBJ,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_JYA_IRON,
    sizeof(BgJyaIronobj),
    (ActorFunc)BgJyaIronobj_Init,
    (ActorFunc)BgJyaIronobj_Destroy,
    (ActorFunc)BgJyaIronobj_Update,
    (ActorFunc)BgJyaIronobj_Draw,
};

static ColliderCylinderInit D_808994AC = {
    { COLTYPE_UNK10, AT_OFF, AC_ENEMY | AC_ON, OC_OFF, OT_TYPE2, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
    { 30, 150, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/func_808988A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/func_80898920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/func_80898DB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/BgJyaIronobj_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/BgJyaIronobj_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/func_808992D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/func_808992E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/BgJyaIronobj_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/BgJyaIronobj_Draw.s")
