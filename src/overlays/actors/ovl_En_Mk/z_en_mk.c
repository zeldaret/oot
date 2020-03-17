#include "z_en_mk.h"

#define ROOM  0x00
#define FLAGS 0x00000019

void EnMk_Init(EnMk* this, GlobalContext* globalCtx);
void EnMk_Destroy(EnMk* this, GlobalContext* globalCtx);
void EnMk_Update(EnMk* this, GlobalContext* globalCtx);
void EnMk_Draw(EnMk* this, GlobalContext* globalCtx);

/*
const ActorInit En_Mk_InitVars =
{
    ACTOR_EN_MK,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_MK,
    sizeof(EnMk),
    (ActorFunc)EnMk_Init,
    (ActorFunc)EnMk_Destroy,
    (ActorFunc)EnMk_Update,
    (ActorFunc)EnMk_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/EnMk_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/EnMk_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACA94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACB14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACB6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACBAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACC04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACCA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACD48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACE2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACEE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AACFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AAD014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AAD080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/EnMk_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AAD518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/func_80AAD55C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Mk/EnMk_Draw.s")
