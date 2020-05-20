#include "z_elf_msg.h"

#define FLAGS 0x00000010

#define THIS ((ElfMsg*)thisx)

void ElfMsg_Init(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg_Update(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit Elf_Msg_InitVars = {
    ACTOR_ELF_MSG,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ElfMsg),
    (ActorFunc)ElfMsg_Init,
    (ActorFunc)ElfMsg_Destroy,
    (ActorFunc)ElfMsg_Update,
    (ActorFunc)ElfMsg_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/func_809ACB20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/func_809ACB28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/ElfMsg_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/ElfMsg_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/func_809ACDCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/func_809ACDF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/func_809ACEC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/func_809ACF18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/ElfMsg_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg/ElfMsg_Draw.s")
