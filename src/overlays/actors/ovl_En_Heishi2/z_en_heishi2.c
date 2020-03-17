#include "z_en_heishi2.h"

#define ROOM  0x00
#define FLAGS 0x00000009

void EnHeishi2_Init(EnHeishi2* this, GlobalContext* globalCtx);
void EnHeishi2_Destroy(EnHeishi2* this, GlobalContext* globalCtx);
void EnHeishi2_Update(EnHeishi2* this, GlobalContext* globalCtx);
void EnHeishi2_Draw(EnHeishi2* this, GlobalContext* globalCtx);

/*
const ActorInit En_Heishi2_InitVars =
{
    ACTOR_EN_HEISHI2,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi2),
    (ActorFunc)EnHeishi2_Init,
    (ActorFunc)EnHeishi2_Destroy,
    (ActorFunc)EnHeishi2_Update,
    (ActorFunc)EnHeishi2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A531CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A531D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A531E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5344C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A535BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53638.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5372C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53850.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53908.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5399C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53AD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53C0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53C90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53DF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A53F30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54038.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A540C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A541FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5427C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A543A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A544AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5455C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A546DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A5475C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54954.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A549E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54C34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/func_80A54C6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi2/EnHeishi2_Draw.s")
