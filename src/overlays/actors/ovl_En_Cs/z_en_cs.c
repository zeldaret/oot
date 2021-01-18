#include "z_en_cs.h"

#define FLAGS 0x00000009

#define THIS ((EnCs*)thisx)

void EnCs_Init(Actor* thisx, GlobalContext* globalCtx);
void EnCs_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnCs_Update(Actor* thisx, GlobalContext* globalCtx);
void EnCs_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06008540;
extern UNK_TYPE D_0602AF70;

/*
const ActorInit En_Cs_InitVars = {
    ACTOR_EN_CS,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_CS,
    sizeof(EnCs),
    (ActorFunc)EnCs_Init,
    (ActorFunc)EnCs_Destroy,
    (ActorFunc)EnCs_Update,
    (ActorFunc)EnCs_Draw,
};

static ColliderCylinderInit D_809E28C0 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 18, 63, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E18B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/EnCs_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/EnCs_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1D38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1E80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1E90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E1F20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E2134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E22D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E2360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/EnCs_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/EnCs_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E2784.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Cs/func_809E2814.s")
