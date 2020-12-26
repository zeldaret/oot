#include "z_en_fw.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x00000215

#define THIS ((EnFw*)thisx)

void EnFw_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFw_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFw_Draw(Actor* thisx, GlobalContext* globalCtx);
void EnFw_UpdateDust(EnFw* this);
void EnFw_DrawDust(EnFw* this, GlobalContext* globalCtx);
void EnFw_AddDust(EnFw* this, Vec3f* initialPos, Vec3f* initialSpeed, Vec3f* accel, u8 initialTimer, f32 scale,
                  f32 scaleStep);
void EnFw_Bounce(EnFw* this, GlobalContext* globalCtx);
void EnFw_Run(EnFw* this, GlobalContext* globalCtx);
void EnFw_JumpToParentInitPos(EnFw* this, GlobalContext* globalCtx);
void EnFw_TurnToParentInitPos(EnFw* this, GlobalContext* globalCtx);

const ActorInit En_Fw_InitVars = {
    ACTOR_EN_FW,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FW,
    sizeof(EnFw),
    (ActorFunc)EnFw_Init,
    (ActorFunc)EnFw_Destroy,
    (ActorFunc)EnFw_Update,
    (ActorFunc)EnFw_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x04 }, { 0xFFCFFFFE, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
        { 2, { { 1200, 0, 0 }, 16 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK6, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static CollisionCheckInfoInit2 D_80A1FB94 = { 8, 2, 25, 25, 0xFF };

static struct_80034EC0_Entry D_80A1FBA0[] = {
    { 0x06006CF8, 0.0f, 0.0f, -1.0f, 0x03, 0.0f },
    { 0x06007CD0, 1.0f, 0.0f, -1.0f, 0x03, -8.0f },
    { 0x06007DC8, 1.0f, 0.0f, -1.0f, 0x01, -8.0f },
};

extern FlexSkeletonHeader D_06007C30;
extern Gfx D_06007928[];
extern Gfx D_06007938[];
extern AnimationHeader D_06006CF8;

s32 EnFw_DoBounce(EnFw* this, s32 totalBounces, f32 yVelocity) {
    s16 temp_v1;

    if (!(this->actor.bgCheckFlags & 1) || (this->actor.velocity.y > 0.0f)) {
        // not on the ground or moving upwards.
        return false;
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    this->bounceCnt--;
    if (this->bounceCnt <= 0) {
        if (this->bounceCnt == 0) {
            this->bounceCnt = 0;
            this->actor.velocity.y = 0.0f;
            return true;
        }
        this->bounceCnt = totalBounces;
    }
    this->actor.velocity.y = yVelocity;
    this->actor.velocity.y *= ((f32)this->bounceCnt / totalBounces);
    return 1;
}

s32 EnFw_PlayerInRange(EnFw* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    CollisionPoly* poly;
    u32 bgId;
    Vec3f collisionPos;

    if (this->actor.xzDistFromLink > 300.0f) {
        return false;
    }

    if (ABS((s16)((f32)this->actor.yawTowardsLink - (f32)this->actor.shape.rot.y)) > 0x1C70) {
        return false;
    }

    if (func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &player->actor.posRot.pos, &collisionPos, &poly, 1,
                      0, 0, 1, &bgId)) {
        return false;
    }

    return true;
}

Vec3f* EnFw_GetPosAdjAroundCircle(Vec3f* dst, EnFw* this, f32 radius, s16 dir) {
    s16 angle;
    Vec3f posAdj;

    // increase rotation around circle ~30 degrees.
    angle = Math_Vec3f_Yaw(&this->actor.parent->initPosRot.pos, &this->actor.posRot.pos) + (dir * 0x1554);
    posAdj.x = (Math_SinS(angle) * radius) + this->actor.parent->initPosRot.pos.x;
    posAdj.z = (Math_CosS(angle) * radius) + this->actor.parent->initPosRot.pos.z;
    posAdj.x -= this->actor.posRot.pos.x;
    posAdj.z -= this->actor.posRot.pos.z;
    *dst = posAdj;
    return dst;
}

s32 EnFw_CheckCollider(EnFw* this, GlobalContext* globalCtx) {
    ColliderBody* body;
    s32 phi_return;

    if (this->collider.base.acFlags & 2) {
        body = &this->collider.list[0].body;
        if (body->acHitItem->toucher.flags & 0x80) {
            this->lastDmgHook = true;
        } else {
            this->lastDmgHook = false;
        }
        this->collider.base.acFlags &= ~2;
        if (Actor_ApplyDamage(&this->actor) <= 0) {
            if (this->actor.parent->colChkInfo.health <= 8) {
                func_80032C7C(globalCtx, &this->actor);
                this->actor.parent->colChkInfo.health = 0;
            } else {
                this->actor.parent->colChkInfo.health -= 8;
            }
            this->returnToParentTimer = 0;
        }
        return true;
    } else {
        return false;
    }
}

s32 EnFw_SpawnDust(EnFw* this, u8 timer, f32 scale, f32 scaleStep, s32 dustCnt, f32 radius, f32 xzAccel, f32 yAccel) {
    Vec3f pos = { 0.0f, 0.0f, 0.0f };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.0f, 0.0f };
    s16 angle;
    s32 i;

    pos = this->actor.posRot.pos;
    pos.y = this->actor.groundY + 2.0f;
    angle = ((Rand_ZeroOne() - 0.5f) * 0x10000);
    i = dustCnt;
    while (i >= 0) {
        accel.x = (Rand_ZeroOne() - 0.5f) * xzAccel;
        accel.y = yAccel;
        accel.z = (Rand_ZeroOne() - 0.5f) * xzAccel;
        pos.x = (Math_SinS(angle) * radius) + this->actor.posRot.pos.x;
        pos.z = (Math_CosS(angle) * radius) + this->actor.posRot.pos.z;
        EnFw_AddDust(this, &pos, &velocity, &accel, timer, scale, scaleStep);
        angle += (s16)(0x10000 / dustCnt);
        i--;
    }
    return 0;
}

void EnFw_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFw* this = THIS;

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06007C30, NULL, this->limbDrawTable, this->transitionDrawTable,
                       11);
    func_80034EC0(&this->skelAnime, D_80A1FBA0, 0);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->sphs);
    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(0x10), &D_80A1FB94);
    Actor_SetScale(&this->actor, 0.01f);
    this->runDirection = -this->actor.params;
    this->actionFunc = EnFw_Bounce;
    this->actor.gravity = -1.0f;
}

