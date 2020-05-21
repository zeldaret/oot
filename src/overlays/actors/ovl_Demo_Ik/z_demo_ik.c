#include "z_demo_ik.h"

#define FLAGS 0x00000010

#define THIS ((DemoIk*)thisx)

void DemoIk_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoIk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoIk_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoIk_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Demo_Ik_InitVars = {
    ACTOR_DEMO_IK,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_IK,
    sizeof(DemoIk),
    (ActorFunc)DemoIk_Init,
    (ActorFunc)DemoIk_Destroy,
    (ActorFunc)DemoIk_Update,
    (ActorFunc)DemoIk_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/DemoIk_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_8098330C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983354.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983374.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_809833D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983428.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983430.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_809834D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983500.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_809835FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_809837A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_8098393C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_8098394C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_809839AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_809839D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983AA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983AF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983B58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983C9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983F30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983F8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80983FEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_8098402C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80984048.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80984124.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80984144.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80984164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_8098419C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_809841F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_8098441C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/DemoIk_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/func_80984610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/DemoIk_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ik/DemoIk_Init.s")
