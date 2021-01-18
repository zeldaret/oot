#include "z_en_dodojr.h"

#define FLAGS 0x00000005

#define THIS ((EnDodojr*)thisx)

void EnDodojr_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDodojr_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDodojr_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDodojr_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_060004A0;
extern UNK_TYPE D_060005F0;
extern UNK_TYPE D_06000724;
extern UNK_TYPE D_06000860;
extern UNK_TYPE D_060009D4;
extern UNK_TYPE D_060020E0;

/*
const ActorInit En_Dodojr_InitVars = {
    ACTOR_EN_DODOJR,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_DODOJR,
    sizeof(EnDodojr),
    (ActorFunc)EnDodojr_Init,
    (ActorFunc)EnDodojr_Destroy,
    (ActorFunc)EnDodojr_Update,
    (ActorFunc)EnDodojr_Draw,
};

static ColliderCylinderInit D_809F7EB0 = {
    {
        COLTYPE_HIT6,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFC5FFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 18, 20, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/EnDodojr_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/EnDodojr_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F64D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6510.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F68B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6BBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6DD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F706C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F709C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F70E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F72A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F73AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F74C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F758C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F768C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F773C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F77AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F784C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F786C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F78EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F799C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7A00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7AB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7B3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7C48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/EnDodojr_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/EnDodojr_Draw.s")
