/*
 * File: z_en_bom.c
 * Overlay: ovl_En_Bom
 * Description: Bomb
 */

#include "z_en_bom.h"

#define FLAGS 0x00000030

#define THIS ((EnBom*)thisx)

void EnBom_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnBom_Move(EnBom* this, GlobalContext* globalCtx);
void EnBom_WaitForRelease(EnBom* this, GlobalContext* globalCtx);

const ActorInit En_Bom_InitVars = {
    ACTOR_EN_BOM,
    ACTORTYPE_EXPLOSIVES,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBom),
    (ActorFunc)EnBom_Init,
    (ActorFunc)EnBom_Destroy,
    (ActorFunc)EnBom_Update,
    (ActorFunc)EnBom_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x29, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0x0003F828, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 6, 11, 14, { 0, 0, 0 } },
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000008, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 0, { { 0, 0, 0 }, 0 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK0, 0x39, 0x00, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 61536, ICHAIN_STOP),
};

extern Gfx D_04007A50[]; // gold fuse cap
extern Gfx D_04007860[]; // bomb

void EnBom_SetupAction(EnBom* this, EnBomActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBom_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBom* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    ActorShape_Init(&thisx->shape, 700.0f, ActorShadow_DrawFunc_Circle, 16.0f);
    thisx->colChkInfo.mass = 200;
    thisx->colChkInfo.unk_10 = 5;
    thisx->colChkInfo.unk_12 = 0xA;
    this->timer = 70;
    this->flashSpeedScale = 7;
    Collider_InitCylinder(globalCtx, &this->bombCollider);
    Collider_InitJntSph(globalCtx, &this->explosionCollider);
    Collider_SetCylinder(globalCtx, &this->bombCollider, thisx, &sCylinderInit);
    Collider_SetJntSph(globalCtx, &this->explosionCollider, thisx, &sJntSphInit, &this->explosionColliderItems[0]);
    this->explosionColliderItems[0].body.toucher.damage += (thisx->shape.rot.z & 0xFF00) >> 8;

    thisx->shape.rot.z &= 0xFF;
    if (thisx->shape.rot.z & 0x80) {
        thisx->shape.rot.z |= 0xFF00;
    }

    EnBom_SetupAction(this, EnBom_Move);
}

void EnBom_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBom* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->explosionCollider);
    Collider_DestroyCylinder(globalCtx, &this->bombCollider);
}

void EnBom_Move(EnBom* this, GlobalContext* globalCtx) {
    // if attached A is not null, the bomb hasnt been released yet
    if (func_8002F410(&this->actor, globalCtx)) {
        EnBom_SetupAction(this, EnBom_WaitForRelease);
        this->actor.room = -1;
        return;
    }

    if ((this->actor.velocity.y > 0.0f) && (this->actor.bgCheckFlags & 0x10)) {
        this->actor.velocity.y = -this->actor.velocity.y;
    }

    // rebound bomb off the wall it hits
    if ((this->actor.speedXZ != 0.0f) && (this->actor.bgCheckFlags & 8)) {
        if (ABS((s16)(this->actor.wallPolyRot - this->actor.posRot.rot.y)) > 0x4000) {
            this->actor.posRot.rot.y =
                ((this->actor.wallPolyRot - this->actor.posRot.rot.y) + this->actor.wallPolyRot) - 0x8000;
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_BOUND);
        Actor_MoveForward(&this->actor);
        this->actor.speedXZ *= 0.7f;
        this->actor.bgCheckFlags &= ~8;
    }

    if (!(this->actor.bgCheckFlags & 1)) {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.08f);
    } else {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 1.0f);
        if ((this->actor.bgCheckFlags & 2) && (this->actor.velocity.y < -3.0f)) {
            func_8002F850(globalCtx, &this->actor);
            this->actor.velocity.y *= -0.3f;
            this->actor.bgCheckFlags &= ~2;
        } else if (this->timer >= 4) {
            func_8002F580(&this->actor, globalCtx);
        }
    }

    Actor_MoveForward(&this->actor);
}

