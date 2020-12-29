#include "z_en_fz.h"

#define FLAGS 0x00000415

#define THIS ((EnFz*)thisx)

void EnFz_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFz_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFz_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFz_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnFz_GetCollision(EnFz* this, GlobalContext* globalCtx);

// Stationary Freezard
void EnFz_SetupFreezingStationary(EnFz* this);
void EnFz_FreezingStationary(EnFz* this, GlobalContext* globalCtx);

// Moving Freezard that can vanish and reappear
void EnFz_SetupGrowing(EnFz* this, GlobalContext* globalCtx);
void EnFz_Grow(EnFz* this);
void EnFz_FinishGrowing(EnFz* this, GlobalContext* globalCtx);
void EnFz_SetupWaitingPreFreeze(EnFz* this);
void EnFz_WaitPreFreeze(EnFz* this, GlobalContext* globalCtx);
void EnFz_MoveTowardsLink(EnFz* this);
void EnFz_Stop(EnFz* this, GlobalContext* globalCtx);
void EnFz_SetupWaitingPostFreeze(EnFz* this);
void EnFz_WaitPostFreeze(EnFz* this, GlobalContext* globalCtx);
void EnFz_SetupFreezing(EnFz* this, GlobalContext* globalCtx);
void EnFz_Freezing(EnFz* this, GlobalContext* globalCtx);
void EnFz_BeingShrinking(EnFz* this);
void EnFz_Shrinking(EnFz* this, GlobalContext* globalCtx);
void EnFz_Hidden(EnFz* this);

// Killed with fire source
void EnFz_SetupMelt(EnFz* this);
void EnFz_Melt(EnFz* this, GlobalContext* globalCtx);

// Death
void EnFz_SetupDespawn(EnFz* this, GlobalContext* globalCtx);
void EnFz_Despawn(EnFz* this, GlobalContext* globalCtx);

// Ice Smoke Effects
void EnFz_SetIceSmokeNotFreezing(EnFz* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 xyScale);
void EnFz_SetIceSmokeFreezing(EnFz* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 xyScale, f32 xyScaleTarget,
                              s16 primAlpha, u8 isTimerMod8);
void EnFz_MoveIceSmoke(EnFz* this, GlobalContext* globalCtx);
void EnFz_DrawIceSmoke(EnFz* this, GlobalContext* globalCtx);

// Same effects as "z_eff_ss_ice_smoke.h"
extern Gfx* D_060030A0[];
extern Gfx* D_06003158[];

const ActorInit En_Fz_InitVars = {
    ACTOR_EN_FZ,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FZ,
    sizeof(EnFz),
    (ActorFunc)EnFz_Init,
    (ActorFunc)EnFz_Destroy,
    (ActorFunc)EnFz_Update,
    (ActorFunc)EnFz_Draw,
};

static ColliderCylinderInit_Set3 sCylinderInit1 = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCE0FDB, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 30, 80, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit_Set3 sCylinderInit2 = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0x0001F024, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 35, 80, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit_Set3 sCylinderInit3 = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0x20000000, 0x02, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { 20, 30, -15, { 0, 0, 0 } },
};

static DamageTable sDamageTable = {
    0x00, 0xF0, 0xF0, 0xF2, 0xF0, 0xF0, 0xF2, 0xF2, 0xF0, 0xF2, 0xF4, 0x24, 0xF0, 0xF0, 0xF0, 0xF0,
    0xF0, 0x24, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xF4, 0xF2, 0xF0, 0xF8, 0xF4, 0x00, 0x00, 0x00, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 59, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 30, ICHAIN_STOP),
};

