#include "z_en_sda.h"

#define FLAGS 0x00000030

#define THIS ((EnSda*)thisx)

void EnSda_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSda_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSda_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSda_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Sda_InitVars = {
    ACTOR_EN_SDA,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnSda),
    (ActorFunc)EnSda_Init,
    (ActorFunc)EnSda_Destroy,
    (ActorFunc)EnSda_Update,
    (ActorFunc)EnSda_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sda/EnSda_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sda/EnSda_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sda/EnSda_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sda/EnSda_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sda/func_80AF8F60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sda/func_80AF95C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Sda/func_80AF9C70.s")
