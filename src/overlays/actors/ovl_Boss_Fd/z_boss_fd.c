/*
 * File: z_boss_fd.c
 * Overlay: ovl_Boss_Fd
 * Description: Volvagia, flying form
 */

#include "z_boss_fd.h"
#include "../ovl_En_Vb_Ball/z_en_vb_ball.h"

#define FLAGS 0x00000035

#define THIS ((BossFd*)thisx)

void BossFd_Init(Actor* thisx, GlobalContext* globalCtx);
void BossFd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossFd_Update(Actor* thisx, GlobalContext* globalCtx);
void BossFd_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossFd_SetupFly(BossFd* this, GlobalContext* globalCtx);
void BossFd_Fly(BossFd* this, GlobalContext* globalCtx);
void BossFd_Wait(BossFd* this, GlobalContext* globalCtx);
void BossFd_UpdateParticles(BossFd* this, GlobalContext* globalCtx);
void BossFd_DrawBody(GlobalContext* globalCtx, BossFd* this);

extern Gfx D_060059F8[];
extern Gfx D_06009168[];
extern Gfx D_060091E8[];
extern Gfx D_0600B2F8[];
extern Gfx D_0600CBC8[];
extern Gfx D_0600D0A0[];
extern AnimationHeader D_06011464;
extern AnimationHeader D_06011524;
extern AnimationHeader D_060115E4;
extern SkeletonHeader D_060114E0;
extern SkeletonHeader D_060115A0;
extern SkeletonHeader D_06011660;

// particle display lists
extern Gfx D_0600A880[];
extern Gfx D_0600A900[];
extern Gfx D_0600B3A8[];
extern Gfx D_0600B3C8[];
extern Gfx D_0600D3A0[];
extern Gfx D_0600D420[];
extern Gfx D_0600D668[];
extern Gfx D_0600D6E8[];

extern UNK_TYPE D_0600D700;

typedef enum {
    /* 0 */ NO_CUTSCENE,
    /* 1 */ INTRO_WAIT,
    /* 2 */ INTRO_START,
    /* 3 */ INTRO_LOOK_LINK,
    /* 4 */ INTRO_LOOK_GROUND,
    /* 5 */ INTRO_COLLAPSE,
    /* 6 */ INTRO_EMERGE
} BossFdCutsceneState;

typedef enum {
    /* 0 */ INTRO_FLY_EMERGE,
    /* 1 */ INTRO_FLY_HOLE,
    /* 2 */ INTRO_FLY_CAMERA,
    /* 3 */ INTRO_FLY_RETRAT
} BossFdIntroFlyState;

typedef enum {
    /* 0 */ MANE_CENTER,
    /* 1 */ MANE_RIGHT,
    /* 2 */ MANE_LEFT
} BossFdManeIdx;

