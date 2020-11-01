/*
 * File: z_en_blkobj.c
 * Overlay: ovl_En_Blkobj
 * Description: Dark Link's Illusion Room
 */

#include "z_en_blkobj.h"

#define FLAGS 0x00000030

#define THIS ((EnBlkobj*)thisx)

void EnBlkobj_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBlkobj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBlkobj_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBlkobj_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809C2148(EnBlkobj* this, GlobalContext* globalCtx);
void func_809C21A0(EnBlkobj* this, GlobalContext* globalCtx);
void func_809C2218(EnBlkobj* this, GlobalContext* globalCtx);
void func_809C22F4(EnBlkobj* this, GlobalContext* globalCtx);

const ActorInit En_Blkobj_InitVars = {
    ACTOR_EN_BLKOBJ,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_BLKOBJ,
    sizeof(EnBlkobj),
    (ActorFunc)EnBlkobj_Init,
    (ActorFunc)EnBlkobj_Destroy,
    (ActorFunc)EnBlkobj_Update,
    (ActorFunc)EnBlkobj_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 300, ICHAIN_STOP),
};

Gfx D_809C2590[] = {
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPEndDisplayList(),
};

Gfx D_809C25A0[] = {
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPEndDisplayList(),
};

extern Gfx D_060014E0[];
extern Gfx D_060053D0[];
extern UNK_TYPE D_06007564;

void func_809C2060(EnBlkobj* this, EnBlkobjActionFunc actionFunc) {
    this->actionFunc = actionFunc;
    this->unk_166 = 0;
}

void EnBlkobj_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBlkobj* this = THIS;
    s32 localC = 0;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    if (Flags_GetClear(globalCtx, this->dyna.actor.room)) {
        this->unk_164 = 0xFF;
        func_809C2060(this, func_809C22F4);
    } else {
        DynaPolyInfo_Alloc(&D_06007564, &localC);
        this->dyna.dynaPolyId =
            DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
        func_809C2060(this, func_809C2148);
    }
}

void EnBlkobj_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBlkobj* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_809C2148(EnBlkobj* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.actor.xzDistFromLink < 120.0f) {
        func_809C2060(this, func_809C21A0);
    }
    player->stateFlags2 |= 0x4000000;
}

void func_809C21A0(EnBlkobj* this, GlobalContext* globalCtx) {
    if (!(this->dyna.actor.flags & 0x40)) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_TORCH2, this->dyna.actor.posRot.pos.x,
                    this->dyna.actor.posRot.pos.y, this->dyna.actor.posRot.pos.z, 0, this->dyna.actor.yawTowardsLink, 0,
                    0);
        func_809C2060(this, func_809C2218);
    }
}

void func_809C2218(EnBlkobj* this, GlobalContext* globalCtx) {
    s32 temp;

    if (this->unk_166 == 0) {
        if (Actor_Find(&globalCtx->actorCtx, ACTOR_EN_TORCH2, ACTORTYPE_BOSS) == NULL) {
            Flags_SetClear(globalCtx, this->dyna.actor.room);
            this->unk_166 += 1;
        }
    } else {
        if (this->unk_166++ > 100) {
            temp = (this->unk_166 - 100) >> 2;
            if (temp > 5) {
                temp = 5;
            }
            this->unk_164 += temp;
            if (this->unk_164 > 255) {
                this->unk_164 = 255;
                func_809C2060(this, func_809C22F4);
                DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
            }
        }
    }
}

void func_809C22F4(EnBlkobj* this, GlobalContext* globalCtx) {
}

void EnBlkobj_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBlkobj* this = THIS;

    this->actionFunc(this, globalCtx);
}

void func_809C2324(GlobalContext* globalCtx, Gfx* dList, s32 alpha) {
    Gfx* segment;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_blkobj.c", 322);

    if (alpha == 255) {
        segment = D_809C2590;
    } else {
        segment = D_809C25A0;
    }

    gSPSegment(POLY_XLU_DISP++, 0x08, segment);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, alpha);
    gSPDisplayList(POLY_XLU_DISP++, dList);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_blkobj.c", 330);
}

void EnBlkobj_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnBlkobj* this = THIS;
    s32 pad;
    s32 temp_a3;
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_blkobj.c", 349);

    func_80093D84(globalCtx->state.gfxCtx);

    gameplayFrames = globalCtx->gameplayFrames % 128;

    gSPSegment(POLY_XLU_DISP++, 0x0D,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames, 0, 32, 32, 1, gameplayFrames, 0, 32, 32));
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_blkobj.c", 363),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->unk_164 != 0) {
        func_809C2324(globalCtx, D_060014E0, this->unk_164);
    }
    temp_a3 = 255 - this->unk_164;
    if (temp_a3 != 0) {
        func_809C2324(globalCtx, D_060053D0, temp_a3);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_blkobj.c", 375);
}
