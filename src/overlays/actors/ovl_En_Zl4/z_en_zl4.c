#include "z_en_zl4.h"

#define ROOM 0x00
#define FLAGS 0x00000019

void EnZl4_Init(EnZl4* this, GlobalContext* globalCtx);
void EnZl4_Destroy(EnZl4* this, GlobalContext* globalCtx);
void EnZl4_Update(EnZl4* this, GlobalContext* globalCtx);
void EnZl4_Draw(EnZl4* this, GlobalContext* globalCtx);

/*
const ActorInit En_Zl4_InitVars =
{
    ACTOR_EN_ZL4,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_ZL4,
    sizeof(EnZl4),
    (ActorFunc)EnZl4_Init,
    (ActorFunc)EnZl4_Destroy,
    (ActorFunc)EnZl4_Update,
    (ActorFunc)EnZl4_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B7B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B888.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B90C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B9B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5B9E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BB38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BB78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BBC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BCDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BF90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5BFE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C160.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5C984.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5CF70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5D3CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5D610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5DAD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5DE1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E090.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/func_80B5E4F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl4/EnZl4_Draw.s")