const ActorInit Boss_Fd_InitVars = {
    ACTOR_BOSS_FD,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_FD,
    sizeof(BossFd),
    (ActorFunc)BossFd_Init,
    (ActorFunc)BossFd_Destroy,
    (ActorFunc)BossFd_Update,
    (ActorFunc)BossFd_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[19] = {
    {
        { 0x03, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 0, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 1, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 2, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 3, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 4, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 5, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 6, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 7, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 8, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 9, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 10, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 11, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 12, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 14, { { 0, 0, 0 }, 18 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 15, { { 0, 0, 0 }, 16 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 16, { { 0, 0, 0 }, 14 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 17, { { 0, 0, 0 }, 12 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 18, { { 0, 0, 0 }, 10 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    19,
    sJntSphItemsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 33, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

void BossFd_SpawnEmber(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 150; i++, particle++) {
        if (particle->type == FD_NULL) {
            particle->type = FD_EMBER;
            particle->pos = *position;
            particle->velocity = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->alpha = 255;
            particle->timer1 = (s16)Math_Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

void BossFd_SpawnDebris(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 150; i++, particle++) {
        if (particle->type == FD_NULL) {
            particle->type = FD_DEBRIS;
            particle->pos = *position;
            particle->velocity = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->xRot = Math_Rand_ZeroFloat(100.0f);
            particle->yRot = Math_Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossFd_SpawnDust(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 150; i++, particle++) {
        if (particle->type == 0) {
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

void BossFd_SpawnFireBreath(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale,
                            s16 alpha, s16 kbAngle) {
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
            particle->yStop = Math_Rand_ZeroFloat(10.0f);
            particle->timer2 = 0;
            particle->scale = scale / 400.0f;
            particle->kbAngle = kbAngle;
            break;
        }
    }
}

void BossFd_SetCameraSpeed(BossFd* this, f32 speedMod) {
    this->cameraEyeVel.x = fabsf(this->cameraEye.x - this->cameraNextEye.x) * speedMod;
    this->cameraEyeVel.y = fabsf(this->cameraEye.y - this->cameraNextEye.y) * speedMod;
    this->cameraEyeVel.z = fabsf(this->cameraEye.z - this->cameraNextEye.z) * speedMod;
    this->cameraAtVel.x = fabsf(this->cameraAt.x - this->cameraNextAt.x) * speedMod;
    this->cameraAtVel.y = fabsf(this->cameraAt.y - this->cameraNextAt.y) * speedMod;
    this->cameraAtVel.z = fabsf(this->cameraAt.z - this->cameraNextAt.z) * speedMod;
}

void BossFd_UpdateCamera(BossFd* this, GlobalContext* globalCtx) {
    if (this->introCamera != 0) {
        Math_SmoothScaleMaxF(&this->cameraEye.x, this->cameraNextEye.x, this->cameraEyeMaxVel.x,
                             this->cameraEyeVel.x * this->cameraSpeedMod);
        Math_SmoothScaleMaxF(&this->cameraEye.y, this->cameraNextEye.y, this->cameraEyeMaxVel.y,
                             this->cameraEyeVel.y * this->cameraSpeedMod);
        Math_SmoothScaleMaxF(&this->cameraEye.z, this->cameraNextEye.z, this->cameraEyeMaxVel.z,
                             this->cameraEyeVel.z * this->cameraSpeedMod);
        Math_SmoothScaleMaxF(&this->cameraAt.x, this->cameraNextAt.x, this->cameraAtMaxVel.x,
                             this->cameraAtVel.x * this->cameraSpeedMod);
        Math_SmoothScaleMaxF(&this->cameraAt.y, this->cameraNextAt.y, this->cameraAtMaxVel.y,
                             this->cameraAtVel.y * this->cameraSpeedMod);
        Math_SmoothScaleMaxF(&this->cameraAt.z, this->cameraNextAt.z, this->cameraAtMaxVel.z,
                             this->cameraAtVel.z * this->cameraSpeedMod);
        Math_SmoothScaleMaxF(&this->cameraSpeedMod, 1.0f, 1.0f, this->cameraAccel);
        this->cameraAt.y += this->cameraYMod;
        Gameplay_CameraSetAtEye(globalCtx, this->introCamera, &this->cameraAt, &this->cameraEye);
        Math_SmoothDownscaleMaxF(&this->cameraYMod, 1.0f, 0.1f);
    }
}

void BossFd_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossFd* this = THIS;
    s16 i;

    Flags_SetSwitch(globalCtx, 0x14);
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BG_VB_SIMA, 680.0f, -100.0f, 0.0f, 0, 0, 0,
                       0x64);
    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->actor, 0.05f);
    SkelAnime_Init(globalCtx, &this->skelAnimeHead, &D_06011660, &D_060115E4, 0, 0, 0);
    SkelAnime_Init(globalCtx, &this->skelAnimeRightArm, &D_060115A0, &D_06011524, 0, 0, 0);
    SkelAnime_Init(globalCtx, &this->skelAnimeLeftArm, &D_060114E0, &D_06011464, 0, 0, 0);
    this->introState = INTRO_WAIT;
    if (this->introState == NO_CUTSCENE) {
        Audio_SetBGM(0x6B);
    }

    this->actor.posRot.pos.z = 0.0f;
    this->actor.posRot.pos.x = 0.0f;
    this->actor.posRot.pos.y = -200.0f;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colliderItems);

    for (i = 0; i < 100; i++) {
        this->bodySegsPos[i].x = this->actor.posRot.pos.x;
        this->bodySegsPos[i].y = this->actor.posRot.pos.y;
        this->bodySegsPos[i].z = this->actor.posRot.pos.z;
        if (i < 30) {
            this->centerMane.pos[i].x = this->actor.posRot.pos.x;
            this->centerMane.pos[i].y = this->actor.posRot.pos.y;
            this->centerMane.pos[i].z = this->actor.posRot.pos.z;
        }
    }

    this->actor.colChkInfo.health = 24;
    this->skinSegments = 18;
    if (this->introState == NO_CUTSCENE) {
        this->actionFunc = BossFd_Wait;
    } else {
        BossFd_SetupFly(this, globalCtx);
    }

    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        Actor_Kill(&this->actor);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, 100.0f, 0.0f, 0, 0, 0,
                           0xFFFF);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 0.0f, 100.0f, 200.0f, 0, 0, 0, 0);
    } else {
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_FD2, this->actor.posRot.pos.x,
                           this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, this->introState);
    }
}

void BossFd_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossFd* this = THIS;

    SkelAnime_Free(&this->skelAnimeHead, globalCtx);
    SkelAnime_Free(&this->skelAnimeRightArm, globalCtx);
    SkelAnime_Free(&this->skelAnimeLeftArm, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

s32 BossFd_IsFacingLink(BossFd* this) {
    return ABS((s16)(this->actor.yawTowardsLink - this->actor.posRot.rot.y)) < 0x2000;
}

void BossFd_SetupFly(BossFd* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnimeHead, &D_060115E4);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnimeRightArm, &D_06011524);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnimeLeftArm, &D_06011464);
    this->actionFunc = BossFd_Fly;
    this->maxTurnRate = 1000.0f;
}

#ifdef NON_MATCHING
// Somehow doesn't use rodata value D_808D1EB4 = 0.1f. It would occur after the 85.56f float
// literal in case 6 of the boss intro switch statement but before the next switch statement.
// All instructions match.

static Vec3f sHoleLocations[] = { { 0.0f, 90.0f, -243.0f },    { 0.0f, 90.0f, 0.0f },    { 0.0f, 90.0f, 243.0f },
                                  { -243.0f, 90.0f, -243.0f }, { -243.0f, 90.0f, 0.0f }, { -243.0f, 90.0f, 243.0f },
                                  { 243.0f, 90.0f, -243.0f },  { 243.0f, 90.0f, 0.0f },  { 243.0f, 90.0f, 243.0f } };

static Vec3f sCeilingTargets[] = {
    { 0.0f, 900.0f, -243.0f }, { 243.0, 900.0f, -100.0f },  { 243.0f, 900.0f, 100.0f },
    { 0.0f, 900.0f, 243.0f },  { -243.0f, 900.0f, 100.0f }, { -243.0, 900.0f, -100.0f }
};

void BossFd_Fly(BossFd* this, GlobalContext* globalCtx) {
    u8 sp1CF = false;
    u8 temp_rand;
    s16 i1;
    s16 i2;
    s16 i3;
    f32 dx;
    f32 dy;
    f32 dz;
    Player* player = PLAYER;
    f32 angleToTarget;
    f32 pitchToTarget;
    Vec3f* holePosition1;
    f32 temp_y;
    f32 temp_x;
    f32 temp_z;
    s32 pad19C;

    SkelAnime_FrameUpdateMatrix(&this->skelAnimeHead);
    SkelAnime_FrameUpdateMatrix(&this->skelAnimeRightArm);
    SkelAnime_FrameUpdateMatrix(&this->skelAnimeLeftArm);
    dx = this->targetPosition.x - this->actor.posRot.pos.x;
    dy = this->targetPosition.y - this->actor.posRot.pos.y;
    dz = this->targetPosition.z - this->actor.posRot.pos.z;
    dx += Math_Sins(this->movementTimer * (2096.0f + this->flightWobbleRate)) * this->flightWobbleAmplitude;
    dy += Math_Sins(this->movementTimer * (1096.0f + this->flightWobbleRate)) * this->flightWobbleAmplitude;
    dz += Math_Sins(this->movementTimer * (1796.0f + this->flightWobbleRate)) * this->flightWobbleAmplitude;
    angleToTarget = (s16)(Math_atan2f(dx, dz) * (0x8000 / M_PI));
    pitchToTarget = (s16)(Math_atan2f(dy, sqrtf(SQ(dx) + SQ(dz))) * (0x8000 / M_PI));

    osSyncPrintf("MODE %d\n", this->actionState);

    Math_SmoothScaleMaxF(&this->bodyPulse, 0.1f, 1.0f, 0.02);

    /****************************************************************************************
     *                                   Boss Intro Cutscene                                *
     ****************************************************************************************/

    if (this->introState != NO_CUTSCENE) {
        Player* player2 = PLAYER; // definitely needed for match
        Camera* camera = Gameplay_GetCamera(globalCtx, 0);
        switch (this->introState) {
            case INTRO_WAIT:
                this->fogMode = 3;
                this->targetPosition.x = 0.0f;
                this->targetPosition.y = -110.0f;
                this->targetPosition.z = 0.0;
                this->maxTurnRate = 10000.0f;
                this->actionState = FD_WAIT_INTRO;
                if ((fabsf(player2->actor.posRot.pos.z) < 80.0f) &&
                    (fabsf(player2->actor.posRot.pos.x - 340.0f) < 60.0f)) {

                    this->introState = INTRO_START;
                    func_80064520(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 8);
                    this->introCamera = Gameplay_CreateSubCamera(globalCtx);
                    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                    Gameplay_ChangeCameraStatus(globalCtx, this->introCamera, 7);
                    player2->actor.posRot.pos.x = 380.0f;
                    player2->actor.posRot.pos.y = 100.0f;
                    player2->actor.posRot.pos.z = 0.0f;
                    player2->actor.shape.rot.y = player2->actor.posRot.rot.y = -0x4000;
                    player2->actor.speedXZ = 0.0f;
                    this->cameraEye.x = player2->actor.posRot.pos.x - 70.0f;
                    this->cameraEye.y = player2->actor.posRot.pos.y + 40.0f;
                    this->cameraEye.z = player2->actor.posRot.pos.z + 70.0f;
                    this->cameraAt.x = player2->actor.posRot.pos.x;
                    this->cameraAt.y = player2->actor.posRot.pos.y + 30.0f;
                    this->cameraAt.z = player2->actor.posRot.pos.z;
                    this->cameraNextEye.x = player2->actor.posRot.pos.x - 50.0f + 18.0f;
                    this->cameraNextEye.y = player2->actor.posRot.pos.y + 40;
                    this->cameraNextEye.z = player2->actor.posRot.pos.z + 50.0f - 18.0f;
                    this->cameraNextAt.x = player2->actor.posRot.pos.x;
                    this->cameraNextAt.y = player2->actor.posRot.pos.y + 50.0f;
                    this->cameraNextAt.z = player2->actor.posRot.pos.z;
                    BossFd_SetCameraSpeed(this, 1.0f);
                    this->cameraAtMaxVel.x = this->cameraAtMaxVel.y = this->cameraAtMaxVel.z = 0.05f;
                    this->cameraEyeMaxVel.x = this->cameraEyeMaxVel.y = this->cameraEyeMaxVel.z = 0.05f;
                    this->timers[0] = 0;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraAccel = 0.0f;
                    if (gSaveContext.eventChkInf[7] & 8) {
                        this->introState = INTRO_EMERGE;
                        this->cameraNextEye.x = player2->actor.posRot.pos.x + 100.0f + 300.0f - 600.0f;
                        this->cameraNextEye.y = player2->actor.posRot.pos.y + 100.0f - 50.0f;
                        this->cameraNextEye.z = player2->actor.posRot.pos.z + 200.0f - 150.0f;
                        this->cameraNextAt.x = 0.0f;
                        this->cameraNextAt.y = 120.0f;
                        this->cameraNextAt.z = 0.0f;
                        BossFd_SetCameraSpeed(this, 0.5f);
                        this->cameraEyeMaxVel.x = this->cameraEyeMaxVel.y = this->cameraEyeMaxVel.z = 0.1f;
                        this->cameraAtMaxVel.x = this->cameraAtMaxVel.y = this->cameraAtMaxVel.z = 0.1f;
                        this->cameraAccel = 0.005f;
                        this->timers[0] = 0;
                        this->holeIndex = 1;
                        this->targetPosition.x = sHoleLocations[this->holeIndex].x;
                        this->targetPosition.y = sHoleLocations[this->holeIndex].y - 200.0f;
                        this->targetPosition.z = sHoleLocations[this->holeIndex].z;
                        this->timers[0] = 50;
                        this->actionState = FD_EMERGE;
                        this->actor.posRot.rot.x = 0x4000;
                        this->movementTimer = 0;
                        this->timers[3] = 250;
                        this->timers[2] = 470;
                        this->flightSpeed = 5.0f;
                    }
                }
                break;
            case INTRO_START:
                if (this->timers[0] == 0) {
                    this->cameraAccel = 0.0010000002f; // I can't find a reasonable way to get this from a calculation
                    this->timers[0] = 100;
                    this->introState = INTRO_LOOK_LINK;
                }
            case INTRO_LOOK_LINK:
                player2->actor.posRot.pos.x = 380.0f;
                player2->actor.posRot.pos.y = 100.0f;
                player2->actor.posRot.pos.z = 0.0f;
                player2->actor.speedXZ = 0.0f;
                player2->actor.shape.rot.y = player2->actor.posRot.rot.y = -0x4000;
                if (this->timers[0] == 50) {
                    this->fogMode = 1;
                }
                if (this->timers[0] < 50) {
                    Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                    this->cameraYMod = Math_Coss(this->movementTimer * 0x8000) * this->cameraShake;
                    Math_SmoothScaleMaxF(&this->cameraShake, 2.0f, 1.0f, 0.8 * 0.01f);
                }
                if (this->timers[0] == 40) {
                    func_8002DF54(globalCtx, &this->actor, 0x13);
                }
                if (this->timers[0] == 0) {
                    this->introState = INTRO_LOOK_GROUND;
                    this->cameraNextAt.y = player2->actor.posRot.pos.y + 10.0f;
                    this->cameraAtMaxVel.y = 0.2f;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraAccel = 0.02f;
                    this->timers[0] = 70;
                    this->movementTimer = 0;
                }
                break;
            case INTRO_LOOK_GROUND:
                this->cameraYMod = Math_Coss(this->movementTimer * 0x8000) * this->cameraShake;
                Math_SmoothScaleMaxF(&this->cameraShake, 2.0f, 1.0f, 0.8 * 0.01f);
                Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
                if (this->timers[0] == 0) {
                    this->introState = INTRO_COLLAPSE;
                    this->cameraNextEye.x = player2->actor.posRot.pos.x + 100.0f + 300.0f;
                    this->cameraNextEye.y = player2->actor.posRot.pos.y + 100.0f;
                    this->cameraNextEye.z = player2->actor.posRot.pos.z + 200.0f;
                    this->cameraNextAt.x = player2->actor.posRot.pos.x;
                    this->cameraNextAt.y = player2->actor.posRot.pos.y - 150.0f;
                    this->cameraNextAt.z = player2->actor.posRot.pos.z - 50.0f;
                    BossFd_SetCameraSpeed(this, 0.1f);
                    this->timers[0] = 170;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraAccel = 0.0f;
                    func_8002DF54(globalCtx, &this->actor, 0x14);
                }
                break;
            case INTRO_COLLAPSE:
                this->cameraAccel = 0.005f;
                this->cameraYMod = Math_Coss(this->movementTimer * 0x8000) * this->cameraShake;
                Math_SmoothScaleMaxF(&this->cameraShake, 2.0f, 1.0f, 0.8 * 0.01f);
                Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
                if (this->timers[0] == 100) {
                    this->collapsePlatform = 1;
                }
                if (this->timers[0] == 0) {
                    this->introState = INTRO_EMERGE;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraNextEye.x = ((player2->actor.posRot.pos.x + 100.0f) + 300.0f) - 600.0f;
                    this->cameraNextEye.y = (player2->actor.posRot.pos.y + 100.0f) - 50.0f;
                    this->cameraNextEye.z = (player2->actor.posRot.pos.z + 200.0f) - 150.0f;
                    this->cameraNextAt.x = 0.0f;
                    this->cameraNextAt.y = 120.0f;
                    this->cameraNextAt.z = 0.0f;
                    BossFd_SetCameraSpeed(this, 0.5f);
                    this->cameraAtMaxVel.x = this->cameraAtMaxVel.y = this->cameraAtMaxVel.z = 0.1f;
                    this->cameraEyeMaxVel.x = this->cameraEyeMaxVel.y = this->cameraEyeMaxVel.z = 0.1f;
                    this->cameraAccel = 0.005f;
                    this->timers[0] = 0;
                    this->holeIndex = 1;
                    this->targetPosition.x = sHoleLocations[this->holeIndex].x;
                    this->targetPosition.y = sHoleLocations[this->holeIndex].y - 200.0f;
                    this->targetPosition.z = sHoleLocations[this->holeIndex].z;
                    this->timers[0] = 50;
                    this->actionState = FD_EMERGE;
                    this->actor.posRot.rot.x = 0x4000;
                    this->movementTimer = 0;
                    this->timers[3] = 250;
                    this->timers[2] = 470;
                    this->flightSpeed = 5.0f;
                }
                break;
            case INTRO_EMERGE:
                osSyncPrintf("WAY_SPD X = %f\n", this->cameraAtVel.x);
                osSyncPrintf("WAY_SPD Y = %f\n", this->cameraAtVel.y);
                osSyncPrintf("WAY_SPD Z = %f\n", this->cameraAtVel.z);
                if ((this->timers[3] > 190) && !(gSaveContext.eventChkInf[7] & 8)) {
                    Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                }
                if (this->timers[3] == 190) {
                    this->cameraAtMaxVel.x = this->cameraAtMaxVel.y = this->cameraAtMaxVel.z = 0.05f;
                    this->collapsePlatform = 2;
                    func_8002DF54(globalCtx, &this->actor, 1);
                }
                if (this->actor.posRot.pos.y > 120.0f) {
                    this->cameraNextAt = this->actor.posRot.pos;
                    this->cameraAtVel.x = 190.0f;
                    this->cameraAtVel.y = 85.56f;
                    this->cameraAtVel.z = 25.0f;
                } else {
                    Math_SmoothScaleMaxF(&this->cameraShake, 2.0f, 1.0f, 0.1 * 0.08f);
                    this->cameraYMod = Math_Coss(this->movementTimer * 0x8000) * this->cameraShake;
                }
                if (this->timers[3] == 160) {
                    Audio_SetBGM(0x6B);
                }
                if ((this->timers[3] == 130) && !(gSaveContext.eventChkInf[7] & 8)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(&D_0600D700),
                                           0xA0, 0xB4, 0x80, 0x28);
                }
                if (this->timers[3] <= 100) {
                    this->cameraEyeVel.x = this->cameraEyeVel.y = this->cameraEyeVel.z = 2.0f;
                    this->cameraNextEye.x = player2->actor.posRot.pos.x + 50.0f;
                    this->cameraNextEye.y = player2->actor.posRot.pos.y + 50.0f;
                    this->cameraNextEye.z = player2->actor.posRot.pos.z + 50.0f;
                }
                if (this->actionState == FD_FLY_HOLE) {
                    switch (this->introFlyState) {
                        case INTRO_FLY_EMERGE: // Volvagia emerges
                            this->timers[5] = 100;
                            this->introFlyState = INTRO_FLY_HOLE;
                        case INTRO_FLY_HOLE: // Volvagia flies above his hole
                            if (this->timers[5] == 0) {
                                this->introFlyState = INTRO_FLY_CAMERA;
                                this->timers[5] = 75;
                            }
                            break;
                        case INTRO_FLY_CAMERA: // Volvagia flies toward the camera
                            this->targetPosition = this->cameraEye;
                            if (this->timers[5] == 0) {
                                this->timers[0] = 0;
                                this->holeIndex = 7;
                                this->targetPosition.x = sHoleLocations[this->holeIndex].x;
                                this->targetPosition.y = sHoleLocations[this->holeIndex].y + 200.0f + 50.0f;
                                this->targetPosition.z = sHoleLocations[this->holeIndex].z;
                                this->introFlyState = INTRO_FLY_RETRAT;
                            }
                            if (this->timers[5] == 30) {
                                this->roarTimer = 40;
                                this->fireBreathTimer = 20;
                            }
                        case INTRO_FLY_RETRAT: // Volvagia returns to his hole
                            break;
                    }
                }
                osSyncPrintf("this->timer[2] = %d\n", this->timers[2]);
                osSyncPrintf("this->timer[5] = %d\n", this->timers[5]);
                if (this->timers[2] == 0) {
                    camera->eye = this->cameraEye;
                    camera->eyeNext = this->cameraEye;
                    camera->at = this->cameraAt;
                    func_800C08AC(globalCtx, this->introCamera, 0);
                    this->introState = this->introFlyState = this->introCamera = NO_CUTSCENE;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 7);
                    this->actionFunc = BossFd_Wait;
                    this->handoffSignal = 100;
                    gSaveContext.eventChkInf[7] |= 8;
                }
                break;
        }
        BossFd_UpdateCamera(this, globalCtx);
    } else {
        this->flightSpeed = 5.0f;
    }

    /***********************************************************************************************
     *                              Attacks and Death Cutscene                                     *
     ***********************************************************************************************/
    switch (this->actionState) {
        case FD_FLY_MAIN:
            sp1CF = true;
            if (this->timers[0] == 0) {
                if (this->actor.colChkInfo.health == 0) {
                    this->actionState = FD_DEATH_START;
                    this->timers[0] = 0;
                    this->timers[1] = 100;
                } else {
                    if (this->introState != NO_CUTSCENE) {
                        this->holeIndex = 6;
                    } else {
                        do {
                            temp_rand = Math_Rand_ZeroFloat(8.9f);
                        } while (temp_rand == this->holeIndex);
                        this->holeIndex = temp_rand;
                    }
                    this->targetPosition.x = sHoleLocations[this->holeIndex].x;
                    this->targetPosition.y = (sHoleLocations[this->holeIndex].y + 200.0f) + 50.0f;
                    this->targetPosition.z = sHoleLocations[this->holeIndex].z;
                    this->turnRate = 0.0f;
                    this->maxTurnRate = 1000.0f;
                    if (this->introState != NO_CUTSCENE) {
                        this->timers[0] = 10050;
                    } else {
                        this->timers[0] = 20;
                    }
                    this->flightWobbleAmplitude = 100.0f;
                    this->actionState = FD_FLY_HOLE;

                    if (this->startAttack) {
                        this->startAttack = false;
                        this->flightCount++;
                        if (this->flightCount & 1) {
                            this->actionState = FD_FLY_CHASE;
                            this->timers[0] = 300;
                            this->maxTurnRate = 900.0f;
                            this->targetLinkYOffset = 300.0f;
                            this->unk_234 = this->unk_236 = 0;
                        } else {
                            this->actionState = FD_FLY_CEILING;
                        }
                    }
                }
            }
            break;
        case FD_FLY_HOLE:
            if ((this->timers[0] == 0) && (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 100.0f)) {
                this->actionState = FD_BURROW;
                this->targetPosition.y = sHoleLocations[this->holeIndex].y - 70.0f;
                this->maxTurnRate = 10000.0f;
                this->flightWobbleAmplitude = 0.0f;
                this->timers[0] = 150;
                this->roarTimer = 40;
                this->holePosition.x = this->targetPosition.x;
                this->holePosition.z = this->targetPosition.z;
            }
            break;
        case FD_BURROW:
            sp1CF = true;
            if (this->timers[0] == 0) {
                this->actionFunc = BossFd_Wait;
                this->handoffSignal = 100;
            }
            break;
        case FD_EMERGE:
            if ((this->timers[0] == 0) && (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 100.0f)) {
                this->actor.posRot.pos = this->targetPosition;
                this->actionState = FD_FLY_MAIN;
                this->actor.posRot.rot.x = 0x4000;
                this->targetPosition.y = sHoleLocations[this->holeIndex].y + 200.0f;
                this->timers[4] = 80;
                this->maxTurnRate = 1000.0f;
                this->flightWobbleAmplitude = 0.0f;
                this->holePosition.x = this->targetPosition.x;
                this->holePosition.z = this->targetPosition.z;

                func_80033E1C(globalCtx, 1, 0x50, 0x5000);
                if (this->introState != NO_CUTSCENE) {
                    this->timers[0] = 50;
                } else { // This isn't a fake match. The game actually does this.
                    this->timers[0] = 50;
                }
            }
            break;
        case FD_FLY_CEILING:
            this->flightSpeed = 8;
            this->targetPosition.x = 0.0f;
            this->targetPosition.y = 700.0f;
            this->targetPosition.z = -300.0f;
            this->flightWobbleAmplitude = 200.0f;
            this->maxTurnRate = 3000.0f;
            if (this->actor.posRot.pos.y > 700.0f) {
                this->actionState = FD_DROP_ROCKS;
                this->timers[0] = 25;
                this->timers[2] = 150;
                this->ceilingTargetIndex = 0;
            }
            break;
        case FD_DROP_ROCKS:
            this->flightSpeed = 8;
            this->flightWobbleAmplitude = 200.0f;
            this->maxTurnRate = 10000.0f;
            this->targetPosition.x = sCeilingTargets[this->ceilingTargetIndex].x;
            this->targetPosition.y = sCeilingTargets[this->ceilingTargetIndex].y + 900.0f;
            this->targetPosition.z = sCeilingTargets[this->ceilingTargetIndex].z;
            if (this->timers[0] == 0) {
                this->timers[0] = 25;
                this->ceilingTargetIndex++;
                if (this->ceilingTargetIndex >= 6) {
                    this->ceilingTargetIndex = 0;
                }
            }
            func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 2);
            if (this->timers[1] == 0) {
                osSyncPrintf("BGCHECKKKKKKKKKKKKKKKKKKKKKKK\n");
                if (this->actor.bgCheckFlags & 0x10) {
                    this->ceilingBounce = -18384.0f;
                    this->timers[1] = 10;
                    Audio_PlaySoundGeneral(NA_SE_EV_EXPLOSION, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    func_80033E1C(globalCtx, 3, 0xA, 0x7530);
                    this->rockTimer = 300;
                }
            } else {
                pitchToTarget = this->ceilingBounce;
                Math_SmoothDownscaleMaxF(&this->ceilingBounce, 1.0f, 1000.0f);
            }
            if (this->timers[2] == 0) {
                this->actionState = FD_FLY_MAIN;
                this->timers[0] = 0;
                this->startAttack = false;
            }
            break;
        case FD_FLY_CHASE:
            this->actor.flags |= 0x1000000;
            temp_y = Math_Sins(this->movementTimer * 2396.0f) * 30.0f;
            temp_y = temp_y + this->targetLinkYOffset;
            this->targetPosition.x = player->actor.posRot.pos.x;
            this->targetPosition.y = player->actor.posRot.pos.y + temp_y + 30.0f;
            this->targetPosition.z = player->actor.posRot.pos.z;
            this->flightWobbleAmplitude = 0.0f;
            if (((this->timers[0] % 64) == 0) && (this->timers[0] < 450)) {
                this->roarTimer = 40;
                if (BossFd_IsFacingLink(this)) {
                    this->fireBreathTimer = 20;
                }
            }
            if ((this->damageFlashTimer != 0) || (this->timers[0] == 0) || (player->actor.posRot.pos.y < 70.0f)) {
                this->actionState = FD_FLY_MAIN;
                this->timers[0] = 0;
                this->startAttack = false;
            } else {
                Math_SmoothScaleMaxF(&this->targetLinkYOffset, 50.0, 1.0f, 2.0f);
            }
            break;
        case FD_DEATH_START:
            if (sqrtf(SQ(dx) + SQ(dz)) < 50.0f) {
                this->timers[0] = 0;
            }
            if (this->timers[0] == 0) {
                this->timers[0] = (s16)Math_Rand_ZeroFloat(10.0f) + 10;
                while (1) {
                    this->targetPosition.x = Math_Rand_CenteredFloat(200.0f);
                    this->targetPosition.y = 390.0f;
                    this->targetPosition.z = Math_Rand_CenteredFloat(200.0f);
                    temp_x = this->targetPosition.x - this->actor.posRot.pos.x;
                    temp_z = this->targetPosition.z - this->actor.posRot.pos.z;
                    if (sqrtf(SQ(temp_x) + SQ(temp_z)) > 100.0f) {
                        break;
                    }
                };
            }
            this->flightWobbleAmplitude = 200.0f;
            this->flightWobbleRate = 1000.0f;
            this->maxTurnRate = 10000.0f;
            Math_SmoothScaleMaxF(&this->bodyPulse, 0.3f, 1.0f, 0.05f);
            if (this->timers[1] == 0) {
                this->actionState = FD_SKIN_BURN;
                this->timers[0] = 30;
            }
            break;
        case FD_SKIN_BURN:
            this->targetPosition.x = 0.0f;
            this->targetPosition.y = 390.0f;
            this->targetPosition.z = 0.0f;
            this->flightWobbleAmplitude = 200.0f;
            this->flightWobbleRate = 1000.0f;
            this->maxTurnRate = 2000.0f;
            Math_SmoothScaleMaxF(&this->bodyPulse, 0.3f, 1.0f, 0.05f);
            if ((this->timers[0] == 0) && ((this->movementTimer % 4) == 0)) {
                if (this->skinSegments != 0) {
                    this->skinSegments--;
                    if (this->skinSegments == 0) {
                        Audio_SetBGM(0x21);
                    }
                } else {
                    this->actionState = FD_BONES_FALL;
                    this->timers[0] = 30;
                }
            }
            if ((this->movementTimer % 32) == 0) {
                this->roarTimer = 40;
            }

            if (this->skinSegments != 0) {
                Vec3f sp188;
                Vec3f sp17C = { 0.0f, 0.0f, 0.0f };
                Vec3f sp170;
                Vec3f sp164 = { 0.0f, 0.03f, 0.0f };
                Vec3f sp158;
                f32 pad154;
                s16 temp_rand2;
                s16 sp150;

                if (this->fogMode == 0) {
                    globalCtx->envCtx.unk_D8 = 0;
                }
                this->fogMode = 0xA;

                sp150 = 1;
                if (this->movementTimer & 0x1C) {
                    Audio_PlaySoundGeneral(NA_SE_EN_VALVAISA_BURN - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                }
                for (i1 = 0; i1 < sp150; i1++) {
                    if (sp150) { // Needed for matching
                        temp_rand2 = Math_Rand_ZeroFloat(99.9f);

                        sp188.x = this->bodySegsPos[temp_rand2].x;
                        sp188.y = this->bodySegsPos[temp_rand2].y - 10.0f;
                        sp188.z = this->bodySegsPos[temp_rand2].z;

                        sp164.y = 0.03f;

                        EffectSsKFire_Spawn(globalCtx, &sp188, &sp17C, &sp164, (s16)Math_Rand_ZeroFloat(20.0f) + 40,
                                            0x64);

                        for (i2 = 0; i2 < 15; i2++) {
                            sp170.x = Math_Rand_CenteredFloat(20.0f);
                            sp170.y = Math_Rand_CenteredFloat(20.0f);
                            sp170.z = Math_Rand_CenteredFloat(20.0f);

                            sp158.y = 0.4f;
                            sp158.x = Math_Rand_CenteredFloat(0.5f);
                            sp158.z = Math_Rand_CenteredFloat(0.5f);

                            BossFd_SpawnEmber(this->particles, &sp188, &sp170, &sp158,
                                              (s16)Math_Rand_ZeroFloat(3.0f) + 8);
                        }
                    }
                }
            }
            break;
        case FD_BONES_FALL:
            this->stopFlag = true;
            this->fogMode = 3;
            if (this->timers[0] < 18) {
                this->bodyFallApart[this->timers[0]] = 1;
            }
            if (this->timers[0] == 0) {
                this->actionState = FD_SKULL_PAUSE;
                this->timers[0] = 15;
                this->ceilingTargetIndex = 0;
                player->actor.posRot.pos.y = 90.0f;
                player->actor.posRot.pos.x = 40.0f;
                player->actor.posRot.pos.z = 150.0f;
            }
            break;
        case FD_SKULL_PAUSE:
            if (this->timers[0] == 0) {
                this->actionState = FD_SKULL_FALL;
                this->timers[0] = 20;
                this->stopFlag = false;
            }
            break;
        case FD_SKULL_FALL:
            this->turnRate = this->maxTurnRate = this->actor.speedXZ = this->flightSpeed = 0;

            if (this->timers[0] == 1) {
                this->actor.posRot.pos.x = 0;
                this->actor.posRot.pos.y = 900.0f;
                this->actor.posRot.pos.z = 150.0f;
                this->actor.posRot.rot.x = this->actor.posRot.rot.y = 0;
                this->actor.shape.rot.z = 0x1200;
                this->actor.velocity.x = 0;
                this->actor.velocity.z = 0;
            }
            if (this->timers[0] == 0) {
                if (this->actor.posRot.pos.y <= 110.0f) {
                    this->actor.posRot.pos.y = 110.0f;
                    this->actor.velocity.y = 0;
                    if (this->ceilingTargetIndex == 0) {
                        this->ceilingTargetIndex++;
                        this->timers[1] = 60;
                        this->deathCameraShakeTimer = 20;
                        Audio_PlaySoundGeneral(NA_SE_EN_VALVAISA_LAND2, &this->actor.projectedPos, 4, &D_801333E0,
                                               &D_801333E0, &D_801333E8);
                        func_8002DF54(globalCtx, &this->actor, 5);
                        for (i1 = 0; i1 < 15; i1++) {
                            Vec3f sp144 = { 0.0f, 0.0f, 0.0f };
                            Vec3f sp138 = { 0.0f, 0.0f, 0.0f };
                            Vec3f sp12C;

                            sp144.x = Math_Rand_CenteredFloat(8.0f);
                            sp144.y = Math_Rand_ZeroFloat(1.0f);
                            sp144.z = Math_Rand_CenteredFloat(8.0f);

                            sp138.y = 0.3f;

                            sp12C.x = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.x;
                            sp12C.y = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.y;
                            sp12C.z = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.z;
                            BossFd_SpawnDust(this->particles, &sp12C, &sp144, &sp138,
                                             Math_Rand_ZeroFloat(100.0f) + 300);
                        }
                    }
                } else {
                    this->actor.velocity.y -= 1.0f;
                }
            } else {
                this->actor.velocity.y = 0;
            }
            if (this->timers[1] == 1) {
                this->actionState = FD_SKULL_BURN;
                this->timers[0] = 70;
            }
            break;
        case FD_SKULL_BURN:
            this->actor.velocity.y = 0.0f;
            this->actor.posRot.pos.y = 110.0f;
            this->turnRate = this->maxTurnRate = this->actor.speedXZ = this->flightSpeed = 0.0f;

            if ((50 > this->timers[0]) && (this->timers[0] > 0)) {
                Vec3f sp120;
                Vec3f sp114 = { 0.0f, 0.0f, 0.0f };
                Vec3f sp108 = { 0.0f, 0.03f, 0.0f };

                Audio_PlaySoundGeneral(NA_SE_EN_GOMA_LAST - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);

                sp120.x = Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.x;
                sp120.y = (Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.y) - 10.0f;
                sp120.z = (Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.z) + 5.0f;

                sp108.y = 0.03f;

                EffectSsKFire_Spawn(globalCtx, &sp120, &sp114, &sp108, (s16)Math_Rand_ZeroFloat(15.0f) + 30, 0);
            }
            if (this->timers[0] < 20) {
                Math_SmoothDownscaleMaxF(&this->actor.scale.x, 1.0f, 0.0025f);
                Actor_SetScale(&this->actor, this->actor.scale.x);
            }
            if (this->timers[0] == 0) {
                this->actionFunc = BossFd_Wait;
                this->actor.posRot.pos.y -= 1000.0f;
            }
            if (this->timers[0] == 7) {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            }
            break;
        case FD_WAIT_INTRO:
            break;
    }

    /*************************************************************************************************
     *                                 Body segments and Mane                                        *
     *************************************************************************************************/

    if (!this->stopFlag) {
        s16 i4;
        Vec3f spE0[3];
        Vec3f spBC[3];
        f32 phi_f20;
        f32 padB4;
        f32 padB0;
        f32 padAC;

        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, angleToTarget, 0xA, this->turnRate);

        if (((this->actionState == FD_FLY_CHASE) || (this->actionState == FD_FLY_UNUSED)) &&
            (this->actor.posRot.pos.y < 110.0f) && (pitchToTarget < 0)) {
            pitchToTarget = 0;
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 110.0f, 1.0f, 5.0f);
        }

        Math_SmoothScaleMaxS(&this->actor.posRot.rot.x, pitchToTarget, 0xA, this->turnRate);
        Math_SmoothScaleMaxF(&this->turnRate, this->maxTurnRate, 1.0f, 20000.0f);
        Math_SmoothScaleMaxF(&this->actor.speedXZ, this->flightSpeed, 1.0f, 0.1f);
        if (this->actionState < FD_SKULL_FALL) {
            func_8002D908(&this->actor);
        }
        func_8002D7EC(&this->actor);

        this->leadBodySeg++;
        if (this->leadBodySeg >= 100) {
            this->leadBodySeg = 0;
        }
        i4 = this->leadBodySeg;
        this->bodySegsPos[i4].x = this->actor.posRot.pos.x;
        this->bodySegsPos[i4].y = this->actor.posRot.pos.y;
        this->bodySegsPos[i4].z = this->actor.posRot.pos.z;
        this->bodySegsRot[i4].x = (this->actor.posRot.rot.x / (f32)0x8000) * M_PI;
        this->bodySegsRot[i4].y = (this->actor.posRot.rot.y / (f32)0x8000) * M_PI;
        this->bodySegsRot[i4].z = (this->actor.posRot.rot.z / (f32)0x8000) * M_PI;

        this->leadManeSeg++;
        if (this->leadManeSeg >= 30) {
            this->leadManeSeg = 0;
        }
        i4 = this->leadManeSeg;
        this->centerMane.scale[i4] = (Math_Sins(this->movementTimer * 5596.0f) * 0.3f) + 1.0f;
        this->rightMane.scale[i4] = (Math_Sins(this->movementTimer * 5496.0f) * 0.3f) + 1.0f;
        this->leftMane.scale[i4] = (Math_Coss(this->movementTimer * 5696.0f) * 0.3f) + 1.0f;
        this->centerMane.pos[i4] = this->centerMane.head;
        this->fireManeRot[i4].x = (this->actor.posRot.rot.x / (f32)0x8000) * M_PI;
        this->fireManeRot[i4].y = (this->actor.posRot.rot.y / (f32)0x8000) * M_PI;
        this->fireManeRot[i4].z = (this->actor.posRot.rot.z / (f32)0x8000) * M_PI;
        this->rightMane.pos[i4] = this->rightMane.head;
        this->leftMane.pos[i4] = this->leftMane.head;

        if ((0x3000 > this->actor.posRot.rot.x) && (this->actor.posRot.rot.x > -0x3000)) {
            Math_SmoothScaleMaxF(&this->flattenMane, 1.0f, 1.0f, 0.05f);
        } else {
            Math_SmoothScaleMaxF(&this->flattenMane, 0.5f, 1.0f, 0.05f);
        }

        if (this->actionState < FD_SKULL_FALL) {
            if ((this->actor.pos4.y < 90.0f) && (90.0f <= this->actor.posRot.pos.y)) {
                this->timers[4] = 80;
                func_80033E1C(globalCtx, 1, 80, 0x5000);
                this->roarTimer = 40;
                this->maneEmbersTimer = 30;
                this->holeSplashTimer = 10;
            }
            if ((this->actor.pos4.y > 90.0f) && (90.0f >= this->actor.posRot.pos.y)) {
                this->timers[4] = 80;
                func_80033E1C(globalCtx, 1, 80, 0x5000);
                this->maneEmbersTimer = 30;
                this->holeSplashTimer = 10;
            }
        }

        if (!sp1CF) {
            spE0[0].x = spE0[0].y = Math_Sins(this->movementTimer * 1500.0f) * 3000.0f;
            spE0[1].x = Math_Sins(this->movementTimer * 2000.0f) * 4000.0f;
            spE0[1].y = Math_Sins(this->movementTimer * 2200.0f) * 4000.0f;
            spE0[2].x = Math_Sins(this->movementTimer * 1700.0f) * 2000.0f;
            spE0[2].y = Math_Sins(this->movementTimer * 1900.0f) * 2000.0f;
            spBC[0].x = spBC[0].y = Math_Sins(this->movementTimer * 1500.0f) * -3000.0f;
            spBC[1].x = Math_Sins(this->movementTimer * 2200.0f) * -4000.0f;
            spBC[1].y = Math_Sins(this->movementTimer * 2000.0f) * -4000.0f;
            spBC[2].x = Math_Sins(this->movementTimer * 1900.0f) * -2000.0f;
            spBC[2].y = Math_Sins(this->movementTimer * 1700.0f) * -2000.0f;

            for (i3 = 0; i3 < 3; i3++) {
                Math_SmoothScaleMaxF(&this->rightArmRot[i3].x, spE0[i3].x, 1.0f, 1000.0f);
                Math_SmoothScaleMaxF(&this->rightArmRot[i3].y, spE0[i3].y, 1.0f, 1000.0f);
                Math_SmoothScaleMaxF(&this->leftArmRot[i3].x, spBC[i3].x, 1.0f, 1000.0f);
                Math_SmoothScaleMaxF(&this->leftArmRot[i3].y, spBC[i3].y, 1.0f, 1000.0f);
            }
        } else {
            for (i2 = 0; i2 < 3; i2++) {
                phi_f20 = 0.0f;
                Math_SmoothDownscaleMaxF(&this->rightArmRot[i2].y, 0.1f, 100.0f);
                Math_SmoothDownscaleMaxF(&this->leftArmRot[i2].y, 0.1f, 100.0f);
                if (i2 == 0) {
                    phi_f20 = -3000.0f;
                }
                Math_SmoothScaleMaxF(&this->rightArmRot[i2].x, phi_f20, 0.1f, 100.0f);
                Math_SmoothScaleMaxF(&this->leftArmRot[i2].x, -phi_f20, 0.1f, 100.0f);
            }
        }
    }
}
#else

