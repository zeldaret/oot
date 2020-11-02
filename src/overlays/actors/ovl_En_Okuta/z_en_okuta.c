#include "z_en_okuta.h"

#define FLAGS 0x00000005

#define THIS ((EnOkuta*)thisx)

void EnOkuta_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Update(Actor* thisx, GlobalContext* globalCtx);
void EnOkuta_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AC0A88(Actor* thisx);
void func_80AC0F08(EnOkuta* this, GlobalContext* globalCtx);
void func_80AC0F64(EnOkuta* this, GlobalContext* globalCtx);
void EnOkuta_Hide(EnOkuta* this, GlobalContext* globalCtx);
void func_80AC11A8(EnOkuta* this, GlobalContext* globalCtx);
void func_80AC12D8(EnOkuta* this, GlobalContext* globalCtx);
void func_80AC1458(EnOkuta* this, GlobalContext* globalCtx);
void func_80AC14A8(EnOkuta* this, GlobalContext* globalCtx);
void func_80AC17BC(EnOkuta* this, GlobalContext* globalCtx);
void func_80AC1938(EnOkuta* this, GlobalContext* globalCtx);

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

static ColliderCylinderInit sCylinderInit1 = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x01, 0x01 },
    { 13, 20, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 = {
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
    this->unk_196 = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;
    if (thisx->params == 0) {
        SkelAnime_Init(globalCtx, &this->skelAnime, &D_06003660, &D_06003C64, this->limbDrawTable,
                       this->transitionDrawTable, 38);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit2);
        func_80061ED4(&thisx->colChkInfo, &sDamageTable, &sColChkInfoInit);
        if ((this->unk_196 == 0xFF) || (this->unk_196 == 0)) {
            this->unk_196 = 1;
        }
        thisx->groundY = func_8003C9A4(&globalCtx->colCtx, &thisx->floorPoly, &sp30, thisx, &thisx->posRot.pos);
        if (!func_80042244(globalCtx, &globalCtx->colCtx, thisx->posRot.pos.x, thisx->posRot.pos.z, &ySurface,
                           &outWaterBox) ||
            (ySurface <= thisx->groundY)) {
            Actor_Kill(thisx);
        } else {
            thisx->initPosRot.pos.y = ySurface;
        }
        func_80AC0A88(thisx);
    } else {
        ActorShape_Init(&thisx->shape, 1100.0f, ActorShadow_DrawFunc_Circle, 18.0f);
        thisx->flags &= ~1;
        thisx->flags |= 0x10;
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit1);
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, thisx, ACTORTYPE_PROP);
        this->unk_194 = 0x1E;
        thisx->shape.rot.y = 0;
        this->actionFunc = func_80AC1938;
        thisx->speedXZ = 10.0f;
    }
}

void EnOkuta_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AC0890(EnOkuta* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 10; i++) {
        EffectSsBubble_Spawn(globalCtx, &this->actor.posRot.pos, -10.0f, 10.0f, 30.0f, 0.25f);
    }
}

void func_80AC093C(Vec3f* pos, Vec3f* velocity, s16 scaleStep, GlobalContext* globalCtx) {
    static Vec3f accel = { 0.0f, 0.0f, 0.0f };
    static Color_RGBA8 primColor = { 255, 255, 255, 255 };
    static Color_RGBA8 envColor = { 150, 150, 150, 255 };

    func_8002829C(globalCtx, pos, velocity, &accel, &primColor, &envColor, 0x190, scaleStep);
}

void EnOkuta_SpawnSplash(EnOkuta* this, GlobalContext* globalCtx) {
    EffectSsGSplash_Spawn(globalCtx, &this->actor.initPosRot.pos, NULL, NULL, 0, 1300);
}

