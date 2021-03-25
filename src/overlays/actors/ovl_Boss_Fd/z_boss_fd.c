/*
 * File: z_boss_fd.c
 * Overlay: ovl_Boss_Fd
 * Description: Volvagia, flying form
 */

#include "z_boss_fd.h"
#include "objects/object_fd/object_fd.h"
#include "overlays/actors/ovl_En_Vb_Ball/z_en_vb_ball.h"
#include "overlays/actors/ovl_Bg_Vb_Sima/z_bg_vb_sima.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000035

#define THIS ((BossFd*)thisx)

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
} BossFdManeIndex;

void BossFd_Init(Actor* thisx, GlobalContext* globalCtx);
void BossFd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossFd_Update(Actor* thisx, GlobalContext* globalCtx);
void BossFd_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossFd_SetupFly(BossFd* this, GlobalContext* globalCtx);
void BossFd_Fly(BossFd* this, GlobalContext* globalCtx);
void BossFd_Wait(BossFd* this, GlobalContext* globalCtx);
void BossFd_UpdateEffects(BossFd* this, GlobalContext* globalCtx);
void BossFd_DrawBody(GlobalContext* globalCtx, BossFd* this);

const ActorInit Boss_Fd_InitVars = {
    ACTOR_BOSS_FD,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_FD,
    sizeof(BossFd),
    (ActorFunc)BossFd_Init,
    (ActorFunc)BossFd_Destroy,
    (ActorFunc)BossFd_Update,
    (ActorFunc)BossFd_Draw,
};

#include "z_boss_fd_colchk.c"

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(targetMode, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 33, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 0, ICHAIN_STOP),
};

void BossFd_SpawnEmber(BossFdEffect* effect, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 150; i++, effect++) {
        if (effect->type == FD_NULL) {
            effect->type = FD_EMBER;
            effect->pos = *position;
            effect->velocity = *velocity;
            effect->accel = *acceleration;
            effect->scale = scale / 1000.0f;
            effect->alpha = 255;
            effect->timer1 = (s16)Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

void BossFd_SpawnDebris(BossFdEffect* effect, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 150; i++, effect++) {
        if (effect->type == FD_NULL) {
            effect->type = FD_DEBRIS;
            effect->pos = *position;
            effect->velocity = *velocity;
            effect->accel = *acceleration;
            effect->scale = scale / 1000.0f;
            effect->xRot = Rand_ZeroFloat(100.0f);
            effect->yRot = Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossFd_SpawnDust(BossFdEffect* effect, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 150; i++, effect++) {
        if (effect->type == FD_NULL) {
            effect->type = FD_DUST;
            effect->pos = *position;
            effect->velocity = *velocity;
            effect->accel = *acceleration;
            effect->timer2 = 0;
            effect->scale = scale / 400.0f;
            break;
        }
    }
}

void BossFd_SpawnFireBreath(BossFdEffect* effect, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale,
                            s16 alpha, s16 kbAngle) {
    s16 i;

    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == FD_NULL) {
            effect->type = FD_FIRE_BREATH;
            effect->timer1 = 0;
            effect->pos = *position;
            effect->velocity = *velocity;
            effect->accel = *acceleration;
            effect->pos.x -= effect->velocity.x;
            effect->pos.y -= effect->velocity.y;
            effect->pos.z -= effect->velocity.z;
            effect->scaleMod = 0.0f;
            effect->alpha = alpha;
            effect->yStop = Rand_ZeroFloat(10.0f);
            effect->timer2 = 0;
            effect->scale = scale / 400.0f;
            effect->kbAngle = kbAngle;
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
        Gameplay_CameraSetAtEye(globalCtx, this->introCamera, &this->cameraAt, &this->cameraEye);
        Math_ApproachZeroF(&this->cameraYMod, 1.0f, 0.1f);
    }
}

void BossFd_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossFd* this = THIS;
    s16 i;

    Flags_SetSwitch(globalCtx, 0x14);
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BG_VB_SIMA, 680.0f, -100.0f, 0.0f, 0, 0, 0,
                       100);
    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->actor, 0.05f);
    SkelAnime_Init(globalCtx, &this->skelAnimeHead, &gVolvagiaHeadSkel, &gVolvagiaHeadEmergeAnim, NULL, NULL, 0);
    SkelAnime_Init(globalCtx, &this->skelAnimeRightArm, &gVolvagiaRightArmSkel, &gVolvagiaRightArmEmergeAnim, NULL,
                   NULL, 0);
    SkelAnime_Init(globalCtx, &this->skelAnimeLeftArm, &gVolvagiaLeftArmSkel, &gVolvagiaLeftArmEmergeAnim, NULL, NULL,
                   0);
    this->introState = INTRO_WAIT;
    if (this->introState == NO_CUTSCENE) {
        Audio_SetBGM(0x6B);
    }

    this->actor.world.pos.x = this->actor.world.pos.z = 0.0f;
    this->actor.world.pos.y = -200.0f;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->elements);

    for (i = 0; i < 100; i++) {
        this->bodySegsPos[i].x = this->actor.world.pos.x;
        this->bodySegsPos[i].y = this->actor.world.pos.y;
        this->bodySegsPos[i].z = this->actor.world.pos.z;
        if (i < 30) {
            this->centerMane.pos[i].x = this->actor.world.pos.x;
            this->centerMane.pos[i].y = this->actor.world.pos.y;
            this->centerMane.pos[i].z = this->actor.world.pos.z;
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
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_FD2, this->actor.world.pos.x,
                           this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, this->introState);
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
    return ABS((s16)(this->actor.yawTowardsPlayer - this->actor.world.rot.y)) < 0x2000;
}

void BossFd_SetupFly(BossFd* this, GlobalContext* globalCtx) {
    Animation_PlayOnce(&this->skelAnimeHead, &gVolvagiaHeadEmergeAnim);
    Animation_PlayOnce(&this->skelAnimeRightArm, &gVolvagiaRightArmEmergeAnim);
    Animation_PlayOnce(&this->skelAnimeLeftArm, &gVolvagiaLeftArmEmergeAnim);
    this->actionFunc = BossFd_Fly;
    this->maxTurnRate = 1000.0f;
}

#ifdef NON_MATCHING
// Somehow doesn't use rodata value D_808D1EB4 = 0.1f. It would occur after the 85.56f float
// literal in case 6 of the boss intro switch statement but before the next switch statement.
// All instructions match.

static Vec3f sHoleLocations[] = {
    { 0.0f, 90.0f, -243.0f },    { 0.0f, 90.0f, 0.0f },    { 0.0f, 90.0f, 243.0f },
    { -243.0f, 90.0f, -243.0f }, { -243.0f, 90.0f, 0.0f }, { -243.0f, 90.0f, 243.0f },
    { 243.0f, 90.0f, -243.0f },  { 243.0f, 90.0f, 0.0f },  { 243.0f, 90.0f, 243.0f },
};