void EnBom_WaitForRelease(EnBom* this, GlobalContext* globalCtx) {
    // if attachedA is NULL bomb has been released
    if (func_8002F5A0(&this->actor, globalCtx)) {
        EnBom_SetupAction(this, EnBom_Move);
        EnBom_Move(this, globalCtx);
    }
}

void EnBom_Explode(EnBom* this, GlobalContext* globalCtx) {
    Player* player;

    if (this->explosionCollider.list->dim.modelSphere.radius == 0) {
        this->actor.flags |= 0x20;
        func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
    }

    this->explosionCollider.list->dim.worldSphere.radius += this->actor.shape.rot.z + 8;

    if (this->actor.params == BOMB_EXPLOSION) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->explosionCollider.base);
    }

    if (globalCtx->envCtx.unk_8C[3] != 0) {
        globalCtx->envCtx.unk_8C[3] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[4] != 0) {
        globalCtx->envCtx.unk_8C[4] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[5] != 0) {
        globalCtx->envCtx.unk_8C[5] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[0] != 0) {
        globalCtx->envCtx.unk_8C[0] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[1] != 0) {
        globalCtx->envCtx.unk_8C[1] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[2] != 0) {
        globalCtx->envCtx.unk_8C[2] -= 0x19;
    }

    if (this->timer == 0) {
        player = PLAYER;

        if ((player->stateFlags1 & 0x800) && (player->heldActor == &this->actor)) {
            player->actor.attachedB = NULL;
            player->heldActor = NULL;
            player->interactRangeActor = NULL;
            player->stateFlags1 &= ~0x800;
        }

        Actor_Kill(&this->actor);
    }
}

