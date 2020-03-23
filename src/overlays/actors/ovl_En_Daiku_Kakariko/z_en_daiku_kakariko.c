#include "z_en_daiku_kakariko.h"

#define ROOM 0x00
#define FLAGS 0x00000019

void EnDaikuKakariko_Init(EnDaikuKakariko* this, GlobalContext* globalCtx);
void EnDaikuKakariko_Destroy(EnDaikuKakariko* this, GlobalContext* globalCtx);
void EnDaikuKakariko_Update(EnDaikuKakariko* this, GlobalContext* globalCtx);
void EnDaikuKakariko_Draw(EnDaikuKakariko* this, GlobalContext* globalCtx);

/*
const ActorInit En_Daiku_Kakariko_InitVars =
{
    ACTOR_EN_DAIKU_KAKARIKO,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_DAIKU,
    sizeof(EnDaikuKakariko),
    (ActorFunc)EnDaikuKakariko_Init,
    (ActorFunc)EnDaikuKakariko_Destroy,
    (ActorFunc)EnDaikuKakariko_Update,
    (ActorFunc)EnDaikuKakariko_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E4320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/EnDaikuKakariko_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/EnDaikuKakariko_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E474C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E47EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E49A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E4A7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E4B14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E4BC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/EnDaikuKakariko_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E50B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/func_809E5288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Daiku_Kakariko/EnDaikuKakariko_Draw.s")
