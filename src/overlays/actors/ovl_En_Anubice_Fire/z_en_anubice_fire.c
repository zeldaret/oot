/*
 * File: z_en_anubice_fire.c
 * Overlay: ovl_En_Anubice_Fire
 * Description: Anubis Fire Attack
 */

#include "z_en_anubice_fire.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000010

#define THIS ((EnAnubiceFire*)thisx)

void EnAnubiceFire_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAnubiceFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAnubiceFire_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAnubiceFire_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06003510;

/*
const ActorInit En_Anubice_Fire_InitVars = {
    ACTOR_EN_ANUBICE_FIRE,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_ANUBICE,
    sizeof(EnAnubiceFire),
    (ActorFunc)EnAnubiceFire_Init,
    (ActorFunc)EnAnubiceFire_Destroy,
    (ActorFunc)EnAnubiceFire_Update,
    (ActorFunc)EnAnubiceFire_Draw,
};

static ColliderCylinderInit D_809B31E0 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x01, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 0, 0, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/EnAnubiceFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/EnAnubiceFire_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/func_809B26EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/func_809B27D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/func_809B2B48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/EnAnubiceFire_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Anubice_Fire/EnAnubiceFire_Draw.s")
