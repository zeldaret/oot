/*
 * File: z_bg_ice_turara.c
 * Overlay: ovl_Bg_Ice_Turara
 * Description: Icicles
 */

#include "z_bg_ice_turara.h"

#define FLAGS 0x00000000

#define THIS ((BgIceTurara*)thisx)

void BgIceTurara_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIceTurara_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIceTurara_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIceTurara_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ice_Turara_InitVars = {
    ACTOR_BG_ICE_TURARA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceTurara),
    (ActorFunc)BgIceTurara_Init,
    (ActorFunc)BgIceTurara_Destroy,
    (ActorFunc)BgIceTurara_Update,
    (ActorFunc)BgIceTurara_Draw,
};

static ColliderCylinderInit D_80892620 = {
    { COLTYPE_NONE, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_OFF, OT_TYPE2, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x4FC007CA, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_ON,
OCELEM_OFF }, { 13, 120, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/BgIceTurara_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/BgIceTurara_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_808922B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/func_80892574.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/BgIceTurara_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ice_Turara/BgIceTurara_Draw.s")
