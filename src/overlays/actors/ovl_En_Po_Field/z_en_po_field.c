#include "z_en_po_field.h"

#define FLAGS 0x00001035

#define THIS ((EnPoField*)thisx)

void EnPoField_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Po_Field_InitVars = {
    ACTOR_EN_PO_FIELD,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_PO_FIELD,
    sizeof(EnPoField),
    (ActorFunc)EnPoField_Init,
    (ActorFunc)EnPoField_Destroy,
    (ActorFunc)EnPoField_Update,
    (ActorFunc)EnPoField_Draw,
};

static ColliderCylinderInit D_80AD7080 = {
    { COLTYPE_HIT3, AT_OFF, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, TOUCH_OFF, BUMP_ON, OCELEM_ON },
    { 25, 50, 20, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80AD70AC = {
    { COLTYPE_NONE, AT_ENEMY | AT_ON, AC_OFF, OC_OFF, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, TOUCH_SFX_NONE | TOUCH_ON,
BUMP_OFF, OCELEM_OFF }, { 10, 30, 0, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/EnPoField_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/EnPoField_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD3D68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD3E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD3F4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD3FF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4084.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4208.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD42B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4384.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD443C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD444C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4470.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4554.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4664.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD48CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4A68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4E48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4ED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD52F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD53F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD54D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD587C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD58D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5B18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD619C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD6330.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/EnPoField_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD65C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD66D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/EnPoField_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD6BF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD6C4C.s")
