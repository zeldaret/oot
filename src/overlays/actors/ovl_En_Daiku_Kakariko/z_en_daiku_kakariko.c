#include "z_en_daiku_kakariko.h"

#define FLAGS 0x00000019

#define THIS ((EnDaikuKakariko*)thisx)

void EnDaikuKakariko_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDaikuKakariko_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDaikuKakariko_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDaikuKakariko_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06007958;

/*
const ActorInit En_Daiku_Kakariko_InitVars = {
    ACTOR_EN_DAIKU_KAKARIKO,
    ACTORTYPE_NPC,
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
