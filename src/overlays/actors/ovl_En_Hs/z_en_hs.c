#include "z_en_hs.h"

#define ROOM 0x00
#define FLAGS 0x00000009

void EnHs_Init(EnHs* this, GlobalContext* globalCtx);
void EnHs_Destroy(EnHs* this, GlobalContext* globalCtx);
void EnHs_Update(EnHs* this, GlobalContext* globalCtx);
void EnHs_Draw(EnHs* this, GlobalContext* globalCtx);

/*
const ActorInit En_Hs_InitVars =
{
    ACTOR_EN_HS,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_HS,
    sizeof(EnHs),
    (ActorFunc)EnHs_Init,
    (ActorFunc)EnHs_Destroy,
    (ActorFunc)EnHs_Update,
    (ActorFunc)EnHs_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E3A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/EnHs_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/EnHs_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E53C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E5EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E630.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E6B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E6D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E70C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E740.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E7BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E8CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6E9AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/EnHs_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6EC58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6ECBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6ECC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6ECE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/func_80A6ED14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hs/EnHs_Draw.s")