void EnFw_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFw* this = THIS;
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void EnFw_Bounce(EnFw* this, GlobalContext* globalCtx) {
    if (EnFw_DoBounce(this, 3, 8.0f) && this->bounceCnt == 0) {
        this->returnToParentTimer = Rand_S16Offset(300, 150);
        this->actionFunc = EnFw_Run;
    }
}

void EnFw_Run(EnFw* this, GlobalContext* globalCtx) {
    f32 tmpAngle;
    s16 phi_v0;
    f32 facingDir;
    EnBom* bomb;
    Actor* flareDancer;

    Math_SmoothStepToF(&this->skelAnime.animPlaybackSpeed, 1.0f, 0.1f, 1.0f, 0.0f);
    if (this->skelAnime.animation == &D_06006CF8) {
        if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount) == 0) {
            this->runRadius = Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &this->actor.parent->posRot.pos);
            func_80034EC0(&this->skelAnime, D_80A1FBA0, 2);
        }
        return;
    }

    if (this->damageTimer == 0 && this->explosionTimer == 0 && EnFw_CheckCollider(this, globalCtx)) {
        if (this->actor.parent->colChkInfo.health > 0) {
            if (!this->lastDmgHook) {
                this->actor.velocity.y = 6.0f;
            }
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_DAMAGE);
            this->damageTimer = 20;
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_DAMAGE);
            this->explosionTimer = 6;
        }
        this->actor.speedXZ = 0.0f;
    }

    if (this->explosionTimer != 0) {
        this->skelAnime.animPlaybackSpeed = 0.0f;
        Math_SmoothStepToF(&this->actor.scale.x, 0.024999999f, 0.08f, 0.6f, 0.0f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
        if (this->actor.dmgEffectTimer == 0) {
            func_8003426C(&this->actor, 0x4000, 0xC8, 0, this->explosionTimer);
            this->explosionTimer--;
        }

        if (this->explosionTimer == 0) {
            bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->bompPos.x, this->bompPos.y,
                                       this->bompPos.z, 0, 0, 0x600, 0);
            if (bomb != NULL) {
                bomb->timer = 0;
            }
            flareDancer = this->actor.parent;
            flareDancer->params |= 0x4000;
            Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.posRot.pos, 0xA0);
            Actor_Kill(&this->actor);
            return;
        }
    } else {
        if (!(this->actor.bgCheckFlags & 1) || this->actor.velocity.y > 0.0f) {
            func_8003426C(&this->actor, 0x4000, 0xC8, 0, this->damageTimer);
            return;
        }
        DECR(this->damageTimer);
        if ((200.0f - this->runRadius) < 0.9f) {
            if (DECR(this->returnToParentTimer) == 0) {
                this->actor.speedXZ = 0.0f;
                this->actionFunc = EnFw_TurnToParentInitPos;
                return;
            }
        }

        // Run outwards until the radius of the run circle is 200
        Math_SmoothStepToF(&this->runRadius, 200.0f, 0.3f, 100.0f, 0.0f);

        if (this->turnAround) {
            Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 0.1f, 1.0f, 0.0f);
            tmpAngle = (s16)(this->actor.posRot.rot.y ^ 0x8000);
            facingDir = this->actor.shape.rot.y;
            tmpAngle = Math_SmoothStepToF(&facingDir, tmpAngle, 0.1f, 10000.0f, 0.0f);
            this->actor.shape.rot.y = facingDir;
            if (tmpAngle > 0x1554) {
                return;
            }
            this->turnAround = false;
        } else {
            Vec3f sp48;
            EnFw_GetPosAdjAroundCircle(&sp48, this, this->runRadius, this->runDirection);
            Math_SmoothStepToS(&this->actor.shape.rot.y, (Math_FAtan2F(sp48.x, sp48.z) * (0x8000 / M_PI)), 4, 0xFA0,
                                    1);
        }

        this->actor.posRot.rot = this->actor.shape.rot;

        if (this->slideTimer == 0 && EnFw_PlayerInRange(this, globalCtx)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_SURP);
            this->slideSfxTimer = 8;
            this->slideTimer = 8;
        }

        if (this->slideTimer != 0) {
            if (DECR(this->slideSfxTimer) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_SLIDE);
                this->slideSfxTimer = 4;
            }
            Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 0.1f, 1.0f, 0.0f);
            this->skelAnime.animPlaybackSpeed = 0.0f;
            EnFw_SpawnDust(this, 8, 0.16f, 0.2f, 3, 8.0f, 20.0f, ((Rand_ZeroOne() - 0.5f) * 0.2f) + 0.3f);
            this->slideTimer--;
            if (this->slideTimer == 0) {
                this->turnAround = true;
                this->runDirection = -this->runDirection;
            }
        } else {
            Math_SmoothStepToF(&this->actor.speedXZ, 6.0f, 0.1f, 1.0f, 0.0f);
            phi_v0 = this->skelAnime.animCurrentFrame;
            if (phi_v0 == 1 || phi_v0 == 4) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_MAN_RUN);
                EnFw_SpawnDust(this, 8, 0.16f, 0.1f, 1, 0.0f, 20.0f, 0.0f);
            }
        }
    }
}

