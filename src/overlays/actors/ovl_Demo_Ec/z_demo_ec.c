#include "z_demo_ec.h"

#define FLAGS 0x00000010

#define THIS ((DemoEc*)thisx)

void DemoEc_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoEc_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Demo_Ec_InitVars = {
    ACTOR_DEMO_EC,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_EC,
    sizeof(DemoEc),
    (ActorFunc)DemoEc_Init,
    (ActorFunc)DemoEc_Destroy,
    (ActorFunc)DemoEc_Update,
    (ActorFunc)DemoEc_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/DemoEc_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/DemoEc_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D52C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D54C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D594.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D5D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D64C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D68C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D714.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D728.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096D8C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DA80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DD0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DDBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DDF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DE14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DE94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DF2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DF68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096DF9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E0A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E13C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E1AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E2E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E31C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E33C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E4B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E4F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E56C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E648.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E69C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E7CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E864.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E8A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E8E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E97C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E9B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096E9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EA80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EAE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EB80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EBBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096ECBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096ED40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EDC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EE98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EEDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EF4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096EFCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F010.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F0AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F0F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F12C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F1D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F26C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F2B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F314.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F378.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F3D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F4FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F5DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F69C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F6D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F7A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F7DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F808.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F8A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F8E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F924.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096F9C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FA04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FADC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FB48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FBE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FC28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FCA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FCEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FD88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FDCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FE08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FF7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8096FFBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_80970058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_8097009C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_809700DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_80970140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/DemoEc_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/func_809702B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ec/DemoEc_Draw.s")
