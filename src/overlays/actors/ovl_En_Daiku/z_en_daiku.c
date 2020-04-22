#include "z_en_daiku.h"

#define FLAGS 0x00000019

void EnDaiku_Init(EnDaiku* this, GlobalContext* globalCtx);
void EnDaiku_Destroy(EnDaiku* this, GlobalContext* globalCtx);
void EnDaiku_Update(EnDaiku* this, GlobalContext* globalCtx);
void EnDaiku_Draw(EnDaiku* this, GlobalContext* globalCtx);

/*
const ActorInit En_Daiku_InitVars = {
    ACTOR_EN_DAIKU,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DAIKU,
    sizeof(EnDaiku),
    (ActorFunc)EnDaiku_Init,
    (ActorFunc)EnDaiku_Destroy,
    (ActorFunc)EnDaiku_Update,
    (ActorFunc)EnDaiku_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E2B30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/EnDaiku_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/EnDaiku_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E2F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3338.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E336C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E349C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E36A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E389C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3954.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3A8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/EnDaiku_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/EnDaiku_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3EF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku/func_809E3F7C.s")
