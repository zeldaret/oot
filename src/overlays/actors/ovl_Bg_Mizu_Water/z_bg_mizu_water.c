#include "z_bg_mizu_water.h"

#define FLAGS 0x00000030

void BgMizuWater_Init(BgMizuWater* this, GlobalContext* globalCtx);
void BgMizuWater_Destroy(BgMizuWater* this, GlobalContext* globalCtx);
void BgMizuWater_Update(BgMizuWater* this, GlobalContext* globalCtx);
void BgMizuWater_Draw(BgMizuWater* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Mizu_Water_InitVars = {
    ACTOR_BG_MIZU_WATER,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MIZU_OBJECTS,
    sizeof(BgMizuWater),
    (ActorFunc)BgMizuWater_Init,
    (ActorFunc)BgMizuWater_Destroy,
    (ActorFunc)BgMizuWater_Update,
    (ActorFunc)BgMizuWater_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Water/func_8089F8B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Water/func_8089F9D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Water/BgMizuWater_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Water/BgMizuWater_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Water/func_8089FCF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Water/func_8089FEC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Water/BgMizuWater_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mizu_Water/BgMizuWater_Draw.s")
