#include "z_en_bom.h"

#define FLAGS 0x00000030

#define THIS ((EnBom*)thisx)

void EnBom_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809C282C(EnBom* this, GlobalContext* globalCtx);
void func_809C29F4(EnBom* this, GlobalContext* globalCtx);

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

void EnBom_SetupAction(EnBom* this, EnBomActionFunc* actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBom_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBom* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 700.0f, ActorShadow_DrawFunc_Circle, 16.0f);
    this->actor.colChkInfo.mass = 200;
    this->actor.colChkInfo.unk_10 = 5;
    this->actor.colChkInfo.unk_12 = 0xA;
    this->timer = 70;
    this->flashSpeedScale = 7;
    Collider_InitCylinder(globalCtx, &this->bombCollider);
    Collider_InitJntSph(globalCtx, &this->jntSphList);
    Collider_SetCylinder(globalCtx, &this->bombCollider, &this->actor, &sCylinderInit);
    Collider_SetJntSph(globalCtx, &this->jntSphList, &this->actor, &sJntSphInit, &this->explosionCollider);
    this->explosionCollider[0].body.toucher.damage += (THIS->actor.shape.rot.z & 0xFF00) >> 8;

    this->actor.shape.rot.z &= 0xFF;
    if (this->actor.shape.rot.z & 0x80) {
        this->actor.shape.rot.z |= 0xFF00;
    }

    EnBom_SetupAction(this, func_809C282C);
}

void EnBom_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBom* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->jntSphList);
    Collider_DestroyCylinder(globalCtx, &this->bombCollider);
}