void func_80AC09E8(EnOkuta* this, GlobalContext* globalCtx) {
    Vec3f pos;

    pos.x = this->actor.posRot.pos.x;
    pos.y = this->actor.initPosRot.pos.y;
    pos.z = this->actor.posRot.pos.z;
    if ((globalCtx->gameplayFrames % 7) == 0 &&
        ((this->actionFunc != func_80AC12D8) || ((this->actor.posRot.pos.y - this->actor.initPosRot.pos.y) < 50.0f))) {
        EffectSsGRipple_Spawn(globalCtx, &pos, 250, 650, 0);
    }
}

void func_80AC0A88(Actor* thisx) {
    EnOkuta* this = THIS;

    thisx->draw = NULL;
    thisx->flags &= ~1;
    this->actionFunc = func_80AC0F08;
    thisx->posRot.pos.y = thisx->initPosRot.pos.y;
}

void func_80AC0AB4(EnOkuta* this, GlobalContext* globalCtx) {
    this->actor.draw = EnOkuta_Draw;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    this->actor.flags |= 1;
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06003C64);
    func_80AC0890(this, globalCtx);
    this->actionFunc = func_80AC0F64;
}

void EnOkuta_SetupHide(EnOkuta* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000AC0);
    this->actionFunc = EnOkuta_Hide;
}

void func_80AC0B60(EnOkuta* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000DDC);
    if (this->actionFunc == func_80AC12D8) {
        this->unk_194 = 2;
    } else {
        this->unk_194 = 0;
    }
    this->actionFunc = func_80AC11A8;
}

void func_80AC0BC0(EnOkuta* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000344);
    if (this->actionFunc != func_80AC12D8) {
        this->unk_194 = this->unk_196;
    }
    this->unk_360 = this->actor.yDistFromLink + 20.0f;
    this->unk_360 = CLAMP_MIN(this->unk_360, 10.0f);
    if (this->unk_360 > 50.0f) {
        EnOkuta_SpawnSplash(this, globalCtx);
    }
    if (this->unk_360 > 50.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_JUMP);
    }
    this->actionFunc = func_80AC12D8;
}

void func_80AC0CAC(EnOkuta* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06003910, -5.0f);
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xB);
    this->collider.base.acFlags &= ~2;
    Actor_SetScale(&this->actor, 0.01f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_DEAD1);
    this->actionFunc = func_80AC1458;
}

void func_80AC0D34(EnOkuta* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060008FC, -3.0f);
    this->unk_194 = 0;
    this->actionFunc = func_80AC14A8;
}

void func_80AC0D7C(EnOkuta* this) {
    this->unk_194 = 80;
    func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
    this->actionFunc = func_80AC17BC;
}

void EnOkuta_SpawnProjectile(EnOkuta* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Vec3f velocity;
    f32 sin = Math_Sins(this->actor.shape.rot.y);
    f32 cos = Math_Coss(this->actor.shape.rot.y);

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
        func_80AC093C(&pos, &velocity, 20, globalCtx);
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_THROW);
}

void func_80AC0F08(EnOkuta* this, GlobalContext* globalCtx) {
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y;
    if ((this->actor.xzDistFromLink < 480.0f) && (200.0f < this->actor.xzDistFromLink)) {
        func_80AC0AB4(this, globalCtx);
    }
}

void func_80AC0F64(EnOkuta* this, GlobalContext* globalCtx) {
    s32 pad;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->actor.xzDistFromLink < 160.0f) {
            EnOkuta_SetupHide(this);
        } else {
            func_80AC0B60(this);
        }
    } else if (this->skelAnime.animCurrentFrame <= 4.0f) {
        Actor_SetScale(&this->actor, this->skelAnime.animCurrentFrame * 0.25f * 0.01f);
    } else if (func_800A56C8(&this->skelAnime, 5.0f)) {
        Actor_SetScale(&this->actor, 0.01f);
    }
    if (func_800A56C8(&this->skelAnime, 2.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_JUMP);
    }
    if (func_800A56C8(&this->skelAnime, 12.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_LAND);
    }
    if (func_800A56C8(&this->skelAnime, 3.0f) || func_800A56C8(&this->skelAnime, 15.0f)) {
        EnOkuta_SpawnSplash(this, globalCtx);
    }
}

