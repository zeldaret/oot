#include "z_bg_spot11_bakudankabe.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void BgSpot11Bakudankabe_Init(BgSpot11Bakudankabe* this, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Destroy(BgSpot11Bakudankabe* this, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Update(BgSpot11Bakudankabe* this, GlobalContext* globalCtx);
void BgSpot11Bakudankabe_Draw(BgSpot11Bakudankabe* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot11_Bakudankabe_InitVars =
{
    ACTOR_BG_SPOT11_BAKUDANKABE,
    ACTORTYPE_BG,
    ROOM,
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
