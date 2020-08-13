/*
 * File: z_elf_msg2.c
 * Overlay: ovl_Elf_Msg2
 * Description: Targetable navi check spot
 */

#include "z_elf_msg2.h"
#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((ElfMsg2*)thisx)

void ElfMsg2_Init(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Update(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg2_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 ElfMsg2_GetMessageId(ElfMsg2* this);
void ElfMsg2_TextInit(ElfMsg2* this, GlobalContext* globalCtx);
void ElfMsg2_CheckForRead(ElfMsg2* this, GlobalContext* globalCtx);

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

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_STOP),
};

// Sets up draw properties for square faces of cuboid
Gfx D_809ADC38[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

// Corner vertices of a small cuboid
Vtx D_809ADC78[] = {
    VTX(100, 0, 100, 0, 0, 0x49, 0xB7, 0x49, 0xFF),     VTX(100, 0, -100, 0, 0, 0x49, 0xB7, 0xB7, 0xFF),
    VTX(-100, 0, -100, 0, 0, 0xB7, 0xB7, 0xB7, 0xFF),   VTX(-100, 0, 100, 0, 0, 0xB7, 0xB7, 0x49, 0xFF),
    VTX(100, 100, 100, 0, 0, 0x49, 0x49, 0x49, 0xFF),   VTX(100, 100, -100, 0, 0, 0x49, 0x49, 0xB7, 0xFF),
    VTX(-100, 100, -100, 0, 0, 0xB7, 0x49, 0xB7, 0xFF), VTX(-100, 100, 100, 0, 0, 0xB7, 0x49, 0x49, 0xFF),
};

// Draws the cuboid
Gfx D_809ADCF8[] = {
    gsSPVertex(D_809ADC78, 8, 0),           gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), gsSP2Triangles(0, 1, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(1, 2, 5, 0, 2, 5, 6, 0), gsSP2Triangles(2, 3, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(3, 0, 7, 0, 0, 7, 4, 0), gsSPEndDisplayList(),
};

void ElfMsg2_SetupAction(ElfMsg2* this, ElfMsg2ActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

/**
 * Checks a scene flag and kills the actor if set. Can also set a switch flag from rot.y or params.
 */
s32 ElfMsg2_KillCheck(ElfMsg2* this, GlobalContext* globalCtx) {
    // Checking a switch or temp switch flag (from rot.y):
    if ((this->actor.posRot.rot.y > 0) && (this->actor.posRot.rot.y < 0x41) &&
        (Flags_GetSwitch(globalCtx, this->actor.posRot.rot.y - 1))) {
        // Mutual destruction
        LOG_STRING("共倒れ", "../z_elf_msg2.c", 171);
        if ((this->actor.params >> 8 & 0x3F) != 0x3F) {
            Flags_SetSwitch(globalCtx, (this->actor.params >> 8 & 0x3F));
        }
        Actor_Kill(&this->actor);
        return 1;
    }
    // Checking a room clear flag:
    else if ((this->actor.posRot.rot.y == -1) && (Flags_GetClear(globalCtx, this->actor.room))) {
        // Mutual destruction 2
        LOG_STRING("共倒れ２", "../z_elf_msg2.c", 182);
        if (((this->actor.params >> 8) & 0x3F) != 0x3F) {
            Flags_SetSwitch(globalCtx, ((this->actor.params >> 8) & 0x3F));
        }
        Actor_Kill(&this->actor);
        return 1;
    } else if (((this->actor.params >> 8) & 0x3F) == 0x3F) {
        return 0;
    }
    // Checking a switch or temp switch flag (from params):
    else if (Flags_GetSwitch(globalCtx, ((this->actor.params >> 8) & 0x3F))) {
        // Mutual destruction
        LOG_STRING("共倒れ", "../z_elf_msg2.c", 192);
        Actor_Kill(&this->actor);
        return 1;
    }
    return 0;
}

void ElfMsg2_Init(Actor* thisx, GlobalContext* globalCtx) {
    ElfMsg2* this = THIS;

    osSyncPrintf(VT_FGCOL(CYAN) " Elf_Msg2_Actor_ct %04x\n\n" VT_RST, this->actor.params);
    if (!ElfMsg2_KillCheck(this, globalCtx)) {
        if ((this->actor.posRot.rot.x > 0) && (this->actor.posRot.rot.x < 8)) {
            this->actor.unk_1F = (this->actor.posRot.rot.x - 1);
        }
        Actor_ProcessInitChain(thisx, sInitChain);
        if (this->actor.posRot.rot.y >= 0x41) {
            ElfMsg2_SetupAction(this, ElfMsg2_TextInit);
        } else {
            ElfMsg2_SetupAction(this, ElfMsg2_CheckForRead);
            this->actor.flags |= 0x00040001;
            this->actor.textId = ElfMsg2_GetMessageId(this);
        }
        this->actor.shape.rot.x = this->actor.shape.rot.y = this->actor.shape.rot.z = 0;
    }
}

void ElfMsg2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

s32 ElfMsg2_GetMessageId(ElfMsg2* this) {
    return (this->actor.params & 0xFF) + 0x100;
}

/**
 * Runs while navi text is up. Handles the killing of the actor upon closing the text box, can also set a switch flag
 * from params.
 */
void ElfMsg2_Read(ElfMsg2* this, GlobalContext* globalCtx) {
    s32 switchFlag;

    // If the text box is closing this frame:
    if (func_8002F334(&this->actor, globalCtx)) {
        if (this->actor.posRot.rot.z != 1) {
            Actor_Kill(&this->actor);
            switchFlag = (this->actor.params >> 8) & 0x3F;
            if (switchFlag != 0x3F) {
                Flags_SetSwitch(globalCtx, switchFlag);
            }
        } else {
            ElfMsg2_SetupAction(this, ElfMsg2_CheckForRead);
        }
    }
}

/**
 * Runs while navi text is not up. If text box flag is set, this function unsets it and proceeds to ElfMsg2_Read.
 */
void ElfMsg2_CheckForRead(ElfMsg2* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        ElfMsg2_SetupAction(this, ElfMsg2_Read);
    }
}

void ElfMsg2_TextInit(ElfMsg2* this, GlobalContext* globalCtx) {
    if ((this->actor.posRot.rot.y >= 0x41) && (this->actor.posRot.rot.y < 0x81)) {
        if (Flags_GetSwitch(globalCtx, (this->actor.posRot.rot.y - 0x41))) {
            ElfMsg2_SetupAction(this, ElfMsg2_CheckForRead);
            this->actor.flags |= 0x00040001;
            this->actor.textId = ElfMsg2_GetMessageId(this);
        }
    }
}

void ElfMsg2_Update(Actor* thisx, GlobalContext* globalCtx) {
    ElfMsg2* this = THIS;
    if (!ElfMsg2_KillCheck(this, globalCtx)) {
        this->actionFunc(this, globalCtx);
    }
}

/**
 * If nREG(87) is nonzero, a small translucent cuboid (with alpha = nREG(87)) is drawn around the check spot.
 */
void ElfMsg2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_elf_msg2.c", 355);
    if (nREG(87) == 0) {
        return;
    }
    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 100, 100, 255, nREG(87));
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_elf_msg2.c", 362),
                G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_809ADC38);
    gSPDisplayList(gfxCtx->polyXlu.p++, &D_809ADCF8);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_elf_msg2.c", 367);
}
