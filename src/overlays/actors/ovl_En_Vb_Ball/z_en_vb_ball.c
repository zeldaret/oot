/*
 * File: z_en_vb_ball.c
 * Overlay: ovl_En_Vb_Ball
 * Description: Volvagia's Rocks
 */

#include "z_en_vb_ball.h"

#define FLAGS 0x00000030

#define THIS ((EnVbBall*)thisx)

void EnVbBall_Init(Actor* thisx, GlobalContext* globalCtx);
void EnVbBall_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnVbBall_Update(Actor* thisx, GlobalContext* globalCtx);
void EnVbBall_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Vb_Ball_InitVars = {
    0,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_FD,
    sizeof(EnVbBall),
    (ActorFunc)EnVbBall_Init,
    (ActorFunc)EnVbBall_Destroy,
    (ActorFunc)EnVbBall_Update,
    (ActorFunc)EnVbBall_Draw,
};

static ColliderCylinderInit D_80B2A000 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK6,
        { 0x00100700, 0x00, 0x20 },
        { 0x00100700, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 20, 30, 10, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/EnVbBall_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/EnVbBall_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/func_80B29158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/func_80B29230.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/func_80B292D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/EnVbBall_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vb_Ball/EnVbBall_Draw.s")
