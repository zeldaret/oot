#include "z_bg_jya_ironobj.h"

#define FLAGS 0x00000000

void BgJyaIronobj_Init(BgJyaIronobj* this, GlobalContext* globalCtx);
void BgJyaIronobj_Destroy(BgJyaIronobj* this, GlobalContext* globalCtx);
void BgJyaIronobj_Update(BgJyaIronobj* this, GlobalContext* globalCtx);
void BgJyaIronobj_Draw(BgJyaIronobj* this, GlobalContext* globalCtx);

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
