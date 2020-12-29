#include "z_en_okuta.h"

#define FLAGS 0x00000005

#define THIS ((EnOkuta*)thisx)

void EnOkuta_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Update(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnOkuta_SetupWaitToAppear(EnOkuta* this);
void EnOkuta_WaitToAppear(EnOkuta* this, GlobalContext* globalCtx);
void EnOkuta_Appear(EnOkuta* this, GlobalContext* globalCtx);
void EnOkuta_Hide(EnOkuta* this, GlobalContext* globalCtx);
void EnOkuta_WaitToShoot(EnOkuta* this, GlobalContext* globalCtx);
void EnOkuta_Shoot(EnOkuta* this, GlobalContext* globalCtx);
void EnOkuta_WaitToDie(EnOkuta* this, GlobalContext* globalCtx);
void EnOkuta_Die(EnOkuta* this, GlobalContext* globalCtx);
void EnOkuta_Freeze(EnOkuta* this, GlobalContext* globalCtx);
void EnOkuta_ProjectileFly(EnOkuta* this, GlobalContext* globalCtx);

const ActorInit En_Okuta_InitVars = {
    ACTOR_EN_OKUTA,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_OKUTA,
    sizeof(EnOkuta),
    (ActorFunc)EnOkuta_Init,
    (ActorFunc)EnOkuta_Destroy,
    (ActorFunc)EnOkuta_Update,
    (ActorFunc)EnOkuta_Draw,
};

extern AnimationHeader D_06000344;
extern AnimationHeader D_060008FC;
extern AnimationHeader D_06000AC0;
extern AnimationHeader D_06000DDC;
extern Gfx D_06003380[];
extern SkeletonHeader D_06003660;
extern AnimationHeader D_06003910;
extern AnimationHeader D_06003C64;

static ColliderCylinderInit sProjectileColliderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x01, 0x01 },
    { 13, 20, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sOctorockColliderInit = {
    { COLTYPE_UNK0, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 40, -30, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 1, 0xF, 0x3C, 0x64 };

static DamageTable sDamageTable = {
    0x00, 0x02, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02, 0x01, 0x02, 0x04, 0x02, 0x34, 0x02, 0x02, 0x02,
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 66, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 6500, ICHAIN_STOP),
};

void EnOkuta_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;
    s32 pad;
    WaterBox* outWaterBox;
    f32 ySurface;
    UNK_TYPE sp30;

    Actor_ProcessInitChain(thisx, sInitChain);
    this->numShots = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    if (thisx->params == 0) {
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_06003660, &D_06003C64, this->jointTable, this->morphTable, 38);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &sOctorockColliderInit);
        func_80061ED4(&thisx->colChkInfo, &sDamageTable, &sColChkInfoInit);
        if ((this->numShots == 0xFF) || (this->numShots == 0)) {
            this->numShots = 1;
        }
        thisx->groundY = func_8003C9A4(&globalCtx->colCtx, &thisx->floorPoly, &sp30, thisx, &thisx->posRot.pos);
        if (!func_80042244(globalCtx, &globalCtx->colCtx, thisx->posRot.pos.x, thisx->posRot.pos.z, &ySurface,
                           &outWaterBox) ||
            (ySurface <= thisx->groundY)) {
            Actor_Kill(thisx);
        } else {
            thisx->initPosRot.pos.y = ySurface;
        }
        EnOkuta_SetupWaitToAppear(this);
    } else {
        ActorShape_Init(&thisx->shape, 1100.0f, ActorShadow_DrawFunc_Circle, 18.0f);
        thisx->flags &= ~1;
        thisx->flags |= 0x10;
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &sProjectileColliderInit);
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, thisx, ACTORTYPE_PROP);
        this->timer = 30;
        thisx->shape.rot.y = 0;
        this->actionFunc = EnOkuta_ProjectileFly;
        thisx->speedXZ = 10.0f;
    }
}