Vec3f sHoleLocations[] = {
    { 0.0f, 90.0f, -243.0f },    { 0.0f, 90.0f, 0.0f },    { 0.0f, 90.0f, 243.0f },
    { -243.0f, 90.0f, -243.0f }, { -243.0f, 90.0f, 0.0f }, { -243.0f, 90.0f, 243.0f },
    { 243.0f, 90.0f, -243.0f },  { 243.0f, 90.0f, 0.0f },  { 243.0f, 90.0f, 243.0f },
};

Vec3f sCeilingTargets[] = {
    { 0.0f, 900.0f, -243.0f }, { 243.0, 900.0f, -100.0f },  { 243.0f, 900.0f, 100.0f },
    { 0.0f, 900.0f, 243.0f },  { -243.0f, 900.0f, 100.0f }, { -243.0, 900.0f, -100.0f },
};

Vec3f D_808D19E0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D19EC = { 0.0f, 0.03f, 0.0f };

Vec3f D_808D19F8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1A04 = { 0.0f, 0.0f, 0.0f };

Vec3f D_808D1A10 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1A1C = { 0.0f, 0.03f, 0.0f };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/BossFd_Fly.s")
#endif

void BossFd_Wait(BossFd* this, GlobalContext* globalCtx) {
    u8 temp_rand;

    if (this->handoffSignal == 1) { // Set by BossFd2
        this->handoffSignal = 0;
        BossFd_SetupFly(this, globalCtx);
        do {
            temp_rand = Math_Rand_ZeroFloat(8.9f);
        } while (temp_rand == this->holeIndex);
        this->holeIndex = temp_rand;
        if (1) {} // Needed for matching
        this->targetPosition.x = sHoleLocations[this->holeIndex].x;
        this->targetPosition.y = sHoleLocations[this->holeIndex].y - 200.0f;
        this->targetPosition.z = sHoleLocations[this->holeIndex].z;
        this->actor.posRot.pos = this->targetPosition;
        this->timers[0] = 10;
        this->actionState = FD_EMERGE;
        this->startAttack = true;
    }
    if (this->handoffSignal == 2) {
        this->handoffSignal = 0;
        BossFd_SetupFly(this, globalCtx);
        this->holeIndex = 1;
        this->targetPosition.x = sHoleLocations[1].x;
        this->targetPosition.y = sHoleLocations[1].y - 200.0f;
        this->targetPosition.z = sHoleLocations[1].z;
        this->actor.posRot.pos = this->targetPosition;
        this->timers[0] = 10;
        this->actionState = FD_EMERGE;
    }
}

