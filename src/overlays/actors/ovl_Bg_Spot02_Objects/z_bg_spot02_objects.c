#include "z_bg_spot02_objects.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void BgSpot02Objects_Init(BgSpot02Objects* this, GlobalContext* globalCtx);
void BgSpot02Objects_Destroy(BgSpot02Objects* this, GlobalContext* globalCtx);
void BgSpot02Objects_Update(BgSpot02Objects* this, GlobalContext* globalCtx);
void BgSpot02Objects_Draw(BgSpot02Objects* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Spot02_Objects_InitVars =
{
    ACTOR_BG_SPOT02_OBJECTS,
    ACTORTYPE_BG,
    ROOM,
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