void EnOkuta_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnOkuta_SpawnBubbles(EnOkuta* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 10; i++) {
        EffectSsBubble_Spawn(globalCtx, &this->actor.posRot.pos, -10.0f, 10.0f, 30.0f, 0.25f);
    }
}

void EnOkuta_SpawnDust(Vec3f* pos, Vec3f* velocity, s16 scaleStep, GlobalContext* globalCtx) {
    static Vec3f accel = { 0.0f, 0.0f, 0.0f };
    static Color_RGBA8 primColor = { 255, 255, 255, 255 };
    static Color_RGBA8 envColor = { 150, 150, 150, 255 };

    func_8002829C(globalCtx, pos, velocity, &accel, &primColor, &envColor, 0x190, scaleStep);
}

void EnOkuta_SpawnSplash(EnOkuta* this, GlobalContext* globalCtx) {
    EffectSsGSplash_Spawn(globalCtx, &this->actor.initPosRot.pos, NULL, NULL, 0, 1300);
}

void EnOkuta_SpawnRipple(EnOkuta* this, GlobalContext* globalCtx) {
    Vec3f pos;

    pos.x = this->actor.posRot.pos.x;
    pos.y = this->actor.initPosRot.pos.y;
    pos.z = this->actor.posRot.pos.z;
    if ((globalCtx->gameplayFrames % 7) == 0 &&
        ((this->actionFunc != EnOkuta_Shoot) || ((this->actor.posRot.pos.y - this->actor.initPosRot.pos.y) < 50.0f))) {
        EffectSsGRipple_Spawn(globalCtx, &pos, 250, 650, 0);
    }
}

void EnOkuta_SetupWaitToAppear(EnOkuta* this) {
    this->actor.draw = NULL;
    this->actor.flags &= ~1;
    this->actionFunc = EnOkuta_WaitToAppear;
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y;
}

void EnOkuta_SetupAppear(EnOkuta* this, GlobalContext* globalCtx) {
    this->actor.draw = EnOkuta_Draw;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    this->actor.flags |= 1;
    Animation_PlayOnce(&this->skelAnime, &D_06003C64);
    EnOkuta_SpawnBubbles(this, globalCtx);
    this->actionFunc = EnOkuta_Appear;
}

void EnOkuta_SetupHide(EnOkuta* this) {
    Animation_PlayOnce(&this->skelAnime, &D_06000AC0);
    this->actionFunc = EnOkuta_Hide;
}

void EnOkuta_SetupWaitToShoot(EnOkuta* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06000DDC);
    this->timer = (this->actionFunc == EnOkuta_Shoot) ? 2 : 0;
    this->actionFunc = EnOkuta_WaitToShoot;
}

void EnOkuta_SetupShoot(EnOkuta* this, GlobalContext* globalCtx) {
    Animation_PlayOnce(&this->skelAnime, &D_06000344);
    if (this->actionFunc != EnOkuta_Shoot) {
        this->timer = this->numShots;
    }
    this->jumpHeight = this->actor.yDistFromLink + 20.0f;
    this->jumpHeight = CLAMP_MIN(this->jumpHeight, 10.0f);
    if (this->jumpHeight > 50.0f) {
        EnOkuta_SpawnSplash(this, globalCtx);
    }
    if (this->jumpHeight > 50.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_JUMP);
    }
    this->actionFunc = EnOkuta_Shoot;
}

void EnOkuta_SetupWaitToDie(EnOkuta* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06003910, -5.0f);
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xB);
    this->collider.base.acFlags &= ~2;
    Actor_SetScale(&this->actor, 0.01f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_DEAD1);
    this->actionFunc = EnOkuta_WaitToDie;
}

void EnOkuta_SetupDie(EnOkuta* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_060008FC, -3.0f);
    this->timer = 0;
    this->actionFunc = EnOkuta_Die;
}

void EnOkuta_SetupFreeze(EnOkuta* this) {
    this->timer = 80;
    func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
    this->actionFunc = EnOkuta_Freeze;
}

