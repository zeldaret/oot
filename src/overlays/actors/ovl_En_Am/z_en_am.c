/*
 * File: z_en_am.c
 * Overlay: ovl_En_Am
 * Description: Armos Statue
 */

#include "z_en_am.h"

#define FLAGS 0x04000015

#define THIS ((EnAm*)thisx)

void EnAm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000118;
extern UNK_TYPE D_06000238;
extern UNK_TYPE D_0600033C;
extern UNK_TYPE D_06005948;
extern UNK_TYPE D_06005B3C;

/*
const ActorInit En_Am_InitVars = {
    ACTOR_EN_AM,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_AM,
    sizeof(EnAm),
    (ActorFunc)EnAm_Init,
    (ActorFunc)EnAm_Destroy,
    (ActorFunc)EnAm_Update,
    (ActorFunc)EnAm_Draw,
};

static ColliderCylinderInit D_809AFF80 = {
    {
        COLTYPE_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 15, 70, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit D_809AFFAC = {
    {
        COLTYPE_METAL,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00400106, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 15, 70, 0, { 0, 0, 0 } },
};

static ColliderQuadInit D_809AFFD8 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809ADF20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809ADF28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE270.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE4A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE59C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE664.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE6C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE71C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE7F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE8A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEB14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEC1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AED8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEF00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEFA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF0DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF30C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF558.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF7CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AFD9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Draw.s")