void EnOkuta_Hide(EnOkuta* this, GlobalContext* globalCtx) {
    s32 pad;

    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 30.0f);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_BUBLE);
        func_80AC0890(this, globalCtx);
        func_80AC0A88(&this->actor);
    } else if (this->skelAnime.animCurrentFrame >= 4.0f) {
        Actor_SetScale(&this->actor, (6.0f - this->skelAnime.animCurrentFrame) * 0.5f * 0.01f);
    }
    if (func_800A56C8(&this->skelAnime, 2.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_SINK);
    }
    if (func_800A56C8(&this->skelAnime, 4.0f)) {
        EnOkuta_SpawnSplash(this, globalCtx);
    }
}

void func_80AC11A8(EnOkuta* this, GlobalContext* globalCtx) {
    s16 temp_v0_2;
    s32 phi_v1;

    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f)) {
        if (this->unk_194 != 0) {
            this->unk_194--;
        }
    }
    if (func_800A56C8(&this->skelAnime, 0.5f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_FLOAT);
    }
    if (this->actor.xzDistFromLink < 160.0f || 560.0f < this->actor.xzDistFromLink) {
        EnOkuta_SetupHide(this);
        return;
    }
    temp_v0_2 = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x71C, 0x38E);
    phi_v1 = ABS(temp_v0_2);
    if ((phi_v1 < 0x38E) && (this->unk_194 == 0) && (this->actor.yDistFromLink < 200.0f)) {
        func_80AC0BC0(this, globalCtx);
    }
}

void func_80AC12D8(EnOkuta* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x71C);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->unk_194 != 0) {
            this->unk_194--;
        }
        if (this->unk_194 == 0) {
            func_80AC0B60(this);
        } else {
            func_80AC0BC0(this, globalCtx);
        }
    } else {
        f32 animCurrentFrame = this->skelAnime.animCurrentFrame;

        if (animCurrentFrame < 13.0f) {
            this->actor.posRot.pos.y =
                (sinf(0.2617889f * animCurrentFrame) * this->unk_360) + this->actor.initPosRot.pos.y;
        }
        if (func_800A56C8(&this->skelAnime, 6.0f)) {
            EnOkuta_SpawnProjectile(this, globalCtx);
        }
        if ((this->unk_360 > 50.0f) && func_800A56C8(&this->skelAnime, 13.0f)) {
            EnOkuta_SpawnSplash(this, globalCtx);
        }
        if ((this->unk_360 > 50.0f) && func_800A56C8(&this->skelAnime, 13.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_LAND);
        }
    }
    if (this->actor.xzDistFromLink < 160.0f) {
        EnOkuta_SetupHide(this);
    }
}

void func_80AC1458(EnOkuta* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_80AC0D34(this);
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 5.0f);
}