void EnFw_TurnToParentInitPos(EnFw* this, GlobalContext* globalCtx) {
    s16 angleToParentInit;

    angleToParentInit = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.parent->initPosRot.pos);
    Math_SmoothStepToS(&this->actor.shape.rot.y, angleToParentInit, 4, 0xFA0, 1);
    if (ABS(angleToParentInit - this->actor.shape.rot.y) < 0x65) {
        // angle to parent init pos is ~0.5 degrees
        this->actor.posRot.rot = this->actor.shape.rot;
        this->actor.velocity.y = 14.0f;
        this->actor.initPosRot.pos = this->actor.posRot.pos;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
        func_80034EC0(&this->skelAnime, D_80A1FBA0, 1);
        this->actionFunc = EnFw_JumpToParentInitPos;
    }
}

void EnFw_JumpToParentInitPos(EnFw* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 1 && this->actor.velocity.y <= 0.0f) {
        this->actor.parent->params |= 0x8000;
        Actor_Kill(&this->actor);
    } else {
        Math_SmoothStepToF(&this->actor.posRot.pos.x, this->actor.parent->initPosRot.pos.x, 0.6f, 8.0f, 0.0f);
        Math_SmoothStepToF(&this->actor.posRot.pos.z, this->actor.parent->initPosRot.pos.z, 0.6f, 8.0f, 0.0f);
    }
}

