#include "z_en_mm2.h"

#define FLAGS 0x00000019

void EnMm2_Init(EnMm2* this, GlobalContext* globalCtx);
void EnMm2_Destroy(EnMm2* this, GlobalContext* globalCtx);
void EnMm2_Update(EnMm2* this, GlobalContext* globalCtx);
void EnMm2_Draw(EnMm2* this, GlobalContext* globalCtx);

/*
const ActorInit En_Mm2_InitVars = {
    ACTOR_EN_MM2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MM,
    sizeof(EnMm2),
    (ActorFunc)EnMm2_Init,
    (ActorFunc)EnMm2_Destroy,
    (ActorFunc)EnMm2_Update,
    (ActorFunc)EnMm2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAEE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAEF70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/EnMm2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/EnMm2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAF224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAF2BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAF330.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAF3C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAF57C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAF5EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAF668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/EnMm2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/EnMm2_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAF9D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm2/func_80AAFA60.s")
