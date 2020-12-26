/*
 * File: z_boss_fd2.c
 * Overlay: ovl_Boss_Fd2
 * Description: Volvagia, hole form
 */

#include "z_boss_fd2.h"
#include "overlays/actors/ovl_Boss_Fd/z_boss_fd.h"

#define FLAGS 0x00000035

#define THIS ((BossFd2*)thisx)

#define BOSSFD ((BossFd*)this->actor.parent)

void BossFd2_Init(Actor* thisx, GlobalContext* globalCtx);
void BossFd2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossFd2_Update(Actor* thisx, GlobalContext* globalCtx);
void BossFd2_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossFd2_SetupEmerge(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Emerge(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupIdle(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Idle(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Burrow(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupBreatheFire(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_BreatheFire(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupClawSwipe(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_ClawSwipe(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Vulnerable(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Damaged(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Death(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Wait(BossFd2* this, GlobalContext* globalCtx);

extern Gfx D_06004B48[];
extern Gfx D_06004BC8[];
extern Gfx D_06004E38[];
extern AnimationHeader D_060073CC;
extern AnimationHeader D_06007850;
extern AnimationHeader D_060089DC;
extern AnimationHeader D_06009194;
extern AnimationHeader D_0600A31C;
extern AnimationHeader D_0600A86C;
extern AnimationHeader D_0600AE90;
extern AnimationHeader D_0600B7A4;
extern AnimationHeader D_0600C1D0;
extern AnimationHeader D_0600C8EC;
extern FlexSkeletonHeader D_06011A78;

typedef enum {
    /* 0 */ DEATH_START,
    /* 1 */ DEATH_RETREAT,
    /* 2 */ DEATH_HANDOFF,
    /* 3 */ DEATH_FD_BODY,
    /* 4 */ DEATH_FD_SKULL,
    /* 5 */ DEATH_FINISH
} BossFd2CutsceneStates;

const ActorInit Boss_Fd2_InitVars = {
    ACTOR_BOSS_FD2,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_FD2,
    sizeof(BossFd2),
    (ActorFunc)BossFd2_Init,
    (ActorFunc)BossFd2_Destroy,
    (ActorFunc)BossFd2_Update,
    (ActorFunc)BossFd2_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[9] = {
    {
        { 0x03, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
        { 35, { { 6000, 0, 0 }, 21 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 18, { { 4000, 0, 0 }, 13 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 19, { { 3000, 0, 0 }, 13 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 20, { { 4000, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 24, { { 4000, 0, 0 }, 13 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 25, { { 3000, 0, 0 }, 13 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 26, { { 3500, 1500, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 17, { { 0, 0, 0 }, 26 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 30, { { 0, 0, 0 }, 17 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    9,
    sJntSphItemsInit,
};

static Vec3f sHoleLocations[] = { { 0.0f, 90.0f, -243.0f },    { 0.0f, 90.0f, 0.0f },    { 0.0f, 90.0f, 243.0f },
                                  { -243.0f, 90.0f, -243.0f }, { -243.0f, 90.0f, 0.0f }, { -243.0f, 90.0f, 243.0f },
                                  { 243.0f, 90.0f, -243.0f },  { 243.0f, 90.0f, 0.0f },  { 243.0f, 90.0f, 243.0f } };

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 33, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

void BossFd2_SpawnDebris(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                         Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == FD_NULL) {
            particle->type = FD_DEBRIS;
            particle->pos = *position;
            particle->velocity = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->xRot = Rand_ZeroFloat(100.0f);
            particle->yRot = Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossFd2_SpawnFireBreath(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                             Vec3f* acceleration, f32 scale, s16 alpha, s16 kbAngle) {
    s16 i;

    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == FD_NULL) {
            particle->type = FD_FIRE_BREATH;
            particle->timer1 = 0;
            particle->pos = *position;
            particle->velocity = *velocity;
            particle->accel = *acceleration;
            particle->pos.x -= particle->velocity.x;
            particle->pos.y -= particle->velocity.y;
            particle->pos.z -= particle->velocity.z;
            particle->scaleMod = 0.0f;
            particle->alpha = alpha;
            particle->yStop = Rand_ZeroFloat(10.0f);
            particle->timer2 = 0;
            particle->scale = scale / 400.0f;
            particle->kbAngle = kbAngle;
            break;
        }
    }
}

void BossFd2_SpawnEmber(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                        Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == 0) {
            particle->type = 1;
            particle->pos = *position;
            particle->velocity = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->alpha = 255;
            particle->timer1 = (s16)Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

void BossFd2_SpawnSkullPiece(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                             Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == FD_NULL) {
            particle->type = FD_SKULL_PIECE;
            particle->pos = *position;
            particle->velocity = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->xRot = Rand_ZeroFloat(100.0f);
            particle->yRot = Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossFd2_SpawnDust(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == FD_NULL) {
            particle->type = FD_DUST;
            particle->pos = *position;
            particle->velocity = *velocity;
            particle->accel = *acceleration;
            particle->timer2 = 0;
            particle->scale = scale / 400.0f;
            break;
        }
    }
}

void BossFd2_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossFd2* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.0069999993f);
    this->actor.posRot.pos.y = -850.0f;
    ActorShape_Init(&this->actor.shape, -580.0f / this->actor.scale.y, NULL, 0.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06011A78, &D_0600C8EC, 0, 0, 0);
    if (this->actor.params == 0) {
        BossFd2_SetupEmerge(this, globalCtx);
    } else {
        this->actionFunc = BossFd2_Wait;
    }
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colliderItems);
}

void BossFd2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossFd2* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void BossFd2_SetupEmerge(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;
    s16 temp_rand;
    s8 health;

    osSyncPrintf("UP INIT 1\n");
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600C1D0);
    this->actionFunc = BossFd2_Emerge;
    this->skelAnime.animPlaybackSpeed = 0.0f;
    temp_rand = Rand_ZeroFloat(8.9f);
    this->actor.posRot.pos.x = sHoleLocations[temp_rand].x;
    this->actor.posRot.pos.z = sHoleLocations[temp_rand].z;
    this->actionState = 0;
    osSyncPrintf("UP INIT 2\n");
    this->timers[0] = 10;
    if (bossFd != NULL) {
        health = bossFd->actor.colChkInfo.health;
        if (health >= 18) {
            this->fakeoutCount = 0;
        } else if (health >= 12) {
            this->fakeoutCount = 1;
        } else if (health >= 6) {
            this->fakeoutCount = 2;
        } else {
            this->fakeoutCount = 3;
        }
    }
}

void BossFd2_Emerge(BossFd2* this, GlobalContext* globalCtx) {
    s8 health;
    BossFd* bossFd = BOSSFD;
    Player* player = PLAYER;
    s16 i;
    s16 holeTime;

    osSyncPrintf("UP 1    mode %d\n", this->actionState);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    osSyncPrintf("UP 1.5 \n");
    switch (this->actionState) {
        case 0:
            osSyncPrintf("UP time %d \n", this->timers[0]);
            osSyncPrintf("PL time %x \n", player);
            osSyncPrintf("MT time %x \n", bossFd);
            if ((this->timers[0] == 0) && (player->actor.posRot.pos.y > 70.0f)) {
                osSyncPrintf("UP 1.6 \n");
                bossFd->faceExposed = 0;
                bossFd->holePosition.x = this->actor.posRot.pos.x;
                bossFd->holePosition.z = this->actor.posRot.pos.z;
                func_80033E1C(globalCtx, 1, 0x32, 0x5000);
                this->actionState = 1;
                this->holeCounter++;
                this->actor.posRot.pos.y = -200.0f;
                health = bossFd->actor.colChkInfo.health;
                if (health == 24) {
                    holeTime = 30;
                } else if (health >= 18) {
                    holeTime = 25;
                } else if (health >= 12) {
                    holeTime = 20;
                } else if (health >= 6) {
                    holeTime = 10;
                } else {
                    holeTime = 5;
                }
                this->timers[0] = holeTime;
                bossFd->timers[4] = this->timers[0] + 10;
                osSyncPrintf("UP 1.7 \n");
            }
            break;
        case 1:
            if (this->timers[0] == 0) {
                if (this->fakeoutCount != 0) {
                    this->fakeoutCount--;
                    i = Rand_ZeroFloat(8.9f);
                    this->actor.posRot.pos.x = sHoleLocations[i].x;
                    this->actor.posRot.pos.z = sHoleLocations[i].z;
                    this->actionState = 0;
                    this->timers[0] = 10;
                } else {
                    this->skelAnime.animPlaybackSpeed = 1.0f;
                    this->animationLength = SkelAnime_GetFrameCount(&D_0600C1D0.genericHeader);
                    this->actionState = 2;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_ROAR);
                    this->actor.shape.rot.y = this->actor.yawTowardsLink;
                    this->timers[0] = 15;
                    this->actor.posRot.pos.y = 150.0f;
                    for (i = 0; i < 10; i++) {
                        this->rightMane.pos[i].x += Rand_CenteredFloat(100.0f);
                        this->rightMane.pos[i].z += Rand_CenteredFloat(100.0f);
                        this->leftMane.pos[i].x += Rand_CenteredFloat(100.0f);
                        this->leftMane.pos[i].z += Rand_CenteredFloat(100.0f);
                    }
                    bossFd->holeSplashTimer = 5;
                }
            }
            break;
        case 2:
            Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x7D0);
            if ((this->timers[0] == 1) && (this->actor.xzDistFromLink < 120.0f)) {
                func_8002F6D4(globalCtx, &this->actor, 3.0f, this->actor.yawTowardsLink, 2.0f, 0x20);
                Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
            }
            if (func_800A56C8(&this->skelAnime, this->animationLength)) {
                BossFd2_SetupIdle(this, globalCtx);
            }
            break;
    }
    osSyncPrintf("UP 2\n");
}

void BossFd2_SetupIdle(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;
    s8 health;
    s16 idleTime;

    osSyncPrintf("UP INIT 1\n");
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_0600AE90);
    this->actionFunc = BossFd2_Idle;
    health = bossFd->actor.colChkInfo.health;
    if (health == 24) {
        idleTime = 50;
    } else if (health >= 18) {
        idleTime = 40;
    } else if (health >= 12) {
        idleTime = 40;
    } else if (health >= 6) {
        idleTime = 30;
    } else {
        idleTime = 20;
    }
    this->timers[0] = idleTime;
}

void BossFd2_Idle(BossFd2* this, GlobalContext* globalCtx) {
    s16 prevToLink;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    prevToLink = this->turnToLink;
    this->turnToLink = Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x7D0, 0);
    osSyncPrintf("SW1 = %d\n", prevToLink);
    osSyncPrintf("SW2 = %d\n", this->turnToLink);
    if ((fabsf(prevToLink) <= 1000.0f) && (1000.0f < fabsf(this->turnToLink))) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600AE90, -5.0f);
    }
    if ((1000.0f < fabsf(prevToLink)) && (fabsf(this->turnToLink) <= 1000.0f)) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600C8EC, -5.0f);
    }
    if (this->timers[0] == 0) {
        if (this->actor.xzDistFromLink < 200.0f) {
            BossFd2_SetupClawSwipe(this, globalCtx);
        } else {
            BossFd2_SetupBreatheFire(this, globalCtx);
        }
    }
}

void BossFd2_SetupBurrow(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;

    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06009194, -5.0f);
    this->actionFunc = BossFd2_Burrow;
    this->animationLength = SkelAnime_GetFrameCount(&D_06009194.genericHeader);
    bossFd->timers[4] = 30;
    this->actionState = 0;
}

void BossFd2_Burrow(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;

    if (this->actionState == 0) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        if (func_800A56C8(&this->skelAnime, this->animationLength)) {
            this->actionState = 1;
            this->timers[0] = 25;
        }
    } else {
        Math_ApproachF(&this->actor.posRot.pos.y, -100.0f, 1.0f, 10.0f);
        if (this->timers[0] == 0) {
            if ((this->holeCounter >= 3) && ((s8)bossFd->actor.colChkInfo.health < 24)) {
                this->holeCounter = 0;
                this->actionFunc = BossFd2_Wait;
                bossFd->handoffSignal = 1;
            } else {
                BossFd2_SetupEmerge(this, globalCtx);
            }
        }
    }
}

void BossFd2_SetupBreatheFire(BossFd2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060073CC, -5.0f);
    this->actionFunc = BossFd2_BreatheFire;
    this->animationLength = SkelAnime_GetFrameCount(&D_060073CC.genericHeader);
    this->actionState = 0;
}

static Vec3f sUnkVec = { 0.0, 0.0, 50.0 }; // Unused? BossFd uses a similar array for its fire breath sfx.

void BossFd2_BreatheFire(BossFd2* this, GlobalContext* globalCtx) {
    s16 i;
    Vec3f toLink;
    s16 angleX;
    s16 angleY;
    s16 breathOpacity = 0;
    BossFd* bossFd = BOSSFD;
    Player* player = PLAYER;
    f32 temp_x;
    f32 temp_y;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, this->animationLength)) {
        BossFd2_SetupBurrow(this, globalCtx);
    }
    if ((25.0f <= this->skelAnime.animCurrentFrame) && (this->skelAnime.animCurrentFrame < 70.0f)) {
        if (this->skelAnime.animCurrentFrame == 25.0f) {
            globalCtx->envCtx.unk_D8 = 0.0f;
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_FIRE - SFX_FLAG);
        if (this->skelAnime.animCurrentFrame > 50) {
            breathOpacity = (70.0f - this->skelAnime.animCurrentFrame) * 12.0f;
        } else {
            breathOpacity = 255;
        }
        toLink.x = player->actor.posRot.pos.x - this->headPos.x;
        toLink.y = player->actor.posRot.pos.y - this->headPos.y;
        toLink.z = player->actor.posRot.pos.z - this->headPos.z;
        angleY = Math_Atan2S(toLink.z, toLink.x);
        angleX = -Math_Atan2S(sqrtf(SQ(toLink.x) + SQ(toLink.z)), toLink.y);
        angleY -= this->actor.shape.rot.y;
        if (angleY > 0x1F40) {
            angleY = 0x1F40;
        }
        if (angleY < -0x1F40) {
            angleY = -0x1F40;
        }
        angleX += (-0x1B58);
        if (angleX > 0x3E8) {
            angleX = 0x3E8;
        }
        if (angleX < -0xFA0) {
            angleX = -0xFA0;
        }
        Math_ApproachS(&this->headRot.y, angleY, 5, 0x7D0);
        Math_ApproachS(&this->headRot.x, angleX, 5, 0x7D0);
    } else {
        Math_ApproachS(&this->headRot.y, 0, 5, 0x7D0);
        Math_ApproachS(&this->headRot.x, 0, 5, 0x7D0);
    }
    if (breathOpacity != 0) {
        f32 breathScale;
        Vec3f spawnSpeed = { 0.0f, 0.0f, 0.0f };
        Vec3f spawnVel;
        Vec3f spawnAccel = { 0.0f, 0.0f, 0.0f };
        Vec3f spawnPos;

        bossFd->fogMode = 2;
        spawnSpeed.z = 30.0f;
        spawnPos = this->headPos;

        temp_y = ((this->actor.shape.rot.y + this->headRot.y) / (f32)0x8000) * M_PI;
        temp_x = ((this->headRot.x / (f32)0x8000) * M_PI) + 1.0f / 2;
        Matrix_RotateY(temp_y, MTXMODE_NEW);
        Matrix_RotateX(temp_x, MTXMODE_APPLY);
        Matrix_MultVec3f(&spawnSpeed, &spawnVel);

        breathScale = 300.0f + 50.0f * Math_SinS(this->varianceTimer * 0x2000);
        BossFd2_SpawnFireBreath(globalCtx, bossFd->particles, &spawnPos, &spawnVel, &spawnAccel, breathScale,
                                breathOpacity, this->actor.shape.rot.y + this->headRot.y);

        spawnPos.x += spawnVel.x * 0.5f;
        spawnPos.y += spawnVel.y * 0.5f;
        spawnPos.z += spawnVel.z * 0.5f;

        breathScale = 300.0f + 50.0f * Math_SinS(this->varianceTimer * 0x2000);
        BossFd2_SpawnFireBreath(globalCtx, bossFd->particles, &spawnPos, &spawnVel, &spawnAccel, breathScale,
                                breathOpacity, this->actor.shape.rot.y + this->headRot.y);

        VEC_SET(spawnSpeed, 0.0f, 17.0f, 0.0f);
        for (i = 0; i < 6; i++) {
            temp_y = Rand_ZeroFloat(2.0f * M_PI);
            temp_x = Rand_ZeroFloat(2.0f * M_PI);
            Matrix_RotateY(temp_y, MTXMODE_NEW);
            Matrix_RotateX(temp_x, MTXMODE_APPLY);
            Matrix_MultVec3f(&spawnSpeed, &spawnVel);

            spawnAccel.x = (spawnVel.x * -10.0f) / 100.0f;
            spawnAccel.y = (spawnVel.y * -10.0f) / 100.0f;
            spawnAccel.z = (spawnVel.z * -10.0f) / 100.0f;

            BossFd2_SpawnEmber(globalCtx, bossFd->particles, &this->headPos, &spawnVel, &spawnAccel,
                               (s16)Rand_ZeroFloat(2.0f) + 8);
        }
    }
}

void BossFd2_SetupClawSwipe(BossFd2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600B7A4, -5.0f);
    this->actionFunc = BossFd2_ClawSwipe;
    this->animationLength = SkelAnime_GetFrameCount(&D_0600B7A4.genericHeader);
}

void BossFd2_ClawSwipe(BossFd2* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 5.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_ROAR);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_SW_NAIL);
    }
    if (func_800A56C8(&this->skelAnime, this->animationLength)) {
        BossFd2_SetupBurrow(this, globalCtx);
    }
}

void BossFd2_SetupVulnerable(BossFd2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600A31C);
    this->animationLength = SkelAnime_GetFrameCount(&D_0600A31C.genericHeader);
    this->actionFunc = BossFd2_Vulnerable;
    this->actionState = 0;
}

void BossFd2_Vulnerable(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;
    s16 i;

    this->disableAT = true;
    this->actor.flags |= 0x400;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    switch (this->actionState) {
        case 0:
            if (func_800A56C8(&this->skelAnime, 13.0f)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_MAHI2);
            }
            if (func_800A56C8(&this->skelAnime, this->animationLength - 3.0f)) {
                for (i = 0; i < 25; i++) {
                    Vec3f spawnVel;
                    Vec3f spawnAccel = { 0.0f, 0.0f, 0.0f };
                    Vec3f spawnPos;

                    spawnVel.x = Rand_CenteredFloat(8.0f);
                    spawnVel.y = Rand_ZeroFloat(1.0f);
                    spawnVel.z = Rand_CenteredFloat(8.0f);

                    spawnAccel.y = 0.5f;

                    spawnPos.x = Rand_CenteredFloat(10.0f) + this->actor.posRot2.pos.x;
                    spawnPos.y = Rand_CenteredFloat(10.0f) + this->actor.posRot2.pos.y;
                    spawnPos.z = Rand_CenteredFloat(10.0f) + this->actor.posRot2.pos.z;

                    BossFd2_SpawnDust(bossFd->particles, &spawnPos, &spawnVel, &spawnAccel,
                                      Rand_ZeroFloat(100.0f) + 300.0f);
                }
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_LAND);
            }
            if (func_800A56C8(&this->skelAnime, this->animationLength)) {
                SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600A86C, -5.0f);
                this->actionState = 1;
                this->timers[0] = 60;
            }
            break;
        case 1:
            if ((this->varianceTimer & 0xF) == 0xF) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_KNOCKOUT);
            }
            if (this->timers[0] == 0) {
                BossFd2_SetupBurrow(this, globalCtx);
            }
            break;
    }
}

