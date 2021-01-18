/*
 * File: z_en_zl4.c
 * Overlay: ovl_En_Zl4
 * Description: Child Princess Zelda
 */

#include "z_en_zl4.h"

#define FLAGS 0x00000019

#define THIS ((EnZl4*)thisx)

void EnZl4_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_02000104;
extern UNK_TYPE D_02000444;
extern UNK_TYPE D_02003994;
extern UNK_TYPE D_0600E038;
extern UNK_TYPE D_0600F0A4;
extern UNK_TYPE D_0600F894;
extern UNK_TYPE D_06010DF8;
extern UNK_TYPE D_060125E4;
extern UNK_TYPE D_06012E58;
extern UNK_TYPE D_06015F14;
extern UNK_TYPE D_060169B4;
extern UNK_TYPE D_06016D08;
extern UNK_TYPE D_0601805C;
extern UNK_TYPE D_06018898;
extern UNK_TYPE D_0601910C;
extern UNK_TYPE D_0601A2FC;
extern UNK_TYPE D_0601AAE0;
extern UNK_TYPE D_0601B874;
extern UNK_TYPE D_0601BCF0;
extern UNK_TYPE D_0601CE08;

/*
const ActorInit En_Zl4_InitVars = {
    ACTOR_EN_ZL4,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_ZL4,
    sizeof(EnZl4),
    (ActorFunc)EnZl4_Init,
    (ActorFunc)EnZl4_Destroy,
    (ActorFunc)EnZl4_Update,
    (ActorFunc)EnZl4_Draw,
};

static ColliderCylinderInit D_80B5E780 = {
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
    { 10, 44, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B7B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B888.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B9B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BB38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BB78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BBC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BCDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BF90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BFE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C984.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5CF70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5D3CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5D610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5DAD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5DE1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E090.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E4F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Draw.s")
