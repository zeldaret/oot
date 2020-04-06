#include "z_en_sda.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void EnSda_Init(EnSda* this, GlobalContext* globalCtx);
void EnSda_Destroy(EnSda* this, GlobalContext* globalCtx);
void EnSda_Update(EnSda* this, GlobalContext* globalCtx);
void EnSda_Draw(EnSda* this, GlobalContext* globalCtx);

/*
const ActorInit En_Sda_InitVars = {
    ACTOR_EN_SDA,
    ACTORTYPE_BOSS,
    ROOM,
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
