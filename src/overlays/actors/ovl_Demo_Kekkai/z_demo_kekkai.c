#include "z_demo_kekkai.h"

#define FLAGS 0x00000030

#define THIS ((DemoKekkai*)thisx)

void DemoKekkai_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoKekkai_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoKekkai_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoKekkai_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06004930;
extern UNK_TYPE D_06004F00;
extern UNK_TYPE D_06004FD0;
extern UNK_TYPE D_06005A30;
extern UNK_TYPE D_06005CB0;

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
