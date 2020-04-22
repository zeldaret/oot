#include "z_en_sw.h"

#define FLAGS 0x00000015

void EnSw_Init(EnSw* this, GlobalContext* globalCtx);
void EnSw_Destroy(EnSw* this, GlobalContext* globalCtx);
void EnSw_Update(EnSw* this, GlobalContext* globalCtx);
void EnSw_Draw(EnSw* this, GlobalContext* globalCtx);

/*
const ActorInit En_Sw_InitVars = {
    ACTOR_EN_SW,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ST,
    sizeof(EnSw),
    (ActorFunc)EnSw_Init,
    (ActorFunc)EnSw_Destroy,
    (ActorFunc)EnSw_Update,
    (ActorFunc)EnSw_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0BDB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0BE20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0C020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0C0CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/EnSw_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/EnSw_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0C9F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0CBE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0CCF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0CEA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0CF44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0D14C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0D364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0D3AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0D590.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0D878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0DB00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0DC7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0DE34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0DEA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0DFFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0E314.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0E430.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0E5E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0E728.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0E90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0E9BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/EnSw_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0EAC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0EDA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0EDB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/func_80B0EEA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sw/EnSw_Draw.s")
