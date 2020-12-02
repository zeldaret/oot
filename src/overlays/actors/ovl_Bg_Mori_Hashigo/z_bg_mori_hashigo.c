/*
 * File: z_bg_mori_hashigo.c
 * Overlay: ovl_Bg_Mori_Hashigo
 * Description: Falling ladder and clasp that holds it. Unused.
 */

#include "z_bg_mori_hashigo.h"

#define FLAGS 0x00000000

#define THIS ((BgMoriHashigo*)thisx)

void BgMoriHashigo_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriHashigo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriHashigo_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMoriHashigo_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgMoriHashigo_SetupWaitForMoriTex(BgMoriHashigo* this);
void BgMoriHashigo_WaitForMoriTex(BgMoriHashigo* this, GlobalContext* globalCtx);
void BgMoriHashigo_SetupClasp(BgMoriHashigo* this);
void BgMoriHashigo_Clasp(BgMoriHashigo* this, GlobalContext* globalCtx);
void BgMoriHashigo_SetupLadderWait(BgMoriHashigo* this);
void BgMoriHashigo_LadderWait(BgMoriHashigo* this, GlobalContext* globalCtx);
void BgMoriHashigo_SetupLadderFall(BgMoriHashigo* this);
void BgMoriHashigo_LadderFall(BgMoriHashigo* this, GlobalContext* globalCtx);
void BgMoriHashigo_SetupLadderRest(BgMoriHashigo* this);

extern ColHeader D_060037D8;
extern Gfx D_060036B0[];
extern Gfx D_06004770[];

const ActorInit Bg_Mori_Hashigo_InitVars = {
    ACTOR_BG_MORI_HASHIGO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriHashigo),
    (ActorFunc)BgMoriHashigo_Init,
    (ActorFunc)BgMoriHashigo_Destroy,
    (ActorFunc)BgMoriHashigo_Update,
    NULL,
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { 0, { { 0, 0, 0 }, 25 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static InitChainEntry sInitChainClasp[] = {
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 3, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 40, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

static InitChainEntry sInitChainLadder[] = {
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgMoriHashigo_InitDynapoly(BgMoriHashigo* this, GlobalContext* globalCtx, ColHeader* collision, s32 moveFlag) {
    s32 pad;
    ColHeader* colHeader;
    s32 pad2;

    colHeader = NULL;
    DynaPolyInfo_SetActorMove(&this->dyna, moveFlag);
    DynaPolyInfo_Alloc(collision, &colHeader);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);

    if (this->dyna.dynaPolyId == 0x32) {
        // Warning : move BG login failed
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_mori_hashigo.c", 164,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void BgMoriHashigo_InitCollider(BgMoriHashigo* this, GlobalContext* globalCtx) {
    s32 pad;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->dyna.actor, &sJntSphInit, this->colliderItems);

    this->collider.list[0].dim.worldSphere.center.x = (s16)this->dyna.actor.posRot.pos.x;
    this->collider.list[0].dim.worldSphere.center.y = (s16)this->dyna.actor.posRot.pos.y + 21;
    this->collider.list[0].dim.worldSphere.center.z = (s16)this->dyna.actor.posRot.pos.z;
    this->collider.list[0].dim.worldSphere.radius = 19;
}

s32 BgMoriHashigo_SpawnLadder(BgMoriHashigo* this, GlobalContext* globalCtx) {
    f32 sn;
    f32 cs;
    Vec3f pos;
    Actor* ladder;

    cs = Math_Coss(this->dyna.actor.shape.rot.y);
    sn = Math_Sins(this->dyna.actor.shape.rot.y);

    pos.x = 6.0f * sn + this->dyna.actor.posRot.pos.x;
    pos.y = -210.0f + this->dyna.actor.posRot.pos.y;
    pos.z = 6.0f * cs + this->dyna.actor.posRot.pos.z;

    ladder = Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_BG_MORI_HASHIGO, pos.x, pos.y,
                                pos.z, this->dyna.actor.posRot.rot.x, this->dyna.actor.posRot.rot.y,
                                this->dyna.actor.posRot.rot.z, 0);
    if (ladder != NULL) {
        return true;
    } else {
        // Ladder failure
        osSyncPrintf("Error : 梯子の発生失敗(%s %d)(arg_data 0x%04x)\n", "../z_bg_mori_hashigo.c", 220,
                     this->dyna.actor.params);
        return false;
    }
}

s32 BgMoriHashigo_InitClasp(BgMoriHashigo* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->dyna.actor, sInitChainClasp);
    this->dyna.actor.flags |= 1;
    Actor_SetHeight(&this->dyna.actor, 55.0f);
    BgMoriHashigo_InitCollider(this, globalCtx);
    if ((this->dyna.actor.params == -1) && !BgMoriHashigo_SpawnLadder(this, globalCtx)) {
        return false;
    } else {
        return true;
    }
}

s32 BgMoriHashigo_InitLadder(BgMoriHashigo* this, GlobalContext* globalCtx) {
    BgMoriHashigo_InitDynapoly(this, globalCtx, &D_060037D8, DPM_UNK);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChainLadder);
    return true;
}

