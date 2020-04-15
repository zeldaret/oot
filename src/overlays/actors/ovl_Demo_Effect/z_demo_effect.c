#include "z_demo_effect.h"

#define FLAGS 0x00000030

void DemoEffect_Init(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_Destroy(DemoEffect* this, GlobalContext* globalCtx);
void DemoEffect_Update(DemoEffect* this, GlobalContext* globalCtx);

/*
const ActorInit Demo_Effect_InitVars = {
    ACTOR_DEMO_EFFECT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(DemoEffect),
    (ActorFunc)DemoEffect_Init,
    (ActorFunc)DemoEffect_Destroy,
    (ActorFunc)DemoEffect_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80970F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80970F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80970FB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80971070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/DemoEffect_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/DemoEffect_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80971960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809719C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809719F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80971A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80971BBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80971DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80972008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809720AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809721D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80972288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80972344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809723C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809726AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_8097273C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809727B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80972868.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809729B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80972A04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80972A6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80972B4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80972E3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80972EA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_8097303C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_8097322C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809733C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80973424.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80973524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80973CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80973CFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80973EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_8097414C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809742B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80974314.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80974358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_8097456C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/DemoEffect_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809746B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809746F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80974B80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80974EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80975074.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80975494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_8097571C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_8097587C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80975A3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80975BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809761C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80976254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_80976404.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809764FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809765AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_8097670C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Effect/func_809767B0.s")
