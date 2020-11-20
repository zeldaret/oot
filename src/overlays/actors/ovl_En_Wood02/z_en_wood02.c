/*
 * File: z_en_wood02.c
 * Overlay: ovl_En_Wood02
 * Description: Trees & Bushes
 */

#include "z_en_wood02.h"

#define FLAGS 0x00000000

#define THIS ((EnWood02*)thisx)

void EnWood02_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWood02_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWood02_Update(Actor* thisx, GlobalContext* globalCtx);
void EnWood02_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Wood02_InitVars = {
    ACTOR_EN_WOOD02,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_WOOD02,
    sizeof(EnWood02),
    (ActorFunc)EnWood02_Init,
    (ActorFunc)EnWood02_Destroy,
    (ActorFunc)EnWood02_Update,
    (ActorFunc)EnWood02_Draw,
};

static ColliderCylinderInit D_80B3BF00 = {
    { COLTYPE_TREE, AT_OFF, AC_ON |  AC_HARD  | AC_PLAYER, OC_ON | OC_ALL, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK5, { 0x00000000, 0x00, 0x00 }, { 0x0FC0074A, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 18, 60, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/func_80B3AF70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/func_80B3B094.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/EnWood02_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/EnWood02_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/EnWood02_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Wood02/EnWood02_Draw.s")
