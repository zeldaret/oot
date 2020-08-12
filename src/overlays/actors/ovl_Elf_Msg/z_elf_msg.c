#include "z_elf_msg.h"
#include <vt.h>
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"

#define FLAGS 0x00000010

#define THIS ((ElfMsg*)thisx)

void ElfMsg_Init(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg_Update(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809ACDF8(ElfMsg* this, GlobalContext* globalCtx);
void func_809ACF18(ElfMsg* this, GlobalContext* globalCtx);

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

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_STOP),
};

Gfx D_809AD278[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

Vtx D_809AD2B8[] = { VTX(100, 0, 0, 0, 0, 0x59, 0xA7, 0x00, 0xFF),
                     VTX(70, 0, 70, 0, 0, 0x49, 0xB7, 0x49, 0xFF),
                     VTX(0, 0, 100, 0, 0, 0x00, 0xA7, 0x59, 0xFF),
                     VTX(-70, 0, 70, 0, 0, 0xB7, 0xB7, 0x49, 0xFF),
                     VTX(-100, 0, 0, 0, 0, 0xA7, 0xA7, 0x00, 0xFF),
                     VTX(-70, 0, -70, 0, 0, 0xB7, 0xB7, 0xB7, 0xFF),
                     VTX(0, 0, -100, 0, 0, 0x00, 0xA7, 0xA7, 0xFF),
                     VTX(70, 0, -70, 0, 0, 0x49, 0xB7, 0xB7, 0xFF),
                     VTX(100, 100, 0, 0, 0, 0x59, 0x59, 0x00, 0xFF),
                     VTX(70, 100, 70, 0, 0, 0x49, 0x49, 0x49, 0xFF),
                     VTX(0, 100, 100, 0, 0, 0x00, 0x59, 0x59, 0xFF),
                     VTX(-70, 100, 70, 0, 0, 0xB7, 0x49, 0x49, 0xFF),
                     VTX(-100, 100, 0, 0, 0, 0xA7, 0x59, 0x00, 0xFF),
                     VTX(-70, 100, -70, 0, 0, 0xB7, 0x49, 0xB7, 0xFF),
                     VTX(0, 100, -100, 0, 0, 0x00, 0x59, 0xA7, 0xFF),
                     VTX(70, 100, -70, 0, 0, 0x49, 0x49, 0xB7, 0xFF) };

Gfx D_809AD3B8[] = { gsSPVertex(D_809AD2B8, 16, 0),
                     gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
                     gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
                     gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
                     gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
                     gsSP2Triangles(8, 11, 12, 0, 8, 12, 13, 0),
                     gsSP2Triangles(8, 13, 14, 0, 8, 14, 15, 0),
                     gsSP2Triangles(0, 1, 8, 0, 1, 8, 9, 0),
                     gsSP2Triangles(1, 2, 9, 0, 2, 9, 10, 0),
                     gsSP2Triangles(2, 3, 10, 0, 3, 10, 11, 0),
                     gsSP2Triangles(3, 4, 11, 0, 4, 11, 12, 0),
                     gsSP2Triangles(4, 5, 12, 0, 5, 12, 13, 0),
                     gsSP2Triangles(5, 6, 13, 0, 6, 13, 14, 0),
                     gsSP2Triangles(6, 7, 14, 0, 7, 14, 15, 0),
                     gsSP2Triangles(7, 0, 15, 0, 0, 15, 8, 0),
                     gsSPEndDisplayList() };

Vtx D_809AD438[] = { VTX(100, 0, 100, 0, 0, 0x49, 0xB7, 0x49, 0xFF),
                     VTX(100, 0, -100, 0, 0, 0x49, 0xB7, 0xB7, 0xFF),
                     VTX(-100, 0, -100, 0, 0, 0xB7, 0xB7, 0xB7, 0xFF),
                     VTX(-100, 0, 100, 0, 0, 0xB7, 0xB7, 0x49, 0xFF),
                     VTX(100, 100, 100, 0, 0, 0x49, 0x49, 0x49, 0xFF),
                     VTX(100, 100, -100, 0, 0, 0x49, 0x49, 0xB7, 0xFF),
                     VTX(-100, 100, -100, 0, 0, 0xB7, 0x49, 0xB7, 0xFF),
                     VTX(-100, 100, 100, 0, 0, 0xB7, 0x49, 0x49, 0xFF) };

Gfx D_809AD4B8[] = { gsSPVertex(D_809AD438, 8, 0),           gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
                     gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), gsSP2Triangles(0, 1, 4, 0, 1, 4, 5, 0),
                     gsSP2Triangles(1, 2, 5, 0, 2, 5, 6, 0), gsSP2Triangles(2, 3, 6, 0, 3, 6, 7, 0),
                     gsSP2Triangles(3, 0, 7, 0, 0, 7, 4, 0), gsSPEndDisplayList() };

