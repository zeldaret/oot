#include "z_en_fd.h"

#define FLAGS 0x00000215

#define THIS ((EnFd*)thisx)

#define FLG_COREDEAD (0x4000)
#define FLG_COREDONE (0x8000)

void EnFd_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Draw(Actor* thisx, GlobalContext* globalCtx);
void EnFd_Run(EnFd* this, GlobalContext* globalCtx);
void EnFd_SpinAndSpawnFire(EnFd* this, GlobalContext* globalCtx);
void EnFd_Reappear(EnFd* this, GlobalContext* globalCtx);
void EnFd_SpinAndGrow(EnFd* this, GlobalContext* globalCtx);
void EnFd_JumpToGround(EnFd* this, GlobalContext* globalCtx);
void EnFd_WaitForCore(EnFd* this, GlobalContext* globalCtx);
void EnFd_UpdateFlameParticles(EnFd* this);
void EnFd_UpdateDotParticles(EnFd* this);
void EnFd_AddParticle(EnFd*, u8, Vec3f*, Vec3f*, Vec3f*, u8, f32, f32);
void EnFd_DrawDotParticles(EnFd* this, GlobalContext* globalCtx);
void EnFd_DrawFlameParticles(EnFd* this, GlobalContext* globalCtx);
void EnFd_Land(EnFd* this, GlobalContext* globalCtx);

extern Gfx D_060079F8[];
extern Gfx D_06007A78[];
extern Gfx D_06007928[];
extern Gfx D_06007938[];
extern SkeletonHeader D_06005810;

