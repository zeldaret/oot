#include "z_demo_im.h"

#define ROOM 0x00
#define FLAGS 0x00000011

void DemoIm_Init(DemoIm* this, GlobalContext* globalCtx);
void DemoIm_Destroy(DemoIm* this, GlobalContext* globalCtx);
void DemoIm_Update(DemoIm* this, GlobalContext* globalCtx);
void DemoIm_Draw(DemoIm* this, GlobalContext* globalCtx);

/*
const ActorInit Demo_Im_InitVars = {
    ACTOR_DEMO_IM,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_IM,
    sizeof(DemoIm),
    (ActorFunc)DemoIm_Init,
    (ActorFunc)DemoIm_Destroy,
    (ActorFunc)DemoIm_Update,
    (ActorFunc)DemoIm_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984BE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984C68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984C8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984D4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984D74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984DB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984E58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984F10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80984F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985060.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809850A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809850E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985200.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809853B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985430.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098544C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809854DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098557C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809855A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809856AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809856F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809857B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809857F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985860.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809858A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809858C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809859E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985B34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985C94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985CE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985E60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985F54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985F64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80985FE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098604C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809860C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809860DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809861C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098629C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809862E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809863BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809863DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986430.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809864D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098652C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986570.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809865F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986794.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098680C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809868E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809869B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809869F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986A5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986AD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986BA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986BF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986C30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986CC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986CFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986D40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986E20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986F28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986F88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80986FA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987064.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809870F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987128.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809871B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809871E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809872A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809872F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987330.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/DemoIm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/DemoIm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/DemoIm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_809875C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_8098764C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/func_80987658.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Im/DemoIm_Draw.s")
