#include "z_en_ge2.h"

#define FLAGS 0x00000019

#define THIS ((EnGe2*)thisx)

void EnGe2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGe2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGe2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGe2_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ge2_InitVars = {
    ACTOR_EN_GE2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GLA,
    sizeof(EnGe2),
    (ActorFunc)EnGe2_Init,
    (ActorFunc)EnGe2_Destroy,
    (ActorFunc)EnGe2_Update,
    (ActorFunc)EnGe2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A32BD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/EnGe2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/EnGe2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A32ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A32F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A330A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A330CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A331A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A332D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A3334C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A3354C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33600.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A336C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A3381C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A339EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33A6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33BE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33C8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A33DE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/EnGe2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A3402C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A3415C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/func_80A341A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge2/EnGe2_Draw.s")
