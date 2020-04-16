#include "z_en_fish.h"

#define FLAGS 0x00000000

void EnFish_Init(EnFish* this, GlobalContext* globalCtx);
void EnFish_Destroy(EnFish* this, GlobalContext* globalCtx);
void EnFish_Update(EnFish* this, GlobalContext* globalCtx);
void EnFish_Draw(EnFish* this, GlobalContext* globalCtx);

/*
const ActorInit En_Fish_InitVars = {
    ACTOR_EN_FISH,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnFish),
    (ActorFunc)EnFish_Init,
    (ActorFunc)EnFish_Destroy,
    (ActorFunc)EnFish_Update,
    (ActorFunc)EnFish_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A152AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15374.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A153AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/EnFish_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/EnFish_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A155D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15774.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A157A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A157FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A158EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15944.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15F24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A15F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A160BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A16200.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A163DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A16450.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A16618.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A16670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A16898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A169C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A16A64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A16C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func_80A16DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/EnFish_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/EnFish_Draw.s")