const ActorInit En_Fd_InitVars = {
    ACTOR_EN_FD,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FW,
    sizeof(EnFd),
    (ActorFunc)EnFd_Init,
    (ActorFunc)EnFd_Destroy,
    (ActorFunc)EnFd_Update,
    (ActorFunc)EnFd_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[12] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040088, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
        { 21, { { 1600, 0, 0 }, 5 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 12, { { 1600, 0, 0 }, 5 }, 400 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 14, { { 800, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 15, { { 1600, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 16, { { 2000, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 17, { { 800, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 18, { { 1600, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 19, { { 2000, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 4, { { 2200, 0, 0 }, 4 }, 400 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 4, { { 5000, 0, 0 }, 4 }, 300 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 8, { { 2200, 0, 0 }, 4 }, 400 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00040008, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 8, { { 5000, 0, 0 }, 4 }, 300 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    12,
    sJntSphItemsInit,
};

static CollisionCheckInfoInit2 sColChkInit = { 24, 2, 25, 25, 0xFF };

static struct_80034EC0_Entry sAnimations[] = { { 0x060010B4, 1.0f, 0.0f, -1.0f, 0x03, 0.0f },
                                               { 0x06005C64, 1.0f, 0.0f, -1.0f, 0x03, -10.0f },
                                               { 0x06006044, 0.0f, 0.0f, -1.0f, 0x03, -10.0f },
                                               { 0x06006A18, 1.0f, 0.0f, -1.0f, 0x01, -10.0f },
                                               { 0x06006B64, 0.0f, 0.0f, -1.0f, 0x03, -10.0f } };

s32 EnFd_SpawnCore(EnFd* this, GlobalContext* globalCtx) {
    if (this->invincibilityTimer != 0) {
        return false;
    }

    if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FW, this->corePos.x, this->corePos.y,
                           this->corePos.z, 0, this->actor.shape.rot.y, 0, this->runDir) == NULL) {
        return false;
    }

    this->actor.child->colChkInfo.health = this->actor.colChkInfo.health % 8;

    if (this->actor.child->colChkInfo.health == 0) {
        this->actor.child->colChkInfo.health = 8;
    }

    if ((this->actor.flags & 0x2000) == 0x2000) {
        func_8002DE04(globalCtx, &this->actor, this->actor.child);
    }
    this->coreActive = true;
    return true;
}

void EnFd_SpawnChildFire(EnFd* this, GlobalContext* globalCtx, s16 fireCnt, s16 color) {
    s32 i;

    for (i = 0; i < fireCnt; i++) {
        s16 angle = (s16)((((i * 360.0f) / fireCnt) * (0x10000 / 360.0f))) + this->actor.yawTowardsLink;
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FD_FIRE, this->actor.posRot.pos.x,
                           this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, angle, 0, (color << 0xF) | i);
    }
}

void EnFd_SpawnDot(EnFd* this, GlobalContext* globalCtx) {
    Vec3f pos = { 0.0f, 0.0f, 0.0f };
    Vec3f speed = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.0f, 0.0f };

    if (this->actionFunc == EnFd_Run || this->actionFunc == EnFd_SpinAndSpawnFire) {
        pos.x = this->actor.posRot.pos.x;
        pos.y = this->actor.groundY + 4.0f;
        pos.z = this->actor.posRot.pos.z;
        accel.x = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
        accel.y = ((Math_Rand_ZeroOne() - 0.5f) * 0.2f) + 0.3f;
        accel.z = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
        EnFd_AddParticle(this, FD_PART_FLAME, &pos, &speed, &accel, 8, 0.6f, 0.2f);
    }
}

/**
 * Checks to see if the hammer effect is active, and if it should be applied
 */
s32 EnFd_CheckHammer(EnFd* this, GlobalContext* globalCtx) {
    if (this->actionFunc == EnFd_Reappear || this->actionFunc == EnFd_SpinAndGrow ||
        this->actionFunc == EnFd_JumpToGround || this->actionFunc == EnFd_WaitForCore) {
        return false;
    } else if (globalCtx->actorCtx.hammerTimer != 0 && this->actor.xzDistFromLink < 300.0f &&
               this->actor.yDistFromLink < 60.0f) {
        return true;
    } else {
        return false;
    }
}

s32 EnFd_ColliderCheck(EnFd* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    ColliderBody* body;

    if (this->collider.base.acFlags & 2 || EnFd_CheckHammer(this, globalCtx)) {
        this->collider.base.acFlags &= ~2;
        if (this->invincibilityTimer != 0) {
            return false;
        }
        body = &this->collider.list[0].body;
        if (body->acHitItem != NULL && (body->acHitItem->toucher.flags & 0x80)) {
            return false;
        }

        if (!EnFd_SpawnCore(this, globalCtx)) {
            return false;
        }
        this->invincibilityTimer = 30;
        this->actor.flags &= ~1;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_DAMAGE);
        func_80032C7C(globalCtx, &this->actor);
        return true;
    } else if (DECR(this->attackTimer) == 0 && this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        if (this->invincibilityTimer != 0) {
            return false;
        }

        if (this->collider.base.atFlags & 4) {
            return false;
        }
        this->attackTimer = 30;
        Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
        func_8002F71C(globalCtx, &this->actor, this->actor.speedXZ + 2.0f, this->actor.yawTowardsLink, 6.0f);
    }
    return false;
}

/**
 * Determines if `actor` is within an acceptable range for `this` to be able to "see" `actor`
 * `actor` must be within 400 units of `this`, `actor` must be within +/- 40 degrees facing angle
 * towards `actor`, and there must not be a collision poly between `this` and `actor`
 */
s32 EnFd_CanSeeActor(EnFd* this, Actor* actor, GlobalContext* globalCtx) {
    CollisionPoly** colPoly;
    u32 bgId;
    Vec3f colPoint;
    s16 angle;
    s32 pad;

    // Check to see if `actor` is within 400 units of `this`
    if (Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &actor->posRot.pos) > 400.0f) {
        return false;
    }

    // Check to see if the angle between this facing angle and `actor` is withing ~40 degrees
    angle = (f32)Math_Vec3f_Yaw(&this->actor.posRot.pos, &actor->posRot.pos) - this->actor.shape.rot.y;
    if (ABS(angle) >= 0x1C71) {
        return false;
    }

    // check to see if the line between `this` and `actor` does not intersect a collision poly
    if (func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &actor->posRot.pos, &colPoint, &colPoly, 1, 0, 0, 1,
                      &bgId)) {
        return false;
    }

    return true;
}

Actor* EnFd_FindBomb(EnFd* this, GlobalContext* globalCtx) {
    Actor* actor = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;

    while (actor != NULL) {
        if (actor->params != 0 || actor->parent != NULL) {
            actor = actor->next;
            continue;
        }

        if (actor->id != ACTOR_EN_BOM) {
            actor = actor->next;
            continue;
        }

        if (EnFd_CanSeeActor(this, actor, globalCtx) != 1) {
            actor = actor->next;
            continue;
        }

        return actor;
    }
    return NULL;
}

Actor* EnFd_FindPotentialTheat(EnFd* this, GlobalContext* globalCtx) {
    Player* player;
    Actor* bomb = EnFd_FindBomb(this, globalCtx);

    if (bomb != NULL) {
        return bomb;
    }

    if (this->attackTimer != 0) {
        return NULL;
    }

    player = PLAYER;
    if (!EnFd_CanSeeActor(this, &player->actor, globalCtx)) {
        return NULL;
    }

    return &player->actor;
}

/**
 * Creates a delta in `dst` for the position from `this`'s current position to the next
 * position in a circle formed by `radius` with center at `this`'s initial position.
 */
Vec3f* EnFd_GetPosAdjAroundCircle(Vec3f* dst, EnFd* this, f32 radius, s16 dir) {
    s16 angle;
    Vec3f newPos;

    angle = Math_Vec3f_Yaw(&this->actor.initPosRot, &this->actor.posRot) + (dir * 0x1554); // ~30 degrees
    newPos.x = (Math_Sins(angle) * radius) + this->actor.initPosRot.pos.x;
    newPos.z = (Math_Coss(angle) * radius) + this->actor.initPosRot.pos.z;
    newPos.x -= this->actor.posRot.pos.x;
    newPos.z -= this->actor.posRot.pos.z;
    *dst = newPos;
    return dst;
}

s32 EnFd_ShouldStopRunning(EnFd* this, GlobalContext* globalCtx, f32 radius, s16* runDir) {
    CollisionPoly* poly;
    u32 bgId;
    Vec3f colPoint;
    Vec3f pos;

    // Check to see if the next position on the rotation around the circle
    // will result in a background collision
    EnFd_GetPosAdjAroundCircle(&pos, this, radius, *runDir);

    pos.x += this->actor.posRot.pos.x;
    pos.y = this->actor.posRot.pos.y;
    pos.z += this->actor.posRot.pos.z;

    if (func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &pos, &colPoint, &poly, 1, 0, 0, 1, &bgId)) {
        *runDir = -*runDir;
        return true;
    }

    if (this->circlesToComplete != 0 || DECR(this->spinTimer) != 0) {
        return false;
    }

    if (Math_Rand_ZeroOne() > 0.5f) {
        *runDir = -*runDir;
    }
    return true;
}

void EnFd_Fade(EnFd* this, GlobalContext* globalCtx) {
    if (this->invincibilityTimer != 0) {
        Math_SmoothScaleMaxMinF(&this->fadeAlpha, 0.0f, 0.3f, 10.0f, 0.0f);
        this->actor.shape.unk_14 = this->fadeAlpha;
        if (!(this->fadeAlpha >= 0.9f)) {
            this->invincibilityTimer = 0;
            this->spinTimer = 0;
            this->actionFunc = EnFd_WaitForCore;
            this->actor.speedXZ = 0.0f;
        }
    }
}

void EnFd_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFd* this = THIS;

    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06005810, NULL, this->limbDrawTable, this->transDrawTable, 27);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 32.0f);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colSphs);
    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(0xF), &sColChkInit);
    this->actor.flags &= ~1;
    this->actor.flags |= 0x1000000;
    Actor_SetScale(&this->actor, 0.01f);
    this->firstUpdateFlag = true;
    this->actor.gravity = -1.0f;
    this->runDir = Math_Rand_ZeroOne() < 0.5f ? -1 : 1;
    this->actor.naviEnemyId = 0x22;
    this->actionFunc = EnFd_Reappear;
}

void EnFd_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFd* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void EnFd_Reappear(EnFd* this, GlobalContext* globalCtx) {
    this->actor.posRot.pos = this->actor.initPosRot.pos;
    this->actor.params = 0;
    this->actor.shape.unk_14 = 0xFF;
    this->coreActive = false;
    this->actor.scale.y = 0.0f;
    this->fadeAlpha = 255.0f;
    func_80034EC0(&this->skelAnime, &sAnimations, 0);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_LAUGH);
    this->actionFunc = EnFd_SpinAndGrow;
}

