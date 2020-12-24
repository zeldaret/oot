#include "z_bg_spot02_objects.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot02Objects*)thisx)

void BgSpot02Objects_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot02Objects_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot02Objects_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot02Objects_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_060013F0;
extern UNK_TYPE D_060126F0;
extern UNK_TYPE D_060128D8;
extern UNK_TYPE D_06012BA4;
extern UNK_TYPE D_06012D30;
extern UNK_TYPE D_060133EC;

/*
const ActorInit Bg_Spot02_Objects_InitVars = {
    ACTOR_BG_SPOT02_OBJECTS,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT02_OBJECTS,
    sizeof(BgSpot02Objects),
    (ActorFunc)BgSpot02Objects_Init,
    (ActorFunc)BgSpot02Objects_Destroy,
    (ActorFunc)BgSpot02Objects_Update,
    (ActorFunc)BgSpot02Objects_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/BgSpot02Objects_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/BgSpot02Objects_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808AC8FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808AC908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808ACA08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808ACAFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808ACB58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/BgSpot02Objects_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/BgSpot02Objects_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808ACC34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808ACCB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808AD3D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot02_Objects/func_808AD450.s")
