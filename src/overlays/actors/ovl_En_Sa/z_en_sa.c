#include "z_en_sa.h"

#define FLAGS 0x02000019

#define THIS ((EnSa*)thisx)

void EnSa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSa_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_02005730;
extern UNK_TYPE D_02010E20;
extern UNK_TYPE D_06001D50;
extern UNK_TYPE D_06007B80;
extern UNK_TYPE D_0600B1A0;
extern UNK_TYPE D_0600BAEC;
extern UNK_TYPE D_0600C500;
extern UNK_TYPE D_06012100;

/*
const ActorInit En_Sa_InitVars = {
    ACTOR_EN_SA,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_SA,
    sizeof(EnSa),
    (ActorFunc)EnSa_Init,
    (ActorFunc)EnSa_Destroy,
    (ActorFunc)EnSa_Update,
    (ActorFunc)EnSa_Draw,
};

static ColliderCylinderInit D_80AF7260 = {
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
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5560.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF55E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF56F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF57D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5894.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF58B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF594C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF59E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5A74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5B10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5CE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5D8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF5F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF603C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF609C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6170.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/EnSa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/EnSa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6448.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF67D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF683C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF68E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6B20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/EnSa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6D6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/func_80AF6F0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sa/EnSa_Draw.s")