void BossFd2_SetupDamaged(BossFd2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06007850);
    this->animationLength = SkelAnime_GetFrameCount(&D_06007850.genericHeader);
    this->actionFunc = BossFd2_Damaged;
    this->actionState = 0;
}

void BossFd2_Damaged(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->disableAT = true;
    if (this->actionState == 0) {
        if (func_800A56C8(&this->skelAnime, this->animationLength)) {
            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_060089DC);
            this->animationLength = SkelAnime_GetFrameCount(&D_060089DC.genericHeader);
            this->actionState = 1;
        }
    } else if (this->actionState == 1) {
        if (func_800A56C8(&this->skelAnime, 6.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_DAMAGE2);
        }
        if (func_800A56C8(&this->skelAnime, 20.0f)) {
            bossFd->timers[4] = 30;
        }
        if (func_800A56C8(&this->skelAnime, this->animationLength)) {
            this->actionState = 2;
            this->timers[0] = 25;
        }
    } else {
        Math_ApproachF(&this->actor.posRot.pos.y, -100.0f, 1.0f, 10.0f);
        if (this->timers[0] == 0) {
            this->actionFunc = BossFd2_Wait;
            bossFd->handoffSignal = 1;
        }
    }
}

void BossFd2_SetupDeath(BossFd2* this, GlobalContext* globalCtx) {
    this->animationLength = SkelAnime_GetFrameCount(&D_060089DC.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060089DC, 1.0f, 0.0f, this->animationLength, 3, -3.0f);
    this->actionFunc = BossFd2_Death;
    this->actor.flags &= ~1;
    this->deathState = DEATH_START;
}

