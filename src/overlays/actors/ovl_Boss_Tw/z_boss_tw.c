#include "z_boss_tw.h"

#define FLAGS 0x00000035

#define THIS ((BossTw*)thisx)

void BossTw_Init(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Update(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Boss_Tw_InitVars = {
    ACTOR_BOSS_TW,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_TW,
    sizeof(BossTw),
    (ActorFunc)BossTw_Init,
    (ActorFunc)BossTw_Destroy,
    (ActorFunc)BossTw_Update,
    (ActorFunc)BossTw_Draw,
};

static ColliderCylinderInit D_8094A7E8 = {
    { COLTYPE_NONE, AT_ALL | AT_ON, AC_PLAYER | AC_ON, OC_PLAYER | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x30 }, { 0x00100000, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_ON,
OCELEM_ON }, { 25, 35, -17, { 0, 0, 0 } },
};

static ColliderCylinderInit D_8094A814 = {
    { COLTYPE_HIT3, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_PLAYER | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_ON,
OCELEM_ON }, { 45, 120, -30, { 0, 0, 0 } },
};

static ColliderCylinderInit D_8094A840 = {
    { COLTYPE_HIT3, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_HOOKABLE
| BUMP_ON, OCELEM_ON }, { 45, 120, -30, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80938CD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80938DC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80938EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80938FC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939250.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809394FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939F40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80939F88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A0A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A2AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A5C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093A940.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093AB30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093ADB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093AED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093B1AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C1C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C2C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C58C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C5F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C684.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C7E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C8F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093C910.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D3D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D54C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D580.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D58C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093D5C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093EE10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F1C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F9E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80940D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809416D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80941788.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80941BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80942180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809426F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80942C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943028.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80943F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809447BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80944C50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80945084.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809453EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80945D14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094687C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80946B00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80946C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80947240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809477E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80948528.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80948544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80948668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809495A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809496D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809499AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949BFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949CE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80949E10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A0C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A12C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A1C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A660.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A6D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8094A740.s")
