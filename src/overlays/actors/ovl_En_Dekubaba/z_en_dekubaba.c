#include "z_en_dekubaba.h"

#define FLAGS 0x00000005

#define THIS ((EnDekubaba*)thisx)

void EnDekubaba_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDekubaba_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDekubaba_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDekubaba_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000208;
extern UNK_TYPE D_060002B8;
extern UNK_TYPE D_060010F0;
extern UNK_TYPE D_06001330;
extern UNK_TYPE D_06001828;
extern UNK_TYPE D_06002A40;
extern UNK_TYPE D_06003070;

/*
const ActorInit En_Dekubaba_InitVars = {
    ACTOR_EN_DEKUBABA,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DEKUBABA,
    sizeof(EnDekubaba),
    (ActorFunc)EnDekubaba_Init,
    (ActorFunc)EnDekubaba_Destroy,
    (ActorFunc)EnDekubaba_Update,
    (ActorFunc)EnDekubaba_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/EnDekubaba_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/EnDekubaba_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E5A38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E5ABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E5D28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E5E58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E5F44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E5F9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E5FBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E6000.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E6078.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E60A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E6170.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E61E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E6264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E63EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E645C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E64F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E65A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E6A04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E6DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E6ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E7104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E738C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E7458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E77E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E78DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E79EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E7A88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E7BB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E7F14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E80D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E8140.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/EnDekubaba_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E858C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E86B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E89E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E8AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/func_809E8C0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekubaba/EnDekubaba_Draw.s")