static Vec3f sFireAudioVec = { 0.0f, 0.0f, 50.0f };

void BossFd_Effects(BossFd* this, GlobalContext* globalCtx) {
    static Color_RGBA8 colorYellow = { 255, 255, 0, 255 };
    static Color_RGBA8 colorRed = { 255, 10, 0, 255 };
    s16 breathOpacity = 0;
    f32 jawAngle;
    f32 jawSpeed;
    f32 emberRate;
    f32 emberSpeed;
    s16 eyeStates[] = { 0, 1, 2, 2, 1 };
    f32 temp_x;
    f32 temp_z;
    s16 i;

    if (this->fogMode == 0) {
        globalCtx->envCtx.unk_BF = 0;
        globalCtx->envCtx.unk_D8 = 0.5f + 0.5f * Math_Sins(this->varianceTimer * 0x500);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 1;
        globalCtx->envCtx.unk_BE = 0;
    } else if (this->fogMode == 3) {
        globalCtx->envCtx.unk_BF = 0;
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 2;
        globalCtx->envCtx.unk_BE = 0;
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.05f);
    } else if (this->fogMode == 2) {
        this->fogMode--;
        globalCtx->envCtx.unk_BF = 0;
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 0.55f + 0.05f * Math_Sins(this->varianceTimer * 0x3E00), 1.0f,
                             0.15f);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 3;
        globalCtx->envCtx.unk_BE = 0;
    } else if (this->fogMode == 10) {
        this->fogMode = 1;
        globalCtx->envCtx.unk_BF = 0;
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 0.21f + 0.07f * Math_Sins(this->varianceTimer * 0xC00), 1.0f,
                             0.05f);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 3;
        globalCtx->envCtx.unk_BE = 0;
    } else if (this->fogMode == 1) {
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 0.0f, 1.0f, 0.03f);
        if (globalCtx->envCtx.unk_D8 <= 0.01f) {
            this->fogMode = 0;
        }
    }

    if (this->maneEmbersTimer != 0) {
        this->maneEmbersTimer--;
        emberSpeed = emberRate = 20.0f;
    } else {
        emberRate = 3.0f;
        emberSpeed = 5.0f;
    }
    Math_SmoothScaleMaxF(&this->maneEmberRate, emberRate, 1.0f, 0.1f);
    Math_SmoothScaleMaxF(&this->maneEmberSpeed, emberSpeed, 1.0f, 0.5f);

    if (((this->varianceTimer % 8) == 0) && (Math_Rand_ZeroOne() < 0.3f)) {
        this->blinkTimer = 4;
    }
    this->eyeState = eyeStates[this->blinkTimer];
    DECR(this->blinkTimer);

    if (this->roarTimer != 0) {
        if (this->roarTimer == 37) {
            Audio_PlaySoundGeneral(NA_SE_EN_VALVAISA_ROAR, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
        jawAngle = 6000.0f;
        jawSpeed = 1300.0f;
    } else {
        jawAngle = (this->varianceTimer & 0x10) ? 0.0f : 1000.0f;
        jawSpeed = 500.0f;
    }
    Math_SmoothScaleMaxF(&this->jawOpening, jawAngle, 0.3f, jawSpeed);
    DECR(this->roarTimer);

    if (this->timers[4] != 0) {
        Vec3f spawnVel1;
        Vec3f spawnAccel1;
        Vec3f spawnPos1;
        f32 pad;

        Audio_PlaySoundGeneral(NA_SE_EN_VALVAISA_APPEAR - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                               &D_801333E0, &D_801333E8);
        if (this->holeSplashTimer != 0) {
            this->holeSplashTimer--;
            if ((this->actor.colChkInfo.health == 0) ||
                ((this->introState == INTRO_EMERGE) && (this->actor.posRot.rot.x > 0x3000))) {
                if ((u8)this->fogMode == 0) {
                    globalCtx->envCtx.unk_D8 = 0.0f;
                }
                this->fogMode = 2;
            }
            for (i = 0; i < 5; i++) {
                spawnVel1.x = Math_Rand_CenteredFloat(20.0f);
                spawnVel1.y = Math_Rand_ZeroFloat(5.0f) + 4.0f;
                spawnVel1.z = Math_Rand_CenteredFloat(20.0f);

                spawnAccel1.x = spawnAccel1.z = 0.0f;
                spawnAccel1.y = -0.3f;

                temp_x = (spawnVel1.x * 20) / 10.0f;
                temp_z = (spawnVel1.z * 20) / 10.0f;
                spawnPos1.x = temp_x + this->holePosition.x;
                spawnPos1.y = 100.0f;
                spawnPos1.z = temp_z + this->holePosition.z;

                func_8002836C(globalCtx, &spawnPos1, &spawnVel1, &spawnAccel1, &colorYellow, &colorRed,
                              (s16)Math_Rand_ZeroFloat(150.0f) + 800, 10, (s16)Math_Rand_ZeroFloat(5.0f) + 17);
            }
        } else {
            for (i = 0; i < 2; i++) {
                spawnVel1.x = Math_Rand_CenteredFloat(10.0f);
                spawnVel1.y = Math_Rand_ZeroFloat(3.0f) + 3.0f;
                spawnVel1.z = Math_Rand_CenteredFloat(10.0f);

                spawnAccel1.x = spawnAccel1.z = 0.0f;
                spawnAccel1.y = -0.3f;
                temp_x = (spawnVel1.x * 50) / 10.0f;
                temp_z = (spawnVel1.z * 50) / 10.0f;

                spawnPos1.x = temp_x + this->holePosition.x;
                spawnPos1.y = 100.0f;
                spawnPos1.z = temp_z + this->holePosition.z;

                func_8002836C(globalCtx, &spawnPos1, &spawnVel1, &spawnAccel1, &colorYellow, &colorRed, 500, 10, 20);
            }
        }

        for (i = 0; i < 8; i++) {
            spawnVel1.x = Math_Rand_CenteredFloat(20.0f);
            spawnVel1.y = Math_Rand_ZeroFloat(10.0f);
            spawnVel1.z = Math_Rand_CenteredFloat(20.0f);

            spawnAccel1.y = 0.4f;
            spawnAccel1.x = Math_Rand_CenteredFloat(0.5f);
            spawnAccel1.z = Math_Rand_CenteredFloat(0.5f);

            spawnPos1.x = Math_Rand_CenteredFloat(60.0) + this->holePosition.x;
            spawnPos1.y = Math_Rand_ZeroFloat(40.0f) + 100.0f;
            spawnPos1.z = Math_Rand_CenteredFloat(60.0) + this->holePosition.z;

            BossFd_SpawnEmber(this->particles, &spawnPos1, &spawnVel1, &spawnAccel1,
                              (s16)Math_Rand_ZeroFloat(1.5f) + 6);
        }
    }

    if ((this->fireBreathTimer != 0) && (this->fireBreathTimer < 17)) {
        breathOpacity = (this->fireBreathTimer >= 6) ? 255 : this->fireBreathTimer * 50;
    }
    if (breathOpacity != 0) {
        f32 spawnAngleX;
        f32 spawnAngleY;
        Vec3f spawnSpeed2 = { 0.0f, 0.0f, 0.0f };
        Vec3f spawnVel2;
        Vec3f spawnAccel2 = { 0.0f, 0.0f, 0.0f };
        Vec3f spawnPos2;
        this->fogMode = 2;
        spawnSpeed2.z = 30.0f;

        Audio_PlaySoundGeneral(NA_SE_EN_VALVAISA_FIRE - SFX_FLAG, &sFireAudioVec, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        spawnPos2 = this->headPos;

        spawnAngleY = (this->actor.posRot.rot.y / (f32)0x8000) * M_PI;
        spawnAngleX = (((-this->actor.posRot.rot.x) / (f32)0x8000) * M_PI) + 0.3f;
        Matrix_RotateY(spawnAngleY, MTXMODE_NEW);
        Matrix_RotateX(spawnAngleX, MTXMODE_APPLY);
        Matrix_MultVec3f(&spawnSpeed2, &spawnVel2);

        BossFd_SpawnFireBreath(this->particles, &spawnPos2, &spawnVel2, &spawnAccel2,
                               50.0f * Math_Sins(this->varianceTimer * 0x2000) + 300.0f, breathOpacity,
                               this->actor.posRot.rot.y);

        spawnPos2.x += spawnVel2.x * 0.5f;
        spawnPos2.y += spawnVel2.y * 0.5f;
        spawnPos2.z += spawnVel2.z * 0.5f;

        BossFd_SpawnFireBreath(this->particles, &spawnPos2, &spawnVel2, &spawnAccel2,
                               50.0f * Math_Sins(this->varianceTimer * 0x2000) + 300.0f, breathOpacity,
                               this->actor.posRot.rot.y);
        spawnSpeed2.x = 0.0f;
        spawnSpeed2.z = 0.0f;
        spawnSpeed2.y = 17.0f;

        for (i = 0; i < 6; i++) {
            spawnAngleY = Math_Rand_ZeroFloat(2.0f * M_PI);
            spawnAngleX = Math_Rand_ZeroFloat(2.0f * M_PI);
            Matrix_RotateY(spawnAngleY, MTXMODE_NEW);
            Matrix_RotateX(spawnAngleX, MTXMODE_APPLY);
            Matrix_MultVec3f(&spawnSpeed2, &spawnVel2);

            spawnAccel2.x = (spawnVel2.x * -10) / 100;
            spawnAccel2.y = (spawnVel2.y * -10) / 100;
            spawnAccel2.z = (spawnVel2.z * -10) / 100;

            BossFd_SpawnEmber(this->particles, &this->headPos, &spawnVel2, &spawnAccel2,
                              (s16)Math_Rand_ZeroFloat(2.0f) + 8);
        }
    }

    if ((this->actor.posRot.pos.y < 90.0f) || (700.0f < this->actor.posRot.pos.y) ||
        (this->actionFunc == BossFd_Wait)) {
        this->actor.flags &= ~1;
    } else {
        this->actor.flags |= 1;
    }
}

void BossFd_CollisionCheck(BossFd* this, GlobalContext* globalCtx) {
    ColliderJntSphItem* colliderItem1 = this->collider.list;
    ColliderTouch* cTouch;

    if (colliderItem1->body.bumperFlags & 2) {
        colliderItem1->body.bumperFlags &= ~2;
        cTouch = &colliderItem1->body.acHitItem->toucher;
        this->actor.colChkInfo.health -= 2;
        if (cTouch->flags & 0x1000) {
            this->actor.colChkInfo.health -= 2;
        }
        if ((s8)this->actor.colChkInfo.health <= 2) {
            this->actor.colChkInfo.health = 2;
        }
        this->damageFlashTimer = 10;
        this->invincibilityTimer = 20;
        Audio_PlaySoundGeneral(NA_SE_EN_VALVAISA_DAMAGE1, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    }
}

void BossFd_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossFd* this = THIS;
    f32 headGlow;
    f32 rManeGlow;
    f32 lManeGlow;
    s16 i;

    osSyncPrintf("FD MOVE START \n");
    this->varianceTimer++;
    this->movementTimer++;
    this->actionFunc(this, globalCtx);

    for (i = 0; i < 6; i++) {
        DECR(this->timers[i]);
    }
    DECR(this->fireBreathTimer);
    DECR(this->damageFlashTimer);
    DECR(this->invincibilityTimer);

    if (this->actionState < FD_DEATH_START) {
        if (this->invincibilityTimer == 0) {
            BossFd_CollisionCheck(this, globalCtx);
        }
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }

    BossFd_Effects(this, globalCtx);
    this->bodyTex1Scroll += 4.0f;
    this->bodyTex1Rot = 120.0f;
    this->bodyTex2Scroll += 3.0f;
    this->bodyTex2Rot -= 2.0f;

    Math_SmoothScaleMaxF(&this->bodyTex2Opacity, (this->varianceTimer & 0x10) ? 30.0f : 158.0f, 1.0f, 8.0f);
    if (this->skinSegments == 0) {
        this->headTex2Opacity = this->bodyTex2Opacity;
    } else {
        headGlow = (this->varianceTimer & 4) ? 0.0f : 255.0f;
        Math_SmoothScaleMaxF(&this->headTex2Opacity, headGlow, 1.0f, 64.0f);
    }

    headGlow = (this->varianceTimer & 8) ? 128.0f : 255.0f;
    rManeGlow = ((this->varianceTimer + 3) & 8) ? 128.0f : 255.0f;
    lManeGlow = ((this->varianceTimer + 6) & 8) ? 128.0f : 255.0f;

    Math_SmoothScaleMaxF(&this->centerManeColor, headGlow, 1.0f, 16.0f);
    Math_SmoothScaleMaxF(&this->rightManeColor, rManeGlow, 1.0f, 16.0f);
    Math_SmoothScaleMaxF(&this->leftManeColor, lManeGlow, 1.0f, 16.0f);

    if (this->rockTimer != 0) {
        this->rockTimer--;
        if ((this->rockTimer % 16) == 0) {
            EnVbBall* bossFdRock = (EnVbBall*)Actor_SpawnAsChild(
                &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_VB_BALL, this->actor.posRot.pos.x, 1000.0f,
                this->actor.posRot.pos.z, 0, 0, (s16)Math_Rand_ZeroFloat(50.0f) + 0x82, 0x64);
            if (bossFdRock != NULL) {
                for (i = 0; i < 10; i++) {
                    Vec3f debrisVel = { 0.0f, 0.0f, 0.0f };
                    Vec3f debrisAccel = { 0.0f, -1.0f, 0.0f };
                    Vec3f debrisPos;

                    debrisPos.x = Math_Rand_CenteredFloat(300.0f) + bossFdRock->actor.posRot.pos.x;
                    debrisPos.y = Math_Rand_CenteredFloat(300.0f) + bossFdRock->actor.posRot.pos.y;
                    debrisPos.z = Math_Rand_CenteredFloat(300.0f) + bossFdRock->actor.posRot.pos.z;

                    BossFd_SpawnDebris(this->particles, &debrisPos, &debrisVel, &debrisAccel,
                                       (s16)Math_Rand_ZeroFloat(15.0f) + 0x14);
                }
            }
        }
    }

    if (1) { // Needed for matching, and also to define new variables
        Vec3f emberVel = { 0.0f, 0.0f, 0.0f };
        Vec3f emberAccel = { 0.0f, 0.0f, 0.0f };
        Vec3f emberPos;
        s16 temp_rand;

        for (i = 0; i < 6; i++) {
            emberAccel.y = 0.4f;
            emberAccel.x = Math_Rand_CenteredFloat(0.5f);
            emberAccel.z = Math_Rand_CenteredFloat(0.5f);

            temp_rand = Math_Rand_ZeroFloat(8.9f);

            emberPos.x = sHoleLocations[temp_rand].x + Math_Rand_CenteredFloat(60.0f);
            emberPos.y = (sHoleLocations[temp_rand].y + 10.0f) + Math_Rand_ZeroFloat(40.0f);
            emberPos.z = sHoleLocations[temp_rand].z + Math_Rand_CenteredFloat(60.0f);

            BossFd_SpawnEmber(this->particles, &emberPos, &emberVel, &emberAccel, (s16)Math_Rand_ZeroFloat(2.0f) + 6);
        }

        if (this->skinSegments != 0) {
            for (i = 0; i < (s16)this->maneEmberRate; i++) {
                temp_rand = Math_Rand_ZeroFloat(29.9f);
                emberPos.y = this->centerMane.pos[temp_rand].y + Math_Rand_CenteredFloat(20.0f);
                if (emberPos.y >= 90.0f) {
                    emberPos.x = this->centerMane.pos[temp_rand].x + Math_Rand_CenteredFloat(20.0f);
                    emberPos.z = this->centerMane.pos[temp_rand].z + Math_Rand_CenteredFloat(20.0f);

                    emberVel.x = Math_Rand_CenteredFloat(this->maneEmberSpeed);
                    emberVel.y = Math_Rand_CenteredFloat(this->maneEmberSpeed);
                    emberVel.z = Math_Rand_CenteredFloat(this->maneEmberSpeed);

                    emberAccel.y = 0.4f;
                    emberAccel.x = Math_Rand_CenteredFloat(0.5f);
                    emberAccel.z = Math_Rand_CenteredFloat(0.5f);

                    BossFd_SpawnEmber(this->particles, &emberPos, &emberVel, &emberAccel,
                                      (s16)Math_Rand_ZeroFloat(2.0f) + 8);
                }
            }
        }
    }
    osSyncPrintf("FD MOVE END 1\n");
    BossFd_UpdateParticles(this, globalCtx);
    osSyncPrintf("FD MOVE END 2\n");
}

void BossFd_UpdateParticles(BossFd* this, GlobalContext* globalCtx) {
    BossFdParticle* particle = this->particles;
    Player* player = PLAYER;
    Color_RGB8 colors[4] = { { 255, 128, 0 }, { 255, 0, 0 }, { 255, 255, 0 }, { 255, 0, 0 } };
    Vec3f diff;
    s16 cInd;
    s16 i1;
    s16 i2;

    for (i1 = 0; i1 < 180; i1++, particle++) {
        if (particle->type != FD_NULL) {
            particle->timer1++;

            particle->pos.x += particle->velocity.x;
            particle->pos.y += particle->velocity.y;
            particle->pos.z += particle->velocity.z;

            particle->velocity.x += particle->accel.x;
            particle->velocity.y += particle->accel.y;
            particle->velocity.z += particle->accel.z;
            if (particle->type == FD_EMBER) {
                cInd = particle->timer1 % 4;
                particle->color.r = colors[cInd].r;
                particle->color.g = colors[cInd].g;
                particle->color.b = colors[cInd].b;
                particle->alpha -= 20;
                if (particle->alpha <= 0) {
                    particle->alpha = 0;
                    particle->type = 0;
                }
            } else if ((particle->type == FD_DEBRIS) || (particle->type == FD_SKULL_PIECE)) {
                particle->xRot += 0.55f;
                particle->yRot += 0.1f;
                if (particle->pos.y <= 100.0f) {
                    particle->type = 0;
                }
            } else if (particle->type == FD_DUST) {
                if (particle->timer2 >= 8) {
                    particle->timer2 = 8;
                    particle->type = 0;
                } else if ((particle->timer1 & 1) || (Math_Rand_ZeroOne() < 0.3f)) {
                    particle->timer2++;
                }
            } else if (particle->type == FD_FIRE_BREATH) {
                diff.x = player->actor.posRot.pos.x - particle->pos.x;
                diff.y = (player->actor.posRot.pos.y + 30.0f) - particle->pos.y;
                diff.z = player->actor.posRot.pos.z - particle->pos.z;
                if ((this->timers[3] == 0) && (sqrtf(SQ(diff.x) + SQ(diff.y) + SQ(diff.z)) < 20.0f)) {
                    this->timers[3] = 50;
                    func_8002F6D4(globalCtx, NULL, 5.0f, particle->kbAngle, 0.0f, 0x30);
                    if (player->isBurning == 0) {
                        for (i2 = 0; i2 < 18; i2++) {
                            player->flameTimers[i2] = Math_Rand_S16Offset(0, 200);
                        }
                        player->isBurning = 1;
                    }
                }
                if (particle->timer2 == 0) {
                    if (particle->scale < 2.5f) {
                        particle->scale += particle->scaleMod;
                        particle->scaleMod += 0.08f;
                    }
                    if ((particle->pos.y <= (particle->yStop + 130.0f)) || (particle->timer1 >= 10)) {
                        particle->accel.y = 5.0f;
                        particle->timer2++;
                        particle->velocity.y = 0.0f;
                        particle->accel.x = (particle->velocity.x * -25.0f) / 100.0f;
                        particle->accel.z = (particle->velocity.z * -25.0f) / 100.0f;
                    }
                } else {
                    if (particle->scale < 2.5f) {
                        Math_SmoothScaleMaxF(&particle->scale, 2.5f, 0.5f, 0.5f);
                    }
                    particle->timer2++;
                    if (particle->timer2 >= 9) {
                        particle->type = 0;
                    }
                }
            }
        }
    }
}

void BossFd_DrawParticles(BossFdParticle* particle, GlobalContext* globalCtx) {
    static UNK_TYPE particleTex[] = { 0x04051DB0, 0x04051DB0, 0x040521B0, 0x040525B0, 0x040529B0,
                                      0x04052DB0, 0x040531B0, 0x040535B0, 0x040539B0 };
    u8 flag = 0;
    s16 i;
    f32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    BossFdParticle* firstParticle;

    firstParticle = particle;
    OPEN_DISPS(gfxCtx, "../z_boss_fd.c", 4023);

    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == FD_EMBER) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_XLU_DISP++, D_0600A880);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, particle->color.r, particle->color.g, particle->color.b,
                            particle->alpha);
            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(particle->scale, particle->scale, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4046),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_0600A900);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == FD_DEBRIS) {
            if (!flag) {
                func_80093D18(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_OPA_DISP++, D_0600D3A0);
                flag++;
            }

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            Matrix_RotateY(particle->yRot, MTXMODE_APPLY);
            Matrix_RotateX(particle->xRot, MTXMODE_APPLY);
            Matrix_Scale(particle->scale, particle->scale, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4068),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, D_0600D420);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == FD_DUST) {
            if (!flag) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_0600B3A8);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 90, 30, 0, 255);
                gDPSetEnvColor(POLY_XLU_DISP++, 90, 30, 0, 0);
                flag++;
            }

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            Matrix_Scale(particle->scale, particle->scale, particle->scale, MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4104),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(particleTex[particle->timer2]));
            gSPDisplayList(POLY_XLU_DISP++, D_0600B3C8);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == FD_FIRE_BREATH) {
            if (!flag) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_0600B3A8);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 10, 0, 255);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 0, particle->alpha);
            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            Matrix_Scale(particle->scale, particle->scale, particle->scale, MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4154),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(particleTex[particle->timer2]));
            gSPDisplayList(POLY_XLU_DISP++, D_0600B3C8);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == FD_SKULL_PIECE) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_XLU_DISP++, D_0600D668);
                flag++;
            }

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            Matrix_RotateY(particle->yRot, MTXMODE_APPLY);
            Matrix_RotateX(particle->xRot, MTXMODE_APPLY);
            Matrix_Scale(particle->scale, particle->scale, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4192),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_0600D6E8);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_boss_fd.c", 4198);
}

