/*
 * File: z_en_arrow.c
 * Overlay: ovl_En_Arrow
 * Description: Arrows
 */

#include "z_en_arrow.h"

#define FLAGS 0x00000030

#define THIS ((EnArrow*)thisx)

void EnArrow_Init(Actor* thisx, GlobalContext* globalCtx);
void EnArrow_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnArrow_Update(Actor* thisx, GlobalContext* globalCtx);
void EnArrow_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Arrow_InitVars = {
    ACTOR_EN_ARROW,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnArrow),
    (ActorFunc)EnArrow_Init,
    (ActorFunc)EnArrow_Destroy,
    (ActorFunc)EnArrow_Update,
    (ActorFunc)EnArrow_Draw,
};

static ColliderQuadInit D_809B4D50 = {
    { COLTYPE_UNK10, AT_PLAYER | AT_ON, AC_OFF, OC_OFF, OT_PLAYER, COLSHAPE_QUAD },
    { ELEMTYPE_UNK2, { 0x00000020, 0x00, 0x01 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_SFX2 | TOUCH_SFX1 | TOUCH_NEAREST |
TOUCH_ON, BUMP_OFF, OCELEM_OFF }, { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f,
0.0f, 0.0f } } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B45E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B4640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B4800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Draw.s")
