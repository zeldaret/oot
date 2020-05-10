#include "z_en_ex_ruppy.h"

#define FLAGS 0x00000010

#define THIS ((EnExRuppy*)thisx)

void EnExRuppy_Init(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Update(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ex_Ruppy_InitVars = {
    ACTOR_EN_EX_RUPPY,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnExRuppy),
    (ActorFunc)EnExRuppy_Init,
    (ActorFunc)EnExRuppy_Destroy,
    (ActorFunc)EnExRuppy_Update,
    (ActorFunc)EnExRuppy_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0A820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AA3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AB1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AC88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AD88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AEE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AF24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0B070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0B0F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Draw.s")