void EnFd_SpinAndGrow(EnFd* this, GlobalContext* globalCtx) {
    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
        this->actor.velocity.y = 6.0f;
        this->actor.scale.y = 0.01f;
        this->actor.posRot.rot.y ^= 0x8000;
        this->actor.flags |= 1;
        this->actor.speedXZ = 8.0f;
        func_80034EC0(&this->skelAnime, &sAnimations, 1);
        this->actionFunc = EnFd_JumpToGround;
    } else {
        this->actor.scale.y = this->skelAnime.animCurrentFrame * (0.01f / this->skelAnime.totalFrames);
        this->actor.shape.rot.y += 0x2000;
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
}

void EnFd_JumpToGround(EnFd* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 1 && !(0.0f < this->actor.velocity.y)) {
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80034EC0(&this->skelAnime, &sAnimations, 2);
        this->actionFunc = EnFd_Land;
    }
}

void EnFd_Land(EnFd* this, GlobalContext* globalCtx) {
    Vec3f adjPos;

    Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 1.0f, 0.1f, 1.0f, 0.0f);
    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
        this->spinTimer = Math_Rand_S16Offset(60, 90);
        this->runRadius = Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
        EnFd_GetPosAdjAroundCircle(&adjPos, this, this->runRadius, this->runDir);
        this->actor.posRot.rot.y = Math_atan2f(adjPos.x, adjPos.z) * (0x8000 / M_PI);
        func_80034EC0(&this->skelAnime, sAnimations, 4);
        this->actionFunc = EnFd_SpinAndSpawnFire;
    }
}