void BossFd_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossFd* this = THIS;

    osSyncPrintf("FD DRAW START\n");
    if (this->actionFunc != BossFd_Wait) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4217);
        func_80093D18(globalCtx->state.gfxCtx);
        if (this->damageFlashTimer & 2) {
            POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 255, 255, 0, 0x384, 0x44B);
        }

        BossFd_DrawBody(globalCtx, this);
        POLY_OPA_DISP = func_800BC8A0(globalCtx, POLY_OPA_DISP);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4243);
    }

    osSyncPrintf("FD DRAW END\n");
    BossFd_DrawParticles(this->particles, globalCtx);
    osSyncPrintf("FD DRAW END2\n");
}

s32 BossFd_OverrideRightArmDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                void* thisx) {
    BossFd* this = THIS;

    switch (limbIndex) {
        case 1:
            rot->y += 4000.0f + this->rightArmRot[0].x;
            break;
        case 2:
            rot->y += this->rightArmRot[1].x;
            rot->z += this->rightArmRot[1].y;
            break;
        case 3:
            rot->y += this->rightArmRot[2].x;
            rot->z += this->rightArmRot[2].y;
            break;
    }
    if (this->skinSegments < limbIndex) {
        *dList = NULL;
    }
    return false;
}

s32 BossFd_OverrideLeftArmDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               void* thisx) {
    BossFd* this = THIS;

    switch (limbIndex) {
        case 1:
            rot->y += -4000.0f + this->leftArmRot[0].x;
            break;
        case 2:
            rot->y += this->leftArmRot[1].x;
            rot->z += this->leftArmRot[1].y;
            break;
        case 3:
            rot->y += this->leftArmRot[2].x;
            rot->z += this->leftArmRot[2].y;
            break;
    }
    if (this->skinSegments < limbIndex) {
        *dList = NULL;
    }
    return false;
}

