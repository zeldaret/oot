#include "z_bg_spot01_idohashira.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgSpot01Idohashira_Init(BgSpot01Idohashira* this, GlobalContext* globalCtx);
void BgSpot01Idohashira_Destroy(BgSpot01Idohashira* this, GlobalContext* globalCtx);
void BgSpot01Idohashira_Update(BgSpot01Idohashira* this, GlobalContext* globalCtx);
void BgSpot01Idohashira_Draw(BgSpot01Idohashira* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot01_Idohashira_InitVars =
{
    ACTOR_BG_SPOT01_IDOHASHIRA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_SPOT01_OBJECTS,
    sizeof(BgSpot01Idohashira),
    (ActorFunc)BgSpot01Idohashira_Init,
    (ActorFunc)BgSpot01Idohashira_Destroy,
    (ActorFunc)BgSpot01Idohashira_Update,
    (ActorFunc)BgSpot01Idohashira_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AACE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AAD04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AAD3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AAE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AAF34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/BgSpot01Idohashira_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB124.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB18C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB1DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB29C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB3E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB3F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB414.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB504.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB510.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/BgSpot01Idohashira_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/BgSpot01Idohashira_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/func_808AB700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Idohashira/BgSpot01Idohashira_Draw.s")
