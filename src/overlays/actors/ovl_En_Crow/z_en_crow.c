#include "z_en_crow.h"

#define FLAGS 0x00005005

#define THIS ((EnCrow*)thisx)

void EnCrow_Init(Actor* thisx, GlobalContext* globalCtx);
void EnCrow_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnCrow_Update(Actor* thisx, GlobalContext* globalCtx);
void EnCrow_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnCrow_SetupWait(EnCrow* this);
void EnCrow_Wait(EnCrow* this, GlobalContext* globalCtx);
void func_809E10A8(EnCrow* this, GlobalContext* globalCtx);
void func_809E0C8C(EnCrow* this, GlobalContext* globalCtx);
void EnCrow_Die(EnCrow* this, GlobalContext* globalCtx);
void func_809E1004(EnCrow* this, GlobalContext* globalCtx);
void func_809E0E2C(EnCrow* this, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_060010C0;
extern AnimationHeader D_060000F0;

static Vec3f sZeroVecAccel = { 0.0f, 0.0f, 0.0f };

const ActorInit En_Crow_InitVars = {
    ACTOR_EN_CROW,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_CROW,
    sizeof(EnCrow),
    (ActorFunc)EnCrow_Init,
    (ActorFunc)EnCrow_Destroy,
    (ActorFunc)EnCrow_Update,
    (ActorFunc)EnCrow_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit = {
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x01, 0x01 },
    { 1, { { 0, 0, 0 }, 20 }, 100 },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    1,
    &sJntSphItemsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 1, 0x000F, 0x001E, 30 };

static DamageTable sDamageTable = {
    0x10, 0x02, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02, 0x01, 0x02, 0x04, 0x24, 0x32, 0x02, 0x04, 0x02,
    0x02, 0x24, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

static u32 sDeathCount = 0;

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 3000, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 88, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 65336, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2000, ICHAIN_STOP),
};

static Vec3f sHeadVec[] = { 2500.0f, 0.0f, 0.0f };

void EnCrow_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnCrow* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_060010C0, &D_060000F0, &this->limbDrawTable,
                       &this->transitionDrawTable, 9);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, &this->colliderItems);
    this->collider.list[0].dim.worldSphere.radius = sJntSphInit.list->dim.modelSphere.radius;
    func_80061ED4(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    ActorShape_Init(&this->actor.shape, 2000.0f, ActorShadow_DrawFunc_Circle, 20.0f);
    sDeathCount = 0;
    EnCrow_SetupWait(this);
}

void EnCrow_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnCrow* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void EnCrow_SetupWait(EnCrow* this) {
    this->timer = 100;
    this->collider.base.acFlags |= 1;
    this->actionFunc = EnCrow_Wait;
    this->skelAnime.animPlaybackSpeed = 1.0f;
}

void func_809E0384(EnCrow* this) {
    this->timer = 300;
    this->actor.speedXZ = 4.0f;
    this->skelAnime.animPlaybackSpeed = 2.0f;
    this->actionFunc = func_809E0C8C;
}