void EnOkuta_SpawnProjectile(EnOkuta* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Vec3f velocity;
    f32 sin = Math_SinS(this->actor.shape.rot.y);
    f32 cos = Math_CosS(this->actor.shape.rot.y);

    pos.x = this->actor.posRot.pos.x + (25.0f * sin);
    pos.y = this->actor.posRot.pos.y - 6.0f;
    pos.z = this->actor.posRot.pos.z + (25.0f * cos);
    if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_OKUTA, pos.x, pos.y, pos.z, this->actor.shape.rot.x,
                    this->actor.shape.rot.y, this->actor.shape.rot.z, 0x10) != NULL) {
        pos.x = this->actor.posRot.pos.x + (40.0f * sin);
        pos.z = this->actor.posRot.pos.z + (40.0f * cos);
        pos.y = this->actor.posRot.pos.y;
        velocity.x = 1.5f * sin;
        velocity.y = 0.0f;
        velocity.z = 1.5f * cos;
        EnOkuta_SpawnDust(&pos, &velocity, 20, globalCtx);
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_THROW);
}

void EnOkuta_WaitToAppear(EnOkuta* this, GlobalContext* globalCtx) {
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y;
    if ((this->actor.xzDistFromLink < 480.0f) && (this->actor.xzDistFromLink > 200.0f)) {
        EnOkuta_SetupAppear(this, globalCtx);
    }
}

void EnOkuta_Appear(EnOkuta* this, GlobalContext* globalCtx) {
    s32 pad;

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actor.xzDistFromLink < 160.0f) {
            EnOkuta_SetupHide(this);
        } else {
            EnOkuta_SetupWaitToShoot(this);
        }
    } else if (this->skelAnime.curFrame <= 4.0f) {
        Actor_SetScale(&this->actor, this->skelAnime.curFrame * 0.25f * 0.01f);
    } else if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
        Actor_SetScale(&this->actor, 0.01f);
    }
    if (Animation_OnFrame(&this->skelAnime, 2.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_JUMP);
    }
    if (Animation_OnFrame(&this->skelAnime, 12.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_LAND);
    }
    if (Animation_OnFrame(&this->skelAnime, 3.0f) || Animation_OnFrame(&this->skelAnime, 15.0f)) {
        EnOkuta_SpawnSplash(this, globalCtx);
    }
}

void EnOkuta_Hide(EnOkuta* this, GlobalContext* globalCtx) {
    s32 pad;

    Math_ApproachF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 30.0f);
    if (SkelAnime_Update(&this->skelAnime)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_BUBLE);
        EnOkuta_SpawnBubbles(this, globalCtx);
        EnOkuta_SetupWaitToAppear(this);
    } else if (this->skelAnime.curFrame >= 4.0f) {
        Actor_SetScale(&this->actor, (6.0f - this->skelAnime.curFrame) * 0.5f * 0.01f);
    }
    if (Animation_OnFrame(&this->skelAnime, 2.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_SINK);
    }
    if (Animation_OnFrame(&this->skelAnime, 4.0f)) {
        EnOkuta_SpawnSplash(this, globalCtx);
    }
}

void EnOkuta_WaitToShoot(EnOkuta* this, GlobalContext* globalCtx) {
    s16 temp_v0_2;
    s32 phi_v1;

    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y;
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        if (this->timer != 0) {
            this->timer--;
        }
    }
    if (Animation_OnFrame(&this->skelAnime, 0.5f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_FLOAT);
    }
    if (this->actor.xzDistFromLink < 160.0f || this->actor.xzDistFromLink > 560.0f) {
        EnOkuta_SetupHide(this);
    } else {
        temp_v0_2 = Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x71C, 0x38E);
        phi_v1 = ABS(temp_v0_2);
        if ((phi_v1 < 0x38E) && (this->timer == 0) && (this->actor.yDistFromLink < 200.0f)) {
            EnOkuta_SetupShoot(this, globalCtx);
        }
    }
}