void BossFd2_UpdateCamera(BossFd2* this, GlobalContext* globalCtx) {
    if (this->deathCamera != 0) {
        Math_ApproachF(&this->cameraEye.x, this->cameraNextEye.x, this->cameraEyeMaxVel.x,
                             this->cameraEyeVel.x * this->cameraSpeedMod);
        Math_ApproachF(&this->cameraEye.y, this->cameraNextEye.y, this->cameraEyeMaxVel.y,
                             this->cameraEyeVel.y * this->cameraSpeedMod);
        Math_ApproachF(&this->cameraEye.z, this->cameraNextEye.z, this->cameraEyeMaxVel.z,
                             this->cameraEyeVel.z * this->cameraSpeedMod);
        Math_ApproachF(&this->cameraAt.x, this->cameraNextAt.x, this->cameraAtMaxVel.x,
                             this->cameraAtVel.x * this->cameraSpeedMod);
        Math_ApproachF(&this->cameraAt.y, this->cameraNextAt.y, this->cameraAtMaxVel.y,
                             this->cameraAtVel.y * this->cameraSpeedMod);
        Math_ApproachF(&this->cameraAt.z, this->cameraNextAt.z, this->cameraAtMaxVel.z,
                             this->cameraAtVel.z * this->cameraSpeedMod);
        Math_ApproachF(&this->cameraSpeedMod, 1.0f, 1.0f, this->cameraAccel);
        this->cameraAt.y += this->cameraYMod;
        Gameplay_CameraSetAtEye(globalCtx, this->deathCamera, &this->cameraAt, &this->cameraEye);
        Math_ApproachF(&this->cameraYMod, 0.0f, 1.0f, 0.1f);
    }
}

