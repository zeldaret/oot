#include "z_elf_msg2.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((ElfMsg2*)thisx)

void ElfMsg2_Init(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Update(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Draw(Actor* thisx, GlobalContext* globalCtx);
u16 func_809AD968(Actor* thisx);
void func_809ADA28(ElfMsg2* this, GlobalContext* globalCtxt);
void func_809AD9F4(ElfMsg2* this, GlobalContext* globalCtxt);


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

// ElfMsg2_SetupAction
void func_809AD700(ElfMsg2 *this, ElfMsg2ActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

#ifdef NON_MATCHING
s32 func_809AD708(Actor* thisx, GlobalContext* globalCtxt) {

    s16 temp = thisx->posRot.rot.y;
    s32 temp2;
    Actor *new_var;

    if (0 < temp && temp < 0x41) {
        if (Flags_GetSwitch(globalCtxt, temp - 1)) {
            LogUtils_LogThreadId("../z_elf_msg2.c", 0xAB);
            osSyncPrintf("\"共倒れ\" = %s\n", "共倒れ");
            temp2 = ((new_var->params >> 8) & 0x3F);
            if (temp2 != 0x3F) {
                Flags_SetSwitch(globalCtxt, temp2);
            }
            Actor_Kill(new_var);
            return 1;
        }
    }
    
    if (temp == -1) {
        if (Flags_GetClear(globalCtxt, new_var->room)) {
            LogUtils_LogThreadId("../z_elf_msg2.c", 0xB6);
            osSyncPrintf("\"共倒れ２\" = %s\n", "共倒れ２");
            new_var = new_var;
            temp2 = ((new_var->params >> 8) & 0x3F);
            if (temp2 != 0x3F) {
                Flags_SetSwitch(globalCtxt, temp2);
            }
            Actor_Kill(new_var);
            return 1;
        }
    }
    temp2 = ((new_var->params >> 8) & 0x3F);
    if (temp2 != 0x3F) {
        if (Flags_GetSwitch(globalCtxt, temp2)) {
            LogUtils_LogThreadId("../z_elf_msg2.c", 0xC0);
            osSyncPrintf("\"共倒れ\" = %s\n", "共倒れ");
            Actor_Kill(new_var);
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809AD708.s")
#endif

extern InitChainEntry D_809ADC30[];

void ElfMsg2_Init(Actor* thisx, GlobalContext* globalCtx) {
    ElfMsg2* this = THIS;
    s32 temp_ret;

    osSyncPrintf(VT_FGCOL(CYAN) " Elf_Msg2_Actor_ct %04x\n\n" VT_RST, this->actor.params);
    if (!func_809AD708(thisx, globalCtx)) {
        if (0 < this->actor.posRot.rot.x && this->actor.posRot.rot.x < 8) {
            this->actor.unk_1F = (this->actor.posRot.rot.x - 1);
        }
        Actor_ProcessInitChain(thisx, D_809ADC30);
        if (this->actor.posRot.rot.y >= 0x41) {
            func_809AD700(this, &func_809ADA28);
        } else {
            func_809AD700(this, &func_809AD9F4);
            this->actor.flags = (this->actor.flags | 0x40001);
            this->actor.textId = func_809AD968(thisx);
        }
        this->actor.shape.rot.z = 0;
        this->actor.shape.rot.y = this->actor.shape.rot.z;
        this->actor.shape.rot.x = this->actor.shape.rot.z;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/ElfMsg2_Init.s")


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/ElfMsg2_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809AD968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809AD978.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809AD9F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/func_809ADA28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/ElfMsg2_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/ElfMsg2_Draw.s")