void EnFz_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFz* this = THIS;

    Actor_ProcessInitChain(&this->actor, &sInitChain);
    this->actor.colChkInfo.damageTable = &sDamageTable;
    this->actor.colChkInfo.health = 6;
    Collider_InitCylinder(globalCtx, &this->collider1);
    Collider_SetCylinder_Set3(globalCtx, &this->collider1, &this->actor, &sCylinderInit1);
    Collider_InitCylinder(globalCtx, &this->collider2);
    Collider_SetCylinder_Set3(globalCtx, &this->collider2, &this->actor, &sCylinderInit2);
    Collider_InitCylinder(globalCtx, &this->collider3);
    Collider_SetCylinder_Set3(globalCtx, &this->collider3, &this->actor, &sCylinderInit3);
    Actor_SetScale(&this->actor, 0.008f);
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.flags &= ~1;
    this->unusedTimer1 = 0;
    this->unusedCounter = 0;
    this->isAlwaysTrue = true;
    this->isMoving = false;
    this->isFreezing = false;
    this->isActive = true;
    this->isDespawning = false;
    this->actor.speedXZ = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->posOrigin.y = this->actor.posRot.pos.y;
    this->IceSmokeFreezingSpawnHeight = this->actor.posRot.pos.y;
    this->posOrigin.x = this->actor.posRot.pos.x;
    this->posOrigin.z = this->actor.posRot.pos.z;
    this->unusedFloat = 135.0f;
    if (this->actor.params < 0) {
        this->envAlpha = 0;
        this->actor.scale.y = 0.0f;
        EnFz_Hidden(this);
    } else {
        this->envAlpha = 255;
        EnFz_SetupFreezingStationary(this);
    }

    EnFz_GetCollision(this, globalCtx);
}

void EnFz_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFz* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider1);
    Collider_DestroyCylinder(globalCtx, &this->collider2);
    Collider_DestroyCylinder(globalCtx, &this->collider3);
}

void EnFz_GetCollision(EnFz* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Vec3f collisionPos;
    Vec3f vec1;
    u32 bgId;
    CollisionPoly* poly;

    pos.x = this->actor.posRot.pos.x;
    pos.y = this->actor.posRot.pos.y + 20.0f;
    pos.z = this->actor.posRot.pos.z;
    Matrix_Translate(pos.x, pos.y, pos.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, MTXMODE_APPLY);
    vec1.x = vec1.y = 0.0f;
    vec1.z = 220.0f;
    Matrix_MultVec3f(&vec1, &this->collisionPos);
    // If Collided
    if (func_8003DE84(&globalCtx->colCtx, &pos, &this->collisionPos, &collisionPos, &poly, 1, 0, 0, 1, &bgId)) {
        Math_Vec3f_Copy(&this->collisionPos, &collisionPos);
    }

    pos.x = this->actor.posRot.pos.x - this->collisionPos.x;
    pos.z = this->actor.posRot.pos.z - this->collisionPos.z;
    this->xzDistSquare = SQ(pos.x) + SQ(pos.z);
}

s32 EnFz_IsCollision(EnFz* this, Vec3f* vec) {
    if (this->xzDistSquare <= (SQ(this->actor.posRot.pos.x - vec->x) + SQ(this->actor.posRot.pos.z - vec->z))) {
        return true;
    } else {
        return false;
    }
}

void EnFz_Damaged(EnFz* this, GlobalContext* globalCtx, Vec3f* vec, s32 numEffects, f32 unkFloat) {
    int i;
    Vec3f pos;
    Vec3f vel;
    Vec3f accel;
    Color_RGBA8 primColor;
    Color_RGBA8 envColor;
    f32 scale;
    s32 life;

    primColor.r = 155;
    primColor.g = 255;
    primColor.b = 255;
    primColor.a = 255;
    envColor.r = 200;
    envColor.g = 200;
    envColor.b = 200;
    accel.x = accel.z = 0.0f;
    accel.y = -1.0f;
    for (i = 0; i < numEffects; i++) {
        scale = Rand_CenteredFloat(0.3f) + 0.6f;
        life = (s32)Rand_CenteredFloat(5.0f) + 12;
        pos.x = Rand_CenteredFloat(unkFloat) + vec->x;
        pos.y = Rand_ZeroFloat(unkFloat) + vec->y;
        pos.z = Rand_CenteredFloat(unkFloat) + vec->z;
        vel.x = Rand_CenteredFloat(10.0f);
        vel.y = Rand_ZeroFloat(10.0f) + 2.0f;
        vel.z = Rand_CenteredFloat(10.0f);
        EffectSsEnIce_Spawn(globalCtx, &pos, scale, &vel, &accel, &primColor, &envColor, life);
    }

    func_80062CD4(globalCtx, vec);
}