void BossFd2_Death(BossFd2* this, GlobalContext* globalCtx) {
    f32 retreatSpeed;
    Vec3f sp70;
    Vec3f sp64;
    BossFd* bossFd = BOSSFD;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    f32 pad3;
    f32 pad2;
    f32 pad1;
    f32 cameraShake;
    SkelAnime* skelAnime = &this->skelAnime;

    SkelAnime_FrameUpdateMatrix(skelAnime);
    switch (this->deathState) {
        case DEATH_START:
            this->deathState = DEATH_RETREAT;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            this->deathCamera = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->deathCamera, 7);
            this->cameraEye = camera->eye;
            this->cameraAt = camera->at;
            this->cameraEyeVel.x = 100.0f;
            this->cameraEyeVel.y = 100.0f;
            this->cameraEyeVel.z = 100.0f;
            this->cameraAtVel.x = 100.0f;
            this->cameraAtVel.y = 100.0f;
            this->cameraAtVel.z = 100.0f;
            this->cameraAccel = 0.02f;
            this->timers[0] = 0;
            this->holeCounter = 0;
            this->cameraEyeMaxVel.x = 0.1f;
            this->cameraEyeMaxVel.y = 0.1f;
            this->cameraEyeMaxVel.z = 0.1f;
            this->cameraAtMaxVel.x = 0.1f;
            this->cameraAtMaxVel.y = 0.1f;
            this->cameraAtMaxVel.z = 0.1f;
        case DEATH_RETREAT:
            this->holeCounter++;
            if (this->holeCounter < 15) {
                retreatSpeed = 1.0f;
            } else if (this->holeCounter < 20) {
                retreatSpeed = 0.5f;
            } else {
                retreatSpeed = 0.25f;
            }
            if ((this->holeCounter == 1) || (this->holeCounter == 40)) {
                this->screamTimer = 20;
                if (this->holeCounter == 40) {
                    func_800F8D04(NA_SE_EN_VALVAISA_DEAD);
                }

                Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_DAMAGE2);
            }
            Math_ApproachF(&this->skelAnime.animPlaybackSpeed, retreatSpeed, 1.0f, 1.0f);
            Matrix_RotateY(((this->actor.yawTowardsLink / (f32)0x8000) * M_PI) + 0.2f, MTXMODE_NEW);
            sp70.x = 0.0f;
            sp70.y = 0.0f;
            sp70.z = 250.0f;
            Matrix_MultVec3f(&sp70, &sp64);
            this->cameraNextEye.x = this->actor.posRot.pos.x + sp64.x;
            this->cameraNextEye.y = 140.0f;
            this->cameraNextEye.z = this->actor.posRot.pos.z + sp64.z;
            if (this->actor.posRot2.pos.y >= 90.0f) {
                this->cameraNextAt.y = this->actor.posRot2.pos.y;
                this->cameraNextAt.x = this->actor.posRot2.pos.x;
                this->cameraNextAt.z = this->actor.posRot2.pos.z;
            }
            if (this->timers[0] == 0) {
                if (func_800A56C8(skelAnime, 20.0f)) {
                    bossFd->timers[4] = 60;
                }
                if (this->holeCounter >= 100) {
                    this->deathState = DEATH_HANDOFF;
                    this->timers[0] = 50;
                }
            } else if (func_800A56C8(skelAnime, 15.0f)) {
                SkelAnime_ChangeAnimTransitionStop(skelAnime, &D_060089DC, -10.0f);
            }
            break;
        case DEATH_HANDOFF:
            if (this->timers[0] == 0) {
                this->actor.draw = NULL;
                this->deathState = DEATH_FD_BODY;
                bossFd->handoffSignal = 2;
                this->actionState = 0;
                this->cameraSpeedMod = 0.0f;
            } else {
                Math_ApproachF(&this->actor.posRot.pos.y, -100.0f, 1.0f, 5.0f);
            }
            break;
        case DEATH_FD_BODY:
            if (bossFd->actor.posRot.pos.y < 80.0f) {
                if (bossFd->actor.posRot.rot.x > 0x3000) {
                    this->cameraNextAt = bossFd->actor.posRot.pos;
                    this->cameraNextAt.y = 80.0f;
                    this->cameraNextEye.x = bossFd->actor.posRot.pos.x;
                    this->cameraNextEye.y = 150.0f;
                    this->cameraNextEye.z = bossFd->actor.posRot.pos.z + 300.0f;
                }
            } else {
                this->cameraNextAt = bossFd->actor.posRot.pos;
                this->cameraNextEye.x = this->actor.posRot.pos.x;
                Math_ApproachF(&this->cameraNextEye.y, 200.0f, 1.0f, 2.0f);
                Math_ApproachF(&this->cameraNextEye.z, bossFd->actor.posRot.pos.z + 200.0f, 1.0f, 3.0f);
                if (this->actionState == 0) {
                    this->actionState++;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraAccel = 0.02f;
                    func_8002DF54(globalCtx, &bossFd->actor, 1);
                }
            }
            if ((bossFd->actionState == FD_BONES_FALL) && (bossFd->timers[0] == 5)) {
                this->deathState = DEATH_FD_SKULL;
                this->cameraSpeedMod = 0.0f;
                this->cameraAccel = 0.02f;
                this->cameraNextEye.y = 150.0f;
                this->cameraNextEye.z = bossFd->actor.posRot.pos.z + 300.0f;
            }
            break;
        case DEATH_FD_SKULL:
            Math_ApproachF(&this->cameraNextAt.y, 100.0, 1.0f, 100.0f);
            this->cameraNextAt.x = 0.0f;
            this->cameraNextAt.z = 0.0f;
            this->cameraNextEye.x = 0.0f;
            this->cameraNextEye.y = 140.0f;
            Math_ApproachF(&this->cameraNextEye.z, 220.0f, 0.5f, 1.15f);
            if (bossFd->deathCameraShakeTimer != 0) {
                bossFd->deathCameraShakeTimer--;
                cameraShake = bossFd->deathCameraShakeTimer / 0.5f;
                if (cameraShake >= 20.0f) {
                    cameraShake = 20.0f;
                }
                this->cameraYMod = (bossFd->deathCameraShakeTimer & 1) ? cameraShake : -cameraShake;
            }
            if (bossFd->actionState == FD_SKULL_BURN) {
                this->deathState = DEATH_FINISH;
                camera->eye = this->cameraEye;
                camera->eyeNext = this->cameraEye;
                camera->at = this->cameraAt;
                func_800C08AC(globalCtx, this->deathCamera, 0);
                this->deathCamera = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, 100.0f, 0.0f,
                                   0, 0, 0, 0xFFFF);
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
            }
            break;
        case DEATH_FINISH:
            break;
    }
    BossFd2_UpdateCamera(this, globalCtx);
}

