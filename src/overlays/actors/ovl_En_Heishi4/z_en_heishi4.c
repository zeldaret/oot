#include "z_en_heishi4.h"

#define FLAGS 0x00000009

void EnHeishi4_Init(EnHeishi4* this, GlobalContext* globalCtx);
void EnHeishi4_Destroy(EnHeishi4* this, GlobalContext* globalCtx);
void EnHeishi4_Update(EnHeishi4* this, GlobalContext* globalCtx);
void EnHeishi4_Draw(EnHeishi4* this, GlobalContext* globalCtx);

/*
const ActorInit En_Heishi4_InitVars = {
    ACTOR_EN_HEISHI4,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi4),
    (ActorFunc)EnHeishi4_Init,
    (ActorFunc)EnHeishi4_Destroy,
    (ActorFunc)EnHeishi4_Update,
    (ActorFunc)EnHeishi4_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/EnHeishi4_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/EnHeishi4_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A563BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56614.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A5673C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56900.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56A50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56ACC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56B40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/EnHeishi4_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/func_80A56E14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi4/EnHeishi4_Draw.s")
