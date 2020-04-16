#include "z_en_ge1.h"

#define FLAGS 0x00000009

void EnGe1_Init(EnGe1* this, GlobalContext* globalCtx);
void EnGe1_Destroy(EnGe1* this, GlobalContext* globalCtx);
void EnGe1_Update(EnGe1* this, GlobalContext* globalCtx);
void EnGe1_Draw(EnGe1* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ge1_InitVars = {
    ACTOR_EN_GE1,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GE1,
    sizeof(EnGe1),
    (ActorFunc)EnGe1_Init,
    (ActorFunc)EnGe1_Destroy,
    (ActorFunc)EnGe1_Update,
    (ActorFunc)EnGe1_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30C70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30EE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A30F48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31000.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31094.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A310C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A3118C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A311E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31234.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A312E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A313A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A313E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A314D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A3157C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A315F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A316F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A317C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A3183C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31880.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A3196C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31A5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31B20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31BE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31D88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31F9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A32078.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A32190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A323B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A323EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A32444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A32598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Draw.s")
