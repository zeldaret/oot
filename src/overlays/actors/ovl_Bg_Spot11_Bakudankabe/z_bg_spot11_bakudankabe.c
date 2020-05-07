/*
 * File: z_bg_spot11_bakudankabe.c
 * Overlay: ovl_Bg_Spot11_Bakudankabe
 * Description: Destructible Wall (Desert Colossus)
 */

#include "z_bg_spot11_bakudankabe.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot11Bakudankabe*)thisx)

void BgSpot11Bakudankabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot11_Bakudankabe_InitVars = {
    ACTOR_BG_SPOT11_BAKUDANKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT11_OBJ,
    sizeof(BgSpot11Bakudankabe),
    (ActorFunc)BgSpot11Bakudankabe_Init,
    (ActorFunc)BgSpot11Bakudankabe_Destroy,
    (ActorFunc)BgSpot11Bakudankabe_Update,
    (ActorFunc)BgSpot11Bakudankabe_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/func_808B2180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/func_808B2218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/BgSpot11Bakudankabe_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/BgSpot11Bakudankabe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/BgSpot11Bakudankabe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot11_Bakudankabe/BgSpot11Bakudankabe_Draw.s")