void EnFz_SpawnIceSmokeHiddenState(EnFz* this) {
}

// Fully grown
void EnFz_SpawnIceSmokeGrowingState(EnFz* this) {
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    if ((this->counter % 16) == 0) {
        pos.x = Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.x;
        pos.y = Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.y + 30.0f;
        pos.z = Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.z;
        accel.x = accel.z = 0.0f;
        accel.y = 0.1f;
        velocity.x = velocity.y = velocity.z = 0.0f;
        EnFz_SetIceSmokeNotFreezing(this, &pos, &velocity, &accel, Rand_ZeroFloat(7.5f) + 15.0f);
    }
}

// (2) Growing or Shrinking to/from hiding or (3) melting from fire
void EnFz_SpawnIceSmokeActiveState(EnFz* this) {
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    if ((this->counter % 4) == 0) {
        pos.x = Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.x;
        pos.y = this->IceSmokeFreezingSpawnHeight;
        pos.z = Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.z;
        accel.x = accel.z = 0.0f;
        accel.y = 0.1f;
        velocity.x = velocity.y = velocity.z = 0.0f;
        EnFz_SetIceSmokeNotFreezing(this, &pos, &velocity, &accel, Rand_ZeroFloat(7.5f) + 15.0f);
    }
}

void EnFz_ApplyDamage(EnFz* this, GlobalContext* globalCtx) {
    Vec3f vec;

    if (this->isMoving && ((this->actor.bgCheckFlags & 8) ||
                           (func_800339B8(&this->actor, globalCtx, 60.0f, this->actor.posRot.rot.y) == 0))) {
        this->actor.bgCheckFlags &= ~8;
        this->isMoving = false;
        this->speedXZ = 0.0f;
        this->actor.speedXZ = 0.0f;
    }

    if (this->isFreezing) {
        if ((this->actor.params < 0) && (this->collider1.base.atFlags & 2)) {
            this->isMoving = false;
            this->collider1.base.acFlags &= ~2;
            this->actor.speedXZ = this->speedXZ = 0.0f;
            this->timer = 10;
            EnFz_BeingShrinking(this);
        } else if (this->collider2.base.acFlags & 0x80) {
            this->collider2.base.acFlags &= ~0x80;
            this->collider1.base.acFlags &= ~2;
        } else if (this->collider1.base.acFlags & 2) {
            this->collider1.base.acFlags &= ~2;
            if (this->actor.colChkInfo.damageEffect != 2) {
                if (this->actor.colChkInfo.damageEffect == 0xF) {
                    Actor_ApplyDamage(&this->actor);
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, 8);
                    if (this->actor.colChkInfo.health) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FREEZAD_DAMAGE);
                        vec.x = this->actor.posRot.pos.x;
                        vec.y = this->actor.posRot.pos.y;
                        vec.z = this->actor.posRot.pos.z;
                        EnFz_Damaged(this, globalCtx, &vec, 10, 0.0f);
                        this->unusedCounter++;
                    } else {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FREEZAD_DEAD);
                        Audio_PlayActorSound2(&this->actor, NA_SE_EV_ICE_BROKEN);
                        vec.x = this->actor.posRot.pos.x;
                        vec.y = this->actor.posRot.pos.y;
                        vec.z = this->actor.posRot.pos.z;
                        EnFz_Damaged(this, globalCtx, &vec, 30, 10.0f);
                        EnFz_SetupDespawn(this, globalCtx);
                    }
                }
            } else {
                Actor_ApplyDamage(&this->actor);
                func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, 8);
                if (this->actor.colChkInfo.health == 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FREEZAD_DEAD);
                    EnFz_SetupMelt(this);
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FREEZAD_DAMAGE);
                }
            }
        }
    }
}

void EnFz_RotateTowardsLink(EnFz* this) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 10, 2000, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
}

void EnFz_BeingShrinking(EnFz* this) {
    this->state = 2;
    this->isFreezing = false;
    this->actor.flags &= ~1;
    this->actionFunc = EnFz_Shrinking;
}

void EnFz_Shrinking(EnFz* this, GlobalContext* globalCtx) {
    this->envAlpha -= 16;
    if (this->envAlpha > 255) {
        this->envAlpha = 0;
    }

    if (Math_SmoothStepToF(&this->actor.scale.y, 0.0f, 1.0f, 0.0005f, 0) == 0.0f) {
        EnFz_Hidden(this);
    }
}

