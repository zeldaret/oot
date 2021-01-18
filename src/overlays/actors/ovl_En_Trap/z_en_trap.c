/*
 * File: z_en_trap.c
 * Overlay: ovl_En_Trap
 * Description: Metal Spike Trap
 */

#include "z_en_trap.h"

#define FLAGS 0x00000010

#define THIS ((EnTrap*)thisx)

void EnTrap_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTrap_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTrap_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTrap_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06001400;

/*
const ActorInit En_Trap_InitVars = {
    ACTOR_EN_TRAP,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_TRAP,
    sizeof(EnTrap),
    (ActorFunc)EnTrap_Init,
    (ActorFunc)EnTrap_Destroy,
    (ActorFunc)EnTrap_Update,
    (ActorFunc)EnTrap_Draw,
};

static ColliderCylinderInit D_80B25830 = {
    { COLTYPE_HIT0, AT_NONE, AC_ON | AC_TYPE_PLAYER, OC1_ON | OC1_NO_PUSH | OC1_TYPE_1 | OC1_TYPE_2, OC2_TYPE_1,
COLSHAPE_CYLINDER },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00001000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 30, 20, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Draw.s")
