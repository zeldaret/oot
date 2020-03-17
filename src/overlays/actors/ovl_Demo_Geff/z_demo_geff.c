#include "z_demo_geff.h"

#define ROOM  0x00
#define FLAGS 0x00000030

void DemoGeff_Init(DemoGeff* this, GlobalContext* globalCtx);
void DemoGeff_Destroy(DemoGeff* this, GlobalContext* globalCtx);
void DemoGeff_Update(DemoGeff* this, GlobalContext* globalCtx);
void DemoGeff_Draw(DemoGeff* this, GlobalContext* globalCtx);

/*
const ActorInit Demo_Geff_InitVars =
{
    ACTOR_DEMO_GEFF,
    ACTORTYPE_BOSS,
    ROOM,
    FLAGS,
    OBJECT_GEFF,
    sizeof(DemoGeff),
    (ActorFunc)DemoGeff_Init,
    (ActorFunc)DemoGeff_Destroy,
    (ActorFunc)DemoGeff_Update,
    (ActorFunc)DemoGeff_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/DemoGeff_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/DemoGeff_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80977EA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80977F80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80978030.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_809780E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_809781FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_809782A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80978308.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80978344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80978370.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_809783D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/DemoGeff_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_809784D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/DemoGeff_Draw.s")
