#include "z_bg_spot16_doughnut.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot16Doughnut*)thisx)

void BgSpot16Doughnut_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Doughnut_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Doughnut_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Doughnut_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot16_Doughnut_InitVars = {
    ACTOR_BG_SPOT16_DOUGHNUT,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_EFC_DOUGHNUT,
    sizeof(BgSpot16Doughnut),
    (ActorFunc)BgSpot16Doughnut_Init,
    (ActorFunc)BgSpot16Doughnut_Destroy,
    (ActorFunc)BgSpot16Doughnut_Update,
    (ActorFunc)BgSpot16Doughnut_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Doughnut/BgSpot16Doughnut_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Doughnut/BgSpot16Doughnut_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Doughnut/BgSpot16Doughnut_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Doughnut/func_808B6680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Doughnut/BgSpot16Doughnut_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Doughnut/func_808B68D8.s")