static Vec3f sCeilingTargets[] = {
    { 0.0f, 900.0f, -243.0f }, { 243.0, 900.0f, -100.0f },  { 243.0f, 900.0f, 100.0f },
    { 0.0f, 900.0f, 243.0f },  { -243.0f, 900.0f, 100.0f }, { -243.0, 900.0f, -100.0f },
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

    SkelAnime_Update(&this->skelAnimeHead);
    SkelAnime_Update(&this->skelAnimeRightArm);
    SkelAnime_Update(&this->skelAnimeLeftArm);
    dx = this->targetPosition.x - this->actor.world.pos.x;
    dy = this->targetPosition.y - this->actor.world.pos.y;
    dz = this->targetPosition.z - this->actor.world.pos.z;
    dx += Math_SinS(this->movementTimer * (2096.0f + this->flightWobbleRate)) * this->flightWobbleAmplitude;
    dy += Math_SinS(this->movementTimer * (1096.0f + this->flightWobbleRate)) * this->flightWobbleAmplitude;
    dz += Math_SinS(this->movementTimer * (1796.0f + this->flightWobbleRate)) * this->flightWobbleAmplitude;
    angleToTarget = (s16)(Math_FAtan2F(dx, dz) * (0x8000 / M_PI));
    pitchToTarget = (s16)(Math_FAtan2F(dy, sqrtf(SQ(dx) + SQ(dz))) * (0x8000 / M_PI));

    osSyncPrintf("MODE %d\n", this->actionState);

    Math_ApproachF(&this->bodyPulse, 0.1f, 1.0f, 0.02);

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
                if ((fabsf(player2->actor.world.pos.z) < 80.0f) &&
                    (fabsf(player2->actor.world.pos.x - 340.0f) < 60.0f)) {

                    this->introState = INTRO_START;
                    func_80064520(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 8);
                    this->introCamera = Gameplay_CreateSubCamera(globalCtx);
                    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                    Gameplay_ChangeCameraStatus(globalCtx, this->introCamera, 7);
                    player2->actor.world.pos.x = 380.0f;
                    player2->actor.world.pos.y = 100.0f;
                    player2->actor.world.pos.z = 0.0f;
                    player2->actor.shape.rot.y = player2->actor.world.rot.y = -0x4000;
                    player2->actor.speedXZ = 0.0f;
                    this->cameraEye.x = player2->actor.world.pos.x - 70.0f;
                    this->cameraEye.y = player2->actor.world.pos.y + 40.0f;
                    this->cameraEye.z = player2->actor.world.pos.z + 70.0f;
                    this->cameraAt.x = player2->actor.world.pos.x;
                    this->cameraAt.y = player2->actor.world.pos.y + 30.0f;
                    this->cameraAt.z = player2->actor.world.pos.z;
                    this->cameraNextEye.x = player2->actor.world.pos.x - 50.0f + 18.0f;
                    this->cameraNextEye.y = player2->actor.world.pos.y + 40;
                    this->cameraNextEye.z = player2->actor.world.pos.z + 50.0f - 18.0f;
                    this->cameraNextAt.x = player2->actor.world.pos.x;
                    this->cameraNextAt.y = player2->actor.world.pos.y + 50.0f;
                    this->cameraNextAt.z = player2->actor.world.pos.z;
                    BossFd_SetCameraSpeed(this, 1.0f);
                    this->cameraAtMaxVel.x = this->cameraAtMaxVel.y = this->cameraAtMaxVel.z = 0.05f;
                    this->cameraEyeMaxVel.x = this->cameraEyeMaxVel.y = this->cameraEyeMaxVel.z = 0.05f;
                    this->timers[0] = 0;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraAccel = 0.0f;
                    if (gSaveContext.eventChkInf[7] & 8) {
                        this->introState = INTRO_EMERGE;
                        this->cameraNextEye.x = player2->actor.world.pos.x + 100.0f + 300.0f - 600.0f;
                        this->cameraNextEye.y = player2->actor.world.pos.y + 100.0f - 50.0f;
                        this->cameraNextEye.z = player2->actor.world.pos.z + 200.0f - 150.0f;
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
                        this->actor.world.rot.x = 0x4000;
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
                player2->actor.world.pos.x = 380.0f;
                player2->actor.world.pos.y = 100.0f;
                player2->actor.world.pos.z = 0.0f;
                player2->actor.speedXZ = 0.0f;
                player2->actor.shape.rot.y = player2->actor.world.rot.y = -0x4000;
                if (this->timers[0] == 50) {
                    this->fogMode = 1;
                }
                if (this->timers[0] < 50) {
                    Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                    this->cameraYMod = Math_CosS(this->movementTimer * 0x8000) * this->cameraShake;
                    Math_ApproachF(&this->cameraShake, 2.0f, 1.0f, 0.8 * 0.01f);
                }
                if (this->timers[0] == 40) {
                    func_8002DF54(globalCtx, &this->actor, 0x13);
                }
                if (this->timers[0] == 0) {
                    this->introState = INTRO_LOOK_GROUND;
                    this->cameraNextAt.y = player2->actor.world.pos.y + 10.0f;
                    this->cameraAtMaxVel.y = 0.2f;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraAccel = 0.02f;
                    this->timers[0] = 70;
                    this->movementTimer = 0;
                }
                break;
            case INTRO_LOOK_GROUND:
                this->cameraYMod = Math_CosS(this->movementTimer * 0x8000) * this->cameraShake;
                Math_ApproachF(&this->cameraShake, 2.0f, 1.0f, 0.8 * 0.01f);
                Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
                if (this->timers[0] == 0) {
                    this->introState = INTRO_COLLAPSE;
                    this->cameraNextEye.x = player2->actor.world.pos.x + 100.0f + 300.0f;
                    this->cameraNextEye.y = player2->actor.world.pos.y + 100.0f;
                    this->cameraNextEye.z = player2->actor.world.pos.z + 200.0f;
                    this->cameraNextAt.x = player2->actor.world.pos.x;
                    this->cameraNextAt.y = player2->actor.world.pos.y - 150.0f;
                    this->cameraNextAt.z = player2->actor.world.pos.z - 50.0f;
                    BossFd_SetCameraSpeed(this, 0.1f);
                    this->timers[0] = 170;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraAccel = 0.0f;
                    func_8002DF54(globalCtx, &this->actor, 0x14);
                }
                break;
            case INTRO_COLLAPSE:
                this->cameraAccel = 0.005f;
                this->cameraYMod = Math_CosS(this->movementTimer * 0x8000) * this->cameraShake;
                Math_ApproachF(&this->cameraShake, 2.0f, 1.0f, 0.8 * 0.01f);
                Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
                if (this->timers[0] == 100) {
                    this->platformSignal = VBSIMA_COLLAPSE;
                }
                if (this->timers[0] == 0) {
                    this->introState = INTRO_EMERGE;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraNextEye.x = ((player2->actor.world.pos.x + 100.0f) + 300.0f) - 600.0f;
                    this->cameraNextEye.y = (player2->actor.world.pos.y + 100.0f) - 50.0f;
                    this->cameraNextEye.z = (player2->actor.world.pos.z + 200.0f) - 150.0f;
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
                    this->actor.world.rot.x = 0x4000;
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
                    this->platformSignal = VBSIMA_KILL;
                    func_8002DF54(globalCtx, &this->actor, 1);
                }
                if (this->actor.world.pos.y > 120.0f) {
                    this->cameraNextAt = this->actor.world.pos;
                    this->cameraAtVel.x = 190.0f;
                    this->cameraAtVel.y = 85.56f;
                    this->cameraAtVel.z = 25.0f;
                } else {
                    Math_ApproachF(&this->cameraShake, 2.0f, 1.0f, 0.1 * 0.08f);
                    this->cameraYMod = Math_CosS(this->movementTimer * 0x8000) * this->cameraShake;
                }
                if (this->timers[3] == 160) {
                    Audio_SetBGM(0x6B);
                }
                if ((this->timers[3] == 130) && !(gSaveContext.eventChkInf[7] & 8)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx,
                                           SEGMENTED_TO_VIRTUAL(&gVolvagiaBossTitleCardTex), 0xA0, 0xB4, 0x80, 0x28);
                }
                if (this->timers[3] <= 100) {
                    this->cameraEyeVel.x = this->cameraEyeVel.y = this->cameraEyeVel.z = 2.0f;
                    this->cameraNextEye.x = player2->actor.world.pos.x + 50.0f;
                    this->cameraNextEye.y = player2->actor.world.pos.y + 50.0f;
                    this->cameraNextEye.z = player2->actor.world.pos.z + 50.0f;
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
                    this->handoffSignal = FDSIGNAL_GROUND;
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
                            temp_rand = Rand_ZeroFloat(8.9f);
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
                this->handoffSignal = FDSIGNAL_GROUND;
            }
            break;
        case FD_EMERGE:
            if ((this->timers[0] == 0) && (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 100.0f)) {
                this->actor.world.pos = this->targetPosition;
                this->actionState = FD_FLY_MAIN;
                this->actor.world.rot.x = 0x4000;
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
            if (this->actor.world.pos.y > 700.0f) {
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
            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 2);
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
                Math_ApproachZeroF(&this->ceilingBounce, 1.0f, 1000.0f);
            }
            if (this->timers[2] == 0) {
                this->actionState = FD_FLY_MAIN;
                this->timers[0] = 0;
                this->startAttack = false;
            }
            break;
        case FD_FLY_CHASE:
            this->actor.flags |= 0x1000000;
            temp_y = Math_SinS(this->movementTimer * 2396.0f) * 30.0f;
            temp_y = temp_y + this->targetLinkYOffset;
            this->targetPosition.x = player->actor.world.pos.x;
            this->targetPosition.y = player->actor.world.pos.y + temp_y + 30.0f;
            this->targetPosition.z = player->actor.world.pos.z;
            this->flightWobbleAmplitude = 0.0f;
            if (((this->timers[0] % 64) == 0) && (this->timers[0] < 450)) {
                this->roarTimer = 40;
                if (BossFd_IsFacingLink(this)) {
                    this->fireBreathTimer = 20;
                }
            }
            if ((this->damageFlashTimer != 0) || (this->timers[0] == 0) || (player->actor.world.pos.y < 70.0f)) {
                this->actionState = FD_FLY_MAIN;
                this->timers[0] = 0;
                this->startAttack = false;
            } else {
                Math_ApproachF(&this->targetLinkYOffset, 50.0, 1.0f, 2.0f);
            }
            break;
        case FD_DEATH_START:
            if (sqrtf(SQ(dx) + SQ(dz)) < 50.0f) {
                this->timers[0] = 0;
            }
            if (this->timers[0] == 0) {
                this->timers[0] = (s16)Rand_ZeroFloat(10.0f) + 10;
                while (1) {
                    this->targetPosition.x = Rand_CenteredFloat(200.0f);
                    this->targetPosition.y = 390.0f;
                    this->targetPosition.z = Rand_CenteredFloat(200.0f);
                    temp_x = this->targetPosition.x - this->actor.world.pos.x;
                    temp_z = this->targetPosition.z - this->actor.world.pos.z;
                    if (sqrtf(SQ(temp_x) + SQ(temp_z)) > 100.0f) {
                        break;
                    }
                };
            }
            this->flightWobbleAmplitude = 200.0f;
            this->flightWobbleRate = 1000.0f;
            this->maxTurnRate = 10000.0f;
            Math_ApproachF(&this->bodyPulse, 0.3f, 1.0f, 0.05f);
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
            Math_ApproachF(&this->bodyPulse, 0.3f, 1.0f, 0.05f);
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
                        temp_rand2 = Rand_ZeroFloat(99.9f);

                        sp188.x = this->bodySegsPos[temp_rand2].x;
                        sp188.y = this->bodySegsPos[temp_rand2].y - 10.0f;
                        sp188.z = this->bodySegsPos[temp_rand2].z;

                        sp164.y = 0.03f;

                        EffectSsKFire_Spawn(globalCtx, &sp188, &sp17C, &sp164, (s16)Rand_ZeroFloat(20.0f) + 40, 0x64);

                        for (i2 = 0; i2 < 15; i2++) {
                            sp170.x = Rand_CenteredFloat(20.0f);
                            sp170.y = Rand_CenteredFloat(20.0f);
                            sp170.z = Rand_CenteredFloat(20.0f);

                            sp158.y = 0.4f;
                            sp158.x = Rand_CenteredFloat(0.5f);
                            sp158.z = Rand_CenteredFloat(0.5f);

                            BossFd_SpawnEmber(this->effects, &sp188, &sp170, &sp158, (s16)Rand_ZeroFloat(3.0f) + 8);
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
                player->actor.world.pos.y = 90.0f;
                player->actor.world.pos.x = 40.0f;
                player->actor.world.pos.z = 150.0f;
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
                this->actor.world.pos.x = 0;
                this->actor.world.pos.y = 900.0f;
                this->actor.world.pos.z = 150.0f;
                this->actor.world.rot.x = this->actor.world.rot.y = 0;
                this->actor.shape.rot.z = 0x1200;
                this->actor.velocity.x = 0;
                this->actor.velocity.z = 0;
            }
            if (this->timers[0] == 0) {
                if (this->actor.world.pos.y <= 110.0f) {
                    this->actor.world.pos.y = 110.0f;
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

                            sp144.x = Rand_CenteredFloat(8.0f);
                            sp144.y = Rand_ZeroFloat(1.0f);
                            sp144.z = Rand_CenteredFloat(8.0f);

                            sp138.y = 0.3f;

                            sp12C.x = Rand_CenteredFloat(10.0f) + this->actor.world.pos.x;
                            sp12C.y = Rand_CenteredFloat(10.0f) + this->actor.world.pos.y;
                            sp12C.z = Rand_CenteredFloat(10.0f) + this->actor.world.pos.z;
                            BossFd_SpawnDust(this->effects, &sp12C, &sp144, &sp138, Rand_ZeroFloat(100.0f) + 300);
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
            this->actor.world.pos.y = 110.0f;
            this->turnRate = this->maxTurnRate = this->actor.speedXZ = this->flightSpeed = 0.0f;

            if ((50 > this->timers[0]) && (this->timers[0] > 0)) {
                Vec3f sp120;
                Vec3f sp114 = { 0.0f, 0.0f, 0.0f };
                Vec3f sp108 = { 0.0f, 0.03f, 0.0f };

                Audio_PlaySoundGeneral(NA_SE_EN_GOMA_LAST - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);

                sp120.x = Rand_CenteredFloat(40.0f) + this->actor.world.pos.x;
                sp120.y = (Rand_CenteredFloat(10.0f) + this->actor.world.pos.y) - 10.0f;
                sp120.z = (Rand_CenteredFloat(40.0f) + this->actor.world.pos.z) + 5.0f;

                sp108.y = 0.03f;

                EffectSsKFire_Spawn(globalCtx, &sp120, &sp114, &sp108, (s16)Rand_ZeroFloat(15.0f) + 30, 0);
            }
            if (this->timers[0] < 20) {
                Math_ApproachZeroF(&this->actor.scale.x, 1.0f, 0.0025f);
                Actor_SetScale(&this->actor, this->actor.scale.x);
            }
            if (this->timers[0] == 0) {
                this->actionFunc = BossFd_Wait;
                this->actor.world.pos.y -= 1000.0f;
            }
            if (this->timers[0] == 7) {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.world.pos.x,
                            this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0);
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

        Math_ApproachS(&this->actor.world.rot.y, angleToTarget, 0xA, this->turnRate);

        if (((this->actionState == FD_FLY_CHASE) || (this->actionState == FD_FLY_UNUSED)) &&
            (this->actor.world.pos.y < 110.0f) && (pitchToTarget < 0)) {
            pitchToTarget = 0;
            Math_ApproachF(&this->actor.world.pos.y, 110.0f, 1.0f, 5.0f);
        }

        Math_ApproachS(&this->actor.world.rot.x, pitchToTarget, 0xA, this->turnRate);
        Math_ApproachF(&this->turnRate, this->maxTurnRate, 1.0f, 20000.0f);
        Math_ApproachF(&this->actor.speedXZ, this->flightSpeed, 1.0f, 0.1f);
        if (this->actionState < FD_SKULL_FALL) {
            func_8002D908(&this->actor);
        }
        func_8002D7EC(&this->actor);

        this->leadBodySeg++;
        if (this->leadBodySeg >= 100) {
            this->leadBodySeg = 0;
        }
        i4 = this->leadBodySeg;
        this->bodySegsPos[i4].x = this->actor.world.pos.x;
        this->bodySegsPos[i4].y = this->actor.world.pos.y;
        this->bodySegsPos[i4].z = this->actor.world.pos.z;
        this->bodySegsRot[i4].x = (this->actor.world.rot.x / (f32)0x8000) * M_PI;
        this->bodySegsRot[i4].y = (this->actor.world.rot.y / (f32)0x8000) * M_PI;
        this->bodySegsRot[i4].z = (this->actor.world.rot.z / (f32)0x8000) * M_PI;

        this->leadManeSeg++;
        if (this->leadManeSeg >= 30) {
            this->leadManeSeg = 0;
        }
        i4 = this->leadManeSeg;
        this->centerMane.scale[i4] = (Math_SinS(this->movementTimer * 5596.0f) * 0.3f) + 1.0f;
        this->rightMane.scale[i4] = (Math_SinS(this->movementTimer * 5496.0f) * 0.3f) + 1.0f;
        this->leftMane.scale[i4] = (Math_CosS(this->movementTimer * 5696.0f) * 0.3f) + 1.0f;
        this->centerMane.pos[i4] = this->centerMane.head;
        this->fireManeRot[i4].x = (this->actor.world.rot.x / (f32)0x8000) * M_PI;
        this->fireManeRot[i4].y = (this->actor.world.rot.y / (f32)0x8000) * M_PI;
        this->fireManeRot[i4].z = (this->actor.world.rot.z / (f32)0x8000) * M_PI;
        this->rightMane.pos[i4] = this->rightMane.head;
        this->leftMane.pos[i4] = this->leftMane.head;

        if ((0x3000 > this->actor.world.rot.x) && (this->actor.world.rot.x > -0x3000)) {
            Math_ApproachF(&this->flattenMane, 1.0f, 1.0f, 0.05f);
        } else {
            Math_ApproachF(&this->flattenMane, 0.5f, 1.0f, 0.05f);
        }

        if (this->actionState < FD_SKULL_FALL) {
            if ((this->actor.prevPos.y < 90.0f) && (90.0f <= this->actor.world.pos.y)) {
                this->timers[4] = 80;
                func_80033E1C(globalCtx, 1, 80, 0x5000);
                this->roarTimer = 40;
                this->maneEmbersTimer = 30;
                this->holeSplashTimer = 10;
            }
            if ((this->actor.prevPos.y > 90.0f) && (90.0f >= this->actor.world.pos.y)) {
                this->timers[4] = 80;
                func_80033E1C(globalCtx, 1, 80, 0x5000);
                this->maneEmbersTimer = 30;
                this->holeSplashTimer = 10;
            }
        }

        if (!sp1CF) {
            spE0[0].x = spE0[0].y = Math_SinS(this->movementTimer * 1500.0f) * 3000.0f;
            spE0[1].x = Math_SinS(this->movementTimer * 2000.0f) * 4000.0f;
            spE0[1].y = Math_SinS(this->movementTimer * 2200.0f) * 4000.0f;
            spE0[2].x = Math_SinS(this->movementTimer * 1700.0f) * 2000.0f;
            spE0[2].y = Math_SinS(this->movementTimer * 1900.0f) * 2000.0f;
            spBC[0].x = spBC[0].y = Math_SinS(this->movementTimer * 1500.0f) * -3000.0f;
            spBC[1].x = Math_SinS(this->movementTimer * 2200.0f) * -4000.0f;
            spBC[1].y = Math_SinS(this->movementTimer * 2000.0f) * -4000.0f;
            spBC[2].x = Math_SinS(this->movementTimer * 1900.0f) * -2000.0f;
            spBC[2].y = Math_SinS(this->movementTimer * 1700.0f) * -2000.0f;

            for (i3 = 0; i3 < 3; i3++) {
                Math_ApproachF(&this->rightArmRot[i3].x, spE0[i3].x, 1.0f, 1000.0f);
                Math_ApproachF(&this->rightArmRot[i3].y, spE0[i3].y, 1.0f, 1000.0f);
                Math_ApproachF(&this->leftArmRot[i3].x, spBC[i3].x, 1.0f, 1000.0f);
                Math_ApproachF(&this->leftArmRot[i3].y, spBC[i3].y, 1.0f, 1000.0f);
            }
        } else {
            for (i2 = 0; i2 < 3; i2++) {
                phi_f20 = 0.0f;
                Math_ApproachZeroF(&this->rightArmRot[i2].y, 0.1f, 100.0f);
                Math_ApproachZeroF(&this->leftArmRot[i2].y, 0.1f, 100.0f);
                if (i2 == 0) {
                    phi_f20 = -3000.0f;
                }
                Math_ApproachF(&this->rightArmRot[i2].x, phi_f20, 0.1f, 100.0f);
                Math_ApproachF(&this->leftArmRot[i2].x, -phi_f20, 0.1f, 100.0f);
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

    if (this->handoffSignal == FDSIGNAL_FLY) { // Set by BossFd2
        this->handoffSignal = FDSIGNAL_NONE;
        BossFd_SetupFly(this, globalCtx);
        do {
            temp_rand = Rand_ZeroFloat(8.9f);
        } while (temp_rand == this->holeIndex);
        this->holeIndex = temp_rand;
        if (1) {} // Needed for matching
        this->targetPosition.x = sHoleLocations[this->holeIndex].x;
        this->targetPosition.y = sHoleLocations[this->holeIndex].y - 200.0f;
        this->targetPosition.z = sHoleLocations[this->holeIndex].z;
        this->actor.world.pos = this->targetPosition;
        this->timers[0] = 10;
        this->actionState = FD_EMERGE;
        this->startAttack = true;
    }
    if (this->handoffSignal == FDSIGNAL_DEATH) {
        this->handoffSignal = FDSIGNAL_NONE;
        BossFd_SetupFly(this, globalCtx);
        this->holeIndex = 1;
        this->targetPosition.x = sHoleLocations[1].x;
        this->targetPosition.y = sHoleLocations[1].y - 200.0f;
        this->targetPosition.z = sHoleLocations[1].z;
        this->actor.world.pos = this->targetPosition;
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
        globalCtx->envCtx.unk_D8 = 0.5f + 0.5f * Math_SinS(this->varianceTimer * 0x500);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 1;
        globalCtx->envCtx.unk_BE = 0;
    } else if (this->fogMode == 3) {
        globalCtx->envCtx.unk_BF = 0;
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 2;
        globalCtx->envCtx.unk_BE = 0;
        Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.05f);
    } else if (this->fogMode == 2) {
        this->fogMode--;
        globalCtx->envCtx.unk_BF = 0;
        Math_ApproachF(&globalCtx->envCtx.unk_D8, 0.55f + 0.05f * Math_SinS(this->varianceTimer * 0x3E00), 1.0f, 0.15f);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 3;
        globalCtx->envCtx.unk_BE = 0;
    } else if (this->fogMode == 10) {
        this->fogMode = 1;
        globalCtx->envCtx.unk_BF = 0;
        Math_ApproachF(&globalCtx->envCtx.unk_D8, 0.21f + 0.07f * Math_SinS(this->varianceTimer * 0xC00), 1.0f, 0.05f);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 3;
        globalCtx->envCtx.unk_BE = 0;
    } else if (this->fogMode == 1) {
        Math_ApproachF(&globalCtx->envCtx.unk_D8, 0.0f, 1.0f, 0.03f);
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
    Math_ApproachF(&this->maneEmberRate, emberRate, 1.0f, 0.1f);
    Math_ApproachF(&this->maneEmberSpeed, emberSpeed, 1.0f, 0.5f);

    if (((this->varianceTimer % 8) == 0) && (Rand_ZeroOne() < 0.3f)) {
        this->blinkTimer = 4;
    }
    this->eyeState = eyeStates[this->blinkTimer];

    if (this->blinkTimer != 0) {
        this->blinkTimer--;
    }

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
    Math_ApproachF(&this->jawOpening, jawAngle, 0.3f, jawSpeed);

    if (this->roarTimer != 0) {
        this->roarTimer--;
    }
    if (1) {}

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
                ((this->introState == INTRO_EMERGE) && (this->actor.world.rot.x > 0x3000))) {
                if ((u8)this->fogMode == 0) {
                    globalCtx->envCtx.unk_D8 = 0.0f;
                }
                this->fogMode = 2;
            }
            for (i = 0; i < 5; i++) {
                spawnVel1.x = Rand_CenteredFloat(20.0f);
                spawnVel1.y = Rand_ZeroFloat(5.0f) + 4.0f;
                spawnVel1.z = Rand_CenteredFloat(20.0f);

                spawnAccel1.x = spawnAccel1.z = 0.0f;
                spawnAccel1.y = -0.3f;

                temp_x = (spawnVel1.x * 20) / 10.0f;
                temp_z = (spawnVel1.z * 20) / 10.0f;
                spawnPos1.x = temp_x + this->holePosition.x;
                spawnPos1.y = 100.0f;
                spawnPos1.z = temp_z + this->holePosition.z;

                func_8002836C(globalCtx, &spawnPos1, &spawnVel1, &spawnAccel1, &colorYellow, &colorRed,
                              (s16)Rand_ZeroFloat(150.0f) + 800, 10, (s16)Rand_ZeroFloat(5.0f) + 17);
            }
        } else {
            for (i = 0; i < 2; i++) {
                spawnVel1.x = Rand_CenteredFloat(10.0f);
                spawnVel1.y = Rand_ZeroFloat(3.0f) + 3.0f;
                spawnVel1.z = Rand_CenteredFloat(10.0f);

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
            spawnVel1.x = Rand_CenteredFloat(20.0f);
            spawnVel1.y = Rand_ZeroFloat(10.0f);
            spawnVel1.z = Rand_CenteredFloat(20.0f);

            spawnAccel1.y = 0.4f;
            spawnAccel1.x = Rand_CenteredFloat(0.5f);
            spawnAccel1.z = Rand_CenteredFloat(0.5f);

            spawnPos1.x = Rand_CenteredFloat(60.0) + this->holePosition.x;
            spawnPos1.y = Rand_ZeroFloat(40.0f) + 100.0f;
            spawnPos1.z = Rand_CenteredFloat(60.0) + this->holePosition.z;

            BossFd_SpawnEmber(this->effects, &spawnPos1, &spawnVel1, &spawnAccel1, (s16)Rand_ZeroFloat(1.5f) + 6);
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

        spawnAngleY = (this->actor.world.rot.y / (f32)0x8000) * M_PI;
        spawnAngleX = (((-this->actor.world.rot.x) / (f32)0x8000) * M_PI) + 0.3f;
        Matrix_RotateY(spawnAngleY, MTXMODE_NEW);
        Matrix_RotateX(spawnAngleX, MTXMODE_APPLY);
        Matrix_MultVec3f(&spawnSpeed2, &spawnVel2);

        BossFd_SpawnFireBreath(this->effects, &spawnPos2, &spawnVel2, &spawnAccel2,
                               50.0f * Math_SinS(this->varianceTimer * 0x2000) + 300.0f, breathOpacity,
                               this->actor.world.rot.y);

        spawnPos2.x += spawnVel2.x * 0.5f;
        spawnPos2.y += spawnVel2.y * 0.5f;
        spawnPos2.z += spawnVel2.z * 0.5f;

        BossFd_SpawnFireBreath(this->effects, &spawnPos2, &spawnVel2, &spawnAccel2,
                               50.0f * Math_SinS(this->varianceTimer * 0x2000) + 300.0f, breathOpacity,
                               this->actor.world.rot.y);
        spawnSpeed2.x = 0.0f;
        spawnSpeed2.z = 0.0f;
        spawnSpeed2.y = 17.0f;

        for (i = 0; i < 6; i++) {
            spawnAngleY = Rand_ZeroFloat(2.0f * M_PI);
            spawnAngleX = Rand_ZeroFloat(2.0f * M_PI);
            Matrix_RotateY(spawnAngleY, MTXMODE_NEW);
            Matrix_RotateX(spawnAngleX, MTXMODE_APPLY);
            Matrix_MultVec3f(&spawnSpeed2, &spawnVel2);

            spawnAccel2.x = (spawnVel2.x * -10) / 100;
            spawnAccel2.y = (spawnVel2.y * -10) / 100;
            spawnAccel2.z = (spawnVel2.z * -10) / 100;

            BossFd_SpawnEmber(this->effects, &this->headPos, &spawnVel2, &spawnAccel2, (s16)Rand_ZeroFloat(2.0f) + 8);
        }
    }

    if ((this->actor.world.pos.y < 90.0f) || (700.0f < this->actor.world.pos.y) || (this->actionFunc == BossFd_Wait)) {
        this->actor.flags &= ~1;
    } else {
        this->actor.flags |= 1;
    }
}

void BossFd_CollisionCheck(BossFd* this, GlobalContext* globalCtx) {
    ColliderJntSphElement* headCollider = &this->collider.elements[0];
    ColliderInfo* hurtbox;

    if (headCollider->info.bumperFlags & BUMP_HIT) {
        headCollider->info.bumperFlags &= ~BUMP_HIT;
        hurtbox = headCollider->info.acHitInfo;
        this->actor.colChkInfo.health -= 2;
        if (hurtbox->toucher.dmgFlags & 0x1000) {
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

    for (i = 0; i < ARRAY_COUNT(this->timers); i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }
    if (this->fireBreathTimer != 0) {
        this->fireBreathTimer--;
    }
    if (this->damageFlashTimer != 0) {
        this->damageFlashTimer--;
    }
    if (this->invincibilityTimer != 0) {
        this->invincibilityTimer--;
    }
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

    Math_ApproachF(&this->bodyTex2Opacity, (this->varianceTimer & 0x10) ? 30.0f : 158.0f, 1.0f, 8.0f);
    if (this->skinSegments == 0) {
        this->headTex2Opacity = this->bodyTex2Opacity;
    } else {
        headGlow = (this->varianceTimer & 4) ? 0.0f : 255.0f;
        Math_ApproachF(&this->headTex2Opacity, headGlow, 1.0f, 64.0f);
    }

    headGlow = (this->varianceTimer & 8) ? 128.0f : 255.0f;
    rManeGlow = ((this->varianceTimer + 3) & 8) ? 128.0f : 255.0f;
    lManeGlow = ((this->varianceTimer + 6) & 8) ? 128.0f : 255.0f;

    Math_ApproachF(&this->centerManeColor, headGlow, 1.0f, 16.0f);
    Math_ApproachF(&this->rightManeColor, rManeGlow, 1.0f, 16.0f);
    Math_ApproachF(&this->leftManeColor, lManeGlow, 1.0f, 16.0f);

    if (this->rockTimer != 0) {
        this->rockTimer--;
        if ((this->rockTimer % 16) == 0) {
            EnVbBall* bossFdRock = (EnVbBall*)Actor_SpawnAsChild(
                &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_VB_BALL, this->actor.world.pos.x, 1000.0f,
                this->actor.world.pos.z, 0, 0, (s16)Rand_ZeroFloat(50.0f) + 130, 100);

            if (bossFdRock != NULL) {
                for (i = 0; i < 10; i++) {
                    Vec3f debrisVel = { 0.0f, 0.0f, 0.0f };
                    Vec3f debrisAccel = { 0.0f, -1.0f, 0.0f };
                    Vec3f debrisPos;

                    debrisPos.x = Rand_CenteredFloat(300.0f) + bossFdRock->actor.world.pos.x;
                    debrisPos.y = Rand_CenteredFloat(300.0f) + bossFdRock->actor.world.pos.y;
                    debrisPos.z = Rand_CenteredFloat(300.0f) + bossFdRock->actor.world.pos.z;

                    BossFd_SpawnDebris(this->effects, &debrisPos, &debrisVel, &debrisAccel,
                                       (s16)Rand_ZeroFloat(15.0f) + 20);
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
            emberAccel.x = Rand_CenteredFloat(0.5f);
            emberAccel.z = Rand_CenteredFloat(0.5f);

            temp_rand = Rand_ZeroFloat(8.9f);

            emberPos.x = sHoleLocations[temp_rand].x + Rand_CenteredFloat(60.0f);
            emberPos.y = (sHoleLocations[temp_rand].y + 10.0f) + Rand_ZeroFloat(40.0f);
            emberPos.z = sHoleLocations[temp_rand].z + Rand_CenteredFloat(60.0f);

            BossFd_SpawnEmber(this->effects, &emberPos, &emberVel, &emberAccel, (s16)Rand_ZeroFloat(2.0f) + 6);
        }

        if (this->skinSegments != 0) {
            for (i = 0; i < (s16)this->maneEmberRate; i++) {
                temp_rand = Rand_ZeroFloat(29.9f);
                emberPos.y = this->centerMane.pos[temp_rand].y + Rand_CenteredFloat(20.0f);
                if (emberPos.y >= 90.0f) {
                    emberPos.x = this->centerMane.pos[temp_rand].x + Rand_CenteredFloat(20.0f);
                    emberPos.z = this->centerMane.pos[temp_rand].z + Rand_CenteredFloat(20.0f);

                    emberVel.x = Rand_CenteredFloat(this->maneEmberSpeed);
                    emberVel.y = Rand_CenteredFloat(this->maneEmberSpeed);
                    emberVel.z = Rand_CenteredFloat(this->maneEmberSpeed);

                    emberAccel.y = 0.4f;
                    emberAccel.x = Rand_CenteredFloat(0.5f);
                    emberAccel.z = Rand_CenteredFloat(0.5f);

                    BossFd_SpawnEmber(this->effects, &emberPos, &emberVel, &emberAccel,
                                      (s16)Rand_ZeroFloat(2.0f) + 8);
                }
            }
        }
    }
    osSyncPrintf("FD MOVE END 1\n");
    BossFd_UpdateEffects(this, globalCtx);
    osSyncPrintf("FD MOVE END 2\n");
}

void BossFd_UpdateEffects(BossFd* this, GlobalContext* globalCtx) {
    BossFdEffect* effect = this->effects;
    Player* player = PLAYER;
    Color_RGB8 colors[4] = { { 255, 128, 0 }, { 255, 0, 0 }, { 255, 255, 0 }, { 255, 0, 0 } };
    Vec3f diff;
    s16 cInd;
    s16 i1;
    s16 i2;

    for (i1 = 0; i1 < 180; i1++, effect++) {
        if (effect->type != FD_NULL) {
            effect->timer1++;

            effect->pos.x += effect->velocity.x;
            effect->pos.y += effect->velocity.y;
            effect->pos.z += effect->velocity.z;

            effect->velocity.x += effect->accel.x;
            effect->velocity.y += effect->accel.y;
            effect->velocity.z += effect->accel.z;
            if (effect->type == FD_EMBER) {
                cInd = effect->timer1 % 4;
                effect->color.r = colors[cInd].r;
                effect->color.g = colors[cInd].g;
                effect->color.b = colors[cInd].b;
                effect->alpha -= 20;
                if (effect->alpha <= 0) {
                    effect->alpha = 0;
                    effect->type = 0;
                }
            } else if ((effect->type == FD_DEBRIS) || (effect->type == FD_SKULL_PIECE)) {
                effect->xRot += 0.55f;
                effect->yRot += 0.1f;
                if (effect->pos.y <= 100.0f) {
                    effect->type = 0;
                }
            } else if (effect->type == FD_DUST) {
                if (effect->timer2 >= 8) {
                    effect->timer2 = 8;
                    effect->type = 0;
                } else if ((effect->timer1 & 1) || (Rand_ZeroOne() < 0.3f)) {
                    effect->timer2++;
                }
            } else if (effect->type == FD_FIRE_BREATH) {
                diff.x = player->actor.world.pos.x - effect->pos.x;
                diff.y = (player->actor.world.pos.y + 30.0f) - effect->pos.y;
                diff.z = player->actor.world.pos.z - effect->pos.z;
                if ((this->timers[3] == 0) && (sqrtf(SQ(diff.x) + SQ(diff.y) + SQ(diff.z)) < 20.0f)) {
                    this->timers[3] = 50;
                    func_8002F6D4(globalCtx, NULL, 5.0f, effect->kbAngle, 0.0f, 0x30);
                    if (player->isBurning == 0) {
                        for (i2 = 0; i2 < ARRAY_COUNT(player->flameTimers); i2++) {
                            player->flameTimers[i2] = Rand_S16Offset(0, 200);
                        }
                        player->isBurning = 1;
                    }
                }
                if (effect->timer2 == 0) {
                    if (effect->scale < 2.5f) {
                        effect->scale += effect->scaleMod;
                        effect->scaleMod += 0.08f;
                    }
                    if ((effect->pos.y <= (effect->yStop + 130.0f)) || (effect->timer1 >= 10)) {
                        effect->accel.y = 5.0f;
                        effect->timer2++;
                        effect->velocity.y = 0.0f;
                        effect->accel.x = (effect->velocity.x * -25.0f) / 100.0f;
                        effect->accel.z = (effect->velocity.z * -25.0f) / 100.0f;
                    }
                } else {
                    if (effect->scale < 2.5f) {
                        Math_ApproachF(&effect->scale, 2.5f, 0.5f, 0.5f);
                    }
                    effect->timer2++;
                    if (effect->timer2 >= 9) {
                        effect->type = 0;
                    }
                }
            }
        }
    }
}

void BossFd_DrawEffects(BossFdEffect* effect, GlobalContext* globalCtx) {
    static u64* dustTex[] = {
        gDust1Tex, gDust1Tex, gDust2Tex, gDust3Tex, gDust4Tex, gDust5Tex, gDust6Tex, gDust7Tex, gDust8Tex,
    };
    u8 flag = false;
    s16 i;
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    BossFdEffect* firstEffect = effect;

    OPEN_DISPS(gfxCtx, "../z_boss_fd.c", 4023);

    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == FD_EMBER) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_XLU_DISP++, gVolvagiaEmberSetupDL);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, effect->color.r, effect->color.g, effect->color.b,
                            effect->alpha);
            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4046),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gVolvagiaEmberVtxDL);
        }
    }

    effect = firstEffect;
    flag = false;
    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == FD_DEBRIS) {
            if (!flag) {
                func_80093D18(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_OPA_DISP++, gVolvagiaDebrisSetupDL);
                flag++;
            }

            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_RotateY(effect->yRot, MTXMODE_APPLY);
            Matrix_RotateX(effect->xRot, MTXMODE_APPLY);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4068),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gVolvagiaDebrisVtxDL);
        }
    }

    effect = firstEffect;
    flag = false;
    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == FD_DUST) {
            if (!flag) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0);
                gSPDisplayList(POLY_XLU_DISP++, gVolvagiaDustSetupDL);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 90, 30, 0, 255);
                gDPSetEnvColor(POLY_XLU_DISP++, 90, 30, 0, 0);
                flag++;
            }

            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_Scale(effect->scale, effect->scale, effect->scale, MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4104),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(dustTex[effect->timer2]));
            gSPDisplayList(POLY_XLU_DISP++, gVolvagiaDustVtxDL);
        }
    }

    effect = firstEffect;
    flag = false;
    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == FD_FIRE_BREATH) {
            if (!flag) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0);
                gSPDisplayList(POLY_XLU_DISP++, gVolvagiaDustSetupDL);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 10, 0, 255);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 0, effect->alpha);
            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_Scale(effect->scale, effect->scale, effect->scale, MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4154),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(dustTex[effect->timer2]));
            gSPDisplayList(POLY_XLU_DISP++, gVolvagiaDustVtxDL);
        }
    }

    effect = firstEffect;
    flag = false;
    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == FD_SKULL_PIECE) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_XLU_DISP++, gVolvagiaSkullPieceSetupDL);
                flag++;
            }

            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_RotateY(effect->yRot, MTXMODE_APPLY);
            Matrix_RotateX(effect->xRot, MTXMODE_APPLY);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4192),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gVolvagiaSkullPieceVtxDL);
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
            POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 255, 255, 0, 900, 1099);
        }

        BossFd_DrawBody(globalCtx, this);
        POLY_OPA_DISP = func_800BC8A0(globalCtx, POLY_OPA_DISP);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4243);
    }

    osSyncPrintf("FD DRAW END\n");
    BossFd_DrawEffects(this->effects, globalCtx);
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
    // arctan of {0.5, 0.35, 0.15, 0.05, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
    f32 spC8[] = { -0.4636457f, -0.33661291f, -0.14879614f, 0.024927188f, 0.07478157f,
                   0.04995025f, 0.09961288f,  0.0f,         0.0f,         0.0f };
    // arctan of {-0.5, -0.35, -0.15, 0.025, 0.075, 0.05, 0.1, 0.0, 0.0}
    s16 maneIndex;
    s16 i;
    s16 maneLength;
    Vec3f spB4;
    Vec3f spA8;
    f32 phi_f20;
    f32 phi_f22;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4419);

    maneLength = this->skinSegments;
    maneLength = CLAMP_MAX(maneLength, 10);

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
        gSPDisplayList(POLY_XLU_DISP++, gVolvagiaManeVtxDL);
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
        *dList = gVolvagiaBrokenFaceDL;
    }
    if (this->skinSegments == 0) {
        if (limbIndex == 6) {
            *dList = gVolvagiaSkullDL;
        } else if (limbIndex == 2) {
            *dList = gVolvagiaJawboneDL;
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
        Matrix_MultVec3f(&targetMod, &this->actor.focus.pos);
        Matrix_MultVec3f(&headMod, &this->headPos);
    }
}

