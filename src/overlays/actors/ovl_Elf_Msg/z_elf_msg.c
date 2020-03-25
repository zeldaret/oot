#include "z_elf_msg.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void ElfMsg_Init(ElfMsg* this, GlobalContext* globalCtx);
void ElfMsg_Destroy(ElfMsg* this, GlobalContext* globalCtx);
void ElfMsg_Update(ElfMsg* this, GlobalContext* globalCtx);
void ElfMsg_Draw(ElfMsg* this, GlobalContext* globalCtx);

/*
const ActorInit Elf_Msg_InitVars = {
    ACTOR_ELF_MSG,
    ACTORTYPE_ITEMACTION,
    ROOM,
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
