#include "z_en_heishi3.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void EnHeishi3_Init(EnHeishi3* this, GlobalContext* globalCtx);
void EnHeishi3_Destroy(EnHeishi3* this, GlobalContext* globalCtx);
void EnHeishi3_Update(EnHeishi3* this, GlobalContext* globalCtx);
void EnHeishi3_Draw(EnHeishi3* this, GlobalContext* globalCtx);

/*
const ActorInit En_Heishi3_InitVars =
{
    ACTOR_EN_HEISHI3,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi3),
    (ActorFunc)EnHeishi3_Init,
    (ActorFunc)EnHeishi3_Destroy,
    (ActorFunc)EnHeishi3_Update,
    (ActorFunc)EnHeishi3_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/EnHeishi3_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/EnHeishi3_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/func_80A557A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/func_80A55850.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/func_80A559B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/func_80A55B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/func_80A55BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/func_80A55C6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/func_80A55D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/EnHeishi3_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/func_80A55E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/EnHeishi3_Draw.s")