void func_80AC14A8(EnOkuta* this, GlobalContext* globalCtx) {
    static Vec3f accel = { 0.0f, -0.5f, 0.0f };
    static Color_RGBA8 primColor = { 255, 255, 255, 255 };
    static Color_RGBA8 envColor = { 150, 150, 150, 0 };
    Vec3f velocity;
    Vec3f pos;
    s32 i;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->unk_194++;
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 5.0f);
    if (this->unk_194 == 5) {
        pos.x = this->actor.posRot.pos.x;
        pos.y = this->actor.posRot.pos.y + 40.0f;
        pos.z = this->actor.posRot.pos.z;
        velocity.x = 0.0f;
        velocity.y = -0.5f;
        velocity.z = 0.0f;
        func_80AC093C(&pos, &velocity, -0x14, globalCtx);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_DEAD2);
    }
    if (func_800A56C8(&this->skelAnime, 15.0f)) {
        EnOkuta_SpawnSplash(this, globalCtx);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_OCTAROCK_LAND);
    }
    if (this->unk_194 < 3) {
        Actor_SetScale(&this->actor, ((this->unk_194 * 0.25f) + 1.0f) * 0.01f);
        return;
    }
    if (this->unk_194 < 6) {
        Actor_SetScale(&this->actor, (1.5f - ((this->unk_194 - 2) * 0.2333f)) * 0.01f);
        return;
    }
    if (this->unk_194 < 0xB) {
        Actor_SetScale(&this->actor, (((this->unk_194 - 5) * 0.04f) + 0.8f) * 0.01f);
        return;
    }
    if (Math_ApproxF(&this->actor.scale.x, 0.0f, 0.0005f)) {
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 30, NA_SE_EN_OCTAROCK_BUBLE);
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x70);
        for (i = 0; i < 20; i++) {
            velocity.x = (Math_Rand_ZeroOne() - 0.5f) * 7.0f;
            velocity.y = Math_Rand_ZeroOne() * 7.0f;
            velocity.z = (Math_Rand_ZeroOne() - 0.5f) * 7.0f;
            EffectSsDtBubble_SpawnCustomColor(globalCtx, &this->actor.posRot.pos, &velocity, &accel, &primColor,
                                              &envColor, Math_Rand_S16Offset(100, 50), 25, 0);
        }
        Actor_Kill(&this->actor);
    }
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
}

void func_80AC17BC(EnOkuta* this, GlobalContext* globalCtx) {
    Vec3f pos;
    s16 temp_v1;

    if (this->unk_194 != 0) {
        this->unk_194--;
    }
    if (this->unk_194 == 0) {
        func_80AC0D34(this);
    }
    if ((this->unk_194 >= 0x40) && (this->unk_194 & 1)) {
        temp_v1 = (this->unk_194 - 0x40) >> 1;
        pos.y = (this->actor.posRot.pos.y - 32.0f) + (8.0f * (8 - temp_v1));
        pos.x = this->actor.posRot.pos.x + ((temp_v1 & 2) ? 10.0f : -10.0f);
        pos.z = this->actor.posRot.pos.z + ((temp_v1 & 1) ? 10.0f : -10.0f);
        EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &pos, 150, 150, 150, 250, 235, 245, 255,
                                       (Math_Rand_ZeroOne() * 0.2f) + 1.9f);
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.5f, 5.0f);
}

void func_80AC1938(EnOkuta* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Player* player = PLAYER;
    Vec3s sp40;

    this->unk_194--;
    if (this->unk_194 == 0) {
        this->actor.gravity = -1.0f;
    }
    this->actor.initPosRot.rot.z += 0x1554;
    if (this->actor.bgCheckFlags & 0x20) {
        this->actor.gravity = -1.0f;
        this->actor.speedXZ -= 0.1f;
        this->actor.speedXZ = CLAMP_MIN(this->actor.speedXZ, 1.0f);
    }
    if (this->actor.bgCheckFlags & 8 || this->actor.bgCheckFlags & 1 || this->collider.base.atFlags & 2 ||
        this->collider.base.acFlags & 2 || this->collider.base.maskA & 2 || this->actor.groundY == -32000.0f) {
        if ((player->currentShield == 1 || (player->currentShield == 2 && LINK_IS_ADULT)) &&
            this->collider.base.atFlags & 2 && this->collider.base.atFlags & 0x10 && this->collider.base.atFlags & 4) {
            this->collider.base.atFlags &= ~0x16;
            this->collider.base.atFlags |= 8;
            this->collider.body.toucher.flags = 2;
            func_800D20CC(&player->shieldMf, &sp40, 0);
            this->actor.posRot.rot.y = sp40.y + 0x8000;
            this->unk_194 = 0x1E;
        } else {
            pos.x = this->actor.posRot.pos.x;
            pos.y = this->actor.posRot.pos.y + 11.0f;
            pos.z = this->actor.posRot.pos.z;
            EffectSsHahen_SpawnBurst(globalCtx, &pos, 6.0f, 0, 1, 2, 15, 7, 10, D_06003380);
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, NA_SE_EN_OCTAROCK_ROCK);
            Actor_Kill(&this->actor);
        }
    } else if (this->unk_194 == -0x12C) {
        Actor_Kill(&this->actor);
    }
}

