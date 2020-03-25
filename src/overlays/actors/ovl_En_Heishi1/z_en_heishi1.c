#include "z_en_heishi1.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnHeishi1_Init(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_Destroy(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_Update(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_Draw(EnHeishi1* this, GlobalContext* globalCtx);

/*
const ActorInit En_Heishi1_InitVars = {
    ACTOR_PLAYER,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi1),
    (ActorFunc)EnHeishi1_Init,
    (ActorFunc)EnHeishi1_Destroy,
    (ActorFunc)EnHeishi1_Update,
    (ActorFunc)EnHeishi1_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/EnHeishi1_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/EnHeishi1_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A5162C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A516E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51A98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51B54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51C4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A51FEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A52098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A5212C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A521FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A52290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/EnHeishi1_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/func_80A5263C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi1/EnHeishi1_Draw.s")
