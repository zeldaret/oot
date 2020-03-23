#include "z_bg_spot01_objects2.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgSpot01Objects2_Init(BgSpot01Objects2* this, GlobalContext* globalCtx);
void BgSpot01Objects2_Destroy(BgSpot01Objects2* this, GlobalContext* globalCtx);
void BgSpot01Objects2_Update(BgSpot01Objects2* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot01_Objects2_InitVars =
{
    ACTOR_BG_SPOT01_OBJECTS2,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgSpot01Objects2),
    (ActorFunc)BgSpot01Objects2_Init,
    (ActorFunc)BgSpot01Objects2_Destroy,
    (ActorFunc)BgSpot01Objects2_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/BgSpot01Objects2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/BgSpot01Objects2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/func_808AC22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/func_808AC2BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/func_808AC474.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/BgSpot01Objects2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/func_808AC4A4.s")