void EnFz_Hidden(EnFz* this) {
    this->state = 0;
    this->unusedNum2 = 0;
    this->unusedNum1 = 0;
    this->timer = 100;
    this->actionFunc = EnFz_SetupGrowing;
    this->actor.posRot.pos.x = this->posOrigin.x;
    this->actor.posRot.pos.y = this->posOrigin.y;
    this->actor.posRot.pos.z = this->posOrigin.z;
}

void EnFz_SetupGrowing(EnFz* this, GlobalContext* globalCtx) {
    if ((this->timer == 0) && (this->actor.xzDistFromLink < 400.0f)) {
        EnFz_Grow(this);
    }
}

void EnFz_Grow(EnFz* this) {
    this->state = 2;
    this->timer = 20;
    this->unusedNum2 = 4000;
    this->actionFunc = EnFz_FinishGrowing;
}

void EnFz_FinishGrowing(EnFz* this, GlobalContext* globalCtx) {
    if (this->timer == 0) {
        this->envAlpha += 8;
        if (this->envAlpha > 255) {
            this->envAlpha = 255;
        }

        if (Math_SmoothStepToF(&this->actor.scale.y, 0.008f, 1.0f, 0.0005f, 0.0f) == 0.0f) {
            EnFz_SetupWaitingPreFreeze(this);
        }
    }
}

void EnFz_SetupWaitingPreFreeze(EnFz* this) {
    this->state = 1;
    this->timer = 40;
    this->isAlwaysTrue = true;
    this->isFreezing = true;
    this->actor.flags |= 1;
    this->actionFunc = EnFz_WaitPreFreeze;
    this->actor.gravity = -1.0f;
}

void EnFz_WaitPreFreeze(EnFz* this, GlobalContext* globalCtx) {
    EnFz_RotateTowardsLink(this);
    if (this->timer == 0) {
        EnFz_MoveTowardsLink(this);
    }
}

void EnFz_MoveTowardsLink(EnFz* this) {
    this->state = 1;
    this->isMoving = true;
    this->timer = 100;
    this->actionFunc = EnFz_Stop;
    this->speedXZ = 4.0f;
}

void EnFz_Stop(EnFz* this, GlobalContext* globalCtx) {
    if ((this->timer == 0) || !this->isMoving) {
        EnFz_SetupWaitingPostFreeze(this);
    }
}

void EnFz_SetupWaitingPostFreeze(EnFz* this) {
    this->state = 1;
    this->timer = 40;
    this->actionFunc = EnFz_WaitPostFreeze;
    this->speedXZ = 0.0f;
    this->actor.speedXZ = 0.0f;
}

void EnFz_WaitPostFreeze(EnFz* this, GlobalContext* globalCtx) {
    EnFz_RotateTowardsLink(this);
    if (this->timer == 0) {
        EnFz_SetupFreezing(this, globalCtx);
    }
}

void EnFz_SetupFreezing(EnFz* this, GlobalContext* globalCtx) {
    this->state = 1;
    this->timer = 80;
    this->actionFunc = EnFz_Freezing;
    EnFz_GetCollision(this, globalCtx);
}

void EnFz_Freezing(EnFz* this, GlobalContext* globalCtx) {
    Vec3f vec1;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;
    u8 isTimerMod8;
    s16 primAlpha;

    if (this->timer == 0) {
        EnFz_BeingShrinking(this);
    } else if (this->timer >= 11) {
        isTimerMod8 = false;
        primAlpha = 150;
        func_8002F974(&this->actor, NA_SE_EN_FREEZAD_BREATH - SFX_FLAG);
        if ((this->timer - 10) < 16) { // t < 26
            primAlpha = (this->timer * 10) - 100;
        }

        accel.x = accel.z = 0.0f;
        accel.y = 0.6f;
        pos.x = this->actor.posRot.pos.x;
        pos.y = this->actor.posRot.pos.y + 20.0f;
        pos.z = this->actor.posRot.pos.z;
        Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, MTXMODE_NEW);
        vec1.x = 0.0f;
        vec1.y = -2.0f;
        vec1.z = 20.0f; // xz velocity
        Matrix_MultVec3f(&vec1, &velocity);
        if ((this->timer % 8) == 0) {
            isTimerMod8 = true;
        }

        EnFz_SetIceSmokeFreezing(this, &pos, &velocity, &accel, 2.0f, 25.0f, primAlpha, isTimerMod8);
        pos.x += (velocity.x * 0.5f);
        pos.y += (velocity.y * 0.5f);
        pos.z += (velocity.z * 0.5f);
        EnFz_SetIceSmokeFreezing(this, &pos, &velocity, &accel, 2.0f, 25.0f, primAlpha, false);
    }
}

