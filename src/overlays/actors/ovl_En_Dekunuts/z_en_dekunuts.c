#include "z_en_dekunuts.h"

#define ROOM 0x00
#define FLAGS 0x00000005

void EnDekunuts_Init(EnDekunuts* this, GlobalContext* globalCtx);
void EnDekunuts_Destroy(EnDekunuts* this, GlobalContext* globalCtx);
void EnDekunuts_Update(EnDekunuts* this, GlobalContext* globalCtx);
void EnDekunuts_Draw(EnDekunuts* this, GlobalContext* globalCtx);

/*
const ActorInit En_Dekunuts_InitVars = {
    ACTOR_EN_DEKUNUTS,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_DEKUNUTS,
    sizeof(EnDekunuts),
    (ActorFunc)EnDekunuts_Init,
    (ActorFunc)EnDekunuts_Destroy,
    (ActorFunc)EnDekunuts_Update,
    (ActorFunc)EnDekunuts_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/EnDekunuts_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/EnDekunuts_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E96FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E97B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9868.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E98B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E99D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9AB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9B48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9B98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9DFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9E80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809E9F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA0C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA1D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA4E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA534.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA5B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA70C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/EnDekunuts_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/func_809EA98C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dekunuts/EnDekunuts_Draw.s")
