/*
 * File: z_en_ba.c
 * Overlay: ovl_En_Ba
 * Description: Tentacle from inside Lord Jabu-Jabu
 */

#include "z_en_ba.h"

#define FLAGS 0x00000015

#define THIS ((EnBa*)thisx)

void EnBa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBa_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ba_InitVars = {
    ACTOR_EN_BA,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BXA,
    sizeof(EnBa),
    (ActorFunc)EnBa_Init,
    (ActorFunc)EnBa_Destroy,
    (ActorFunc)EnBa_Update,
    (ActorFunc)EnBa_Draw,
};

static ColliderJntSphElementInit  D_809B808C[2] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000010, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
        { 8, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_OFF,
OCELEM_OFF }, { 13, { { 0, 0, 0 }, 25 }, 100 },
    },
};

static ColliderJntSphInit D_809B80D4 = {
    { COLTYPE_UNK0, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_OFF, OT_NONE, COLSHAPE_JNTSPH },
    2, D_809B808C,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B65A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B69D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6B04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B6B58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B7174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B71F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B75A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/func_809B781C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ba/EnBa_Draw.s")
