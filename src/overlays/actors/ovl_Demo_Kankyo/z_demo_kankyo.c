#include "z_demo_kankyo.h"

#define FLAGS 0x00000030

#define THIS ((DemoKankyo*)thisx)

void DemoKankyo_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoKankyo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoKankyo_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoKankyo_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_01000000;
extern UNK_TYPE D_04010050;
extern UNK_TYPE D_04052DB0;
extern UNK_TYPE D_06000080;
extern UNK_TYPE D_06000DE0;
extern UNK_TYPE D_06007440;
extern UNK_TYPE D_06007578;
extern UNK_TYPE D_06008390;

/*
const ActorInit Demo_Kankyo_InitVars = {
    ACTOR_DEMO_KANKYO,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(DemoKankyo),
    (ActorFunc)DemoKankyo_Init,
    (ActorFunc)DemoKankyo_Destroy,
    (ActorFunc)DemoKankyo_Update,
    (ActorFunc)DemoKankyo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_80988E80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/DemoKankyo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/DemoKankyo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_809892A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_809896DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_809896E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_80989710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_80989800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098987C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_809898C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_80989960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/DemoKankyo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/DemoKankyo_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_80989B54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_80989D24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098A36C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098A4F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098A854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098A9A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098AAC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098AAE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098AB68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098ABC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Kankyo/func_8098B354.s")
