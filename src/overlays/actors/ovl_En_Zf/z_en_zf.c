#include "z_en_zf.h"

#define ROOM 0x00
#define FLAGS 0x00000015

void EnZf_Init(EnZf* this, GlobalContext* globalCtx);
void EnZf_Destroy(EnZf* this, GlobalContext* globalCtx);
void EnZf_Update(EnZf* this, GlobalContext* globalCtx);
void EnZf_Draw(EnZf* this, GlobalContext* globalCtx);

/*
const ActorInit En_Zf_InitVars =
{
    ACTOR_EN_ZF,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_ZF,
    sizeof(EnZf),
    (ActorFunc)EnZf_Init,
    (ActorFunc)EnZf_Destroy,
    (ActorFunc)EnZf_Update,
    (ActorFunc)EnZf_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B441C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B446A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44B14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44CF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44DC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B44E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B450AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45384.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4543C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B456B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45E30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B45EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4604C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B462E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B463E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46A24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46D64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46DD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46E8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B46F2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47360.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4743C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B474E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4779C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B4781C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47C64.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47CF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47DA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B47EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B482B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B483E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48E50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B48F90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B490B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B495FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/EnZf_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49B60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49C2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zf/func_80B49E4C.s")
