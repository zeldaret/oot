#include "z_en_gb.h"

#define FLAGS 0x00000009

#define THIS ((EnGb*)thisx)

void EnGb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGb_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_0600049C;
extern UNK_TYPE D_0600C0B0;
extern UNK_TYPE D_0600C220;
extern UNK_TYPE D_0600C2D0;
extern UNK_TYPE D_0600C8EC;

/*
const ActorInit En_Gb_InitVars = {
    ACTOR_EN_GB,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_PS,
    sizeof(EnGb),
    (ActorFunc)EnGb_Init,
    (ActorFunc)EnGb_Destroy,
    (ActorFunc)EnGb_Update,
    (ActorFunc)EnGb_Draw,
};

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
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
    { 40, 75, 0, { 0, 0, 0 } },
};

static ColliderCylinderInitType1 sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
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
    { 4, 20, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F7C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F83C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F94C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F9C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FA50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FB40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FBB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FC0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FC70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FFFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A30350.s")