void func_809C282C(EnBom* this, GlobalContext* globalCtx) {
    if (func_8002F410(&this->actor, globalCtx)) {
        EnBom_SetupAction(this, func_809C29F4);
        this->actor.room = -1;
        return;
    }

    if ((this->actor.velocity.y > 0.0f) && (this->actor.bgCheckFlags & 0x10)) {
        this->actor.velocity.y = -this->actor.velocity.y;
    }

    if ((this->actor.speedXZ != 0.0f) && (this->actor.bgCheckFlags & 8)) {
        if (ABS((s16)(this->actor.wallPolyRot - this->actor.posRot.rot.y)) >= 0x4001) {
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

void func_809C29F4(EnBom* this, GlobalContext* globalCtx) {
    if (func_8002F5A0(&this->actor, globalCtx)) {
        EnBom_SetupAction(this, func_809C282C);
        func_809C282C(this, globalCtx);
    }
}

void EnBom_Explode(EnBom* this, GlobalContext* globalCtx) {
    Player* player;

    if (this->jntSphList.list->dim.modelSphere.radius == 0) {
        this->actor.flags |= 0x20;
        func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
    }

    this->jntSphList.list->dim.worldSphere.radius += this->actor.shape.rot.z + 8;

    if (this->actor.params == 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->jntSphList.base);
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
    Vec3f sp84 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp78 = { 0.0f, 0.1f, 0.0f };
    Vec3f sp6C = { 0.0f, 0.0f, 0.0f };
    Vec3f posCopy;
    Vec3f sp54 = { 0.0f, 0.6f, 0.0f };
    Color_RGBA8_n dustColor = { 255, 255, 255, 255 };
    s32 pad[2];
    EnBom* this = THIS;

    this->actor.gravity = -1.2f;

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 67) {
        Audio_PlayActorSound2(&this->actor, NA_SE_PL_TAKE_OUT_SHIELD);
        Actor_SetScale(&this->actor, 0.01f);
    }

    // activate bump collider if link is 20 or more units away from the bomb in the xz plane
    // or if the height difference between link and the bomb is 80 or more units
    if ((this->actor.xzDistFromLink >= 20.0f) || (ABS(this->actor.yDistFromLink) >= 80.0f)) {
        this->bumpOn = true;
    }

    this->actionFunc(this, globalCtx);

    func_8002E4B4(globalCtx, &this->actor, 5.0f, 10.0f, 15.0f, 0x1F);

    // has not exploded yet
    if (this->actor.params == 0) {
        if (this->timer < 63) {
            sp54.y = 0.2f;

            // spawn spark effect on even frames
            posCopy = this->actor.posRot.pos;
            posCopy.y += 17.0f;
            if ((globalCtx->gameplayFrames % 2) == 0) {
                func_80029184(globalCtx, this, &posCopy, &sp84, &sp6C);
            }

            Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_IGNIT - SFX_FLAG);

            posCopy.y += 3.0f;
            func_8002829C(globalCtx, &posCopy, &sp84, &sp54, &dustColor, &dustColor, 0x32, 5);
        }

        if ((this->bombCollider.base.acFlags & 2) ||
            (((this->bombCollider.base.maskA & 2) != 0) && (this->bombCollider.base.oc->type == 5))) {
            this->timer = 0;
            this->actor.shape.rot.z = 0;
        } else {
            // if a lit stick touches the bomb, set timer to 100
            // copy/paste from bomb flower, normal bombs never have a timer over 70
            if ((this->timer >= 101) && (func_8008EF5C(globalCtx, &this->actor.posRot.pos, 30.0f, 50.0f))) {
                this->timer = 100;
            }
        }

        sp54.y = 0.2f;
        posCopy = this->actor.posRot.pos;
        posCopy.y += 10.0f;

        // double bomb flash speed and adjust red color accordingly
        if ((this->timer == 3) || (this->timer == 20) || (this->timer == 40)) {
            this->actor.shape.rot.z = 0;
            this->flashSpeedScale >>= 1;
        }

        if ((this->timer < 100) && ((this->timer & (this->flashSpeedScale + 1)) != 0)) {
            Math_SmoothScaleMaxMinF(&this->flashIntensity, 140.0f, 1.0f, 140.0f / this->flashSpeedScale, 0.0f);
        } else {
            Math_SmoothScaleMaxMinF(&this->flashIntensity, 0.0f, 1.0f, 140.0f / this->flashSpeedScale, 0.0f);
        }

        if (this->timer < 3) {
            Actor_SetScale(&this->actor, this->actor.scale.x + 0.002f);
        }

        if (this->timer == 0) {
            posCopy = this->actor.posRot.pos;

            posCopy.y += 10.0f;
            if (func_8002F410(&this->actor, globalCtx) != 0) {
                posCopy.y += 30.0f;
            }

            func_80028E84(globalCtx, &posCopy, &sp84, &sp78, 0x64, (this->actor.shape.rot.z * 6) + 0x13);

            posCopy.y = this->actor.groundY;
            if (this->actor.groundY > -32000.0f) {
                func_80029024(globalCtx, &posCopy, &sp84, &sp6C);
            }

            Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
            if (globalCtx) {};
            globalCtx->envCtx.unk_8C[3] = globalCtx->envCtx.unk_8C[4] = globalCtx->envCtx.unk_8C[5] = 0xFA;
            globalCtx->envCtx.unk_8C[0] = globalCtx->envCtx.unk_8C[1] = globalCtx->envCtx.unk_8C[2] = 0xFA;
            func_8005AA1C(&globalCtx->cameras[0], 2, 0xB, 8);
            this->actor.params = 1;
            this->timer = 10;
            this->actor.flags |= 0x20;
            EnBom_SetupAction(this, EnBom_Explode);
        }
    }

    Actor_SetHeight(&this->actor, 20.0f);

    if (this->actor.params <= 0) {
        Collider_CylinderUpdate(&this->actor, &this->bombCollider);

        // if link is not holding the bomb anymore and bump conditions are met, subscribe to OC
        if ((!func_8002F410(&this->actor, globalCtx)) && (this->bumpOn)) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bombCollider.base);
        }

        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->bombCollider.base);
    }

    if ((this->actor.scale.x >= 0.01f) && (this->actor.params != 1)) {
        if (this->actor.waterY >= 20.0f) {
            func_8002A9F4(globalCtx, &this->actor.projectedPos, NA_SE_IT_BOMB_UNEXPLOSION, 1, 1, 0xA);
            Actor_Kill(&this->actor);
            return;
        }
        if (this->actor.bgCheckFlags & 0x40) {
            this->actor.bgCheckFlags &= ~0x40;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_DROP_WATER);
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
    Graph_OpenDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_en_bom.c", 913);

    if (this->actor.params == 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        func_800D1FD4(&globalCtx->mf_11DA0);
        func_8002EBCC(&this->actor, globalCtx, 0);

        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bom.c", 928),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_04007A50);
        Matrix_RotateRPY(0x4000, 0, 0, MTXMODE_APPLY);
        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bom.c", 934),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, (s16)this->flashIntensity, 0, 40, 255);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, (s16)this->flashIntensity, 0x00, 0x28, 0xFF);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_04007860);
        func_800628A4(0, &this->jntSphList);
    }

    Graph_CloseDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_en_bom.c", 951);
}