void EnFd_SpinAndSpawnFire(EnFd* this, GlobalContext* globalCtx) {
    f32 deceleration;
    f32 tgtSpeed;
    f32 rotSpeed;

    if ((this->spinTimer < 31) && (this->invincibilityTimer == 0)) {
        func_8002F974(&this->actor, NA_SE_EN_FLAME_FIRE_ATTACK - SFX_FLAG);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_FLAME_ROLL - SFX_FLAG);
    }

    if (DECR(this->spinTimer) != 0) {
        this->actor.shape.rot.y += (this->runDir * 0x2000);
        if (this->spinTimer == 30 && this->invincibilityTimer == 0) {
            if (this->actor.xzDistFromLink > 160.0f) {
                // orange flames
                EnFd_SpawnChildFire(this, globalCtx, 8, 0);
            } else {
                // blue flames
                EnFd_SpawnChildFire(this, globalCtx, 8, 1);
            }
        }
    } else {
        // slow shape rotation down to meet `this` rotation within ~1.66 degrees
        deceleration = this->actor.posRot.rot.y;
        deceleration -= this->actor.shape.rot.y;
        rotSpeed = 0.0f;
        tgtSpeed = fabsf(deceleration);
        deceleration /= tgtSpeed;
        Math_SmoothScaleMaxF(&rotSpeed, tgtSpeed, 0.6f, 0x2000);
        rotSpeed *= deceleration;
        this->actor.shape.rot.y += (s16)rotSpeed;
        rotSpeed = fabsf(rotSpeed);
        if ((s32)rotSpeed < 0x12D) {
            // ~1.6 degrees
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        }

        if (this->actor.shape.rot.y == this->actor.posRot.rot.y) {
            this->initYawToInitPos = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
            this->curYawToInitPos = this->runDir < 0 ? 0xFFFF : 0;
            this->circlesToComplete = (globalCtx->state.frames & 7) + 2;
            this->spinTimer = Math_Rand_S16Offset(30, 120);
            func_80034EC0(&this->skelAnime, &sAnimations, 3);
            this->actionFunc = EnFd_Run;
        }
    }
}

/**
 * Run around in a circle with the center being the initial position, and
 * the radius being the distance from the initial postion to the nearest
 * threat (bomb or player).
 */