void EnFw_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnFw* this = THIS;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->actor.flags & 0x2000) != 0x2000) {
        // not attached to hookshot.
        Actor_MoveForward(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 10.0f, 20.0f, 0.0f, 5);
        this->actionFunc(this, globalCtx);
        if (this->damageTimer == 0 && this->explosionTimer == 0 && this->actionFunc == EnFw_Run) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

s32 EnFw_OverrideLimbDraw(GlobalContext* globalContext, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                          void* thisx) {
    return 0;
}

void EnFw_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnFw* this = THIS;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 2) {
        // body
        Matrix_MultVec3f(&zeroVec, &this->bompPos);
    }

    if (limbIndex == 3) {
        // head
        Matrix_MultVec3f(&zeroVec, &this->actor.posRot2.pos);
    }

    func_800628A4(limbIndex, &this->collider);
}

void EnFw_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnFw* this = THIS;

    EnFw_UpdateDust(this);
    Matrix_Push();
    EnFw_DrawDust(this, globalCtx);
    Matrix_Pull();
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                          EnFw_OverrideLimbDraw, EnFw_PostLimbDraw, this);
}

void EnFw_AddDust(EnFw* this, Vec3f* initialPos, Vec3f* initialSpeed, Vec3f* accel, u8 initialTimer, f32 scale,
                  f32 scaleStep) {
    EnFwEffect* eff = this->effects;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->effects); i++, eff++) {
        if (eff->type != 1) {
            eff->scale = scale;
            eff->scaleStep = scaleStep;
            eff->initialTimer = eff->timer = initialTimer;
            eff->type = 1;
            eff->pos = *initialPos;
            eff->accel = *accel;
            eff->velocity = *initialSpeed;
            return;
        }
    }
}

void EnFw_UpdateDust(EnFw* this) {
    EnFwEffect* eff = this->effects;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->effects); i++, eff++) {
        if (eff->type != 0) {
            if ((--eff->timer) == 0) {
                eff->type = 0;
            }
            eff->accel.x = (Rand_ZeroOne() * 0.4f) - 0.2f;
            eff->accel.z = (Rand_ZeroOne() * 0.4f) - 0.2f;
            eff->pos.x += eff->velocity.x;
            eff->pos.y += eff->velocity.y;
            eff->pos.z += eff->velocity.z;
            eff->velocity.x += eff->accel.x;
            eff->velocity.y += eff->accel.y;
            eff->velocity.z += eff->accel.z;
            eff->scale += eff->scaleStep;
        }
    }
}

void EnFw_DrawDust(EnFw* this, GlobalContext* globalCtx) {
    static Gfx* D_80A1FC18[] = {
        0x040539B0, 0x040535B0, 0x040531B0, 0x04052DB0, 0x040529B0, 0x040525B0, 0x040521B0, 0x04051DB0,
    };
    EnFwEffect* eff = this->effects;
    s16 firstDone;
    s16 alpha;
    s16 i;
    s16 idx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fw.c", 1191);

    firstDone = false;
    func_80093D84(globalCtx->state.gfxCtx);
    if (1) {}

    for (i = 0; i < ARRAY_COUNT(this->effects); i++, eff++) {
        if (eff->type != 0) {
            if (!firstDone) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0U);
                gSPDisplayList(POLY_XLU_DISP++, D_06007928);
                gDPSetEnvColor(POLY_XLU_DISP++, 100, 60, 20, 0);
                firstDone = true;
            }

            alpha = eff->timer * (255.0f / eff->initialTimer);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 170, 130, 90, alpha);
            gDPPipeSync(POLY_XLU_DISP++);
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(eff->scale, eff->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fw.c", 1229),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            idx = eff->timer * (8.0f / eff->initialTimer);
            gSPSegment(POLY_XLU_DISP++, 0x8, SEGMENTED_TO_VIRTUAL(D_80A1FC18[idx]));
            gSPDisplayList(POLY_XLU_DISP++, &D_06007938);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fw.c", 1243);
}