void BossFd2_Wait(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;

    if (bossFd->handoffSignal == 100) {
        bossFd->handoffSignal = 0;
        BossFd2_SetupEmerge(this, globalCtx);
        this->timers[0] = 20;
        this->holeCounter = 0;
    }
}

void BossFd2_CollisionCheck(BossFd2* this, GlobalContext* globalCtx) {
    s16 i;
    u8 canKill;
    u8 damage;
    Player* player;
    BossFd* bossFd = BOSSFD;
    ColliderBody* hurtbox;

    if (this->actionFunc == BossFd2_ClawSwipe) {
        player = PLAYER;
        for (i = 0; i < 9; i++) {
            if (this->collider.list[i].body.toucherFlags & 2) {
                this->collider.list[i].body.toucherFlags &= ~2;
                Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
            }
        }
    }
    if (!bossFd->faceExposed) {
        this->collider.list[0].body.flags = 2;
        this->collider.base.type = 9;
    } else {
        this->collider.list[0].body.flags = 3;
        this->collider.base.type = 3;
    }

    if (this->collider.list[0].body.bumperFlags & 2) {
        this->collider.list[0].body.bumperFlags &= ~2;
        hurtbox = this->collider.list[0].body.acHitItem;
        if (!bossFd->faceExposed) {
            if (hurtbox->toucher.flags & 0x40000040) {
                bossFd->actor.colChkInfo.health -= 2;
                if ((s8)bossFd->actor.colChkInfo.health <= 2) {
                    bossFd->actor.colChkInfo.health = 1;
                }
                bossFd->faceExposed = 1;
                BossFd2_SetupVulnerable(this, globalCtx);
                this->invincibilityTimer = 30;
                this->damageFlashTimer = 5;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_MAHI1);
                for (i = 0; i < 30; i++) {
                    Vec3f debrisVel = { 0.0f, 0.0f, 0.0f };
                    Vec3f debrisAccel = { 0.0f, -1.0f, 0.0f };
                    Vec3f debrisPos;

                    debrisVel.x = Rand_CenteredFloat(10.0f);
                    debrisVel.y = Rand_ZeroFloat(5.0f) + 8.0f;
                    debrisVel.z = Rand_CenteredFloat(10.0f);

                    debrisPos.x = this->actor.posRot2.pos.x;
                    debrisPos.y = this->actor.posRot2.pos.y;
                    debrisPos.z = this->actor.posRot2.pos.z;

                    BossFd2_SpawnDebris(globalCtx, bossFd->particles, &debrisPos, &debrisVel, &debrisAccel,
                                        (s16)Rand_ZeroFloat(10.0) + 10);
                }
            }
        } else {
            u32 toucherFlags;
            canKill = 0;
            damage = toucherFlags = func_800635D0(hurtbox->toucher.flags);
            if (toucherFlags == 0) {
                damage = (hurtbox->toucher.flags & 0x1000) ? 4 : 2;
            } else {
                canKill = 1;
            }
            if (hurtbox->toucher.flags & 0x80) {
                damage = 0;
            }
            toucherFlags = damage;
            if (((s8)bossFd->actor.colChkInfo.health > 2) || canKill) {
                bossFd->actor.colChkInfo.health -= damage;
                osSyncPrintf("\x1b[32m");
                osSyncPrintf("damage   %d\n", damage);
            }
            osSyncPrintf("\x1b[m");
            osSyncPrintf("hp %d\n", bossFd->actor.colChkInfo.health);

            if ((s8)bossFd->actor.colChkInfo.health <= 0) {
                bossFd->actor.colChkInfo.health = 0;
                BossFd2_SetupDeath(this, globalCtx);
                this->damageFlashTimer = 10;
                this->invincibilityTimer = 30000;
                Audio_SetBGM(0x100100FF);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_DEAD);
                func_80032C7C(globalCtx, &this->actor);
            } else if (toucherFlags != 0) {
                BossFd2_SetupDamaged(this, globalCtx);
                this->damageFlashTimer = 10;
                this->invincibilityTimer = 100;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_VALVAISA_DAMAGE1);
            }
            if (toucherFlags != 0) {
                for (i = 0; i < 30; i++) {
                    Vec3f pieceVel = { 0.0f, 0.0f, 0.0f };
                    Vec3f pieceAccel = { 0.0f, -1.0f, 0.0f };
                    Vec3f piecePos;

                    pieceVel.x = Rand_CenteredFloat(6.0f);
                    pieceVel.y = Rand_ZeroFloat(4.0f) + 6.0f;
                    pieceVel.z = Rand_CenteredFloat(6.0f);

                    piecePos.x = this->actor.posRot2.pos.x;
                    piecePos.y = this->actor.posRot2.pos.y;
                    piecePos.z = this->actor.posRot2.pos.z;

                    BossFd2_SpawnSkullPiece(globalCtx, bossFd->particles, &piecePos, &pieceVel, &pieceAccel,
                                            (s16)Rand_ZeroFloat(6.0f) + 10);
                }
            }
        }
    }
}