void EnFd_Run(EnFd* this, GlobalContext* globalCtx) {
    Actor* potentialThreat;
    s16 yawToYawTarget;
    f32 runRadiusTarget;
    Vec3f adjPos;

    if (EnFd_ShouldStopRunning(this, globalCtx, this->runRadius, &this->runDir)) {
        if (this->invincibilityTimer == 0) {
            this->actor.posRot.rot.y ^= 0x8000;
            this->actor.velocity.y = 6.0f;
            this->actor.speedXZ = 0.0f;
            func_80034EC0(&this->skelAnime, &sAnimations, 1);
            this->actionFunc = EnFd_JumpToGround;
            return;
        }
    }

    yawToYawTarget = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &this->actor.posRot.pos) - this->initYawToInitPos;
    if (this->runDir > 0) {
        if ((u16)this->curYawToInitPos > (yawToYawTarget & 0xFFFF)) {
            this->circlesToComplete--;
        }
    } else if ((u16)this->curYawToInitPos < (yawToYawTarget & 0xFFFF)) {
        this->circlesToComplete--;
    }

    if (this->circlesToComplete < 0) {
        this->circlesToComplete = 0;
    }
    this->curYawToInitPos = yawToYawTarget;

    // If there is a bomb out, or if the player exists, set radius to
    // the distance to that threat, otherwise default to 200.
    potentialThreat = EnFd_FindPotentialTheat(this, globalCtx);
    if ((potentialThreat != NULL) && (this->invincibilityTimer == 0)) {
        runRadiusTarget = Math_Vec3f_DistXYZ(&this->actor.initPosRot.pos, &potentialThreat->posRot.pos);
    } else {
        runRadiusTarget = 200.0f;
    }
    Math_SmoothScaleMaxMinF(&this->runRadius, runRadiusTarget, 0.3f, 100.0f, 0.0f);
    EnFd_GetPosAdjAroundCircle(&adjPos, this, this->runRadius, this->runDir);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, Math_atan2f(adjPos.x, adjPos.z) * 10430.378f, 4, 0xFA0, 1);
    this->actor.posRot.rot = this->actor.shape.rot;
    func_8002F974(&this->actor, NA_SE_EN_FLAME_RUN - SFX_FLAG);
    if (this->skelAnime.animCurrentFrame == 6.0f || this->skelAnime.animCurrentFrame == 13.0f ||
        this->skelAnime.animCurrentFrame == 28.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_KICK);
    }
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 8.0f, 0.1f, 1.0f, 0.0f);
}

/**
 * En_Fw will set `this` params when it is done with it's action.
 * It will set FLG_COREDONE when the core has returned to `this`'s initial
 * position, and FLG_COREDEAD when there is no health left
 */
void EnFd_WaitForCore(EnFd* this, GlobalContext* globalCtx) {
    if (this->spinTimer != 0) {
        this->spinTimer--;
        if (this->spinTimer == 0) {
            Actor_Kill(&this->actor);
        }
    } else if (this->actor.params & FLG_COREDONE) {
        this->actionFunc = EnFd_Reappear;
    } else if (this->actor.params & FLG_COREDEAD) {
        this->actor.params = 0;
        this->spinTimer = 30;
    }
}