void EnOkuta_Shoot(EnOkuta* this, GlobalContext* globalCtx) {
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x71C);
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->timer != 0) {
            this->timer--;
        }
        if (this->timer == 0) {
            EnOkuta_SetupWaitToShoot(this);
        } else {
            EnOkuta_SetupShoot(this, globalCtx);
        }
    } else {
        f32 curFrame = this->skelAnime.curFrame;

        if (curFrame < 13.0f) {
            this->actor.posRot.pos.y =
                (sinf((0.08333f * M_PI) * curFrame) * this->jumpHeight) + this->actor.initPosRot.pos.y;
        }
        if (Animation_OnFrame(&this->skelAnime, 6.0f)) {
            EnOkuta_SpawnProjectile(this, globalCtx);
        }
        if ((this->jumpHeight > 50.0f) && Animation_OnFrame(&this->skelAnime, 13.0f)) {
            EnOkuta_SpawnSplash(this, globalCtx);
        }
        if ((this->jumpHeight > 50.0f) && Animation_OnFrame(&this->skelAnime, 13.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_LAND);
        }
    }
    if (this->actor.xzDistFromLink < 160.0f) {
        EnOkuta_SetupHide(this);
    }
}

void EnOkuta_WaitToDie(EnOkuta* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnOkuta_SetupDie(this);
    }
    Math_ApproachF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 5.0f);
}

void EnOkuta_Die(EnOkuta* this, GlobalContext* globalCtx) {
    static Vec3f accel = { 0.0f, -0.5f, 0.0f };
    static Color_RGBA8 primColor = { 255, 255, 255, 255 };
    static Color_RGBA8 envColor = { 150, 150, 150, 0 };
    Vec3f velocity;
    Vec3f pos;
    s32 i;

    if (SkelAnime_Update(&this->skelAnime)) {
        this->timer++;
    }
    Math_ApproachF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 5.0f);
    if (this->timer == 5) {
        pos.x = this->actor.posRot.pos.x;
        pos.y = this->actor.posRot.pos.y + 40.0f;
        pos.z = this->actor.posRot.pos.z;
        velocity.x = 0.0f;
        velocity.y = -0.5f;
        velocity.z = 0.0f;
        EnOkuta_SpawnDust(&pos, &velocity, -0x14, globalCtx);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_DEAD2);
    }
    if (Animation_OnFrame(&this->skelAnime, 15.0f)) {
        EnOkuta_SpawnSplash(this, globalCtx);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_LAND);
    }
    if (this->timer < 3) {
        Actor_SetScale(&this->actor, ((this->timer * 0.25f) + 1.0f) * 0.01f);
    } else if (this->timer < 6) {
        Actor_SetScale(&this->actor, (1.5f - ((this->timer - 2) * 0.2333f)) * 0.01f);
    } else if (this->timer < 11) {
        Actor_SetScale(&this->actor, (((this->timer - 5) * 0.04f) + 0.8f) * 0.01f);
    } else {
        if (Math_StepToF(&this->actor.scale.x, 0.0f, 0.0005f)) {
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 30, NA_SE_EN_OCTAROCK_BUBLE);
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x70);
            for (i = 0; i < 20; i++) {
                velocity.x = (Rand_ZeroOne() - 0.5f) * 7.0f;
                velocity.y = Rand_ZeroOne() * 7.0f;
                velocity.z = (Rand_ZeroOne() - 0.5f) * 7.0f;
                EffectSsDtBubble_SpawnCustomColor(globalCtx, &this->actor.posRot.pos, &velocity, &accel, &primColor,
                                                  &envColor, Rand_S16Offset(100, 50), 25, 0);
            }
            Actor_Kill(&this->actor);
        }
        this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    }
}

