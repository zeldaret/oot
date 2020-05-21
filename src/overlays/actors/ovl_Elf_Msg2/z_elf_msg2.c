#include "z_elf_msg2.h"

#define FLAGS 0x00000010

#define THIS ((ElfMsg2*)thisx)

void ElfMsg2_Init(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Update(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Elf_Msg2_InitVars = {
    ACTOR_ELF_MSG2,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ElfMsg2),
    (ActorFunc)ElfMsg2_Init,
    (ActorFunc)ElfMsg2_Destroy,
    (ActorFunc)ElfMsg2_Update,
    (ActorFunc)ElfMsg2_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809AD700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809AD708.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/ElfMsg2_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/ElfMsg2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809AD968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809AD978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809AD9F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809ADA28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/ElfMsg2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/ElfMsg2_Draw.s")
