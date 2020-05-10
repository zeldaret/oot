#include "z_en_encount1.h"

#define FLAGS 0x08000010

#define THIS ((EnEncount1*)thisx)

void EnEncount1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnEncount1_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Encount1_InitVars = {
    ACTOR_EN_ENCOUNT1,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnEncount1),
    (ActorFunc)EnEncount1_Init,
    NULL,
    (ActorFunc)EnEncount1_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount1/EnEncount1_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount1/func_80A0693C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount1/func_80A06CD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount1/func_80A06E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Encount1/EnEncount1_Update.s")
