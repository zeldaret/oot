#include "z_en_go.h"

#define FLAGS 0x00000039

#define THIS ((EnGo*)thisx)

void EnGo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGo_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGo_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06004930;
extern UNK_TYPE D_0600BD80;
extern UNK_TYPE D_0600C140;
extern UNK_TYPE D_0600CE80;
extern UNK_TYPE D_0600DE80;
extern UNK_TYPE D_0600FD40;
extern UNK_TYPE D_0600FD50;
extern UNK_TYPE D_0600FEF0;
extern UNK_TYPE D_06010590;

/*
const ActorInit En_Go_InitVars = {
    ACTOR_EN_GO,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_OF1D_MAP,
    sizeof(EnGo),
    (ActorFunc)EnGo_Init,
    (ActorFunc)EnGo_Destroy,
    (ActorFunc)EnGo_Update,
    (ActorFunc)EnGo_Draw,
};

static ColliderCylinderInit D_80A41B00 = {
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
    { 20, 46, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3E570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3E578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3E908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3ED24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3EDE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3EE8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3EFE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F060.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F0E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F15C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F274.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F4BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F594.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F7C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3F908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/EnGo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/EnGo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3FEB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A3FEF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A4008C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A4011C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A4020C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A405CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A406E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A408D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40B1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40B74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40C78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40D5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/EnGo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A40F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A41068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A411C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A413DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/EnGo_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A41604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A416A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Go/func_80A417B4.s")
