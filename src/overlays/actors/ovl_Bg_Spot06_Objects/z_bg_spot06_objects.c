#include "z_bg_spot06_objects.h"

#define FLAGS 0x00000200

#define THIS ((BgSpot06Objects*)thisx)

void BgSpot06Objects_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot06Objects_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot06Objects_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot06Objects_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot06_Objects_InitVars = {
    ACTOR_BG_SPOT06_OBJECTS,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT06_OBJECTS,
    sizeof(BgSpot06Objects),
    (ActorFunc)BgSpot06Objects_Init,
    (ActorFunc)BgSpot06Objects_Destroy,
    (ActorFunc)BgSpot06Objects_Update,
    (ActorFunc)BgSpot06Objects_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/BgSpot06Objects_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/BgSpot06Objects_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEBC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AECB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AED48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AED7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEE00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEE0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEEFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF1D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF450.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/BgSpot06Objects_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/BgSpot06Objects_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF7FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF824.s")
