#include "z_en_mu.h"

#define FLAGS 0x00000009

#define THIS ((EnMu*)thisx)

void EnMu_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMu_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMu_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Mu_InitVars = {
    ACTOR_EN_MU,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MU,
    sizeof(EnMu),
    (ActorFunc)EnMu_Init,
    (ActorFunc)EnMu_Destroy,
    (ActorFunc)EnMu_Update,
    (ActorFunc)EnMu_Draw,
};

static ColliderCylinderInit D_80AB0BD0 = {
    { COLTYPE_NONE, AT_OFF, AC_OFF, OC_ON | OC_ALL, OT_TYPE2, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, TOUCH_OFF, BUMP_OFF, OCELEM_ON },
    { 100, 70, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0428.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0584.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB05C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/EnMu_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/EnMu_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0724.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/EnMu_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB08A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB0994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/func_80AB09A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mu/EnMu_Draw.s")