void EnBom_Update(Actor* thisx, GlobalContext* globalCtx) {
    Vec3f effVelocity = { 0.0f, 0.0f, 0.0f };
    Vec3f bomb2Accel = { 0.0f, 0.1f, 0.0f };
    Vec3f effAccel = { 0.0f, 0.0f, 0.0f };
    Vec3f effPos;
    Vec3f dustAccel = { 0.0f, 0.6f, 0.0f };
    Color_RGBA8_n dustColor = { 255, 255, 255, 255 };
    s32 pad[2];
    EnBom* this = THIS;

    thisx->gravity = -1.2f;

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 67) {
        Audio_PlayActorSound2(thisx, NA_SE_PL_TAKE_OUT_SHIELD);
        Actor_SetScale(thisx, 0.01f);
    }

    if ((thisx->xzDistFromLink >= 20.0f) || (ABS(thisx->yDistFromLink) >= 80.0f)) {
        this->bumpOn = true;
    }

    this->actionFunc(this, globalCtx);

    func_8002E4B4(globalCtx, thisx, 5.0f, 10.0f, 15.0f, 0x1F);

    if (thisx->params == BOMB_BODY) {
        if (this->timer < 63) {
            dustAccel.y = 0.2f;

            // spawn spark effect on even frames
            effPos = thisx->posRot.pos;
            effPos.y += 17.0f;
            if ((globalCtx->gameplayFrames % 2) == 0) {
                func_80029184(globalCtx, thisx, &effPos, &effVelocity, &effAccel);
            }

            Audio_PlayActorSound2(thisx, NA_SE_IT_BOMB_IGNIT - SFX_FLAG);

            effPos.y += 3.0f;
            func_8002829C(globalCtx, &effPos, &effVelocity, &dustAccel, &dustColor, &dustColor, 0x32, 5);
        }

        if ((this->bombCollider.base.acFlags & 2) ||
            ((this->bombCollider.base.maskA & 2) && (this->bombCollider.base.oc->type == ACTORTYPE_ENEMY))) {
            this->timer = 0;
            thisx->shape.rot.z = 0;
        } else {
            // if a lit stick touches the bomb, set timer to 100
            // these bombs never have a timer over 70, so this isnt used
            if ((this->timer > 100) && func_8008EF5C(globalCtx, &thisx->posRot.pos, 30.0f, 50.0f)) {
                this->timer = 100;
            }
        }

        dustAccel.y = 0.2f;
        effPos = thisx->posRot.pos;
        effPos.y += 10.0f;

        // double bomb flash speed and adjust red color at certain times during the countdown
        if ((this->timer == 3) || (this->timer == 20) || (this->timer == 40)) {
            thisx->shape.rot.z = 0;
            this->flashSpeedScale >>= 1;
        }

        if ((this->timer < 100) && ((this->timer & (this->flashSpeedScale + 1)) != 0)) {
            Math_SmoothScaleMaxMinF(&this->flashIntensity, 140.0f, 1.0f, 140.0f / this->flashSpeedScale, 0.0f);
        } else {
            Math_SmoothScaleMaxMinF(&this->flashIntensity, 0.0f, 1.0f, 140.0f / this->flashSpeedScale, 0.0f);
        }

        if (this->timer < 3) {
            Actor_SetScale(thisx, thisx->scale.x + 0.002f);
        }

        if (this->timer == 0) {
            effPos = thisx->posRot.pos;

            effPos.y += 10.0f;
            if (func_8002F410(thisx, globalCtx)) {
                effPos.y += 30.0f;
            }

            func_80028E84(globalCtx, &effPos, &effVelocity, &bomb2Accel, 0x64, (thisx->shape.rot.z * 6) + 0x13);

            effPos.y = thisx->groundY;
            if (thisx->groundY > -32000.0f) {
                func_80029024(globalCtx, &effPos, &effVelocity, &effAccel);
            }

            Audio_PlayActorSound2(thisx, NA_SE_IT_BOMB_EXPLOSION);
            if (globalCtx) {};
            globalCtx->envCtx.unk_8C[3] = globalCtx->envCtx.unk_8C[4] = globalCtx->envCtx.unk_8C[5] = 0xFA;
            globalCtx->envCtx.unk_8C[0] = globalCtx->envCtx.unk_8C[1] = globalCtx->envCtx.unk_8C[2] = 0xFA;
            func_8005AA1C(&globalCtx->cameras[0], 2, 0xB, 8);
            thisx->params = BOMB_EXPLOSION;
            this->timer = 10;
            thisx->flags |= 0x20;
            EnBom_SetupAction(this, EnBom_Explode);
        }
    }

    Actor_SetHeight(thisx, 20.0f);

    if (thisx->params <= BOMB_BODY) {
        Collider_CylinderUpdate(thisx, &this->bombCollider);

        // if link is not holding the bomb anymore and bump conditions are met, subscribe to OC
        if (!func_8002F410(thisx, globalCtx) && this->bumpOn) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bombCollider.base);
        }

        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->bombCollider.base);
    }

    if ((thisx->scale.x >= 0.01f) && (thisx->params != BOMB_EXPLOSION)) {
        if (thisx->waterY >= 20.0f) {
            func_8002A9F4(globalCtx, &thisx->projectedPos, NA_SE_IT_BOMB_UNEXPLOSION, 1, 1, 0xA);
            Actor_Kill(thisx);
            return;
        }
        if (thisx->bgCheckFlags & 0x40) {
            thisx->bgCheckFlags &= ~0x40;
            Audio_PlayActorSound2(thisx, NA_SE_EV_BOMB_DROP_WATER);
        }
    }
}

void EnBom_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBom* this = THIS;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    if (1) {}
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_bom.c", 913);

    if (thisx->params == BOMB_BODY) {
        func_80093D18(globalCtx->state.gfxCtx);
        func_800D1FD4(&globalCtx->mf_11DA0);
        func_8002EBCC(thisx, globalCtx, 0);

        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bom.c", 928),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_04007A50);
        Matrix_RotateRPY(0x4000, 0, 0, MTXMODE_APPLY);
        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bom.c", 934),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, (s16)this->flashIntensity, 0, 40, 255);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, (s16)this->flashIntensity, 0, 40, 255);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_04007860);
        func_800628A4(0, &this->explosionCollider);
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_bom.c", 951);
}
