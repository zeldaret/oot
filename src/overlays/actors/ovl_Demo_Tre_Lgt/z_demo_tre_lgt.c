#include "z_demo_tre_lgt.h"

#define FLAGS 0x00000010

#define THIS ((DemoTreLgt*)thisx)

void DemoTreLgt_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoTreLgt_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoTreLgt_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoTreLgt_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Demo_Tre_Lgt_InitVars = {
    ACTOR_DEMO_TRE_LGT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_BOX,
    sizeof(DemoTreLgt),
    (ActorFunc)DemoTreLgt_Init,
    (ActorFunc)DemoTreLgt_Destroy,
    (ActorFunc)DemoTreLgt_Update,
    (ActorFunc)DemoTreLgt_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Tre_Lgt/DemoTreLgt_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Tre_Lgt/DemoTreLgt_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Tre_Lgt/func_80993754.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Tre_Lgt/func_8099375C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Tre_Lgt/func_809937B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Tre_Lgt/func_80993848.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Tre_Lgt/DemoTreLgt_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Tre_Lgt/func_80993B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Tre_Lgt/DemoTreLgt_Draw.s")