void EnOkuta_Freeze(EnOkuta* this, GlobalContext* globalCtx) {
    Vec3f pos;
    s16 temp_v1;

    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        EnOkuta_SetupDie(this);
    }
    if ((this->timer >= 64) && (this->timer & 1)) {
        temp_v1 = (this->timer - 64) >> 1;
        pos.y = (this->actor.posRot.pos.y - 32.0f) + (8.0f * (8 - temp_v1));
        pos.x = this->actor.posRot.pos.x + ((temp_v1 & 2) ? 10.0f : -10.0f);
        pos.z = this->actor.posRot.pos.z + ((temp_v1 & 1) ? 10.0f : -10.0f);
        EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &pos, 150, 150, 150, 250, 235, 245, 255,
                                       (Rand_ZeroOne() * 0.2f) + 1.9f);
    }
    Math_ApproachF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 5.0f);
}

void EnOkuta_ProjectileFly(EnOkuta* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Player* player = PLAYER;
    Vec3s sp40;

    this->timer--;
    if (this->timer == 0) {
        this->actor.gravity = -1.0f;
    }
    this->actor.initPosRot.rot.z += 0x1554;
    if (this->actor.bgCheckFlags & 0x20) {
        this->actor.gravity = -1.0f;
        this->actor.speedXZ -= 0.1f;
        this->actor.speedXZ = CLAMP_MIN(this->actor.speedXZ, 1.0f);
    }
    if ((this->actor.bgCheckFlags & 8) || (this->actor.bgCheckFlags & 1) || (this->collider.base.atFlags & 2) ||
        this->collider.base.acFlags & 2 || this->collider.base.maskA & 2 || this->actor.groundY == -32000.0f) {
        if ((player->currentShield == PLAYER_SHIELD_DEKU ||
             (player->currentShield == PLAYER_SHIELD_HYLIAN && LINK_IS_ADULT)) &&
            this->collider.base.atFlags & 2 && this->collider.base.atFlags & 0x10 && this->collider.base.atFlags & 4) {
            this->collider.base.atFlags &= ~0x16;
            this->collider.base.atFlags |= 8;
            this->collider.body.toucher.flags = 2;
            func_800D20CC(&player->shieldMf, &sp40, 0);
            this->actor.posRot.rot.y = sp40.y + 0x8000;
            this->timer = 30;
        } else {
            pos.x = this->actor.posRot.pos.x;
            pos.y = this->actor.posRot.pos.y + 11.0f;
            pos.z = this->actor.posRot.pos.z;
            EffectSsHahen_SpawnBurst(globalCtx, &pos, 6.0f, 0, 1, 2, 15, 7, 10, D_06003380);
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, NA_SE_EN_OCTAROCK_ROCK);
            Actor_Kill(&this->actor);
        }
    } else if (this->timer == -300) {
        Actor_Kill(&this->actor);
    }
}

void EnOkuta_UpdateHeadScale(EnOkuta* this) {
    f32 curFrame = this->skelAnime.curFrame;

    if (this->actionFunc == EnOkuta_Appear) {
        if (curFrame < 8.0f) {
            this->headScale.x = this->headScale.y = this->headScale.z = 1.0f;
        } else if (curFrame < 10.0f) {
            this->headScale.x = this->headScale.z = 1.0f;
            this->headScale.y = ((curFrame - 7.0f) * 0.4f) + 1.0f;
        } else if (curFrame < 14.0f) {
            this->headScale.x = this->headScale.z = ((curFrame - 9.0f) * 0.075f) + 1.0f;
            this->headScale.y = 1.8f - ((curFrame - 9.0f) * 0.25f);
        } else {
            this->headScale.x = this->headScale.z = 1.3f - ((curFrame - 13.0f) * 0.05f);
            this->headScale.y = ((curFrame - 13.0f) * 0.0333f) + 0.8f;
        }
    } else if (this->actionFunc == EnOkuta_Hide) {
        if (curFrame < 3.0f) {
            this->headScale.y = 1.0f;
        } else if (curFrame < 4.0f) {
            this->headScale.y = (curFrame - 2.0f) + 1.0f;
        } else {
            this->headScale.y = 2.0f - ((curFrame - 3.0f) * 0.333f);
        }
        this->headScale.x = this->headScale.z = 1.0f;
    } else if (this->actionFunc == EnOkuta_Shoot) {
        if (curFrame < 5.0f) {
            this->headScale.x = this->headScale.y = this->headScale.z = (curFrame * 0.125f) + 1.0f;
        } else if (curFrame < 7.0f) {
            this->headScale.x = this->headScale.y = this->headScale.z = 1.5f - ((curFrame - 4.0f) * 0.35f);
        } else if (curFrame < 17.0f) {
            this->headScale.x = this->headScale.z = ((curFrame - 6.0f) * 0.05f) + 0.8f;
            this->headScale.y = 0.8f;
        } else {
            this->headScale.x = this->headScale.z = 1.3f - ((curFrame - 16.0f) * 0.1f);
            this->headScale.y = ((curFrame - 16.0f) * 0.0666f) + 0.8f;
        }
    } else if (this->actionFunc == EnOkuta_WaitToShoot) {
        this->headScale.x = this->headScale.z = 1.0f;
        this->headScale.y = (sinf((M_PI / 16) * curFrame) * 0.2f) + 1.0f;
    } else {
        this->headScale.x = this->headScale.y = this->headScale.z = 1.0f;
    }
}