static s16 sBodyIndex[] = { 0, 95, 90, 85, 80, 75, 70, 65, 60, 55, 50, 45, 40, 35, 30, 25, 20, 15, 10, 5 };
static s16 sManeIndex[] = { 0, 28, 26, 24, 22, 20, 18, 16, 14, 12, 10 }; // Unused

void BossFd_DrawMane(GlobalContext* globalCtx, BossFd* this, Vec3f* manePos, Vec3f* maneRot, f32* maneScale, u8 mode) {
    f32 sp140[] = { 0.0f, 10.0f, 17.0f, 20.0f, 19.5f, 18.0f, 17.0f, 15.0f, 15.0f, 15.0f };
    f32 sp118[] = { 0.0f, 10.0f, 17.0f, 20.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f };
    f32 spF0[] = { 0.4636457f, 0.33661291f, 0.14879614f, 0.04995025f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
    f32 spC8[] = { -0.4636457f, -0.33661291f, -0.14879614f, 0.024927188f, 0.07478157f,
                   0.04995025f, 0.09961288f,  0.0f,         0.0f,         0.0f };
    s16 maneIndex;
    s16 i;
    s16 maneLength;
    Vec3f spB4;
    Vec3f spA8;
    f32 phi_f20;
    f32 phi_f22;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4419);

    maneLength = this->skinSegments;
    if (maneLength > 10) {
        maneLength = 10;
    }

    for (i = 0; i < maneLength; i++) {
        maneIndex = (this->leadManeSeg - (i * 2) + 30) % 30;

        if (mode == 0) {
            spB4.x = spB4.z = 0.0f;
            spB4.y = ((sp140[i] * 0.1f) * 10.0f) * this->flattenMane;
            phi_f20 = 0.0f;
            phi_f22 = spC8[i] * this->flattenMane;
        } else if (mode == 1) {
            phi_f22 = (spC8[i] * this->flattenMane) * 0.7f;
            phi_f20 = spF0[i] * this->flattenMane;

            spB4.y = (sp140[i] * this->flattenMane) * 0.7f;
            spB4.x = -sp118[i] * this->flattenMane;
            spB4.z = 0.0f;
        } else {
            phi_f22 = (spC8[i] * this->flattenMane) * 0.7f;
            phi_f20 = -spF0[i] * this->flattenMane;

            spB4.y = (sp140[i] * this->flattenMane) * 0.7f;
            spB4.x = sp118[i] * this->flattenMane;
            spB4.z = 0.0f;
        }

        Matrix_RotateY((maneRot + maneIndex)->y, MTXMODE_NEW);
        Matrix_RotateX(-(maneRot + maneIndex)->x, MTXMODE_APPLY);

        Matrix_MultVec3f(&spB4, &spA8);

        Matrix_Translate((manePos + maneIndex)->x + spA8.x, (manePos + maneIndex)->y + spA8.y,
                         (manePos + maneIndex)->z + spA8.z, MTXMODE_NEW);
        Matrix_RotateY((maneRot + maneIndex)->y + phi_f20, MTXMODE_APPLY);
        Matrix_RotateX(-((maneRot + maneIndex)->x + phi_f22), MTXMODE_APPLY);
        Matrix_Scale(maneScale[maneIndex] * (0.01f - (i * 0.0008f)), maneScale[maneIndex] * (0.01f - (i * 0.0008f)),
                     0.01f, 1);
        Matrix_RotateX(-M_PI / 2.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4480),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_060091E8);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4483);
}

