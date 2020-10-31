#include "z_boss_ganondrof.h"

#define FLAGS 0x00000035

#define THIS ((BossGanondrof*)thisx)

void BossGanondrof_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGanondrof_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossGanondrof_Update(Actor* thisx, GlobalContext* globalCtx);
void BossGanondrof_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Boss_Ganondrof_InitVars = {
    ACTOR_BOSS_GANONDROF,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GND,
    sizeof(BossGanondrof),
    (ActorFunc)BossGanondrof_Init,
    (ActorFunc)BossGanondrof_Destroy,
    (ActorFunc)BossGanondrof_Update,
    (ActorFunc)BossGanondrof_Draw,
};

static ColliderCylinderInit D_80914CD0 = {
    { COLTYPE_UNK3, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFE, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_HOOKABLE
| BUMP_ON, OCELEM_ON }, { 30, 90, -50, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80914CFC = {
    { COLTYPE_UNK3, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_ON,
OCELEM_ON }, { 20, 30, -20, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80910640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80910680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809106C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809106F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80910738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80910784.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80910A34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/BossGanondrof_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/BossGanondrof_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80910D80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80910DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80911294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809112D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809114E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_8091156C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80911CB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80911DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80912020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809120BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809121E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809122A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809123D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80912448.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80912524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80912594.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80912C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80912D2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80913C54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/BossGanondrof_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809142E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809146DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809147A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80914818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/BossGanondrof_Draw.s")
