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
    { COLTYPE_UNK0, AT_OFF, AC_PLAYER | AC_ON, OC_TYPE2 | OC_TYPE1 | OC_NO_PUSH | OC_ON, OT_TYPE1,
COLSHAPE_CYLINDER }, { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00001000, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON,
OCELEM_ON }, { 30, 20, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Draw.s")