void EnFz_SetupDespawn(EnFz* this, GlobalContext* globalCtx) {
    this->state = 0;
    this->isAlwaysTrue = true;
    this->isFreezing = false;
    this->isDespawning = true;
    this->actor.flags &= ~1;
    this->isActive = false;
    this->timer = 60;
    this->speedXZ = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 0.0f;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot, 0x60);
    this->actionFunc = EnFz_Despawn;
}

void EnFz_Despawn(EnFz* this, GlobalContext* globalCtx) {
    if (this->timer == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnFz_SetupMelt(EnFz* this) {
    this->state = 3;
    this->isFreezing = false;
    this->isDespawning = true;
    this->actor.flags &= ~1;
    this->actionFunc = EnFz_Melt;
    this->actor.speedXZ = 0.0f;
    this->speedXZ = 0.0f;
}

void EnFz_Melt(EnFz* this, GlobalContext* globalCtx) {
    Math_StepToF(&this->actor.scale.y, 0.0006f, 0.0002f);
    if (this->actor.scale.y < 0.006f) {
        this->actor.scale.x += 0.0004f;
        this->actor.scale.z += 0.0004f;
    }

    if (this->actor.scale.y < 0.004f) {
        this->envAlpha -= 8;
        if (this->envAlpha > 255) {
            this->envAlpha = 0;
        }
    }

    if (this->envAlpha == 0) {
        EnFz_SetupDespawn(this, globalCtx);
    }
}

void EnFz_SetupFreezingStationary(EnFz* this) {
    this->state = 1;
    this->timer = 40;
    this->isAlwaysTrue = true;
    this->isFreezing = true;
    this->actor.flags |= 1;
    this->actionFunc = EnFz_FreezingStationary;
    this->actor.gravity = -1.0f;
}

void EnFz_FreezingStationary(EnFz* this, GlobalContext* globalCtx) {
    Vec3f vec1;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;
    u8 isTimerMod8;
    s16 primAlpha;

    if (this->counter & 0xC0) {
        EnFz_RotateTowardsLink(this);
        EnFz_GetCollision(this, globalCtx);
    } else {
        isTimerMod8 = false;
        primAlpha = 150;
        func_8002F974(&this->actor, NA_SE_EN_FREEZAD_BREATH - SFX_FLAG);
        if ((this->counter & 0x3F) >= 48) {
            primAlpha = 630 - ((this->counter & 0x3F) * 10);
        }

        accel.x = accel.z = 0.0f;
        accel.y = 0.6f;
        pos.x = this->actor.posRot.pos.x;
        pos.y = this->actor.posRot.pos.y + 20.0f;
        pos.z = this->actor.posRot.pos.z;
        Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, MTXMODE_NEW);
        vec1.x = 0.0f;
        vec1.y = -2.0f;
        vec1.z = 20.0f;
        Matrix_MultVec3f(&vec1, &velocity);
        if ((this->counter % 8) == 0) {
            isTimerMod8 = true;
        }

        EnFz_SetIceSmokeFreezing(this, &pos, &velocity, &accel, 2.0f, 25.0f, primAlpha, isTimerMod8);
        pos.x += (velocity.x * 0.5f);
        pos.y += (velocity.y * 0.5f);
        pos.z += (velocity.z * 0.5f);
        EnFz_SetIceSmokeFreezing(this, &pos, &velocity, &accel, 2.0f, 25.0f, primAlpha, false);
    }
}

void EnFz_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnFz* this = THIS;
    s32 pad;
    static EnFzSpawnIceSmokeFunc SpawnIceSmoke[] = {
        EnFz_SpawnIceSmokeHiddenState,  // Hiding
        EnFz_SpawnIceSmokeGrowingState, // Fully grown
        EnFz_SpawnIceSmokeActiveState,  // Growing or Shrinking to/from hiding
        EnFz_SpawnIceSmokeActiveState,  // melting from fire attack
    };

    this->counter++;
    if (this->unusedTimer1) {
        this->unusedTimer1--;
    }
    if (this->timer) {
        this->timer--;
    }
    if (this->unusedTimer2) {
        this->unusedTimer2--;
    }

    Actor_SetHeight(&this->actor, 50.0f);
    EnFz_ApplyDamage(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (this->isDespawning == false) {
        Collider_CylinderUpdate(&this->actor, &this->collider1);
        Collider_CylinderUpdate(&this->actor, &this->collider2);
        if (this->isFreezing) {
            if (this->actor.dmgEffectTimer == 0) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1);
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2);
            }
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1);
        }
    }

    Math_StepToF(&this->actor.speedXZ, this->speedXZ, 0.2f);
    Actor_MoveForward(&this->actor);
    if (this->isAlwaysTrue) {
        func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 20.0f, 5);
    }

    SpawnIceSmoke[this->state](this);
    EnFz_MoveIceSmoke(this, globalCtx);
}