void func_809E03B4(EnCrow* this, GlobalContext* globalCtx) {
    s32 i;
    f32 scale;
    Vec3f iceParticlePos;

    this->actor.speedXZ *= Math_Coss(this->actor.posRot.rot.x);
    this->actor.velocity.y = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060000F0, 0.4f, 0.0f, 0.0f, 1, -3.0f);
    scale = this->actor.scale.x * 100.0f;
    this->actor.posRot.pos.y += 20.0f * scale;
    this->actor.bgCheckFlags &= ~1;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.unk_4C = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_KAICHO_DEAD);

    if (this->actor.colChkInfo.damageEffect == 3) {
        func_8003426C(&this->actor, 0, 255, 0, 40);
        for (i = 0; i < 8; i++) {
            iceParticlePos.x = ((i & 1 ? 7.0f : -7.0f) * scale) + this->actor.posRot.pos.x;
            iceParticlePos.y = ((i & 2 ? 7.0f : -7.0f) * scale) + this->actor.posRot.pos.y;
            iceParticlePos.z = ((i & 4 ? 7.0f : -7.0f) * scale) + this->actor.posRot.pos.z;
            EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &iceParticlePos, 150, 150, 150, 250, 235, 245, 255,
                                           ((Math_Rand_ZeroOne() * 0.15f) + 0.85f) * scale);
        }
    } else if (this->actor.colChkInfo.damageEffect == 2) {
        func_8003426C(&this->actor, 0x4000, 255, 0, 40);

        for (i = 0; i < 4; i++) {
            EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &this->actor.posRot, 50.0f * scale, 0, 0, i);
        }
    } else {
        func_8003426C(&this->actor, 0x4000, 255, 0, 40);
    }

    if (this->actor.flags & 0x8000) {
        this->actor.speedXZ = 0.0f;
    }

    this->collider.base.acFlags &= ~1;
    this->actor.flags |= 0x10;

    this->actionFunc = func_809E0E2C;
}

void EnCrow_SetupDie(EnCrow* this) {
    this->actor.dmgEffectTimer = 0;
    this->actionFunc = EnCrow_Die;
}

void func_809E06E8(EnCrow* this) {
    this->timer = 100;
    this->actor.speedXZ = 3.5f;
    this->aimRotX = -0x1000;
    this->aimRotY = this->actor.yawTowardsLink + 0x8000;
    this->skelAnime.animPlaybackSpeed = 2.0f;
    func_8003426C(&this->actor, 0, 255, 0, 5);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actionFunc = func_809E1004;
}

void func_809E0770(EnCrow* this) {
    if (sDeathCount == 10) {
        this->actor.params = 1;
        sDeathCount = 0;
        this->collider.list[0].dim.worldSphere.radius = sJntSphInit.list->dim.modelSphere.radius * 0.03f * 100.0f;
    } else {
        this->actor.params = 0;
        this->collider.list[0].dim.worldSphere.radius = sJntSphInit.list->dim.modelSphere.radius;
    }

    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_060000F0);
    Math_Vec3f_Copy(&this->actor.posRot, &this->actor.initPosRot);
    this->actor.shape.rot.x = 0;
    this->actor.shape.rot.z = 0;
    this->timer = 300;
    this->actor.shape.unk_08 = 2000;
    this->actor.unk_4C = 2000.0f;
    this->actor.draw = NULL;
    this->actionFunc = func_809E10A8;
}

void EnCrow_Wait(EnCrow* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 skelanimeUpdated;
    s16 var;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    skelanimeUpdated = func_800A56C8(&this->skelAnime, 0.0f);
    this->actor.speedXZ = (Math_Rand_ZeroOne() * 1.5f) + 3.0f;

    if (this->actor.bgCheckFlags & 8) {
        this->aimRotY = this->actor.wallPolyRot;
    } else if (func_8002DBB0(&this->actor, &this->actor.initPosRot) > 300.0f) {
        this->aimRotY = func_8002DAC0(&this->actor, &this->actor.initPosRot);
    }

    if ((Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->aimRotY, 5, 0x300, 0x10) == 0) && (skelanimeUpdated) &&
        (Math_Rand_ZeroOne() < 0.1f)) {
        var = func_8002DAC0(&this->actor, &this->actor.initPosRot) - this->actor.shape.rot.y;
        if (var > 0) {
            this->aimRotY += 0x1000 + (0x1000 * Math_Rand_ZeroOne());
        } else {
            this->aimRotY -= 0x1000 + (0x1000 * Math_Rand_ZeroOne());
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_KAICHO_CRY);
    }

    if (this->actor.waterY > -40.0f) {
        this->aimRotX = -0x1000;
    } else if (this->actor.posRot.pos.y < (this->actor.initPosRot.pos.y - 50.0f)) {
        this->aimRotX = -0x800 - (Math_Rand_ZeroOne() * 0x800);
    } else if (this->actor.posRot.pos.y > (this->actor.initPosRot.pos.y + 50.0f)) {
        this->aimRotX = 0x800 + (Math_Rand_ZeroOne() * 0x800);
    }

    if ((Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->aimRotX, 10, 0x100, 8) == 0) && (skelanimeUpdated) &&
        (Math_Rand_ZeroOne() < 0.1f)) {
        if (this->actor.initPosRot.pos.y < this->actor.posRot.pos.y) {
            this->aimRotX -= (0x400 * Math_Rand_ZeroOne()) + 0x400;
        } else {
            this->aimRotX += (0x400 * Math_Rand_ZeroOne()) + 0x400;
        }
        this->aimRotX = CLAMP(this->aimRotX, -0x1000, 0x1000);
    }

    if (this->actor.bgCheckFlags & 1) {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x100, 0x400);
    }

    if (this->timer != 0) {
        this->timer--;
    }
    if ((this->timer == 0) && (this->actor.xzDistFromLink < 300.0f) && !(player->stateFlags1 & 0x00800000) &&
        (this->actor.waterY < -40.0f) && (Player_GetMask(globalCtx) != PLAYER_MASK_SKULL)) {
        func_809E0384(this);
    }
}