void BossFd2_UpdateFace(BossFd2* this, GlobalContext* globalCtx) {
    f32 maxOpen;
    f32 openRate;
    s16 eyeStates[5] = { 0, 1, 2, 2, 1 };

    if (((this->varianceTimer % 8) == 0) && (Rand_ZeroOne() < 0.3f)) {
        this->blinkTimer = 4;
    }
    if ((this->actionFunc == BossFd2_Vulnerable) || (this->actionFunc == BossFd2_Damaged)) {
        if (this->varianceTimer & 0x10) {
            this->eyeState = 1;
        } else {
            this->eyeState = 2;
        }
    } else {
        this->eyeState = eyeStates[this->blinkTimer];
    }
    DECR(this->blinkTimer);

    if (this->screamTimer != 0) {
        maxOpen = 6000.0f;
        openRate = 1300.0f;
    } else {
        maxOpen = (this->varianceTimer & 0x10) ? 1000.0f : 0.0f;
        openRate = 700.0f;
    }
    Math_ApproachF(&this->jawOpening, maxOpen, 0.3f, openRate);

    DECR(this->screamTimer);
}

void BossFd2_Update(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BossFd2* this = THIS;
    s16 i;

    osSyncPrintf("FD2 move start \n");
    this->disableAT = false;
    this->actor.flags &= ~0x400;
    this->varianceTimer++;
    this->unkTimer++;

    this->actionFunc(this, globalCtx2);

    for (i = 0; i < 5; i++) {
        DECR(this->timers[i]);
    }
    DECR(this->damageFlashTimer);
    DECR(this->invincibilityTimer);

    if (this->deathState == DEATH_START) {
        if (this->invincibilityTimer == 0) {
            BossFd2_CollisionCheck(this, globalCtx2);
        }
        CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        if (!this->disableAT) {
            CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        }
    }

    BossFd2_UpdateFace(this, globalCtx2);
    this->bodyTex1x += 4.0f;
    this->bodyTex1y = 120.0f;
    this->bodyTex2x += 3.0f;
    this->bodyTex2y -= 2.0f;
    if (this->actor.posRot2.pos.y < 90.0f) {
        this->actor.flags &= ~1;
    } else {
        this->actor.flags |= 1;
    }
}

