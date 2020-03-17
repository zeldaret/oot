#include "z_en_goroiwa.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void EnGoroiwa_Init(EnGoroiwa* this, GlobalContext* globalCtx);
void EnGoroiwa_Destroy(EnGoroiwa* this, GlobalContext* globalCtx);
void EnGoroiwa_Update(EnGoroiwa* this, GlobalContext* globalCtx);
void EnGoroiwa_Draw(EnGoroiwa* this, GlobalContext* globalCtx);

/*
const ActorInit En_Goroiwa_InitVars =
{
    ACTOR_EN_GOROIWA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GOROIWA,
    sizeof(EnGoroiwa),
    (ActorFunc)EnGoroiwa_Init,
    (ActorFunc)EnGoroiwa_Destroy,
    (ActorFunc)EnGoroiwa_Update,
    (ActorFunc)EnGoroiwa_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BCA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BD04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BD70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BE10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BE54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4BF28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C134.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C188.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C1C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C27C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C594.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C6C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4C814.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4CA50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4CB78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4CED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D074.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D0FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/EnGoroiwa_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/EnGoroiwa_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D5E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D8CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D944.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4D9DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DA3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DA7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DAD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DB90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/func_80A4DC00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/EnGoroiwa_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Goroiwa/EnGoroiwa_Draw.s")
