#include "z_en_changer.h"

#define FLAGS 0x00000000

#define THIS ((EnChanger*)thisx)

void EnChanger_Init(Actor* thisx, GlobalContext* globalCtx);
void EnChanger_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnChanger_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Changer_InitVars = {
    ACTOR_EN_CHANGER,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnChanger),
    (ActorFunc)EnChanger_Init,
    (ActorFunc)EnChanger_Destroy,
    (ActorFunc)EnChanger_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/EnChanger_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/EnChanger_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/func_809D2CCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/func_809D2D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/func_809D2F74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/EnChanger_Update.s")