s32 BossFd_OverrideHeadDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BossFd* this = THIS;

    switch (limbIndex) {
        case 5:
        case 6:
            rot->z -= this->jawOpening * 0.1f;
            break;
        case 2:
            rot->z += this->jawOpening;
            break;
    }
    if ((this->faceExposed == true) && (limbIndex == 5)) {
        *dList = D_060059F8;
    }
    if (this->skinSegments == 0) {
        if (limbIndex == 6) {
            *dList = D_0600CBC8;
        } else if (limbIndex == 2) {
            *dList = D_0600D0A0;
        } else {
            *dList = NULL;
        }
    }
    return false;
}

void BossFd_PostHeadDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f targetMod = { 4500.0f, 0.0f, 0.0f };
    static Vec3f headMod = { 4000.0f, 0.0f, 0.0f };
    BossFd* this = THIS;

    if (limbIndex == 5) {
        Matrix_MultVec3f(&targetMod, &this->actor.posRot2.pos);
        Matrix_MultVec3f(&headMod, &this->headPos);
    }
}

static Gfx* sEyeDLists[] = { 0x060038A8, 0x060034A8, 0x06003CA8 };

static Gfx* sBodyDLists[] = { 0x060079A0, 0x06007AC0, 0x06007B70, 0x06007BD0, 0x06007C30, 0x06007C90,
                              0x06007CF0, 0x06007D50, 0x06007DB0, 0x06007E10, 0x06007E70, 0x06007ED0,
                              0x06007F30, 0x06007F90, 0x06007FF0, 0x06008038, 0x06008080, 0x060080D8 };

