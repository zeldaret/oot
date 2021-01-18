#include "z_en_ge1.h"

#define FLAGS 0x00000009

#define THIS ((EnGe1*)thisx)

void EnGe1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGe1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGe1_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGe1_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000228;
extern UNK_TYPE D_06000330;
extern UNK_TYPE D_0600A048;
extern UNK_TYPE D_0600A498;

/*
const ActorInit En_Ge1_InitVars = {
    ACTOR_EN_GE1,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_GE1,
    sizeof(EnGe1),
    (ActorFunc)EnGe1_Init,
    (ActorFunc)EnGe1_Destroy,
    (ActorFunc)EnGe1_Update,
    (ActorFunc)EnGe1_Draw,
};

static ColliderCylinderInit D_80A32770 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000702, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 20, 40, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30EE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30F48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31000.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31094.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A310C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A3118C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A311E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31234.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A312E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A313A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A313E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A314D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A3157C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A315F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A316F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A317C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A3183C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31880.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A3196C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31A5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31B20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31BE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31D88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31F9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A32078.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A32190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A323B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A323EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A32444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A32598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Draw.s")