s32 BossFd2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             void* thisx) {
    BossFd2* this = THIS;
    BossFd* bossFd = BOSSFD;

    if (limbIndex == 31) {
        rot->y -= (f32)this->headRot.y;
        rot->z += (f32)this->headRot.x;
    }
    switch (limbIndex) {
        case 35:
        case 36:
            rot->z -= this->jawOpening * 0.1f;
            break;
        case 32:
            rot->z += this->jawOpening;
            break;
    }
    if ((bossFd->faceExposed == 1) && (limbIndex == 35)) {
        *dList = D_06004E38;
    }

    if ((limbIndex == 32) || (limbIndex == 35) || (limbIndex == 36)) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2165);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, (s8)bossFd->headTex2Opacity);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2172);
    } else {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2174);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, (s8)bossFd->bodyTex2Opacity);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2181);
    }
    if ((0 < limbIndex) && (limbIndex < 16)) {
        *dList = NULL;
    }
    return false;
}

void BossFd2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f targetMod = { 4500.0f, 0.0f, 0.0f };
    static Vec3f headMod = { 4000.0f, 0.0f, 0.0f };
    static Vec3f centerManeMod = { 4000.0f, -2900.0, 2000.0f };
    static Vec3f rightManeMod = { 4000.0f, -1600.0, 0.0f };
    static Vec3f leftManeMod = { 4000.0f, -1600.0, -2000.0f };
    BossFd2* this = THIS;

    if (limbIndex == 35) {
        Matrix_MultVec3f(&targetMod, &this->actor.posRot2.pos);
        Matrix_MultVec3f(&headMod, &this->headPos);
        Matrix_MultVec3f(&centerManeMod, &this->centerMane.head);
        Matrix_MultVec3f(&rightManeMod, &this->rightMane.head);
        Matrix_MultVec3f(&leftManeMod, &this->leftMane.head);
    }
    func_800628A4(limbIndex, &this->collider);
}

