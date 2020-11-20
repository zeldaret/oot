#include "z_en_daiku.h"

#define FLAGS 0x00000019

#define THIS ((EnDaiku*)thisx)

void EnDaiku_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDaiku_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDaiku_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDaiku_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Daiku_InitVars = {
    ACTOR_EN_DAIKU,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DAIKU,
    sizeof(EnDaiku),
    (ActorFunc)EnDaiku_Init,
    (ActorFunc)EnDaiku_Destroy,
    (ActorFunc)EnDaiku_Update,
    (ActorFunc)EnDaiku_Draw,
};

static ColliderCylinderInit D_809E4060 = {
    { COLTYPE_NONE, AT_OFF, AC_OFF, OC_ON | OC_ALL, OT_TYPE2, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, TOUCH_OFF, BUMP_OFF, OCELEM_ON },
    { 18, 66, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E2B30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/EnDaiku_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/EnDaiku_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E2F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E336C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E349C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E36A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E389C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3954.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3A8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/EnDaiku_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/EnDaiku_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3EF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3F7C.s")
