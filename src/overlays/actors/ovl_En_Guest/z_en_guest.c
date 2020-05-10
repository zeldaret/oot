#include "z_en_guest.h"

#define FLAGS 0x00000019

#define THIS ((EnGuest*)thisx)

void EnGuest_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGuest_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGuest_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Guest_InitVars = {
    ACTOR_EN_GUEST,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_BOJ,
    sizeof(EnGuest),
    (ActorFunc)EnGuest_Init,
    (ActorFunc)EnGuest_Destroy,
    (ActorFunc)EnGuest_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/EnGuest_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/EnGuest_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/EnGuest_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A5046C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A50518.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A5057C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A505CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A50708.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A50774.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Guest/func_80A509D4.s")