void BossFd2_UpdateMane(BossFd2* this, GlobalContext* globalCtx, Vec3f* head, Vec3f* pos, Vec3f* rot, Vec3f* pull,
                        f32* scale) {
    f32 sp138[10] = { 0.0f, 100.0f, 50.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
    f32 sp110[10] = { 0.0f, 5.0f, -10.0f, 500.0f, 500.0f, 500.0f, 500.0f, 500.0f, 500.0f, 500.0f };
    f32 spE8[10] = { 0.4f, 0.6f, 0.8f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f };
    s16 i;
    Vec3f temp_vec;
    f32 temp_f2;
    f32 phi_f0;
    f32 temp_angleX;
    f32 temp_angleY;
    Vec3f spBC;
    Vec3f spB0;
    f32 xyScale;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2389);
    Matrix_Push();
    gDPPipeSync(POLY_OPA_DISP++);

    for (i = 0; i < 10; i++) {
        if (i == 0) {
            (pos + i)->x = head->x;
            (pos + i)->y = head->y;
            (pos + i)->z = head->z;
        } else {
            Math_ApproachF(&(pull + i)->x, 0.0f, 1.0f, 1.0f);
            Math_ApproachF(&(pull + i)->y, 0.0f, 1.0f, 1.0f);
            Math_ApproachF(&(pull + i)->z, 0.0f, 1.0f, 1.0f);
        }
    }

    for (i = 1; i < 10; i++) {
        temp_vec.x = (pos + i)->x + (pull + i)->x - (pos + i - 1)->x;

        phi_f0 = (pos + i)->y + (pull + i)->y - 2.0f + sp138[i];
        temp_f2 = (pos + i - 1)->y + sp110[i];
        if (phi_f0 > temp_f2) {
            phi_f0 = temp_f2;
        }
        if ((head->y >= -910.0f) && (phi_f0 < 110.0f)) {
            phi_f0 = 110.0f;
        }
        temp_vec.y = phi_f0 - (pos + i - 1)->y;

        temp_vec.z = (pos + i)->z + (pull + i)->z - (pos + i - 1)->z;
        temp_angleY = Math_Atan2F(temp_vec.z, temp_vec.x);
        temp_angleX = -Math_Atan2F(sqrtf(SQ(temp_vec.x) + SQ(temp_vec.z)), temp_vec.y);
        (rot + i - 1)->y = temp_angleY;
        (rot + i - 1)->x = temp_angleX;
        spBC.x = 0.0f;
        spBC.y = 0.0f;
        spBC.z = spE8[i] * 25.0f;
        Matrix_RotateY(temp_angleY, MTXMODE_NEW);
        Matrix_RotateX(temp_angleX, MTXMODE_APPLY);
        Matrix_MultVec3f(&spBC, &spB0);
        temp_vec.x = (pos + i)->x;
        temp_vec.y = (pos + i)->y;
        temp_vec.z = (pos + i)->z;
        (pos + i)->x = (pos + i - 1)->x + spB0.x;
        (pos + i)->y = (pos + i - 1)->y + spB0.y;
        (pos + i)->z = (pos + i - 1)->z + spB0.z;
        (pull + i)->x = (((pos + i)->x - temp_vec.x) * 88.0f) / 100.0f;
        (pull + i)->y = (((pos + i)->y - temp_vec.y) * 88.0f) / 100.0f;
        (pull + i)->z = (((pos + i)->z - temp_vec.z) * 88.0f) / 100.0f;
        if ((pull + i)->x > 30.0f) {
            (pull + i)->x = 30.0f;
        }
        if ((pull + i)->x < -30.0f) {
            (pull + i)->x = -30.0f;
        }
        if ((pull + i)->y > 30.0f) {
            (pull + i)->y = 30.0f;
        }
        if ((pull + i)->y < -30.0f) {
            (pull + i)->y = -30.0f;
        }
        if ((pull + i)->z > 30.0f) {
            (pull + i)->z = 30.0f;
        }
        if ((pull + i)->z < -30.0f) {
            (pull + i)->z = -30.0f;
        }
    }

    for (i = 0; i < 9; i++) {
        Matrix_Translate((pos + i)->x, (pos + i)->y, (pos + i)->z, MTXMODE_NEW);
        Matrix_RotateY((rot + i)->y, MTXMODE_APPLY);
        Matrix_RotateX((rot + i)->x, MTXMODE_APPLY);
        xyScale = (0.01f - (i * 0.0009f)) * spE8[i] * scale[i];
        Matrix_Scale(xyScale, xyScale, 0.01f * spE8[i], MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2498),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_06004BC8);
    }
    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2503);
}

void BossFd2_DrawMane(BossFd2* this, GlobalContext* globalCtx) {
    f32 pad;
    BossFd* bossFd = BOSSFD;
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2515);
    if (1) {}
    for (i = 0; i < 10; i++) {
        this->centerMane.scale[i] = 1.5f + 0.3f * Math_SinS(5596.0f * this->varianceTimer + i * 0x3200);
        this->rightMane.scale[i] = 1.5f + 0.3f * Math_SinS(5496.0f * this->varianceTimer + i * 0x3200);
        this->leftMane.scale[i] = 1.5f + 0.3f * Math_CosS(5696.0f * this->varianceTimer + i * 0x3200);
    }

    func_80093D84(globalCtx->state.gfxCtx);

    gSPDisplayList(POLY_XLU_DISP++, D_06004B48);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, bossFd->centerManeColor, 0, 255);
    BossFd2_UpdateMane(this, globalCtx, &this->centerMane.head, this->centerMane.pos, this->centerMane.rot,
                       this->centerMane.pull, this->centerMane.scale);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, bossFd->rightManeColor, 0, 255);
    BossFd2_UpdateMane(this, globalCtx, &this->rightMane.head, this->rightMane.pos, this->rightMane.rot,
                       this->rightMane.pull, this->rightMane.scale);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, bossFd->leftManeColor, 0, 255);
    BossFd2_UpdateMane(this, globalCtx, &this->leftMane.head, this->leftMane.pos, this->leftMane.rot,
                       this->leftMane.pull, this->leftMane.scale);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2601);
}

void BossFd2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* eyeDisplayLists[] = { 0x06002B08, 0x06002708, 0x06002F08 };
    s32 pad;
    BossFd2* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2617);
    osSyncPrintf("FD2 draw start \n");
    if (this->actionFunc != BossFd2_Wait) {
        func_80093D18(globalCtx->state.gfxCtx);
        if (this->damageFlashTimer & 2) {
            POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 255, 255, 0, 0x384, 0x44B);
        }
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeDisplayLists[this->eyeState]));

        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->bodyTex1x, (s16)this->bodyTex1y, 0x20, 0x20,
                                    1, (s16)this->bodyTex2x, (s16)this->bodyTex2y, 0x20, 0x20));
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 128);

        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                         BossFd2_OverrideLimbDraw, BossFd2_PostLimbDraw, &this->actor);
        BossFd2_DrawMane(this, globalCtx);
        POLY_OPA_DISP = func_800BC8A0(globalCtx, POLY_OPA_DISP);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 2688);
}
