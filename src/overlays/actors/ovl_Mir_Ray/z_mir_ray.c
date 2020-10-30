/*
 * File: z_mir_ray.c
 * Overlay: ovl_Mir_Ray
 * Description: Reflectable Light Beam
 */

#include "z_mir_ray.h"

#define FLAGS 0x00000030

#define THIS ((MirRay*)thisx)

void MirRay_Init(Actor* thisx, GlobalContext* globalCtx);
void MirRay_Destroy(Actor* thisx, GlobalContext* globalCtx);
void MirRay_Update(Actor* thisx, GlobalContext* globalCtx);
void MirRay_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Mir_Ray_InitVars = {
    ACTOR_MIR_RAY,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_MIR_RAY,
    sizeof(MirRay),
    (ActorFunc)MirRay_Init,
    (ActorFunc)MirRay_Destroy,
    (ActorFunc)MirRay_Update,
    (ActorFunc)MirRay_Draw,
};

static ColliderJntSphItemInit  D_80B8E6C4[1] = {
    {
        { ELEMTYPE_UNK0, { 0x00200000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, TOUCH_ON, BUMP_OFF, OCELEM_OFF },
        { 0, { { 0, 0, 0 }, 50 }, 100 },
    },
};

static ColliderJntSphInit D_80B8E6E8 = {
    { COLTYPE_UNK10, AT_PLAYER | AT_ON, AC_OFF, OC_OFF, OT_NONE, COLSHAPE_JNTSPH },
    1, D_80B8E6C4,
};

static ColliderQuadInit D_80B8E674 = {
    { COLTYPE_UNK10, AT_PLAYER | AT_ON, AC_OFF, OC_OFF, OT_NONE, COLSHAPE_QUAD },
    { ELEMTYPE_UNK0, { 0x00200000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_ON, BUMP_OFF, OCELEM_OFF },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D110.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D6F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8D8A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8DA78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8DB7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/MirRay_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Mir_Ray/func_80B8E404.s")