void func_80AC1B80(EnOkuta* this) {
    f32 animCurrentFrame = this->skelAnime.animCurrentFrame;

    if (this->actionFunc == func_80AC0F64) {
        if (animCurrentFrame < 8.0f) {
            this->unk_364.x = this->unk_364.y = this->unk_364.z = 1.0f;
        } else if (animCurrentFrame < 10.0f) {
            this->unk_364.x = this->unk_364.z = 1.0f;
            this->unk_364.y = ((animCurrentFrame - 7.0f) * 0.4f) + 1.0f;
        } else if (animCurrentFrame < 14.0f) {
            this->unk_364.x = this->unk_364.z = ((animCurrentFrame - 9.0f) * 0.075f) + 1.0f;
            this->unk_364.y = 1.8f - ((animCurrentFrame - 9.0f) * 0.25f);
        } else {
            this->unk_364.x = this->unk_364.z = 1.3f - ((animCurrentFrame - 13.0f) * 0.05f);
            this->unk_364.y = ((animCurrentFrame - 13.0f) * 0.0333f) + 0.8f;
        }
    } else if (this->actionFunc == EnOkuta_Hide) {
        if (animCurrentFrame < 3.0f) {
            this->unk_364.y = 1.0f;
        } else if (animCurrentFrame < 4.0f) {
            this->unk_364.y = (animCurrentFrame - 2.0f) + 1.0f;
        } else {
            this->unk_364.y = 2.0f - ((animCurrentFrame - 3.0f) * 0.333f);
        }
        this->unk_364.x = this->unk_364.z = 1.0f;
    } else if (this->actionFunc == func_80AC12D8) {
        if (animCurrentFrame < 5.0f) {
            this->unk_364.x = this->unk_364.y = this->unk_364.z = (animCurrentFrame * 0.125f) + 1.0f;
        } else if (animCurrentFrame < 7.0f) {
            this->unk_364.x = this->unk_364.y = this->unk_364.z = 1.5f - ((animCurrentFrame - 4.0f) * 0.35f);
        } else if (animCurrentFrame < 17.0f) {
            this->unk_364.x = this->unk_364.z = ((animCurrentFrame - 6.0f) * 0.05f) + 0.8f;
            this->unk_364.y = 0.8f;
        } else {
            this->unk_364.x = this->unk_364.z = 1.3f - ((animCurrentFrame - 16.0f) * 0.1f);
            this->unk_364.y = ((animCurrentFrame - 16.0f) * 0.0666f) + 0.8f;
        }
    } else if (this->actionFunc == func_80AC11A8) {
        this->unk_364.x = this->unk_364.z = 1.0f;
        this->unk_364.y = (sinf(0.19634955f * animCurrentFrame) * 0.2f) + 1.0f;
    } else {
        this->unk_364.x = this->unk_364.y = this->unk_364.z = 1.0f;
    }
}

