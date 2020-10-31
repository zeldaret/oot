#include "z_en_dh.h"

#define FLAGS 0x00000415

#define THIS ((EnDh*)thisx)

void EnDh_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDh_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDh_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDh_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Dh_InitVars = {
    ACTOR_EN_DH,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DH,
    sizeof(EnDh),
    (ActorFunc)EnDh_Init,
    (ActorFunc)EnDh_Destroy,
    (ActorFunc)EnDh_Update,
    (ActorFunc)EnDh_Draw,
};

static ColliderCylinderInit D_809EC5C0 = {
    { COLTYPE_UNK0, AT_OFF, AC_PLAYER | AC_HARD | AC_ON, OC_PLAYER | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 35, 70, 0, { 0, 0, 0 } },
};

static ColliderJntSphElementInit  D_809EC5EC[1] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_UNK3 |
OCELEM_ON }, { 1, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit D_809EC610 = {
    { COLTYPE_UNK6, AT_OFF, AC_PLAYER | AC_ON, OC_PLAYER | OC_ON, OT_TYPE1, COLSHAPE_JNTSPH },
    1, D_809EC5EC,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EAD40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/EnDh_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/EnDh_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EAEC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB05C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB110.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB334.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB3D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB4D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB53C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB5C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EB9B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EBB48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EBBC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EBCF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EBD78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EBEA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/EnDh_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/func_809EC1A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dh/EnDh_Draw.s")