void BossFd_DrawBody(GlobalContext* globalCtx, BossFd* this) {
    s16 segIndex;
    s16 i;
    f32 temp_float;
    Mtx* tempMat = Graph_Alloc(globalCtx->state.gfxCtx, 18 * sizeof(Mtx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4589);
    if (this->skinSegments != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sEyeDLists[this->eyeState]));
    }
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->bodyTex1Scroll, (s16)this->bodyTex1Rot, 0x20,
                                0x20, 1, (s16)this->bodyTex2Scroll, (s16)this->bodyTex2Rot, 0x20, 0x20));
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
    gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, (s8)this->bodyTex2Opacity);

    osSyncPrintf("LH\n");
    Matrix_Push();
    segIndex = (sBodyIndex[2] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z,
                     MTXMODE_NEW);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, MTXMODE_APPLY);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, MTXMODE_APPLY);
    Matrix_Translate(-13.0f, -5.0f, 13.0f, MTXMODE_APPLY);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, MTXMODE_APPLY);
    SkelAnime_DrawOpa(globalCtx, this->skelAnimeRightArm.skeleton, this->skelAnimeRightArm.limbDrawTbl,
                      BossFd_OverrideRightArmDraw, NULL, this);
    Matrix_Pull();
    osSyncPrintf("RH\n");
    Matrix_Push();
    segIndex = (sBodyIndex[2] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z,
                     MTXMODE_NEW);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, MTXMODE_APPLY);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, MTXMODE_APPLY);
    Matrix_Translate(13.0f, -5.0f, 13.0f, MTXMODE_APPLY);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, MTXMODE_APPLY);
    SkelAnime_DrawOpa(globalCtx, this->skelAnimeLeftArm.skeleton, this->skelAnimeLeftArm.limbDrawTbl,
                      BossFd_OverrideLeftArmDraw, NULL, this);
    Matrix_Pull();
    osSyncPrintf("BD\n");
    gSPSegment(POLY_OPA_DISP++, 0x0D, tempMat);

    Matrix_Push();
    for (i = 0; i < 18; i++, tempMat++) {
        segIndex = (sBodyIndex[i + 1] + this->leadBodySeg) % 100;
        Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z,
                         MTXMODE_NEW);
        Matrix_RotateY(this->bodySegsRot[segIndex].y, MTXMODE_APPLY);
        Matrix_RotateX(-this->bodySegsRot[segIndex].x, MTXMODE_APPLY);
        Matrix_Translate(0.0f, 0.0f, 35.0f, 1);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
        if (i < this->skinSegments) {
            Matrix_Scale(1.0f + (Math_Sins((this->leadBodySeg * 5000.0f) + (i * 7000.0f)) * (*this).bodyPulse),
                         1.0f + (Math_Sins((this->leadBodySeg * 5000.0f) + (i * 7000.0f)) * (*this).bodyPulse), 1.0f,
                         MTXMODE_APPLY);
            Matrix_RotateY(M_PI / 2.0f, MTXMODE_APPLY);
            Matrix_ToMtx(tempMat, "../z_boss_fd.c", 4719);
            gSPMatrix(POLY_OPA_DISP++, tempMat, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, sBodyDLists[i]);
        } else {
            MtxF spFC;
            Vec3f spF0 = { 0.0f, 0.0f, 0.0f };
            Vec3f spE4;
            Vec3s spDC;
            f32 spD8;
            if (this->bodyFallApart[i] < 2) {
                f32 spD4 = 0.1f;
                temp_float = 0.1f;

                Matrix_Translate(0.0f, 0.0f, -1100.0f, MTXMODE_APPLY);
                Matrix_RotateY(-M_PI, MTXMODE_APPLY);
                if (i >= 14) {
                    f32 sp84 = 1.0f - ((i - 14) * 0.2f);
                    Matrix_Scale(sp84, sp84, 1.0f, 1);
                    spD4 = 0.1f * sp84;
                    temp_float = 0.1f * sp84;
                }
                Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4768),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, D_0600B2F8);

                if (this->bodyFallApart[i] == 1) {
                    EnVbBall* bones;
                    this->bodyFallApart[i] = 2;
                    Matrix_MultVec3f(&spF0, &spE4);
                    Matrix_Get(&spFC);
                    func_800D20CC(&spFC, &spDC, 0);
                    bones =
                        (EnVbBall*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_VB_BALL,
                                                      spE4.x, spE4.y, spE4.z, spDC.x, spDC.y, spDC.z, i + 200);

                    bones->actor.scale.x = this->actor.scale.x * temp_float;
                    bones->actor.scale.y = this->actor.scale.y * spD4;
                    bones->actor.scale.z = this->actor.scale.z * 0.1f;
                }
            }
        }
        if (i > 0) {
            func_800628A4(i + 1, &this->collider);
        }
    }
    Matrix_Pull();
    osSyncPrintf("BH\n");

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, (s8)this->headTex2Opacity);
    Matrix_Push();
    temp_float = (this->actionState >= FD_SKULL_FALL) ? -20.0f : -10.0f - ((this->actor.speedXZ - 5.0f) * 10.0f);
    segIndex = (sBodyIndex[0] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z,
                     MTXMODE_NEW);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, MTXMODE_APPLY);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, MTXMODE_APPLY);
    Matrix_RotateZ((this->actor.shape.rot.z / (f32)0x8000) * M_PI, MTXMODE_APPLY);
    Matrix_Translate(0.0f, 0.0f, temp_float, MTXMODE_APPLY);
    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 25.0f, MTXMODE_APPLY);
    osSyncPrintf("BHC\n");
    func_800628A4(0, &this->collider);
    Matrix_Pull();
    osSyncPrintf("BHCE\n");
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, MTXMODE_APPLY);
    SkelAnime_DrawOpa(globalCtx, this->skelAnimeHead.skeleton, this->skelAnimeHead.limbDrawTbl, BossFd_OverrideHeadDraw,
                      BossFd_PostHeadDraw, &this->actor);
    osSyncPrintf("SK\n");
    {
        Vec3f spB0 = { 0.0f, 1700.0f, 7000.0f };
        Vec3f spA4 = { -1000.0f, 700.0f, 7000.0f };
        func_80093D84(globalCtx->state.gfxCtx);
        gSPDisplayList(POLY_XLU_DISP++, D_06009168);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, this->centerManeColor, 0, 255);
        Matrix_Push();
        Matrix_MultVec3f(&spB0, &this->centerMane.head);
        BossFd_DrawMane(globalCtx, this, this->centerMane.pos, this->fireManeRot, this->centerMane.scale, MANE_CENTER);
        Matrix_Pull();
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, this->rightManeColor, 0, 255);
        Matrix_Push();
        Matrix_MultVec3f(&spA4, &this->rightMane.head);
        BossFd_DrawMane(globalCtx, this, this->rightMane.pos, this->fireManeRot, this->rightMane.scale, MANE_RIGHT);
        Matrix_Pull();
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, this->leftManeColor, 0, 255);
        Matrix_Push();
        spA4.x *= -1.0f;
        Matrix_MultVec3f(&spA4, &this->leftMane.head);
        BossFd_DrawMane(globalCtx, this, this->leftMane.pos, this->fireManeRot, this->leftMane.scale, MANE_LEFT);
        Matrix_Pull();
        Matrix_Pull();
        osSyncPrintf("END\n");
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4987);
    }
}
