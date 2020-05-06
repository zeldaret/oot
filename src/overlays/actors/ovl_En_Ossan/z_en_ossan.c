#include "z_en_ossan.h"

#define FLAGS 0x00000019

#define THIS ((EnOssan*)thisx)

void EnOssan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOssan_Update(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Ossan_InitVars = {
    ACTOR_EN_OSSAN,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnOssan),
    (ActorFunc)EnOssan_Init,
    (ActorFunc)EnOssan_Destroy,
    (ActorFunc)EnOssan_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2CA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2CA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2CE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2D78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2DA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC2F2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3098.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC30B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC30FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC311C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC313C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC31A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC31F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC32C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC33B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/EnOssan_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/EnOssan_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3744.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC37A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC38C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3928.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC39AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3A80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3AE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3B18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3BCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3E50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3ED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC3F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4074.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4288.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC43A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC43F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC44DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC45C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC47DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4B4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4DDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4EC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4FAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC4FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5014.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC51B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC52C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC53F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC54F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5594.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC576C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5900.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5C9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5D40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5DAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC5EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC60E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC61B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6208.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6258.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC62C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC62F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6384.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC646C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6490.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC652C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC65B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC66F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC67C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC69A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6ADC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6B3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6C54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6D30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6E0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6E6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC6F2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7094.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC73B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/EnOssan_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC74F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7528.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC77CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC79C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7DAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC7ED0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC801C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC8048.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC80B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC8244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC83A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC83DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC854C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC8668.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ossan/func_80AC8784.s")
