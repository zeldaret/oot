#include "z_en_ex_ruppy.h"

#define FLAGS 0x00000010

#define THIS ((EnExRuppy*)thisx)

void EnExRuppy_Init(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Update(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Draw(Actor* thisx, GlobalContext* globalCtx);
s32 D_80A0B320[] = {0x00000001, 0x00020013, 0x00140000, 0x00010005, 0x001401F4, 0x00320000};


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


s32 D_80A0B358[] = {0x00000000, 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000, 0x00000000};
s32 D_80A0B370[] = {0x00000000, 0x3C23D70A, 0x00000000};
s32 D_80A0B37C[] = {0x00000000, 0x00000000, 0x00000000};
s32 D_80A0B388[] = {0x00000000, 0x3DCCCCCD, 0x00000000};
s32 D_80A0B394[] = {0x00000000, 0x00000000, 0x00000000};
s32 D_80A0B3A0[] = {0x00000000, 0x3DCCCCCD, 0x00000000};
s32 D_80A0B3AC[] = {0x00000000, 0x00000000, 0x00000000};
s32 D_80A0B3B8[] = {0x04042140, 0x04042160, 0x04042180, 0x040421C0, 0x040421A0, 0x00000000};


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
