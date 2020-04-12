#include "z_oceff_spot.h"

#define FLAGS 0x02000010

void OceffSpot_Init(OceffSpot* this, GlobalContext* globalCtx);
void OceffSpot_Destroy(OceffSpot* this, GlobalContext* globalCtx);
void OceffSpot_Update(OceffSpot* this, GlobalContext* globalCtx);
void OceffSpot_Draw(OceffSpot* this, GlobalContext* globalCtx);

/*
const ActorInit Oceff_Spot_InitVars = {
    ACTOR_OCEFF_SPOT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffSpot),
    (ActorFunc)OceffSpot_Init,
    (ActorFunc)OceffSpot_Destroy,
    (ActorFunc)OceffSpot_Update,
    (ActorFunc)OceffSpot_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Spot/func_80BA6070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Spot/OceffSpot_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Spot/OceffSpot_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Spot/func_80BA6260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Spot/func_80BA6370.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Spot/func_80BA63AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Spot/OceffSpot_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Oceff_Spot/OceffSpot_Draw.s")
