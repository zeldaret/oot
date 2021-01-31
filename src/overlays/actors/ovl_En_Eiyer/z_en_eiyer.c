#include "z_en_eiyer.h"

#define FLAGS 0x00000005

#define THIS ((EnEiyer*)thisx)

void EnEiyer_Init(Actor* thisx, GlobalContext* globalCtx);
void EnEiyer_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnEiyer_Update(Actor* thisx, GlobalContext* globalCtx);
void EnEiyer_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000288;
extern UNK_TYPE D_060004C4;
extern UNK_TYPE D_06000704;
extern UNK_TYPE D_06000FC0;
extern UNK_TYPE D_060012AC;
extern UNK_TYPE D_06003410;

/*
const ActorInit En_Eiyer_InitVars = {
    ACTOR_EN_EIYER,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_EI,
    sizeof(EnEiyer),
    (ActorFunc)EnEiyer_Init,
    (ActorFunc)EnEiyer_Destroy,
    (ActorFunc)EnEiyer_Update,
    (ActorFunc)EnEiyer_Draw,
};

static ColliderCylinderInit D_80A01970 = {
    {
        COLTYPE_HIT0,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x04, 0x08 },
        { 0x00000019, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_HARD,
        BUMP_ON,
        OCELEM_ON,
    },
    { 27, 17, -10, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/EnEiyer_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/EnEiyer_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A001A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A003B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A003DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A004BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00534.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00588.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00600.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A006B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A0076C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00794.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A008A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A008D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00B18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A00F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A01010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A01104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A01240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A012F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A01374.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A0142C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/EnEiyer_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/func_80A0178C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Eiyer/EnEiyer_Draw.s")
