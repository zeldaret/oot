/*
 * File: z_elf_msg.c
 * Overlay: ovl_Elf_Msg
 * Description: Readable Navi call spot
 */

#include "z_elf_msg.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"

#define FLAGS 0x00000010

#define THIS ((ElfMsg*)thisx)

void ElfMsg_Init(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg_Update(Actor* thisx, GlobalContext* globalCtx);
void ElfMsg_Draw(Actor* thisx, GlobalContext* globalCtx);

void ElfMsg_CallNaviCuboid(ElfMsg* this, GlobalContext* globalCtx);
void ElfMsg_CallNaviCylinder(ElfMsg* this, GlobalContext* globalCtx);

const ActorInit Elf_Msg_InitVars = {
    ACTOR_ELF_MSG,
    ACTORCAT_ITEMACTION,
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

// Draw properties
static Gfx D_809AD278[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

static Vtx sCylinderVertices[] = {
    VTX(100, 0, 0, 0, 0, 0x59, 0xA7, 0x00, 0xFF),    VTX(70, 0, 70, 0, 0, 0x49, 0xB7, 0x49, 0xFF),
    VTX(0, 0, 100, 0, 0, 0x00, 0xA7, 0x59, 0xFF),    VTX(-70, 0, 70, 0, 0, 0xB7, 0xB7, 0x49, 0xFF),
    VTX(-100, 0, 0, 0, 0, 0xA7, 0xA7, 0x00, 0xFF),   VTX(-70, 0, -70, 0, 0, 0xB7, 0xB7, 0xB7, 0xFF),
    VTX(0, 0, -100, 0, 0, 0x00, 0xA7, 0xA7, 0xFF),   VTX(70, 0, -70, 0, 0, 0x49, 0xB7, 0xB7, 0xFF),
    VTX(100, 100, 0, 0, 0, 0x59, 0x59, 0x00, 0xFF),  VTX(70, 100, 70, 0, 0, 0x49, 0x49, 0x49, 0xFF),
    VTX(0, 100, 100, 0, 0, 0x00, 0x59, 0x59, 0xFF),  VTX(-70, 100, 70, 0, 0, 0xB7, 0x49, 0x49, 0xFF),
    VTX(-100, 100, 0, 0, 0, 0xA7, 0x59, 0x00, 0xFF), VTX(-70, 100, -70, 0, 0, 0xB7, 0x49, 0xB7, 0xFF),
    VTX(0, 100, -100, 0, 0, 0x00, 0x59, 0xA7, 0xFF), VTX(70, 100, -70, 0, 0, 0x49, 0x49, 0xB7, 0xFF),
};

// Polygons for cylinder
static Gfx D_809AD3B8[] = {
    gsSPVertex(sCylinderVertices, 16, 0),       gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),     gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),  gsSP2Triangles(8, 11, 12, 0, 8, 12, 13, 0),
    gsSP2Triangles(8, 13, 14, 0, 8, 14, 15, 0), gsSP2Triangles(0, 1, 8, 0, 1, 8, 9, 0),
    gsSP2Triangles(1, 2, 9, 0, 2, 9, 10, 0),    gsSP2Triangles(2, 3, 10, 0, 3, 10, 11, 0),
    gsSP2Triangles(3, 4, 11, 0, 4, 11, 12, 0),  gsSP2Triangles(4, 5, 12, 0, 5, 12, 13, 0),
    gsSP2Triangles(5, 6, 13, 0, 6, 13, 14, 0),  gsSP2Triangles(6, 7, 14, 0, 7, 14, 15, 0),
    gsSP2Triangles(7, 0, 15, 0, 0, 15, 8, 0),   gsSPEndDisplayList(),
};

static Vtx sCuboidVertices[] = {
    VTX(100, 0, 100, 0, 0, 0x49, 0xB7, 0x49, 0xFF),     VTX(100, 0, -100, 0, 0, 0x49, 0xB7, 0xB7, 0xFF),
    VTX(-100, 0, -100, 0, 0, 0xB7, 0xB7, 0xB7, 0xFF),   VTX(-100, 0, 100, 0, 0, 0xB7, 0xB7, 0x49, 0xFF),
    VTX(100, 100, 100, 0, 0, 0x49, 0x49, 0x49, 0xFF),   VTX(100, 100, -100, 0, 0, 0x49, 0x49, 0xB7, 0xFF),
    VTX(-100, 100, -100, 0, 0, 0xB7, 0x49, 0xB7, 0xFF), VTX(-100, 100, 100, 0, 0, 0xB7, 0x49, 0x49, 0xFF),
};

// Polygons for cuboid
static Gfx D_809AD4B8[] = {
    gsSPVertex(sCuboidVertices, 8, 0),      gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0), gsSP2Triangles(0, 1, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(1, 2, 5, 0, 2, 5, 6, 0), gsSP2Triangles(2, 3, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(3, 0, 7, 0, 0, 7, 4, 0), gsSPEndDisplayList(),
};

void ElfMsg_SetupAction(ElfMsg* this, ElfMsgActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

/**
 * Checks a scene flag - if flag is set, the actor is killed and function returns 1. Otherwise returns 0.
 * Can also set a switch flag from params while killing.
 */
s32 ElfMsg_KillCheck(ElfMsg* this, GlobalContext* globalCtx) {

    if ((this->actor.world.rot.y > 0) && (this->actor.world.rot.y < 0x41) &&
        (Flags_GetSwitch(globalCtx, this->actor.world.rot.y - 1))) {
        // "Mutual destruction"
        LOG_STRING("共倒れ", "../z_elf_msg.c", 161);
        if (((this->actor.params >> 8) & 0x3F) != 0x3F) {
            Flags_SetSwitch(globalCtx, ((this->actor.params >> 8) & 0x3F));
        }
        Actor_Kill(&this->actor);
        return 1;
    } else if ((this->actor.world.rot.y == -1) && (Flags_GetClear(globalCtx, this->actor.room))) {
        // "Mutual destruction"
        LOG_STRING("共倒れ", "../z_elf_msg.c", 172);
        if (((this->actor.params >> 8) & 0x3F) != 0x3F) {
            Flags_SetSwitch(globalCtx, ((this->actor.params >> 8) & 0x3F));
        }
        Actor_Kill(&this->actor);
        return 1;
    } else if (((this->actor.params >> 8) & 0x3F) == 0x3F) {
        return 0;
    } else if (Flags_GetSwitch(globalCtx, ((this->actor.params >> 8) & 0x3F))) {
        Actor_Kill(&this->actor);
        return 1;
    }
    return 0;
}

void ElfMsg_Init(Actor* thisx, GlobalContext* globalCtx) {
    ElfMsg* this = THIS;

    // "Conditions for Elf Tag disappearing"
    osSyncPrintf(VT_FGCOL(CYAN) "\nエルフ タグ 消える条件 %d" VT_RST "\n", (thisx->params >> 8) & 0x3F);
    osSyncPrintf(VT_FGCOL(CYAN) "\nthisx->shape.angle.sy = %d\n" VT_RST, thisx->shape.rot.y);
    if (thisx->shape.rot.y >= 0x41) {
        // "Conditions for Elf Tag appearing"
        osSyncPrintf(VT_FGCOL(CYAN) "\nエルフ タグ 出現条件 %d" VT_RST "\n", thisx->shape.rot.y - 0x41);
    }

    if (!ElfMsg_KillCheck(this, globalCtx)) {
        Actor_ProcessInitChain(thisx, sInitChain);
        if (thisx->world.rot.x == 0) {
            thisx->scale.z = 0.4f;
            thisx->scale.x = 0.4f;
        } else {
            thisx->scale.x = thisx->scale.z = thisx->world.rot.x * 0.04f;
        }

        if (thisx->world.rot.z == 0) {
            thisx->scale.y = 0.4f;
        } else {
            thisx->scale.y = thisx->world.rot.z * 0.04f;
        }

        if (thisx->params & 0x4000) {
            ElfMsg_SetupAction(this, ElfMsg_CallNaviCuboid);
        } else {
            ElfMsg_SetupAction(this, ElfMsg_CallNaviCylinder);
        }

        thisx->shape.rot.x = thisx->shape.rot.y = thisx->shape.rot.z = 0;
    }
}

void ElfMsg_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

s32 ElfMsg_GetMessageId(ElfMsg* this) {
    // Negative message ID forces link to talk to Navi
    if (this->actor.params & 0x8000) {
        return (this->actor.params & 0xFF) + 0x100;
    } else {
        return -((this->actor.params & 0xFF) + 0x100);
    }
}

void ElfMsg_CallNaviCuboid(ElfMsg* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    EnElf* navi = (EnElf*)player->naviActor;

    if ((fabsf(player->actor.world.pos.x - this->actor.world.pos.x) < (100.0f * this->actor.scale.x)) &&
        (this->actor.world.pos.y <= player->actor.world.pos.y) &&
        ((player->actor.world.pos.y - this->actor.world.pos.y) < (100.0f * this->actor.scale.y)) &&
        (fabsf(player->actor.world.pos.z - this->actor.world.pos.z) < (100.0f * this->actor.scale.z))) {
        player->naviTextId = ElfMsg_GetMessageId(this);
        navi->elfMsg = this;
    }
}

s32 ElfMsg_WithinXZDistance(Vec3f* pos1, Vec3f* pos2, f32 distance) {
    return (SQ(pos2->x - pos1->x) + SQ(pos2->z - pos1->z)) < SQ(distance);
}

void ElfMsg_CallNaviCylinder(ElfMsg* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    EnElf* navi = (EnElf*)player->naviActor;

    if (ElfMsg_WithinXZDistance(&player->actor.world.pos, &this->actor.world.pos, this->actor.scale.x * 100.0f) &&
        (this->actor.world.pos.y <= player->actor.world.pos.y) &&
        ((player->actor.world.pos.y - this->actor.world.pos.y) < (100.0f * this->actor.scale.y))) {
        player->naviTextId = ElfMsg_GetMessageId(this);
        navi->elfMsg = this;
    }
}

void ElfMsg_Update(Actor* thisx, GlobalContext* globalCtx) {
    ElfMsg* this = THIS;

    if (!ElfMsg_KillCheck(this, globalCtx)) {
        if (func_8002F194(&this->actor, globalCtx)) {
            if (((this->actor.params >> 8) & 0x3F) != 0x3F) {
                Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
            }
            Actor_Kill(&this->actor);
            return;
        }
        if ((this->actor.world.rot.y <= 0x41) || (this->actor.world.rot.y > 0x80) ||
            Flags_GetSwitch(globalCtx, this->actor.world.rot.y - 0x41)) {
            this->actionFunc(this, globalCtx);
        }
    }
}

void ElfMsg_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_elf_msg.c", 436);

    if (R_NAVI_MSG_REGION_ALPHA == 0) {
        return;
    }

    func_80093D18(globalCtx->state.gfxCtx);
    if (thisx->params & 0x8000) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 100, 100, R_NAVI_MSG_REGION_ALPHA);
    } else {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, R_NAVI_MSG_REGION_ALPHA);
    }

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_elf_msg.c", 448),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_809AD278);

    if (thisx->params & 0x4000) {
        gSPDisplayList(POLY_XLU_DISP++, D_809AD4B8);
    } else {
        gSPDisplayList(POLY_XLU_DISP++, D_809AD3B8);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_elf_msg.c", 457);
}
