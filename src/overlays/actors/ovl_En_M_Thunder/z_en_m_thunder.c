#include "z_en_m_thunder.h"

#define FLAGS 0x00000000

#define THIS ((EnMThunder*)thisx)

void EnMThunder_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMThunder_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMThunder_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMThunder_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_04012570;
extern UNK_TYPE D_04012690;
extern UNK_TYPE D_04012AF0;
extern UNK_TYPE D_04012C10;
extern UNK_TYPE D_04013610;

/*
const ActorInit En_M_Thunder_InitVars = {
    ACTOR_EN_M_THUNDER,
    ACTORTYPE_ITEMACTION,
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