void EnFz_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* displayLists[] = {
        0x06001130, // Body fully intact           (5 or 6 health)
        0x060021A0, // Top right horn chipped off  (from Freezards perspective)   (3 or 4 health)
        0x06002CA0
    }; // Entire head chipped off     (1 or 2 health)
    EnFz* this = THIS;
    s32 pad;
    s32 index;

    index = (6 - this->actor.colChkInfo.health) >> 1;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_fz.c", 1167);

    if (1) {}
    if (this->actor.colChkInfo.health == 0) {
        index = 2;
    }

    if (this->isActive) {
        func_8002ED80(&this->actor, globalCtx, 0);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, globalCtx->state.frames & 0x7F, 32, 32, 1, 0,
                                    (2 * globalCtx->state.frames) & 0x7F, 32, 32));
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fz.c", 1183),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetCombineLERP(POLY_XLU_DISP++, TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIMITIVE, TEXEL0,
                          PRIMITIVE, ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 128, 155, 255, 255, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, 200, 200, 200, this->envAlpha);
        gSPDisplayList(POLY_XLU_DISP++, displayLists[index]);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_fz.c", 1200);
    EnFz_DrawIceSmoke(this, globalCtx);
}

void EnFz_SetIceSmokeNotFreezing(EnFz* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 xyScale) {
    EnFzEffectSsIceSmoke* iceSmoke = this->iceSmoke;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->iceSmoke); i++) {
        if (iceSmoke->type == 0) {
            iceSmoke->type = 1;
            iceSmoke->pos = *pos;
            iceSmoke->velocity = *velocity;
            iceSmoke->accel = *accel;
            iceSmoke->primAlphaState = 0;
            iceSmoke->xyScale = xyScale / 1000.0f;
            iceSmoke->primAlpha = 0;
            iceSmoke->timer = 0;
            break;
        }
        iceSmoke++;
    }
}

void EnFz_SetIceSmokeFreezing(EnFz* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 xyScale, f32 xyScaleTarget,
                              s16 primAlpha, u8 isTimerMod8) {
    EnFzEffectSsIceSmoke* iceSmoke = this->iceSmoke;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->iceSmoke); i++) {
        if (iceSmoke->type == 0) {
            iceSmoke->type = 2;
            iceSmoke->pos = *pos;
            iceSmoke->velocity = *velocity;
            iceSmoke->accel = *accel;
            iceSmoke->primAlphaState = 0;
            iceSmoke->xyScale = xyScale / 1000.0f;
            iceSmoke->xyScaleTarget = xyScaleTarget / 1000.0f;
            iceSmoke->primAlpha = primAlpha;
            iceSmoke->timer = 0;
            iceSmoke->isTimerMod8 = isTimerMod8;
            break;
        }
        iceSmoke++;
    }
}