void func_809E0C8C(EnCrow* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 yaw;
    Vec3f pos;
    s16 target;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }

    yaw = func_8002E084(&this->actor, 0x2800);

    if (yaw != 0) {
        pos.x = player->actor.posRot.pos.x;
        pos.y = player->actor.posRot.pos.y + 20.0f;
        pos.z = player->actor.posRot.pos.z;
        target = func_8002DB28(&this->actor, &pos);
        if (target > 0x3000) {
            target = 0x3000;
        }
        Math_SmoothScaleMaxS(&this->actor.shape.rot.x, target, 2, 0x400);
    } else {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.x, -0x1000, 2, 0x100);
    }

    if ((yaw != 0) || (this->actor.xzDistFromLink > 80.0f)) {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 4, 0xC00);
    }

    if ((this->timer == 0) || (Player_GetMask(globalCtx) == PLAYER_MASK_SKULL) || (this->collider.base.atFlags & 2) ||
        (this->actor.bgCheckFlags & 9) || (player->stateFlags1 & 0x00800000) || (this->actor.waterY > -40.0f)) {
        if (this->collider.base.atFlags & 2) {
            this->collider.base.atFlags &= ~2;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_KAICHO_ATTACK);
        }

        EnCrow_SetupWait(this);
    }
}

void func_809E0E2C(EnCrow* this, GlobalContext* globalCtx) {
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
    this->actor.dmgEffectTimer = 40;

    if (!(this->actor.flags & 0x8000)) {
        if (this->actor.dmgEffectParams & 0x4000) {
            Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0x4000, 0x200);
            this->actor.shape.rot.z += 0x1780;
        }
        if ((this->actor.bgCheckFlags & 1) || (this->actor.groundY == -32000.0f)) {
            EffectSsDeadDb_Spawn(globalCtx, &this->actor.posRot, &sZeroVecAccel, &sZeroVecAccel,
                                 this->actor.scale.x * 10000.0f, 0, 255, 255, 255, 255, 255, 0, 0, 1, 9, 1);
            EnCrow_SetupDie(this);
        }
    }
}

void EnCrow_Die(EnCrow* this, GlobalContext* globalCtx) {
    f32 step;

    if (this->actor.params != 0) {
        step = 0.006f;
    } else {
        step = 0.002f;
    }

    if (Math_ApproxF(&this->actor.scale, 0.0f, step)) {
        if (this->actor.params == 0) {
            sDeathCount++;
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot, 0);
        } else {
            Item_DropCollectible(globalCtx, &this->actor.posRot, ITEM00_RUPEE_RED);
        }
        func_809E0770(this);
    }

    this->actor.scale.z = this->actor.scale.y = this->actor.scale.x;
}

