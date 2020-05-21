#include "z_en_elf.h"

#define FLAGS 0x02000030

#define THIS ((EnElf*)thisx)

void EnElf_Init(Actor* thisx, GlobalContext* globalCtx);
void EnElf_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnElf_Update(Actor* thisx, GlobalContext* globalCtx);
void EnElf_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Elf_InitVars = {
    ACTOR_EN_ELF,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnElf),
    (ActorFunc)EnElf_Init,
    (ActorFunc)EnElf_Destroy,
    (ActorFunc)EnElf_Update,
    (ActorFunc)EnElf_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A01C30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A01C38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A01F90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A01FE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A020A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0214C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0232C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A023A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/EnElf_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0299C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A029A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/EnElf_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02AA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02BD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02C98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02E30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A02F2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0329C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0353C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03604.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03610.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03814.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03990.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03AB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03B28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A03CF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0438C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A04414.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A0461C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A049B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A04D90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A04DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A04F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05188.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05208.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A052F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A053F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/EnElf_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/EnElf_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Elf/func_80A05F10.s")