void BgMoriHashigo_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriHashigo* this = THIS;

    if (this->dyna.actor.params == -1) {
        if (!BgMoriHashigo_InitClasp(this, globalCtx)) {
            Actor_Kill(&this->dyna.actor);
            return;
        }
    } else if (this->dyna.actor.params == 0) {
        if (!BgMoriHashigo_InitLadder(this, globalCtx)) {
            Actor_Kill(&this->dyna.actor);
            return;
        }
    }
    this->moriTexObjIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_MORI_TEX);
    if (this->moriTexObjIndex < 0) {
        // Bank danger!
        osSyncPrintf("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", this->dyna.actor.params,
                     "../z_bg_mori_hashigo.c", 312);
        Actor_Kill(&this->dyna.actor);
    } else {
        BgMoriHashigo_SetupWaitForMoriTex(this);
        // (Forest Temple Ladder and its clasp)
        osSyncPrintf("(森の神殿 梯子とその留め金)(arg_data 0x%04x)\n", this->dyna.actor.params);
    }
}

void BgMoriHashigo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriHashigo* this = THIS;

    if (this->dyna.actor.params == 0) {
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
    if (this->dyna.actor.params == -1) {
        Collider_DestroyJntSph(globalCtx, &this->collider);
    }
}

void BgMoriHashigo_SetupWaitForMoriTex(BgMoriHashigo* this) {
    this->actionFunc = BgMoriHashigo_WaitForMoriTex;
}

void BgMoriHashigo_WaitForMoriTex(BgMoriHashigo* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->moriTexObjIndex)) {
        if (this->dyna.actor.params == -1) {
            BgMoriHashigo_SetupClasp(this);
        } else if (this->dyna.actor.params == 0) {
            BgMoriHashigo_SetupLadderWait(this);
        }
        this->dyna.actor.draw = BgMoriHashigo_Draw;
    }
}

void BgMoriHashigo_SetupClasp(BgMoriHashigo* this) {
    this->actionFunc = BgMoriHashigo_Clasp;
}

void BgMoriHashigo_Clasp(BgMoriHashigo* this, GlobalContext* globalCtx) {
    if (this->hitTimer <= 0) {
        if (this->collider.base.acFlags & 2) {
            this->collider.base.acFlags &= ~2;
            this->hitTimer = 10;
        } else {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

void BgMoriHashigo_SetupLadderWait(BgMoriHashigo* this) {
    this->actionFunc = BgMoriHashigo_LadderWait;
}

void BgMoriHashigo_LadderWait(BgMoriHashigo* this, GlobalContext* globalCtx) {
    BgMoriHashigo* clasp = (BgMoriHashigo*)this->dyna.actor.parent;

    if (clasp->hitTimer > 0) {
        BgMoriHashigo_SetupLadderFall(this);
    }
}

void BgMoriHashigo_SetupLadderFall(BgMoriHashigo* this) {
    this->bounceCounter = 0;
    this->actionFunc = BgMoriHashigo_LadderFall;
    this->dyna.actor.gravity = -1.0f;
    this->dyna.actor.minVelocityY = -10.0f;
    this->dyna.actor.velocity.y = 2.0f;
}

void BgMoriHashigo_LadderFall(BgMoriHashigo* this, GlobalContext* globalCtx) {
    static f32 bounceSpeed[3] = { 4.0f, 2.7f, 1.7f };
    Actor* thisx = &this->dyna.actor;

    Actor_MoveForward(thisx);
    if ((thisx->bgCheckFlags & 1) && (thisx->velocity.y < 0.0f)) {
        if (this->bounceCounter >= ARRAY_COUNT(bounceSpeed)) {
            BgMoriHashigo_SetupLadderRest(this);
        } else {
            func_8002E4B4(globalCtx, thisx, 0.0f, 0.0f, 0.0f, 0x1C);
            thisx->velocity.y = bounceSpeed[this->bounceCounter];
            this->bounceCounter++;
        }
    } else {
        func_8002E4B4(globalCtx, thisx, 0.0f, 0.0f, 0.0f, 0x1C);
    }
}

void BgMoriHashigo_SetupLadderRest(BgMoriHashigo* this) {
    this->actionFunc = NULL;
    this->dyna.actor.gravity = 0.0f;
    this->dyna.actor.velocity.y = 0.0f;
    this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
}

void BgMoriHashigo_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriHashigo* this = THIS;

    if (this->hitTimer > 0) {
        this->hitTimer--;
    }
    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void BgMoriHashigo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriHashigo* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_hashigo.c", 516);
    func_80093D18(globalCtx->state.gfxCtx);
    if (1) {}
    gSPSegment(POLY_OPA_DISP++, 0x08, globalCtx->objectCtx.status[this->moriTexObjIndex].segment);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mori_hashigo.c", 521),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    switch (this->dyna.actor.params) {
        case -1:
            gSPDisplayList(POLY_OPA_DISP++, D_06004770);
            break;
        case 0:
            gSPDisplayList(POLY_OPA_DISP++, D_060036B0);
            break;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_hashigo.c", 531);
}