void func_80AC1F28(EnOkuta* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        func_80035650(&this->actor, &this->collider.body, 1);
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            func_80032C7C(globalCtx, &this->actor);
            this->actor.colChkInfo.health = 0;
            this->actor.flags &= ~1;
            if (this->actor.colChkInfo.damageEffect == 3) {
                func_80AC0D7C(this);
            } else {
                func_80AC0CAC(this);
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
            func_80AC1F28(this, globalCtx2);
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
            func_80AC1B80(this);
            this->collider.dim.height = (((sCylinderInit2.dim.height * this->unk_364.y) - this->collider.dim.yShift) *
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
        if ((this->actionFunc == func_80AC0F64) || (this->actionFunc == EnOkuta_Hide)) {
            this->collider.dim.pos.y =
                this->actor.posRot.pos.y + (this->skelAnime.limbDrawTbl->y * this->actor.scale.y);
            this->collider.dim.radius = sCylinderInit2.dim.radius * this->actor.scale.x * 100.0f;
        }
        if (this->actor.params == 0x10) {
            this->actor.flags |= 0x1000000;
            CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        }
        if (this->actionFunc != func_80AC0F08) {
            if ((this->actionFunc != func_80AC14A8) && (this->actionFunc != func_80AC1458) &&
                (this->actionFunc != func_80AC17BC)) {
                CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
            }
            CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        }
        Actor_SetHeight(&this->actor, 15.0f);
        if ((this->actor.params == 0) && (this->actor.draw != NULL)) {
            func_80AC09E8(this, globalCtx2);
        }
    }
}

s32 func_80AC2350(EnOkuta* this, f32 arg1, Vec3f* arg2) {
    if (this->actionFunc == func_80AC11A8) {
        arg2->x = arg2->z = 1.0f;
        arg2->y = (sinf(0.19634955f * arg1) * 0.4f) + 1.0f;
    } else if (this->actionFunc == func_80AC12D8) {
        if (arg1 < 5.0f) {
            arg2->x = 1.0f;
            arg2->y = arg2->z = (arg1 * 0.25f) + 1.0f;
        } else if (arg1 < 7.0f) {
            arg2->x = (arg1 - 4.0f) * 0.5f + 1.0f;
            arg2->y = arg2->z = 2.0f - (arg1 - 4.0f) * 0.5f;
        } else {
            arg2->x = 2.0f - ((arg1 - 6.0f) * 0.0769f);
            arg2->y = arg2->z = 1.0f;
        }
    } else if (this->actionFunc == func_80AC14A8) {
        if (arg1 >= 35.0f || arg1 < 25.0f) {
            return false;
        }
        if (arg1 < 27.0f) {
            arg2->x = 1.0f;
            arg2->y = arg2->z = ((arg1 - 24.0f) * 0.5f) + 1.0f;
        } else if (arg1 < 30.0f) {
            arg2->x = (arg1 - 26.0f) * 0.333f + 1.0f;
            arg2->y = arg2->z = 2.0f - (arg1 - 26.0f) * 0.333f;
        } else {
            arg2->x = 2.0f - ((arg1 - 29.0f) * 0.2f);
            arg2->y = arg2->z = 1.0f;
        }
    } else {
        return false;
    }

    return true;
}

s32 EnOkuta_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             Actor* actor) {
    EnOkuta* this = (EnOkuta*)actor;
    f32 phi_f0 = this->skelAnime.animCurrentFrame;
    Vec3f scale;
    s32 doScale = false;

    if (this->actionFunc == func_80AC14A8) {
        phi_f0 += this->unk_194;
    }
    if (limbIndex == 5) {
        if ((this->unk_364.x != 1.0f) || (this->unk_364.y != 1.0f) || (this->unk_364.z != 1.0f)) {
            scale = this->unk_364;
            doScale = true;
        }
    } else if (limbIndex == 8) {
        doScale = func_80AC2350(this, phi_f0, &scale);
    }
    if (doScale) {
        Matrix_Scale(scale.x, scale.y, scale.z, MTXMODE_APPLY);
    }
    return 0;
}

void EnOkuta_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnOkuta* this = THIS;
    s32 pad;

    func_80093D18(globalCtx->state.gfxCtx);

    if (this->actor.params == 0) {
        SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, EnOkuta_OverrideLimbDraw, NULL,
                       &this->actor);
        return;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_okuta.c", 1653);

    Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
    Matrix_RotateZ(this->actor.initPosRot.rot.z * 0.0000958738f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_okuta.c", 1657),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06003380);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_okuta.c", 1662);
}
