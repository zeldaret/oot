/*
 * File: z_en_vm.c
 * Overlay: ovl_En_Vm
 * Description: Beamos
 */

#include "z_en_vm.h"

#define FLAGS 0x00000011

#define THIS ((EnVm*)thisx)

void EnVm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnVm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnVm_Update(Actor* thisx, GlobalContext* globalCtx);
void EnVm_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Vm_InitVars = {
    ACTOR_EN_VM,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_VM,
    sizeof(EnVm),
    (ActorFunc)EnVm_Init,
    (ActorFunc)EnVm_Destroy,
    (ActorFunc)EnVm_Update,
    (ActorFunc)EnVm_Draw,
};

static ColliderCylinderInit D_80B2EA20 = {
    { COLTYPE_METAL_SHIELD, AT_OFF, AC_PLAYER | AC_HARD | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 25, 70, 0, { 0, 0, 0 } },
};

static ColliderQuadInit D_80B2EA4C = {
    { COLTYPE_METAL_SHIELD, AT_ENEMY | AT_ON, AC_OFF, OC_OFF, OT_NONE, COLSHAPE_QUAD },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x10 }, { 0x00000000, 0x00, 0x00 }, TOUCH_UNK7 | TOUCH_ON, BUMP_OFF,
OCELEM_OFF }, { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static ColliderQuadInit D_80B2EA9C = {
    { COLTYPE_METAL_SHIELD, AT_OFF, AC_PLAYER | AC_ON, OC_OFF, OT_NONE, COLSHAPE_QUAD },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_OFF },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2D460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/EnVm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/EnVm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2D600.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2D68C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2D9D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DA7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DCC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DD70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DE7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2DF84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2E034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/EnVm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2E2D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/func_80B2E340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Vm/EnVm_Draw.s")
