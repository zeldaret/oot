#include "z_demo_kekkai.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void DemoKekkai_Init(DemoKekkai* this, GlobalContext* globalCtx);
void DemoKekkai_Destroy(DemoKekkai* this, GlobalContext* globalCtx);
void DemoKekkai_Update(DemoKekkai* this, GlobalContext* globalCtx);
void DemoKekkai_Draw(DemoKekkai* this, GlobalContext* globalCtx);

/*
const ActorInit Demo_Kekkai_InitVars = {
    ACTOR_DEMO_KEKKAI,
    ACTORTYPE_ITEMACTION,
    ROOM,
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
