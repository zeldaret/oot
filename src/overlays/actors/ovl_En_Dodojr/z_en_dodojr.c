#include "z_en_dodojr.h"

#define FLAGS 0x00000005

void EnDodojr_Init(EnDodojr* this, GlobalContext* globalCtx);
void EnDodojr_Destroy(EnDodojr* this, GlobalContext* globalCtx);
void EnDodojr_Update(EnDodojr* this, GlobalContext* globalCtx);
void EnDodojr_Draw(EnDodojr* this, GlobalContext* globalCtx);

/*
const ActorInit En_Dodojr_InitVars = {
    ACTOR_EN_DODOJR,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DODOJR,
    sizeof(EnDodojr),
    (ActorFunc)EnDodojr_Init,
    (ActorFunc)EnDodojr_Destroy,
    (ActorFunc)EnDodojr_Update,
    (ActorFunc)EnDodojr_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/EnDodojr_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/EnDodojr_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F64D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6510.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6730.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F68B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6BBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6CA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6DD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F706C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F709C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F70E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F72A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F73AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F74C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F758C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F768C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F773C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F77AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F784C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F786C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F78EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F799C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7A00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7AB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7B3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7C48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/EnDodojr_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F7DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/EnDodojr_Draw.s")
