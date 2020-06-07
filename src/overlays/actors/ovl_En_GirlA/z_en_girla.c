#include "z_en_girla.h"

#define FLAGS 0x00000019

#define THIS ((EnGirlA*)thisx)

void EnGirlA_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGirlA_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGirlA_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_GirlA_InitVars = {
    ACTOR_EN_GIRLA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnGirlA),
    (ActorFunc)EnGirlA_Init,
    (ActorFunc)EnGirlA_Destroy,
    (ActorFunc)EnGirlA_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A750.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A758.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A7A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A7C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A7EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A810.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A834.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A87C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A8A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3A8D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/EnGirlA_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/EnGirlA_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3AAA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3AB58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3ABF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3ACAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3AD60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3ADD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3AE48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3AEBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3AF30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3AFC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B0BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B250.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B2AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B308.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B328.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B3A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B4D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B54C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B5C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B634.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B678.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B714.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B7BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B83C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B878.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B8B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B8F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B92C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B9A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3B9D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BA04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BB6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BC0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BC3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BC6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BD80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BEAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BEE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BF54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3BFE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3C3BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/EnGirlA_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3C498.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GirlA/func_80A3C4D4.s")
