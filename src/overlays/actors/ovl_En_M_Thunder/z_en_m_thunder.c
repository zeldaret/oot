#include "z_en_m_thunder.h"

#define ROOM  0x00
#define FLAGS 0x00000000

void EnMThunder_Init(EnMThunder* this, GlobalContext* globalCtx);
void EnMThunder_Destroy(EnMThunder* this, GlobalContext* globalCtx);
void EnMThunder_Update(EnMThunder* this, GlobalContext* globalCtx);
void EnMThunder_Draw(EnMThunder* this, GlobalContext* globalCtx);

/*
const ActorInit En_M_Thunder_InitVars =
{
    ACTOR_EN_M_THUNDER,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnMThunder),
    (ActorFunc)EnMThunder_Init,
    (ActorFunc)EnMThunder_Destroy,
    (ActorFunc)EnMThunder_Update,
    (ActorFunc)EnMThunder_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9EFE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/EnMThunder_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/EnMThunder_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F314.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F408.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/func_80A9F9B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/EnMThunder_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_M_Thunder/EnMThunder_Draw.s")
