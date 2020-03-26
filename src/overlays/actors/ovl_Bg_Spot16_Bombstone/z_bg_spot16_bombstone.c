#include "z_bg_spot16_bombstone.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgSpot16Bombstone_Init(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void BgSpot16Bombstone_Destroy(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void BgSpot16Bombstone_Update(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void BgSpot16Bombstone_Draw(BgSpot16Bombstone* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot16_Bombstone_InitVars = {
    ACTOR_BG_SPOT16_BOMBSTONE,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_SPOT16_OBJ,
    sizeof(BgSpot16Bombstone),
    (ActorFunc)BgSpot16Bombstone_Init,
    (ActorFunc)BgSpot16Bombstone_Destroy,
    (ActorFunc)BgSpot16Bombstone_Update,
    (ActorFunc)BgSpot16Bombstone_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4C30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4D04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4D9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B4E58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B51A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B53A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B561C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B56BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B57E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5A78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5A94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5AF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/func_808B5B6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot16_Bombstone/BgSpot16Bombstone_Draw.s")
