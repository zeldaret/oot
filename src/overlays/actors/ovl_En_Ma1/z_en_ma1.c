#include "z_en_ma1.h"

#define FLAGS 0x02000039

void EnMa1_Init(EnMa1* this, GlobalContext* globalCtx);
void EnMa1_Destroy(EnMa1* this, GlobalContext* globalCtx);
void EnMa1_Update(EnMa1* this, GlobalContext* globalCtx);
void EnMa1_Draw(EnMa1* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ma1_InitVars = {
    ACTOR_EN_MA1,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MA1,
    sizeof(EnMa1),
    (ActorFunc)EnMa1_Init,
    (ActorFunc)EnMa1_Destroy,
    (ActorFunc)EnMa1_Update,
    (ActorFunc)EnMa1_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0778.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA08C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0AF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0B74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/EnMa1_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/EnMa1_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0D88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0EA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0EFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA0F44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA106C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA10EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA1150.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA11C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/EnMa1_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA12BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/func_80AA1448.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma1/EnMa1_Draw.s")