void func_809ACB20(ElfMsg* this, ElfMsgActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

s32 func_809ACB28(ElfMsg* this, GlobalContext* globalCtx) {
    if (this->actor.posRot.rot.y > 0 && this->actor.posRot.rot.y < 0x41 &&
        Flags_GetSwitch(globalCtx, this->actor.posRot.rot.y - 1)) {
        // Mutual destruction
        LOG_STRING("共倒れ", "../z_elf_msg.c", 161);
        if ((this->actor.params >> 8 & 0x3F) != 0x3F) {
            Flags_SetSwitch(globalCtx, this->actor.params >> 8 & 0x3F);
        }

        Actor_Kill(&this->actor);
        return 1;
    }

    else if (this->actor.posRot.rot.y == -1 && Flags_GetClear(globalCtx, this->actor.room) != 0) {
        // Mutual destruction
        LOG_STRING("共倒れ", "../z_elf_msg.c", 172);
        if (this->actor.params >> 8 & 0x3F != 0x3F) {
            Flags_SetSwitch(globalCtx, ((this->actor.params >> 8) & 0x3F));
        }

        Actor_Kill(&this->actor);
        return 1;
    }

    if ((this->actor.params >> 8 & 0x3F) == 0x3F) {
        return 0;
    } else if (Flags_GetSwitch(globalCtx, ((this->actor.params >> 8) & 0x3F))) {
        Actor_Kill(&this->actor);
        return 1;
    }

    return 0;
}

void ElfMsg_Init(Actor* thisx, GlobalContext* globalCtx) {
    ElfMsg* this = THIS;

    // Conditions for Elf Tag disappearing
    osSyncPrintf(VT_FGCOL(CYAN) "\nエルフ タグ 消える条件 %d" VT_RST "\n", (thisx->params >> 8) & 0x3F);
    osSyncPrintf(VT_FGCOL(CYAN) "\nthisx->shape.angle.sy = %d\n" VT_RST, thisx->shape.rot.y);
    if (thisx->shape.rot.y >= 0x41) {
        // Conditions for Elf Tag appearing
        osSyncPrintf(VT_FGCOL(CYAN) "\nエルフ タグ 出現条件 %d" VT_RST "\n", thisx->shape.rot.y - 0x41);
    }

    if (func_809ACB28(this, globalCtx) == 0) {
        Actor_ProcessInitChain(thisx, sInitChain);
        if (thisx->posRot.rot.x == 0) {
            thisx->scale.z = 0.4f;
            thisx->scale.x = 0.4f;
        } else {
            thisx->scale.x = thisx->scale.z = thisx->posRot.rot.x * 0.04f;
        }

        if (thisx->posRot.rot.z == 0) {
            thisx->scale.y = 0.4f;
        } else {
            thisx->scale.y = thisx->posRot.rot.z * 0.04f;
        }

        if (thisx->params & 0x4000) {
            func_809ACB20(this, func_809ACDF8);
        } else {
            func_809ACB20(this, func_809ACF18);
        }

        thisx->shape.rot.z = 0;
        thisx->shape.rot.y = thisx->shape.rot.z;
        thisx->shape.rot.x = thisx->shape.rot.z;
    }
}

void ElfMsg_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

s32 func_809ACDCC(ElfMsg* this) {
    if (this->actor.params & 0x8000) {
        return (this->actor.params & 0xFF) + 0x100;
    } else {
        return -0x100 - (this->actor.params & 0xFF);
    }
}

void func_809ACDF8(ElfMsg* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnElf* navi = (EnElf*)player->navi;

    if ((fabsf(player->actor.posRot.pos.x - this->actor.posRot.pos.x) < (100.0f * this->actor.scale.x)) &&
        (this->actor.posRot.pos.y <= player->actor.posRot.pos.y) &&
        ((player->actor.posRot.pos.y - this->actor.posRot.pos.y) < (100.0f * this->actor.scale.y)) &&
        (fabsf(player->actor.posRot.pos.z - this->actor.posRot.pos.z) < (100.0f * this->actor.scale.z))) {
        player->naviMessageId = func_809ACDCC(this);
        navi->unk_298 = &this->actor;
    }
}

s32 func_809ACEC8(Vec3f* arg0, Vec3f* arg1, f32 arg2) {
    return (SQ(arg1->x - arg0->x) + SQ(arg1->z - arg0->z)) < SQ(arg2);
}

void func_809ACF18(ElfMsg* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnElf* navi = (EnElf*)player->navi;

    if (func_809ACEC8(&player->actor.posRot.pos, &this->actor.posRot.pos, this->actor.scale.x * 100.0f) &&
        (this->actor.posRot.pos.y <= player->actor.posRot.pos.y) &&
        ((player->actor.posRot.pos.y - this->actor.posRot.pos.y) < (100.0f * this->actor.scale.y))) {
        player->naviMessageId = func_809ACDCC(this);
        navi->unk_298 = &this->actor;
    }
}

void ElfMsg_Update(Actor* thisx, GlobalContext* globalCtx) {
    ElfMsg* this = THIS;

    if (func_809ACB28(this, globalCtx) == 0) {
        if (func_8002F194(&this->actor, globalCtx)) {
            if (((this->actor.params >> 8) & 0x3F) != 0x3F) {
                Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
            }
            Actor_Kill(&this->actor);
        } else if ((this->actor.posRot.rot.y < 0x42) || (this->actor.posRot.rot.y >= 0x81) ||
                   Flags_GetSwitch(globalCtx, this->actor.posRot.rot.y - 0x41)) {
            this->actionFunc(this, globalCtx);
        }
    }
}

void ElfMsg_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_elf_msg.c", 436);
    if (nREG(87) != 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        if (thisx->params & 0x8000) {
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 255, 100, 100, nREG(87));
        } else {
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 255, 255, 255, nREG(87));
        }

        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_elf_msg.c", 448),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_809AD278);

        if (thisx->params & 0x4000) {
            gSPDisplayList(gfxCtx->polyXlu.p++, D_809AD4B8);
        } else {
            gSPDisplayList(gfxCtx->polyXlu.p++, D_809AD3B8);
        }

        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_elf_msg.c", 457);
    }
}