void EnFd_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnFd* this = THIS;
    s32 pad;

    if (this->firstUpdateFlag) {
        func_800F5ACC(0x38);
        this->firstUpdateFlag = false;
    }

    if (this->actionFunc != EnFd_Reappear) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        EnFd_SpawnDot(this, globalCtx);
    }

    if ((this->actor.flags & 0x2000) == 0x2000) {
        // has been hookshoted
        if (EnFd_SpawnCore(this, globalCtx)) {
            this->actor.flags &= ~1;
            this->invincibilityTimer = 30;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLAME_DAMAGE);
            func_80032C7C(globalCtx, &this->actor);
        } else {
            this->actor.flags &= ~0x2000;
        }
    } else if (this->actionFunc != EnFd_WaitForCore) {
        EnFd_ColliderCheck(this, globalCtx);
    }
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    EnFd_Fade(this, globalCtx);
    this->actionFunc(this, globalCtx);
    EnFd_UpdateDotParticles(this);
    EnFd_UpdateFlameParticles(this);
    if (this->actionFunc != EnFd_Reappear && this->actionFunc != EnFd_SpinAndGrow &&
        this->actionFunc != EnFd_WaitForCore) {
        if (this->attackTimer == 0 && this->invincibilityTimer == 0) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        if ((this->actionFunc == EnFd_Run) || (this->actionFunc == EnFd_SpinAndSpawnFire)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

s32 EnFd_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                          Gfx** gfxP) {
    EnFd* this = THIS;

    if (this->invincibilityTimer != 0) {
        switch (limbIndex) {
            case 13:
            case 21:
                *dList = NULL;
                break;
        }
    }
    return false;
}

void EnFd_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfxP) {
    EnFd* this = THIS;
    Vec3f unused0 = { 6800.0f, 0.0f, 0.0f };
    Vec3f unused1 = { 6800.0f, 0.0f, 0.0f };
    Vec3f initialPos = { 0.0f, 0.0f, 0.0f };
    Vec3f pos = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f speed = { 0.0f, 0.0f, 0.0f };
    s32 i;

    if (limbIndex == 21) {
        Matrix_MultVec3f(&initialPos, &this->corePos);
    }

    if (limbIndex == 13) {
        Matrix_MultVec3f(&initialPos, &this->actor.posRot2.pos);
    }

    if (limbIndex == 3 || limbIndex == 6 || limbIndex == 7 || limbIndex == 10 || limbIndex == 14 || limbIndex == 15 ||
        limbIndex == 17 || limbIndex == 18 || limbIndex == 20 || limbIndex == 22 || limbIndex == 23 ||
        limbIndex == 24 || limbIndex == 25 || limbIndex == 26) {
        if ((globalCtx->state.frames % 2) != 0) {
            for (i = 0; i < 1; i++) {
                Matrix_MultVec3f(&initialPos, &pos);
                pos.x += (Math_Rand_ZeroOne() - 0.5f) * 20.0f;
                pos.y += (Math_Rand_ZeroOne() - 0.5f) * 40.0f;
                pos.z += (Math_Rand_ZeroOne() - 0.5f) * 20.0f;
                accel.x = (Math_Rand_ZeroOne() - 0.5f) * 0.4f;
                accel.y = ((Math_Rand_ZeroOne() - 0.5f) * 0.2f) + 0.6f;
                accel.z = (Math_Rand_ZeroOne() - 0.5f) * 0.4f;
                EnFd_AddParticle(this, FD_PART_DOT, &pos, &speed, &accel, 0, 0.006f, 0.0f);
            }
        }
    }

    func_800628A4(limbIndex, &this->collider);
}

void EnFd_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnFd* this = THIS;
    s32 clampedHealth;
    Color_RGBA8 primColors[] = {
        { 255, 255, 200, 255 },
        { 200, 200, 200, 255 },
        { 255, 255, 0, 255 },
    };
    Color_RGBA8 envColors[] = {
        { 0, 255, 0, 255 },
        { 0, 0, 255, 255 },
        { 255, 0, 0, 255 },
    };
    u32 frames;
    s32 pad;

    if (this) {}
    frames = globalCtx->state.frames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 1751);

    Matrix_Push();
    EnFd_DrawDotParticles(this, globalCtx);
    EnFd_DrawFlameParticles(this, globalCtx);
    Matrix_Pull();
    if (this->actionFunc != EnFd_Reappear && !(this->fadeAlpha < 0.9f)) {
        if (1) {}
        func_80093D84(globalCtx->state.gfxCtx);
        clampedHealth = CLAMP(this->actor.colChkInfo.health - 1, 0, 0x17);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 128, primColors[clampedHealth / 8].r, primColors[clampedHealth / 8].g,
                        primColors[clampedHealth / 8].b, (u8)this->fadeAlpha);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, envColors[clampedHealth / 8].r, envColors[clampedHealth / 8].g,
                       envColors[clampedHealth / 8].b, (u8)this->fadeAlpha);
        gSPSegment(
            oGfxCtx->polyXlu.p++, 0x8,
            Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, 0xFF - (u8)(frames * 6), 8, 0x40));
        gDPPipeSync(oGfxCtx->polyXlu.p++);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x9, D_80116280);

        oGfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                               this->skelAnime.dListCount, &EnFd_OverrideLimbDraw, &EnFd_PostLimbDraw,
                                               this, oGfxCtx->polyXlu.p);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 1822);
}