static u64* sEyeTextures[] = { gVolvagiaEyeOpenTex, gVolvagiaEyeHalfTex, gVolvagiaEyeClosedTex };

static Gfx* sBodyDLists[] = {
    gVolvagiaBodySeg1DL,  gVolvagiaBodySeg2DL,  gVolvagiaBodySeg3DL,  gVolvagiaBodySeg4DL,  gVolvagiaBodySeg5DL,
    gVolvagiaBodySeg6DL,  gVolvagiaBodySeg7DL,  gVolvagiaBodySeg8DL,  gVolvagiaBodySeg9DL,  gVolvagiaBodySeg10DL,
    gVolvagiaBodySeg11DL, gVolvagiaBodySeg12DL, gVolvagiaBodySeg13DL, gVolvagiaBodySeg14DL, gVolvagiaBodySeg15DL,
    gVolvagiaBodySeg16DL, gVolvagiaBodySeg17DL, gVolvagiaBodySeg18DL,
};

void BossFd_DrawBody(GlobalContext* globalCtx, BossFd* this) {
    s16 segIndex;
    s16 i;
    f32 temp_float;
    Mtx* tempMat = Graph_Alloc(globalCtx->state.gfxCtx, 18 * sizeof(Mtx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4589);
    if (this->skinSegments != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeState]));
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
    SkelAnime_DrawOpa(globalCtx, this->skelAnimeRightArm.skeleton, this->skelAnimeRightArm.jointTable,
                      BossFd_OverrideRightArmDraw, NULL, this);
    Matrix_Pop();
    osSyncPrintf("RH\n");
    Matrix_Push();
    segIndex = (sBodyIndex[2] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z,
                     MTXMODE_NEW);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, MTXMODE_APPLY);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, MTXMODE_APPLY);
    Matrix_Translate(13.0f, -5.0f, 13.0f, MTXMODE_APPLY);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, MTXMODE_APPLY);
    SkelAnime_DrawOpa(globalCtx, this->skelAnimeLeftArm.skeleton, this->skelAnimeLeftArm.jointTable,
                      BossFd_OverrideLeftArmDraw, NULL, this);
    Matrix_Pop();
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
            Matrix_Scale(1.0f + (Math_SinS((this->leadBodySeg * 5000.0f) + (i * 7000.0f)) * (*this).bodyPulse),
                         1.0f + (Math_SinS((this->leadBodySeg * 5000.0f) + (i * 7000.0f)) * (*this).bodyPulse), 1.0f,
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
            f32 padD8;

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
                gSPDisplayList(POLY_OPA_DISP++, gVolvagiaRibsDL);

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
            Collider_UpdateSpheres(i + 1, &this->collider);
        }
    }
    Matrix_Pop();
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
    Collider_UpdateSpheres(0, &this->collider);
    Matrix_Pop();
    osSyncPrintf("BHCE\n");
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, MTXMODE_APPLY);
    SkelAnime_DrawOpa(globalCtx, this->skelAnimeHead.skeleton, this->skelAnimeHead.jointTable, BossFd_OverrideHeadDraw,
                      BossFd_PostHeadDraw, &this->actor);
    osSyncPrintf("SK\n");
    {
        Vec3f spB0 = { 0.0f, 1700.0f, 7000.0f };
        Vec3f spA4 = { -1000.0f, 700.0f, 7000.0f };

        func_80093D84(globalCtx->state.gfxCtx);
        gSPDisplayList(POLY_XLU_DISP++, gVolvagiaManeSetupDL);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, this->centerManeColor, 0, 255);
        Matrix_Push();
        Matrix_MultVec3f(&spB0, &this->centerMane.head);
        BossFd_DrawMane(globalCtx, this, this->centerMane.pos, this->fireManeRot, this->centerMane.scale, MANE_CENTER);
        Matrix_Pop();
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, this->rightManeColor, 0, 255);
        Matrix_Push();
        Matrix_MultVec3f(&spA4, &this->rightMane.head);
        BossFd_DrawMane(globalCtx, this, this->rightMane.pos, this->fireManeRot, this->rightMane.scale, MANE_RIGHT);
        Matrix_Pop();
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, this->leftManeColor, 0, 255);
        Matrix_Push();
        spA4.x *= -1.0f;
        Matrix_MultVec3f(&spA4, &this->leftMane.head);
        BossFd_DrawMane(globalCtx, this, this->leftMane.pos, this->fireManeRot, this->leftMane.scale, MANE_LEFT);
        Matrix_Pop();
        Matrix_Pop();
        osSyncPrintf("END\n");
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4987);
    }
}