void EnOkuta_ColliderCheck(EnOkuta* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        func_80035650(&this->actor, &this->collider.body, 1);
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            func_80032C7C(globalCtx, &this->actor);
            this->actor.colChkInfo.health = 0;
            this->actor.flags &= ~1;
            if (this->actor.colChkInfo.damageEffect == 3) {
                EnOkuta_SetupFreeze(this);
            } else {
                EnOkuta_SetupWaitToDie(this);
            }
        }
    }
}

void EnOkuta_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;
    Player* player = PLAYER;
    GlobalContext* globalCtx2 = globalCtx;
    WaterBox* outWaterBox;
    f32 ySurface;
    Vec3f sp38;
    s32 sp34;

    if (!(player->stateFlags1 & 0x300000C0)) {
        if (this->actor.params == 0) {
            EnOkuta_ColliderCheck(this, globalCtx2);
            if (!func_80042244(globalCtx2, &globalCtx2->colCtx, this->actor.posRot.pos.x, this->actor.posRot.pos.z,
                               &ySurface, &outWaterBox) ||
                (ySurface < this->actor.groundY)) {
                if (this->actor.colChkInfo.health != 0) {
                    Actor_Kill(&this->actor);
                    return;
                }
            } else {
                this->actor.initPosRot.pos.y = ySurface;
            }
        }
        this->actionFunc(this, globalCtx2);
        if (this->actor.params == 0) {
            EnOkuta_UpdateHeadScale(this);
            this->collider.dim.height =
                (((sOctorockColliderInit.dim.height * this->headScale.y) - this->collider.dim.yShift) *
                 this->actor.scale.y * 100.0f);
        } else {
            sp34 = false;
            Actor_MoveForward(&this->actor);
            Math_Vec3f_Copy(&sp38, &this->actor.posRot.pos);
            func_8002E4B4(globalCtx2, &this->actor, 10.0f, 15.0f, 30.0f, 5);
            if ((this->actor.bgCheckFlags & 8) &&
                func_80042048(&globalCtx2->colCtx, this->actor.wallPoly, this->actor.wallPolySource)) {
                sp34 = true;
                this->actor.bgCheckFlags &= ~8;
            }
            if ((this->actor.bgCheckFlags & 1) &&
                func_80042048(&globalCtx2->colCtx, this->actor.floorPoly, this->actor.floorPolySource)) {
                sp34 = true;
                this->actor.bgCheckFlags &= ~1;
            }
            if (sp34 && !(this->actor.bgCheckFlags & 9)) {
                Math_Vec3f_Copy(&this->actor.posRot.pos, &sp38);
            }
        }
        Collider_CylinderUpdate(&this->actor, &this->collider);
        if ((this->actionFunc == EnOkuta_Appear) || (this->actionFunc == EnOkuta_Hide)) {
            this->collider.dim.pos.y = this->actor.posRot.pos.y + (this->skelAnime.jointTable->y * this->actor.scale.y);
            this->collider.dim.radius = sOctorockColliderInit.dim.radius * this->actor.scale.x * 100.0f;
        }
        if (this->actor.params == 0x10) {
            this->actor.flags |= 0x1000000;
            CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        }
        if (this->actionFunc != EnOkuta_WaitToAppear) {
            if ((this->actionFunc != EnOkuta_Die) && (this->actionFunc != EnOkuta_WaitToDie) &&
                (this->actionFunc != EnOkuta_Freeze)) {
                CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
            }
            CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        }
        Actor_SetHeight(&this->actor, 15.0f);
        if ((this->actor.params == 0) && (this->actor.draw != NULL)) {
            EnOkuta_SpawnRipple(this, globalCtx2);
        }
    }
}

