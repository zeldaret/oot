#include "z_en_po_sisters.h"

#define FLAGS 0x00005215

#define THIS ((EnPoSisters*)thisx)

void EnPoSisters_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoSisters_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoSisters_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPoSisters_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Po_Sisters_InitVars = {
    ACTOR_EN_PO_SISTERS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_PO_SISTERS,
    sizeof(EnPoSisters),
    (ActorFunc)EnPoSisters_Init,
    (ActorFunc)EnPoSisters_Destroy,
    (ActorFunc)EnPoSisters_Update,
    (ActorFunc)EnPoSisters_Draw,
};

static ColliderCylinderInit D_80ADD730 = {
    { COLTYPE_UNK3, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x4FC7FFEA, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_HOOKABLE
| BUMP_ON, OCELEM_ON }, { 18, 60, 15, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD93C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD943C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD944C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD94E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD95D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD96A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD97C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD98F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD99D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9A54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9D44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9DF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9E60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9F1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9F90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA028.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA094.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA10C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA1B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA2BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA35C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA4A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA530.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA6A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA7F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA8C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAAA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAC70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAD54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAFC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB17C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB2B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB4B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB51C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB9F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBB6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBBF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBC88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBEE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBF58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC10C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC55C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC77C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Draw.s")
