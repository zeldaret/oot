#include "z_en_mm.h"

#define ROOM 0x00
#define FLAGS 0x00000019

void EnMm_Init(EnMm* this, GlobalContext* globalCtx);
void EnMm_Destroy(EnMm* this, GlobalContext* globalCtx);
void EnMm_Update(EnMm* this, GlobalContext* globalCtx);
void EnMm_Draw(EnMm* this, GlobalContext* globalCtx);

/*
const ActorInit En_Mm_InitVars =
{
    ACTOR_EN_MM,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_MM,
    sizeof(EnMm),
    (ActorFunc)EnMm_Init,
    (ActorFunc)EnMm_Destroy,
    (ActorFunc)EnMm_Update,
    (ActorFunc)EnMm_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAD770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/EnMm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/EnMm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADA70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADAA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADC34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADCD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADE60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AADEF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE294.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE50C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/EnMm_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/EnMm_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAE97C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mm/func_80AAEA10.s")
