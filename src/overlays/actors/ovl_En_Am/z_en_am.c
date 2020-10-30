/*
 * File: z_en_am.c
 * Overlay: ovl_En_Am
 * Description: Armos Statue
 */

#include "z_en_am.h"

#define FLAGS 0x04000015

#define THIS ((EnAm*)thisx)

void EnAm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Am_InitVars = {
    ACTOR_EN_AM,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_AM,
    sizeof(EnAm),
    (ActorFunc)EnAm_Init,
    (ActorFunc)EnAm_Destroy,
    (ActorFunc)EnAm_Update,
    (ActorFunc)EnAm_Draw,
};

static ColliderCylinderInit D_809AFF80 = {
    { COLTYPE_UNK5, AT_OFF, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 15, 70, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit D_809AFFAC = {
    { COLTYPE_METAL_SHIELD, AT_OFF, AC_PLAYER | AC_HARD | AC_ON, OC_OFF, OT_NONE, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00400106, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
    { 15, 70, 0, { 0, 0, 0 } },
};

static ColliderQuadInit D_809AFFD8 = {
    { COLTYPE_UNK10, AT_ENEMY | AT_ON, AC_OFF, OC_OFF, OT_NONE, COLSHAPE_QUAD },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, TOUCH_ON, BUMP_OFF, OCELEM_OFF },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809ADF20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809ADF28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE270.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE4A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE59C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE664.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE6C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE71C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE7F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AE8A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEB14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEC1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AED8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEF00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AEFA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF0DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF30C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF558.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF7CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AF864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/func_809AFD9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Am/EnAm_Draw.s")