void EnFd_AddParticle(EnFd* this, u8 type, Vec3f* pos, Vec3f* speed, Vec3f* accel, u8 timer, f32 scale,
                      f32 scaleSpeed) {
    EnFdPart* part = this->particles;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->particles); i++, part++) {
        if (part->type != FD_PART_NONE) {
            continue;
        }
        part->scale = scale;
        part->scaleSpeed = scaleSpeed;
        part->initialTimer = part->timer = timer;
        part->type = type;
        part->pos = *pos;
        part->accel = *accel;
        part->speed = *speed;
        if ((type & 0xFF) == FD_PART_DOT) {
            part->color.a = 255;
            part->timer = (s16)(Math_Rand_ZeroOne() * 10.0f);
        }
        return;
    }
}

void EnFd_UpdateFlameParticles(EnFd* this) {
    s16 i;
    EnFdPart* part = this->particles;

    for (i = 0; i < ARRAY_COUNT(this->particles); i++, part++) {
        if (part->type == FD_PART_FLAME) {
            part->timer--;
            if (part->timer == 0) {
                part->type = FD_PART_NONE;
            }
            part->accel.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            part->accel.z = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            part->pos.x += part->speed.x;
            part->pos.y += part->speed.y;
            part->pos.z += part->speed.z;
            part->speed.x += part->accel.x;
            part->speed.y += part->accel.y;
            part->speed.z += part->accel.z;
            part->scale += part->scaleSpeed;
        }
    }
}

void EnFd_UpdateDotParticles(EnFd* this) {
    EnFdPart* part = this->particles;
    s16 i;
    Color_RGBA8 dotColors[] = {
        { 255, 128, 0, 0 },
        { 255, 0, 0, 0 },
        { 255, 255, 0, 0 },
        { 255, 0, 0, 0 },
    };

    for (i = 0; i < ARRAY_COUNT(this->particles); i++, part++) {
        if (part->type == FD_PART_DOT) {
            part->pos.x += part->speed.x;
            part->pos.y += part->speed.y;
            part->pos.z += part->speed.z;
            part->timer++;
            part->speed.x += part->accel.x;
            part->speed.y += part->accel.y;
            part->speed.z += part->accel.z;

            part->color.r = dotColors[part->timer % 4].r;
            part->color.g = dotColors[part->timer % 4].g;
            part->color.b = dotColors[part->timer % 4].b;
            if (part->color.a >= 31) {
                part->color.a -= 30;
            } else {
                part->color.a = 0;
                part->type = FD_PART_NONE;
            }
        }
    }
}

void EnFd_DrawFlameParticles(EnFd* this, GlobalContext* globalCtx) {
    static Gfx* D_80A0E0F8[] = {
        0x040539B0, 0x040535B0, 0x040531B0, 0x04052DB0, 0x040529B0, 0x040525B0, 0x040521B0, 0x04051DB0,
    };
    s32 firstDone;
    s16 i;
    s16 idx;
    EnFdPart* part = this->particles;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 0x7B1);
    firstDone = false;
    if (1) {}
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < ARRAY_COUNT(this->particles); i++, part++) {
        if (part->type == FD_PART_FLAME) {
            if (!firstDone) {
                oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007928);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 10, 0, (u8)((this->fadeAlpha / 255.0f) * 255));
                firstDone = true;
            }
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255, 0, (u8)((this->fadeAlpha / 255.0f) * 255));
            gDPPipeSync(oGfxCtx->polyXlu.p++);
            Matrix_Translate(part->pos.x, part->pos.y, part->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(part->scale, part->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fd.c", 0x7D6),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            idx = part->timer * (8.0f / part->initialTimer);
            gSPSegment(oGfxCtx->polyXlu.p++, 0x8, SEGMENTED_TO_VIRTUAL(D_80A0E0F8[idx]));
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007938);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 0x7E4);
}

void EnFd_DrawDotParticles(EnFd* this, GlobalContext* globalCtx) {
    s16 i;
    s16 firstDone;
    EnFdPart* part = this->particles;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 2034);
    firstDone = false;
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < ARRAY_COUNT(this->particles); i++, part++) {
        if (part->type == FD_PART_DOT) {
            if (!firstDone) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_060079F8);
                firstDone = true;
            }
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, part->color.r, part->color.g, part->color.b,
                            (u8)(part->color.a * (this->fadeAlpha / 255.0f)));
            gDPPipeSync(oGfxCtx->polyXlu.p++);
            if (1) {}
            Matrix_Translate(part->pos.x, part->pos.y, part->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(part->scale, part->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fd.c", 2064),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007A78);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fd.c", 2071);
}
