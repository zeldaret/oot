#include "z_bg_spot08_bakudankabe.h"

#define ROOM 0x00
#define FLAGS 0x00400000

void BgSpot08Bakudankabe_Init(BgSpot08Bakudankabe* this, GlobalContext* globalCtx);
void BgSpot08Bakudankabe_Destroy(BgSpot08Bakudankabe* this, GlobalContext* globalCtx);
void BgSpot08Bakudankabe_Update(BgSpot08Bakudankabe* this, GlobalContext* globalCtx);
void BgSpot08Bakudankabe_Draw(BgSpot08Bakudankabe* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot08_Bakudankabe_InitVars = {
    ACTOR_BG_SPOT08_BAKUDANKABE,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SPOT08_OBJ,
    sizeof(BgSpot08Bakudankabe),
    (ActorFunc)BgSpot08Bakudankabe_Init,
    (ActorFunc)BgSpot08Bakudankabe_Destroy,
    (ActorFunc)BgSpot08Bakudankabe_Update,
    (ActorFunc)BgSpot08Bakudankabe_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/func_808B02D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/func_808B0324.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/BgSpot08Bakudankabe_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/BgSpot08Bakudankabe_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/BgSpot08Bakudankabe_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Bakudankabe/BgSpot08Bakudankabe_Draw.s")
