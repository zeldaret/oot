#include "z_elf_msg2.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((ElfMsg2*)thisx)

void ElfMsg2_Init(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Update(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Draw(Actor* thisx, GlobalContext* globalCtx);
s32 func_809AD968(ElfMsg2 *this);
void func_809ADA28(ElfMsg2* this, GlobalContext* globalCtx);
void func_809AD9F4(ElfMsg2* this, GlobalContext* globalCtx);


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

s32 func_809AD708(ElfMsg2 *this, GlobalContext* globalCtx) {
    s32 temp_a1;
    s32 roty = this->actor.posRot.rot.y;

    if (0 < roty && roty < 0x41) {
            if (Flags_GetSwitch(globalCtx, roty - 1)) {
                LOG_STRING("共倒れ","../z_elf_msg2.c",171);
                temp_a1 = (this->actor.params >> 8) & 0x3F;
                if (temp_a1 != 0x3F) {
                    Flags_SetSwitch(globalCtx, temp_a1);
                }
                Actor_Kill(&this->actor);
                return 1;
            }
    }
    
    if (this->actor.posRot.rot.y == -1) {
        if (Flags_GetClear(globalCtx, this->actor.room)) {
            LOG_STRING("共倒れ２","../z_elf_msg2.c",182);
            temp_a1 = (this->actor.params >> 8) & 0x3F;
            if (temp_a1 != 0x3F) {
                Flags_SetSwitch(globalCtx, temp_a1);
            }
            Actor_Kill(&this->actor);
            return 1;
        }
    }
    
    temp_a1 = (this->actor.params >> 8) & 0x3F;
    if (temp_a1 == 0x3F) {
        return 0;
    }
    if (Flags_GetSwitch(globalCtx, temp_a1)) {
        LOG_STRING("共倒れ","../z_elf_msg2.c",192);
        Actor_Kill(&this->actor);
        return 1;
    }
    return 0;
}

extern InitChainEntry D_809ADC30[];

void ElfMsg2_Init(Actor* thisx, GlobalContext* globalCtx) {
    ElfMsg2* this = THIS;
    s32 flags;

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
            this->actor.textId = func_809AD968(this);
        }
        this->actor.shape.rot.z = 0;
        this->actor.shape.rot.y = this->actor.shape.rot.z;
        this->actor.shape.rot.x = this->actor.shape.rot.z;
    }
}

void ElfMsg2_Destroy(Actor* thisx, GlobalContext* globalCtx){

}

s32 func_809AD968(ElfMsg2 *this) {
    return (this->actor.params & 0xFF) + 0x100;
}

void func_809AD978(ElfMsg2 *this, GlobalContext *globalCtx) {
    s32 temp_a1;
    if (func_8002F334(&this->actor, globalCtx) != 0) {
        if (this->actor.posRot.rot.z != 1) {
            Actor_Kill(&this->actor);
            temp_a1 = (this->actor.params >> 8) & 0x3F;
            if (temp_a1 != 0x3F) {
                Flags_SetSwitch(globalCtx, temp_a1);
            }
            return;
        }
        func_809AD700(this, &func_809AD9F4);
    }
}

void func_809AD9F4(ElfMsg2 *this, GlobalContext *globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        func_809AD700(this, &func_809AD978);
    }
}

void func_809ADA28(ElfMsg2* this, GlobalContext* globalCtx) {
    s32 roty = this->actor.posRot.rot.y;
    if (0x41 <= roty && roty < 0x81) {
        if (Flags_GetSwitch(globalCtx, roty - 0x41) != 0) {
            func_809AD700(this, &func_809AD9F4);
            this->actor.flags = this->actor.flags | 0x40001;
            this->actor.textId = func_809AD968(this);
        }
    }
}

void ElfMsg2_Update(Actor* thisx, GlobalContext* globalCtx) {
    ElfMsg2* this = THIS;
    if (!func_809AD708(thisx, globalCtx)) {
        this->actionFunc(this, globalCtx);
    }
}

extern void* D_809ADC38;
extern void* D_809ADCF8;

void ElfMsg2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext *gfxCtx;
    Gfx* dispRefs[4];
    
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_elf_msg2.c", 355);
    if (nREG(87) != 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 100, 100, 255, nREG(87));
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_elf_msg2.c", 362),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++,&D_809ADC38);
        gSPDisplayList(gfxCtx->polyXlu.p++,&D_809ADCF8);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_elf_msg2.c", 367);
    }
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Elf_Msg2/ElfMsg2_Draw.s")