void EnFz_MoveIceSmoke(EnFz* this, GlobalContext* globalCtx) {
    EnFzEffectSsIceSmoke* iceSmoke = this->iceSmoke;
    s16 i;
    Vec3f pos;

    for (i = 0; i < ARRAY_COUNT(this->iceSmoke); i++) {
        if (iceSmoke->type) {
            iceSmoke->pos.x += iceSmoke->velocity.x;
            iceSmoke->pos.y += iceSmoke->velocity.y;
            iceSmoke->pos.z += iceSmoke->velocity.z;
            iceSmoke->timer++;
            iceSmoke->velocity.x += iceSmoke->accel.x;
            iceSmoke->velocity.y += iceSmoke->accel.y;
            iceSmoke->velocity.z += iceSmoke->accel.z;
            if (iceSmoke->type == 1) { 
                if (iceSmoke->primAlphaState == 0) { // Becoming more opaque
                    iceSmoke->primAlpha += 10;
                    if (iceSmoke->primAlpha >= 100) {
                        iceSmoke->primAlphaState++;
                    }
                } else { // Becoming more transparent
                    iceSmoke->primAlpha -= 3;
                    if (iceSmoke->primAlpha <= 0) {
                        iceSmoke->primAlpha = 0;
                        iceSmoke->type = 0;
                    }
                }
            } else if (iceSmoke->type == 2) { // Freezing
                Math_ApproachF(&iceSmoke->xyScale, iceSmoke->xyScaleTarget, 0.1f,
                                     iceSmoke->xyScaleTarget / 10.0f);
                if (iceSmoke->primAlphaState == 0) { // Becoming more opaque
                    if (iceSmoke->timer >= 7) {
                        iceSmoke->primAlphaState++;
                    }
                } else { // Becoming more transparent, slows down
                    iceSmoke->accel.y = 2.0f;
                    iceSmoke->primAlpha -= 17;
                    iceSmoke->velocity.x *= 0.75f;
                    iceSmoke->velocity.z *= 0.75f;
                    if (iceSmoke->primAlpha <= 0) {
                        iceSmoke->primAlpha = 0;
                        iceSmoke->type = 0;
                    }
                }

                if ((this->unusedTimer2 == 0) && (iceSmoke->primAlpha >= 101) && iceSmoke->isTimerMod8) {
                    this->collider3.dim.pos.x = (s16)iceSmoke->pos.x;
                    this->collider3.dim.pos.y = (s16)iceSmoke->pos.y;
                    this->collider3.dim.pos.z = (s16)iceSmoke->pos.z;
                    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider3);
                }
                pos.x = iceSmoke->pos.x;
                pos.y = iceSmoke->pos.y + 10.0f;
                pos.z = iceSmoke->pos.z;
                // Stop if collision
                if ((iceSmoke->primAlphaState != 2) && (EnFz_IsCollision(this, &pos))) {
                    iceSmoke->primAlphaState = 2;
                    iceSmoke->velocity.x = 0.0f;
                    iceSmoke->velocity.z = 0.0f;
                }
            }
        }
        iceSmoke++;
    }
}

void EnFz_DrawIceSmoke(EnFz* this, GlobalContext* globalCtx) {
    EnFzEffectSsIceSmoke* iceSmoke = this->iceSmoke;
    s16 i;
    GraphicsContext* state = globalCtx->state.gfxCtx;
    u8 flag = 0;

    OPEN_DISPS(state, "../z_en_fz.c", 1384);
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < ARRAY_COUNT(this->iceSmoke); i++) {
        if (iceSmoke->type > 0) {
            gDPPipeSync(POLY_XLU_DISP++);
            if (!flag) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(&D_060030A0));
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, iceSmoke->primAlpha);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 3 * (iceSmoke->timer + (3 * i)),
                                       15 * (iceSmoke->timer + (3 * i)), 32, 64, 1, 0, 0, 32, 32));
            Matrix_Translate(iceSmoke->pos.x, iceSmoke->pos.y, iceSmoke->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(iceSmoke->xyScale, iceSmoke->xyScale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(state, "../z_en_fz.c", 1424),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(&D_06003158));
        }
        iceSmoke++;
    }
    CLOSE_DISPS(state, "../z_en_fz.c", 1430);
}
