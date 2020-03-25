#include "z_en_st.h"

#define ROOM 0x00
#define FLAGS 0x00000035

void EnSt_Init(EnSt* this, GlobalContext* globalCtx);
void EnSt_Destroy(EnSt* this, GlobalContext* globalCtx);
void EnSt_Update(EnSt* this, GlobalContext* globalCtx);
void EnSt_Draw(EnSt* this, GlobalContext* globalCtx);

/*
const ActorInit En_St_InitVars = {
    ACTOR_EN_ST,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_ST,
    sizeof(EnSt),
    (ActorFunc)EnSt_Init,
    (ActorFunc)EnSt_Destroy,
    (ActorFunc)EnSt_Update,
    (ActorFunc)EnSt_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04898.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04AB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04B40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04C7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04D78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04E44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04F4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04FA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B04FDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B0503C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B050A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B051E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05298.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B0534C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B055E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B056D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05900.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05988.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05AF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05C44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05EE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B05FB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B0601C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B060C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B060FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B0613C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/EnSt_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/EnSt_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B064B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B06504.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B065FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B06700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B067F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B068CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B0699C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B06B10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B06B88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/EnSt_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B06D88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/func_80B06EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_St/EnSt_Draw.s")
