#include "z_bg_spot17_bakudankabe.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void BgSpot17Bakudankabe_Init(BgSpot17Bakudankabe* this, GlobalContext* globalCtx);
void BgSpot17Bakudankabe_Destroy(BgSpot17Bakudankabe* this, GlobalContext* globalCtx);
void BgSpot17Bakudankabe_Update(BgSpot17Bakudankabe* this, GlobalContext* globalCtx);
void BgSpot17Bakudankabe_Draw(BgSpot17Bakudankabe* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot17_Bakudankabe_InitVars =
{
    ACTOR_BG_SPOT17_BAKUDANKABE,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SPOT17_OBJ,
    sizeof(BgSpot17Bakudankabe),
    (ActorFunc)BgSpot17Bakudankabe_Init,
    (ActorFunc)BgSpot17Bakudankabe_Destroy,
    (ActorFunc)BgSpot17Bakudankabe_Update,
    (ActorFunc)BgSpot17Bakudankabe_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Bakudankabe/func_808B6BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Bakudankabe/BgSpot17Bakudankabe_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Bakudankabe/BgSpot17Bakudankabe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Bakudankabe/BgSpot17Bakudankabe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot17_Bakudankabe/BgSpot17Bakudankabe_Draw.s")