void func_809E1004(EnCrow* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->actor.bgCheckFlags & 8) {
        this->aimRotY = this->actor.wallPolyRot;
    } else {
        this->aimRotY = this->actor.yawTowardsLink + 0x8000;
    }

    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->aimRotY, 3, 0xC00);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, this->aimRotX, 5, 0x100);

    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        EnCrow_SetupWait(this);
    }
}

void func_809E10A8(EnCrow* this, GlobalContext* globalCtx) {
    f32 target;

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        this->actor.draw = EnCrow_Draw;
        if (this->actor.params != 0) {
            target = 0.03f;
        } else {
            target = 0.01f;
        }
        if (Math_ApproxF(&this->actor.scale, target, target * 0.1f)) {
            this->actor.flags |= 1;
            this->actor.flags &= ~0x10;
            this->actor.colChkInfo.health = 1;
            EnCrow_SetupWait(this);
        }
        this->actor.scale.z = this->actor.scale.y = this->actor.scale.x;
    }
}

void func_809E1174(EnCrow* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        func_80035650(&this->actor, &this->collider.list[0].body, 1);
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (this->actor.colChkInfo.damageEffect == 1) {
                func_809E06E8(this);
            } else {
                Actor_ApplyDamage(&this->actor);
                this->actor.flags &= ~1;
                func_80032C7C(globalCtx, &this->actor);
                func_809E03B4(this, globalCtx);
            }
        }
    }
}

void EnCrow_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnCrow* this = THIS;
    f32 pad;
    f32 height;
    f32 scale;

    func_809E1174(this, globalCtx);
    this->actionFunc(this, globalCtx);
    scale = this->actor.scale.x * 100.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->actor.posRot.rot.x = -this->actor.shape.rot.x;

    if (this->actionFunc != func_809E10A8) {
        if (this->actor.colChkInfo.health != 0) {
            height = 20.0f * scale;
            func_8002D97C(&this->actor);
        } else {
            height = 0.0f;
            Actor_MoveForward(&this->actor);
        }
        func_8002E4B4(globalCtx, &this->actor, 12.0f * scale, 25.0f * scale, 50.0f * scale, 7);
    } else {
        height = 0.0f;
    }

    this->collider.list[0].dim.worldSphere.center.x = this->actor.posRot.pos.x;
    this->collider.list[0].dim.worldSphere.center.y = this->actor.posRot.pos.y + height;
    this->collider.list[0].dim.worldSphere.center.z = this->actor.posRot.pos.z;

    if (this->actionFunc == func_809E0C8C) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }

    if (this->collider.base.acFlags & 1) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }

    if (this->actionFunc != func_809E10A8) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }

    Actor_SetHeight(&this->actor, height);

    if (this->actor.colChkInfo.health != 0 && func_800A56C8(&this->skelAnime, 3.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_KAICHO_FLUTTER);
    }
}

s32 EnCrow_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnCrow* this = THIS;

    if (this->actor.colChkInfo.health != 0) {
        if (limbIndex == 7) {
            rot->y += 0xC00 * sinf(this->skelAnime.animCurrentFrame * (M_PI / 4));
        } else if (limbIndex == 8) {
            rot->y += 0x1400 * sinf((this->skelAnime.animCurrentFrame + 2.5f) * (M_PI / 4));
        }
    }
    return false;
}

void EnCrow_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnCrow* this = THIS;
    Vec3f* vec;

    if (limbIndex == 2) {
        Matrix_MultVec3f(&sHeadVec, &this->bodyPartsPos[0]);
        this->bodyPartsPos[0].y -= 20.0f;
    } else if ((limbIndex == 4) || (limbIndex == 6) || (limbIndex == 8)) {
        vec = &this->bodyPartsPos[(limbIndex >> 1) - 1];
        Matrix_MultVec3f(&sZeroVecAccel, vec);
        vec->y -= 20.0f;
    }
}

void EnCrow_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnCrow* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                          EnCrow_OverrideLimbDraw, EnCrow_PostLimbDraw, this);
}
