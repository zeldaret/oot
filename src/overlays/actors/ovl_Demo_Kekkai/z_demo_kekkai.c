#include "z_demo_kekkai.h"

#define FLAGS 0x00000030

#define THIS ((DemoKekkai*)thisx)

void DemoKekkai_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoKekkai_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoKekkai_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoKekkai_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Demo_Kekkai_InitVars = {
    ACTOR_DEMO_KEKKAI,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(DemoKekkai),
    (ActorFunc)DemoKekkai_Init,
    (ActorFunc)DemoKekkai_Destroy,
    (ActorFunc)DemoKekkai_Update,
    (ActorFunc)DemoKekkai_Draw,
};

static ColliderCylinderInit D_8098E0B0 = {
    { COLTYPE_NONE, AT_ENEMY | AT_ON, AC_PLAYER | AC_ON, OC_ALL | OC_ON, OT_TYPE1, COLSHAPE_CYLINDER },
    { ELEMTYPE_UNK0, { 0x20000000, 0x07, 0x04 }, { 0x00002000, 0x00, 0x00 }, TOUCH_SFX_NORMAL | TOUCH_ON, BUMP_ON,
OCELEM_ON }, { 680, 220, 120, { 0, 0, 0 } },
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/func_8098CFD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/DemoKekkai_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/DemoKekkai_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/func_8098D280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/func_8098D4D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/DemoKekkai_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/func_8098D71C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/func_8098D87C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/func_8098D9C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kekkai/DemoKekkai_Draw.s")
