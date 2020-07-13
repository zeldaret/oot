#include "z_en_fhg_fire.h"

#define FLAGS 0x00000030

#define THIS ((EnFhgFire*)thisx)

void EnFhgFire_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFhgFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFhgFire_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFhgFire_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Fhg_Fire_InitVars = {
    0,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_FHG,
    sizeof(EnFhgFire),
    (ActorFunc)EnFhgFire_Init,
    (ActorFunc)EnFhgFire_Destroy,
    (ActorFunc)EnFhgFire_Update,
    (ActorFunc)EnFhgFire_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A0F260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/EnFhgFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/EnFhgFire_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A0F6F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A0FA90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A0FC48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A0FD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A10008.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A10220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A10F18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/EnFhgFire_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/EnFhgFire_Draw.s")
