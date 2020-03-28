#include "z_demo_tre_lgt.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void DemoTreLgt_Init(DemoTreLgt* this, GlobalContext* globalCtx);
void DemoTreLgt_Destroy(DemoTreLgt* this, GlobalContext* globalCtx);
void DemoTreLgt_Update(DemoTreLgt* this, GlobalContext* globalCtx);
void DemoTreLgt_Draw(DemoTreLgt* this, GlobalContext* globalCtx);

/*
const ActorInit Demo_Tre_Lgt_InitVars = {
    ACTOR_DEMO_TRE_LGT,
    ACTORTYPE_ITEMACTION,
    ROOM,
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