s32 EnOkuta_GetSnoutScale(EnOkuta* this, f32 curFrame, Vec3f* scale) {
    if (this->actionFunc == EnOkuta_WaitToShoot) {
        scale->x = scale->z = 1.0f;
        scale->y = (sinf((M_PI / 16) * curFrame) * 0.4f) + 1.0f;
    } else if (this->actionFunc == EnOkuta_Shoot) {
        if (curFrame < 5.0f) {
            scale->x = 1.0f;
            scale->y = scale->z = (curFrame * 0.25f) + 1.0f;
        } else if (curFrame < 7.0f) {
            scale->x = (curFrame - 4.0f) * 0.5f + 1.0f;
            scale->y = scale->z = 2.0f - (curFrame - 4.0f) * 0.5f;
        } else {
            scale->x = 2.0f - ((curFrame - 6.0f) * 0.0769f);
            scale->y = scale->z = 1.0f;
        }
    } else if (this->actionFunc == EnOkuta_Die) {
        if (curFrame >= 35.0f || curFrame < 25.0f) {
            return false;
        }
        if (curFrame < 27.0f) {
            scale->x = 1.0f;
            scale->y = scale->z = ((curFrame - 24.0f) * 0.5f) + 1.0f;
        } else if (curFrame < 30.0f) {
            scale->x = (curFrame - 26.0f) * 0.333f + 1.0f;
            scale->y = scale->z = 2.0f - (curFrame - 26.0f) * 0.333f;
        } else {
            scale->x = 2.0f - ((curFrame - 29.0f) * 0.2f);
            scale->y = scale->z = 1.0f;
        }
    } else {
        return false;
    }

    return true;
}

s32 EnOkuta_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             void* thisx) {
    EnOkuta* this = THIS;
    f32 curFrame = this->skelAnime.curFrame;
    Vec3f scale;
    s32 doScale = false;

    if (this->actionFunc == EnOkuta_Die) {
        curFrame += this->timer;
    }
    if (limbIndex == 5) {
        if ((this->headScale.x != 1.0f) || (this->headScale.y != 1.0f) || (this->headScale.z != 1.0f)) {
            scale = this->headScale;
            doScale = true;
        }
    } else if (limbIndex == 8) {
        doScale = EnOkuta_GetSnoutScale(this, curFrame, &scale);
    }
    if (doScale) {
        Matrix_Scale(scale.x, scale.y, scale.z, MTXMODE_APPLY);
    }
    return false;
}

void EnOkuta_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;
    s32 pad;

    func_80093D18(globalCtx->state.gfxCtx);

    if (this->actor.params == 0) {
        SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, EnOkuta_OverrideLimbDraw,
                          NULL, this);
    } else {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_okuta.c", 1653);

        Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
        Matrix_RotateZ(this->actor.initPosRot.rot.z * (M_PI / 0x8000), MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_okuta.c", 1657),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_06003380);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_okuta.c", 1662);
    }
}
