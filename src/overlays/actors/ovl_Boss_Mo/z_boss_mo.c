/*
 * File: z_boss_mo.c
 * Overlay: ovl_Boss_Mo
 * Description: Morpha
 */

#include "z_boss_mo.h"
#include "objects/object_mo/object_mo.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "vt.h"

#define FLAGS 0x00000035

#define THIS ((BossMo*)thisx)

#define MO_WATER_LEVEL(globalCtx) globalCtx->colCtx.colHeader->waterBoxes[0].ySurface

#define HAS_LINK(tent) ((tent != NULL) && ((tent->actionState == MO_TENT_GRAB) || (tent->actionState == MO_TENT_SHAKE)))

void BossMo_Init(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossMo_UpdateCore(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Update(Actor* thisx, GlobalContext* globalCtx);
void BossMo_DrawCore(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossMo_UpdateParticles(BossMo* this, GlobalContext* globalCtx);
void BossMo_DrawParticles(BossMoParticle* particle, GlobalContext* globalCtx);

void BossMo_SetupTentacle(BossMo* this, GlobalContext* globalCtx);
void BossMo_Tentacle(BossMo* this, GlobalContext* globalCtx);

void BossMo_Unknown(void);

#define vMaxSize moFxFloat1
#define vShimmer moFxFloat1
#define vSuction moFxFloat1

#define vSpreadRate moFxFloat2
#define vStretch moFxFloat2
#define vMaxScale moFxFloat2

typedef enum {
    /* 0 */ MO_FX_NULL,
    /* 1 */ MO_FX_SMALL_RIPPLE,
    /* 2 */ MO_FX_BIG_RIPPLE,
    /* 3 */ MO_FX_DROPLET,
    /* 4 */ MO_FX_SPLASH,
    /* 5 */ MO_FX_SPLASH_TRAIL,
    /* 6 */ MO_FX_WET_SPOT,
    /* 7 */ MO_FX_BUBBLE
} BossMoParticleType;

typedef enum {
    /*   0 */ MO_TENT_READY,
    /*   1 */ MO_TENT_SWING,
    /*   2 */ MO_TENT_ATTACK,
    /*   3 */ MO_TENT_CURL,
    /*   4 */ MO_TENT_GRAB,
    /*   5 */ MO_TENT_SHAKE,
    /*  10 */ MO_TENT_WAIT = 10,
    /*  11 */ MO_TENT_SPAWN,
    /* 100 */ MO_TENT_CUT = 100,
    /* 101 */ MO_TENT_RETREAT,
    /* 102 */ MO_TENT_DESPAWN,
    /* 200 */ MO_TENT_DEATH_START = 200,
    /* 201 */ MO_TENT_DEATH_1,
    /* 202 */ MO_TENT_DEATH_2,
    /* 203 */ MO_TENT_DEATH_3,
    /* 205 */ MO_TENT_DEATH_5 = 205,
    /* 206 */ MO_TENT_DEATH_6
} BossMoTentState;

typedef enum {
    /* -11 */ MO_CORE_UNUSED = -11,
    /*   0 */ MO_CORE_MOVE = 0,
    /*   1 */ MO_CORE_MAKE_TENT,
    /*   2 */ MO_CORE_UNDERWATER,
    /*   5 */ MO_CORE_STUNNED = 5,
    /*  10 */ MO_CORE_ATTACK = 10,
    /*  11 */ MO_CORE_RETREAT,
    /*  20 */ MO_CORE_INTRO_WAIT = 20,
    /*  21 */ MO_CORE_INTRO_REVEAL
} BossMoCoreState;

typedef enum {
    /*   0 */ MO_BATTLE,
    /*   1 */ MO_INTRO_WAIT,
    /*   2 */ MO_INTRO_START,
    /*   3 */ MO_INTRO_SWIM,
    /*   4 */ MO_INTRO_REVEAL,
    /*   5 */ MO_INTRO_FINISH,
    /* 100 */ MO_DEATH_START = 100,
    /* 101 */ MO_DEATH_DRAIN_WATER_1,
    /* 102 */ MO_DEATH_DRAIN_WATER_2,
    /* 103 */ MO_DEATH_CEILING,
    /* 104 */ MO_DEATH_DROPLET,
    /* 105 */ MO_DEATH_FINISH,
    /* 150 */ MO_DEATH_MO_CORE_BURST = 150
} BossMoCsState;

const ActorInit Boss_Mo_InitVars = {
    ACTOR_BOSS_MO,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_MO,
    sizeof(BossMo),
    (ActorFunc)BossMo_Init,
    (ActorFunc)BossMo_Destroy,
    (ActorFunc)BossMo_Update,
    (ActorFunc)BossMo_Draw,
};

static BossMo* sMorphaCore = NULL;
static BossMo* sMorphaTent1 = NULL;
static BossMo* sMorphaTent2 = NULL;

static f32 sFlatWidth[41] = {
    15.0f, 12.0f, 9.0f, 6.5f, 4.8f, 4.0f, 3.4f, 3.1f, 3.0f, 3.1f, 3.2f, 3.4f, 3.6f, 3.8f,
    4.0f,  4.6f,  5.1f, 5.5f, 6.1f, 6.6f, 7.3f, 7.7f, 8.4f, 8.5f, 8.7f, 8.8f, 8.8f, 8.7f,
    8.6f,  8.3f,  8.2f, 8.1f, 7.2f, 6.7f, 5.9f, 4.9f, 2.7f, 0.0f, 0.0f, 0.0f, 0.0f,
};

#include "z_boss_mo_colchk.c"

static BossMoParticle sParticles[300];
static s32 sSeed1;
static s32 sSeed2;
static s32 sSeed3;

void BossMo_InitRand(s32 seedInit0, s32 seedInit1, s32 seedInit2) {
    sSeed1 = seedInit0;
    sSeed2 = seedInit1;
    sSeed3 = seedInit2;
}

f32 BossMo_RandZeroOne(void) {
    // Wichmann-Hill algorithm
    f32 randFloat;

    sSeed1 = (sSeed1 * 171) % 30269;
    sSeed2 = (sSeed2 * 172) % 30307;
    sSeed3 = (sSeed3 * 170) % 30323;

    randFloat = (sSeed1 / 30269.0f) + (sSeed2 / 30307.0f) + (sSeed3 / 30323.0f);
    while (randFloat >= 1.0f) {
        randFloat -= 1.0f;
    }
    return fabsf(randFloat);
}

s32 BossMo_NearLand(Vec3f* pos, f32 margin) {
    if (450.0f - margin <= fabsf(pos->x)) {
        return true;
    }
    if (450.0f - margin <= fabsf(pos->z)) {
        return true;
    }
    if ((fabsf(pos->x - 180.0f) < 90.0f + margin) || (fabsf(pos->x - -180.0f) < 90.0f + margin)) {
        if (fabsf(pos->z - 180.0f) < 90.0f + margin) {
            return true;
        }
        if (fabsf(pos->z - -180.0f) < 90.0f + margin) {
            return true;
        }
    }
    return false;
}

void BossMo_SpawnRipples(BossMoParticle* particle, Vec3f* pos, f32 scale, f32 vMaxScale, s16 maxAlpha, s16 partLimit,
                         u8 type) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    s16 i;

    for (i = 0; i < partLimit; i++, particle++) {
        if (particle->type == MO_FX_NULL) {
            particle->stopTimer = 0;
            particle->type = type;
            particle->pos = *pos;
            particle->vel = zeroVec;
            particle->accel = zeroVec;
            particle->scale = scale * 0.0025f;
            particle->vMaxSize = vMaxScale * 0.0025f;
            if (scale > 300.0f) {
                particle->alpha = 0;
                particle->maxAlpha = maxAlpha;
                particle->rippleMode = 0;
                particle->vSpreadRate = (particle->vMaxSize - particle->scale) * 0.05f;
            } else {
                particle->alpha = maxAlpha;
                particle->rippleMode = 1;
                particle->vSpreadRate = (particle->vMaxSize - particle->scale) * 0.1f;
            }
            break;
        }
    }
}

void BossMo_SpawnDroplet(s16 type, BossMoParticle* particle, Vec3f* pos, Vec3f* vel, f32 scale) {
    s16 i;
    Vec3f gravity = { 0.0f, -1.0f, 0.0f };

    for (i = 0; i < 290; i++, particle++) {
        if (particle->type == MO_FX_NULL) {
            particle->type = type;
            particle->pos = *pos;
            particle->vel = *vel;
            particle->accel = gravity;
            if (type == MO_FX_SPLASH_TRAIL) {
                particle->accel.y = 0.0f;
            }
            particle->scale = scale;
            particle->vSpreadRate = 1.0f;
            particle->stopTimer = 0;
            break;
        }
    }
}

void BossMo_SpawnStillDroplet(BossMoParticle* particle, Vec3f* pos, f32 scale) {
    s16 i;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

    for (i = 0; i < 290; i++, particle++) {
        if (particle->type == MO_FX_NULL) {
            particle->type = MO_FX_DROPLET;
            particle->stopTimer = 2;
            particle->pos = *pos;
            particle->vel = zeroVec;
            particle->accel = zeroVec;
            particle->scale = scale;
            particle->vSpreadRate = 1.0f;
            break;
        }
    }
}

void BossMo_SpawnBubble(BossMoParticle* particle, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale, Vec3f* targetPos) {
    s16 i;

    for (i = 0; i < 280; i++, particle++) {
        if (particle->type == MO_FX_NULL) {
            particle->type = MO_FX_BUBBLE;
            particle->stopTimer = 0;
            particle->pos = *pos;
            particle->vel = *vel;
            particle->accel = *accel;
            particle->scale = scale;
            particle->vSuction = 0.0f;
            particle->targetPos = targetPos;
            if (targetPos == NULL) {
                particle->alpha = 255;
            } else {
                particle->alpha = 0;
            }
            particle->timer = 0;
            break;
        }
    }
}

static s16 sCurlRot[41] = {
    0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  4, 8, 8, 8, 9, 9, 9,
    9, 9, 9, 12, 15, 15, 15, 15, 15, 15, 15, 20, 20, 20, 0, 0, 0, 0, 0, 0,
};
static s16 sGrabRot[41] = {
    0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 0, 0, -5, -5, -5,
    0, 5, 10, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0, 0, 0, 0,  0,
};
static s16 sAttackRot[41] = {
    0, 5, 6, 7, 8, 8, 7, 6, 6, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

static InitChainEntry sInitChain[4] = {
    ICHAIN_U8(targetMode, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 37, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 0, ICHAIN_STOP),
};

static Vec3f sAudioZeroVec = { 0.0f, 0.0f, 0.0f };

static u8 sTentSpawnIndex[21] = { 0, 1, 2, 3, 4, 15, 19, 5, 14, 16, 17, 18, 6, 13, 20, 7, 12, 11, 10, 9, 8 };

static Vec2f sTentSpawnPos[21] = {
    { -360.0f, -360.0f }, { -180.0f, -360.0f }, { 0.0f, -360.0f },   { 180.0f, -360.0f }, { 360.0f, -360.0f },
    { -360.0f, -180.0f }, { 0.0f, -180.0f },    { 360.0f, -180.0f }, { -360.0f, 0.0f },   { -180.0f, 0.0f },
    { 0.0f, 0.0f },       { 180.0f, 0.0f },     { 360.0f, 0.0f },    { -360.0f, 180.0f }, { 0.0f, 180.0f },
    { 360.0f, 180.0f },   { -360.0f, 360.0f },  { -180.0f, 360.0f }, { 0.0f, 360.0f },    { 180.0f, 360.0f },
    { 360.0f, 360.0f },
};

static f32 sTentWidth[41] = {
    3.56f, 3.25f, 2.96f, 2.69f, 2.44f, 2.21f, 2.0f, 1.81f, 1.64f, 1.49f, 1.36f, 1.25f, 1.16f, 1.09f,
    1.04f, 1.01f, 1.0f,  1.0f,  1.0f,  1.0f,  1.0f, 1.0f,  1.0f,  1.0f,  1.0f,  1.0f,  1.0f,  1.0f,
    1.0f,  1.0f,  1.0f,  1.0f,  0.98f, 0.95f, 0.9f, 0.8f,  0.6f,  1.0f,  1.0f,  1.0f,  1.0f,
};

static f32 sDropletWidth[41] = {
    0.0f,      2.95804f,  4.123106f, 4.974937f, 5.656854f, 6.22495f,  6.708204f, 7.123903f, 7.483315f,
    7.794229f, 8.062258f, 8.291562f, 8.485281f, 8.645808f, 8.774964f, 8.87412f,  8.944272f, 8.9861f,
    9.0f,      8.9861f,   8.944272f, 8.87412f,  8.774964f, 8.645808f, 8.485281f, 8.291562f, 8.062258f,
    7.794229f, 7.483315f, 7.123903f, 6.708204f, 6.22495f,  5.656854f, 4.974937f, 4.123106f, 2.95804f,
    0.0f,      0.0f,      0.0f,      0.0f,      0.0f,
}; // These are sqrt(9^2 - (i/2 - 9)^2) / 2, a sphere of radius 9.

void BossMo_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossMo* this = THIS;
    u16 i;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    if (this->actor.params != BOSSMO_TENTACLE) {
        Flags_SetSwitch(globalCtx, 0x14);
        sMorphaCore = this;
        MO_WATER_LEVEL(globalCtx) = this->waterLevel = MO_WATER_LEVEL(globalCtx);
        globalCtx->unk_11D30[0] = 0xA0;
        globalCtx->specialEffects = &sParticles;
        for (i = 0; i < ARRAY_COUNT(sParticles); i++) {
            sParticles[i].type = 0;
        }
        this->actor.world.pos.x = 200.0f;
        this->actor.world.pos.y = MO_WATER_LEVEL(globalCtx) + 50.0f;
        this->swingSizeX = 5.0f;
        this->drawActor = true;
        this->actor.colChkInfo.health = 20;
        this->actor.colChkInfo.mass = 0;
        this->actor.params = 0;
        Actor_SetScale(&this->actor, 0.01f);
        Collider_InitCylinder(globalCtx, &this->coreCollider);
        Collider_SetCylinder(globalCtx, &this->coreCollider, &this->actor, &sCylinderInit);
        if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
            Actor_Kill(&this->actor);
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, -280.0f, 0.0f, 0,
                               0, 0, -1);
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, -200.0f, -280.0f, 0.0f, 0, 0, 0, 0);
            globalCtx->unk_11D30[0] = 0xFF;
            MO_WATER_LEVEL(globalCtx) = -500;
            return;
        }
        if (gSaveContext.eventChkInf[7] & 0x10) {
            Audio_QueueSeqCmd(0x1B);
            this->tentMaxAngle = 5.0f;
            this->timers[0] = 50;
        } else {
            this->csState = MO_INTRO_WAIT;
            this->actionState = MO_CORE_INTRO_WAIT;
            this->actor.world.pos.x = 1000.0f;
            this->timers[0] = 60;
        }
        sMorphaTent1 = (BossMo*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_MO,
                                                   this->actor.world.pos.x, this->actor.world.pos.y,
                                                   this->actor.world.pos.z, 0, 0, 0, BOSSMO_TENTACLE);
        this->actor.draw = BossMo_DrawCore;
        this->actor.update = BossMo_UpdateCore;
        Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_BOSS);
    } else {
        Actor_SetScale(&this->actor, 0.01f);
        BossMo_SetupTentacle(this, globalCtx);
        this->actor.colChkInfo.mass = 0xFF;
        MO_WATER_LEVEL(globalCtx) = -50;
        this->waterTexAlpha = 90.0f;
        this->actor.world.pos.y = MO_WATER_LEVEL(globalCtx);
        this->actor.prevPos = this->targetPos = this->actor.world.pos;
        Collider_InitJntSph(globalCtx, &this->tentCollider);
        Collider_SetJntSph(globalCtx, &this->tentCollider, &this->actor, &sJntSphInit, this->tentElements);
        this->tentMaxAngle = 1.0f;
    }
}

void BossMo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossMo* this = THIS;

    if (this->actor.params >= 100) {
        Collider_DestroyJntSph(globalCtx, &this->tentCollider);
    } else {
        Collider_DestroyCylinder(globalCtx, &this->coreCollider);
    }
}

void BossMo_SetupTentacle(BossMo* this, GlobalContext* globalCtx) {
    this->actionFunc = BossMo_Tentacle;
    this->actionState = MO_TENT_WAIT;
    this->timers[0] = 50 + (s16)Rand_ZeroFloat(20.0f);
}

void BossMo_Tentacle(BossMo* this, GlobalContext* globalCtx) {
    // Because of the large number of variables, I have marked the real
    // stack variables that cannot be reordered and the pads currently
    // not being used as temps.
    s16 tentXrot;
    s16 sp1B4 = 0; // real
    s32 buttons;
    Player* player = PLAYER;
    s16 indS0;
    s16 indS1;
    Camera* camera1;
    Camera* camera2;
    BossMo* otherTent = (BossMo*)this->otherTent; // real
    f32 maxSwingRateX;                            // real
    f32 maxSwingLagX;                             // real
    f32 maxSwingSizeX;                            // real
    f32 maxSwingRateZ;                            // real
    f32 maxSwingLagZ;                             // real
    f32 maxSwingSizeZ;                            // real
    f32 swingRateAccel;                           // real
    f32 swingSizeAccel;                           // real
    s16 rippleCount;                              // real
    s16 indT5;
    Vec3f ripplePos; // real
    f32 rand_angle;
    f32 rand_f;
    f32 temp_f22;
    f32 temp_f24;
    f32 sin;
    f32 cos;
    f32 temp;
    f32 dx;
    f32 dy;
    f32 dz;
    Vec3f sp138; // real
    Vec3f sp12C; // real
    Vec3f sp120; // real
    s32 pad11C;  // currently unused
    s32 pad118;  // currently unused
    s32 pad114;  // currently unused
    s32 pad110;  // currently unused
    s32 pad10C;  // currently unused
    s32 pad108;  // currently unused
    Vec3f spFC;  // real
    Vec3f spF0;  // real
    f32 padEC;
    Vec3f spE0; // real
    Vec3f spD4; // real
    Vec3f spC8; // real

    if (this->actionState <= MO_TENT_DEATH_3) {
        this->actor.world.pos.y = MO_WATER_LEVEL(globalCtx);
    }
    if ((this->actionState == MO_TENT_READY) || (this->actionState >= MO_TENT_DEATH_START) ||
        (this->actionState == MO_TENT_RETREAT) || (this->actionState == MO_TENT_SWING) ||
        (this->actionState == MO_TENT_SHAKE)) {
        if (this->actionState == MO_TENT_READY) {
            if (sMorphaCore->csState != MO_BATTLE) {
                maxSwingRateX = 2000.0f;
                maxSwingLagX = 3000.0f;
                maxSwingSizeX = 1000.0f;
                maxSwingRateZ = 1500.0f;
                maxSwingLagZ = 2500.0f;
                maxSwingSizeZ = 1000.0f;
                swingRateAccel = 10.0f;
                swingSizeAccel = 10.0f;
            } else {
                maxSwingRateX = 2000.0f;
                maxSwingLagX = 3000.0f;
                maxSwingSizeX = 1000.0f;
                maxSwingRateZ = 1500.0f;
                maxSwingLagZ = 2500.0f;
                maxSwingSizeZ = 1000.0f;
                swingRateAccel = 20.0f;
                swingSizeAccel = 30.0f;
            }
        } else if (this->actionState == MO_TENT_SWING) {
            maxSwingRateX = 2500.0f;
            maxSwingLagX = -1000.0f;
            maxSwingSizeX = 3000.0f;
            maxSwingRateZ = 1500.0f;
            maxSwingLagZ = 2500.0f;
            maxSwingSizeZ = 0.0;
            swingRateAccel = 30.0f;
            swingSizeAccel = 60.0f;
            if (((this->sfxTimer % 16) == 0) && (this->timers[0] < 30)) {
                func_800F4B58(&this->tentTipPos, NA_SE_EN_MOFER_WAVE, D_801305D0);
            }
        } else if (this->actionState == MO_TENT_SHAKE) {
            if (this->timers[0] > 40) {
                maxSwingRateX = 1300.0f;
                maxSwingLagX = -3200.0f;
                maxSwingSizeX = 7000.0f;
                maxSwingRateZ = 800.0f;
                maxSwingLagZ = 2500.0f;
                maxSwingSizeZ = 5000.0f;
                swingRateAccel = 30.0f;
                swingSizeAccel = 60.0f;
                if ((this->sfxTimer % 32) == 0) {
                    func_800F4B58(&this->tentTipPos, NA_SE_EN_MOFER_WAVE, D_801305D0);
                    func_800AA000(0, 100, 5, 2);
                    func_8002F7DC(&player->actor, NA_SE_VO_LI_FREEZE + player->ageProperties->unk_92);
                }
            } else {
                maxSwingRateX = 2000.0f;
                maxSwingLagX = -1000.0f;
                maxSwingSizeX = 5000.0f;
                maxSwingRateZ = 1500.0f;
                maxSwingLagZ = 2500.0f;
                maxSwingSizeZ = 100.0f;
                swingRateAccel = 70.0f;
                swingSizeAccel = 70.0f;
                if ((this->sfxTimer % 16) == 0) {
                    func_800F4B58(&this->tentTipPos, NA_SE_EN_MOFER_WAVE, D_801305D0);
                    func_800AA000(0, 160, 5, 4);
                    func_8002F7DC(&player->actor, NA_SE_VO_LI_FREEZE + player->ageProperties->unk_92);
                }
            }
        } else if (this->actionState == MO_TENT_RETREAT) {
            maxSwingRateX = 1300.0f;
            maxSwingLagX = 3200.0f;
            maxSwingSizeX = 7000.0f;
            maxSwingRateZ = 800.0f;
            maxSwingLagZ = 2500.0f;
            maxSwingSizeZ = 5000.0f;
            swingRateAccel = 30.0f;
            swingSizeAccel = 30.0f;
        } else if (this->actionState >= MO_TENT_DEATH_START) {
            maxSwingRateX = -400.0f;
            maxSwingLagX = -3200.0f;
            maxSwingSizeX = 0.0f;
            maxSwingRateZ = 2300.0f;
            maxSwingLagZ = 3200.0f;
            maxSwingSizeZ = 1000.0;
            swingRateAccel = 30.0f;
            swingSizeAccel = 60.0f;
        }
        Math_ApproachF(&this->swingRateX, maxSwingRateX, 1.0f, swingRateAccel);
        Math_ApproachF(&this->swingLagX, maxSwingLagX, 1.0f, 30.0f);
        Math_ApproachF(&this->swingSizeX, maxSwingSizeX, 1.0f, swingSizeAccel);
        Math_ApproachF(&this->swingRateZ, maxSwingRateZ, 1.0f, swingRateAccel);
        Math_ApproachF(&this->swingLagZ, maxSwingLagZ, 1.0f, 30.0f);
        Math_ApproachF(&this->swingSizeZ, maxSwingSizeZ, 1.0f, swingSizeAccel);
        this->tentSwingX += (s16)this->swingRateX;
        this->tentSwingZ += (s16)this->swingRateZ;
    }
    switch (this->actionState) {
        case MO_TENT_WAIT:
            this->actor.flags &= ~1;
            if (this == sMorphaTent2) {
                this->actionState = MO_TENT_SPAWN;
                this->timers[0] = 70;
                this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
            }
            break;
        case MO_TENT_SPAWN:
            this->drawActor = true;
            this->baseBubblesTimer = 20;
            if (this->timers[0] < 20) {
                Math_ApproachF(&this->tentRippleSize, 0.15f, 0.5f, 0.01);
                Math_ApproachF(&this->baseAlpha, 150.0f, 1.0f, 5.0f);
                if (this->baseAlpha >= 150.0f) {
                    this->actionState = MO_TENT_READY;
                    this->timers[0] = 60;
                }
            }
            if (this->timers[0] > 50) {
                rippleCount = 1;
            } else if (this->timers[0] > 40) {
                rippleCount = 3;
            } else if (this->timers[0] > 30) {
                rippleCount = 5;
            } else if (this->timers[0] > 20) {
                rippleCount = 8;
            } else {
                rippleCount = 3;
            }
            for (indS1 = 0; indS1 < rippleCount; indS1++) {
                rand_f = Rand_ZeroFloat(50.0f);
                rand_angle = Rand_ZeroFloat(0x10000);
                ripplePos = this->actor.world.pos;
                ripplePos.x += sinf(rand_angle) * rand_f;
                ripplePos.z += cosf(rand_angle) * rand_f;
                ripplePos.y = MO_WATER_LEVEL(globalCtx);
                BossMo_SpawnRipples(globalCtx->specialEffects, &ripplePos, 40.0f, 110.0f, 80, 290, MO_FX_SMALL_RIPPLE);
            }
            break;
        case MO_TENT_READY:
        case MO_TENT_SWING:
            if (sMorphaCore->csState == MO_BATTLE) {
                func_80078914(&this->tentTipPos, NA_SE_EN_MOFER_APPEAR - SFX_FLAG);
            }
            Math_ApproachF(&this->waterLevelMod, -5.0f, 0.1f, 0.4f);
            for (indS1 = 0; indS1 < 41; indS1++) {

                sin = Math_SinS(((s16)this->swingLagX * indS1) + this->tentSwingX);
                temp_f22 = this->swingSizeX * (indS1 * 0.025f * sin);

                cos = Math_SinS(((s16)this->swingLagZ * indS1) + this->tentSwingZ);
                temp_f24 = this->swingSizeZ * (indS1 * 0.025f * cos);

                Math_ApproachF(&this->tentStretch[indS1].y, this->tentMaxStretch * 5.0f, 0.1f, 0.4f);
                if (indS1 == 28) {
                    sp1B4 = this->tentRot[indS1].x;
                }
                Math_ApproachS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_ApproachS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->targetPos = this->actor.world.pos;
            Math_ApproachF(&this->actor.speedXZ, 0.75f, 1.0f, 0.04f);
            if (this->actionState == MO_TENT_SWING) {
                Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + this->attackAngleMod, 0xA,
                               0x1F4);
            }
            Math_ApproachF(&this->tentMaxStretch, 1.0f, 0.5f, 0.04);
            if (sMorphaCore->csState != MO_BATTLE) {
                Math_ApproachF(&this->tentMaxAngle, 1.0f, 1.0f, 0.001f);
                Math_ApproachF(&this->tentSpeed, 240.0f, 1.0f, 3.0);
            } else {
                Math_ApproachF(&this->tentMaxAngle, 1.0f, 1.0f, 0.002f);
                Math_ApproachF(&this->tentSpeed, 400.0f, 1.0f, 6.0f);
            }
            if (this->actionState == MO_TENT_READY) {
                if ((this->timers[0] == 0) && !HAS_LINK(otherTent)) {
                    this->actionState = MO_TENT_SWING;
                    this->timers[0] = 50;
                    func_800F4BE8();
                    this->attackAngleMod = Rand_CenteredFloat(0x1000);
                }
            } else {
                tentXrot = this->tentRot[28].x;
                if ((this->timers[0] == 0) && (tentXrot >= 0) && (sp1B4 < 0)) {
                    this->actionState = MO_TENT_ATTACK;
                    if (this == sMorphaTent1) {
                        this->timers[0] = 175;
                    } else {
                        this->timers[0] = 55;
                    }
                }
            }
            break;
        case MO_TENT_ATTACK:
            this->actor.flags |= 0x1000000;
            func_80078914(&this->tentTipPos, NA_SE_EN_MOFER_ATTACK - SFX_FLAG);
            Math_ApproachF(&this->waterLevelMod, -5.0f, 0.1f, 0.4f);
            for (indS1 = 0; indS1 < 41; indS1++) {
                Math_ApproachF(&this->tentStretch[indS1].y,
                               this->tentMaxStretch * ((((40 - indS1) * 25.0f) / 100.0f) + 5.0f), 0.5f, 0.7f);
                Math_ApproachS(&this->tentRot[indS1].x, sAttackRot[indS1] * 0x100, 1.0f / this->tentMaxAngle,
                               this->tentSpeed);
                Math_ApproachS(&this->tentRot[indS1].z, 0, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->targetPos = this->actor.world.pos;
            Math_ApproachF(&this->tentMaxAngle, 0.5f, 1.0f, 0.01);
            Math_ApproachF(&this->tentSpeed, 160.0f, 1.0f, 50.0f);
            if ((this->timers[0] == 0) || (this->linkHitTimer != 0)) {
                dx = this->tentPos[22].x - player->actor.world.pos.x;
                dy = this->tentPos[22].y - player->actor.world.pos.y;
                dz = this->tentPos[22].z - player->actor.world.pos.z;
                if ((fabsf(dy) < 50.0f) && !HAS_LINK(otherTent) && (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 120.0f)) {
                    this->tentMaxAngle = .001f;
                    this->actionState = MO_TENT_CURL;
                    this->timers[0] = 40;
                    this->tentSpeed = 0;
                    if ((s16)(this->actor.shape.rot.y - this->actor.yawTowardsPlayer) >= 0) {
                        this->linkToLeft = false;
                    } else {
                        this->linkToLeft = true;
                    }
                } else {
                    this->tentMaxAngle = .001f;
                    this->actionState = MO_TENT_READY;
                    this->tentSpeed = 0;
                    this->swingRateX = 0;
                    this->swingRateZ = 0;
                    this->swingSizeX = 0;
                    this->swingSizeZ = 0;
                    this->timers[0] = 30;
                    if ((fabsf(player->actor.world.pos.x - this->actor.world.pos.x) > 300.0f) ||
                        (player->actor.world.pos.y < MO_WATER_LEVEL(globalCtx)) || HAS_LINK(otherTent) ||
                        (fabsf(player->actor.world.pos.z - this->actor.world.pos.z) > 300.0f)) {

                        this->actionState = MO_TENT_RETREAT;
                        this->timers[0] = 75;
                    }
                }
            }
            break;
        case MO_TENT_CURL:
        case MO_TENT_GRAB:
            Math_ApproachF(&this->waterLevelMod, -5.0f, 0.1f, 0.4f);
            if (this->timers[0] == 125) {
                this->tentMaxAngle = .001f;
                this->tentSpeed = 0;
            }
            for (indS1 = 0; indS1 < 41; indS1++) {
                if (this->timers[0] > 25) {
                    if (!this->linkToLeft) {
                        Math_ApproachS(&this->tentRot[indS1].z, sCurlRot[indS1] * 0x100, 1.0f / this->tentMaxAngle,
                                       this->tentSpeed);
                    } else {
                        Math_ApproachS(&this->tentRot[indS1].z, sCurlRot[indS1] * -0x100, 1.0f / this->tentMaxAngle,
                                       this->tentSpeed);
                    }
                } else {
                    if (!this->linkToLeft) {
                        Math_ApproachS(&this->tentRot[indS1].z, sGrabRot[indS1] * 0x100, 1.0f / this->tentMaxAngle,
                                       this->tentSpeed);
                    } else {
                        Math_ApproachS(&this->tentRot[indS1].z, sGrabRot[indS1] * -0x100, 1.0f / this->tentMaxAngle,
                                       this->tentSpeed);
                    }
                }
            }
            Math_ApproachF(&this->tentMaxAngle, 0.1f, 1.0f, 0.01f);
            Math_ApproachF(&this->tentSpeed, 960.0f, 1.0f, 30.0f);
            if (this->timers[0] >= 30) {
                Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0xC8);
            }
            if (this->actionState == MO_TENT_CURL) {
                if ((this->timers[0] >= 5) && (this->linkHitTimer != 0) && (player->actor.parent == NULL)) {
                    if (globalCtx->grabPlayer(globalCtx, player)) {
                        player->actor.parent = &this->actor;
                        this->actionState = MO_TENT_GRAB;
                        func_80078914(&this->tentTipPos, NA_SE_EN_MOFER_CATCH);
                        Audio_PlaySoundGeneral(NA_SE_VO_LI_DAMAGE_S, &player->actor.projectedPos, 4, &D_801333E0,
                                               &D_801333E0, &D_801333E8);
                    } else {
                        this->actionState = MO_TENT_READY;
                        this->tentMaxAngle = .001f;
                        this->tentSpeed = 0;
                        this->swingSizeZ = 0;
                        this->swingSizeX = 0;
                        this->swingRateZ = 0;
                        this->swingRateX = 0;
                        this->timers[0] = 30;
                    }
                }
                if (this->timers[0] == 4) {
                    this->actionState = MO_TENT_READY;
                    this->tentMaxAngle = .001f;
                    this->tentSpeed = 0;
                    this->swingSizeZ = 0;
                    this->swingSizeX = 0;
                    this->swingRateZ = 0;
                    this->swingRateX = 0;
                    this->timers[0] = 30;
                }
            }
            if (this->actionState == MO_TENT_GRAB) {
                player->unk_850 = 0xA;
                player->actor.speedXZ = player->actor.velocity.y = 0;
                Math_ApproachF(&player->actor.world.pos.x, this->grabPosRot.pos.x, 0.5f, 20.0f);
                Math_ApproachF(&player->actor.world.pos.y, this->grabPosRot.pos.y, 0.5f, 20.0f);
                Math_ApproachF(&player->actor.world.pos.z, this->grabPosRot.pos.z, 0.5f, 20.0f);
                Math_ApproachS(&player->actor.shape.rot.x, this->grabPosRot.rot.x, 2, 0x7D0);
                Math_ApproachS(&player->actor.shape.rot.y, this->grabPosRot.rot.y, 2, 0x7D0);
                Math_ApproachS(&player->actor.shape.rot.z, this->grabPosRot.rot.z, 2, 0x7D0);
                if (this->timers[0] == 0) {
                    camera1 = Gameplay_GetCamera(globalCtx, MAIN_CAM);
                    this->actionState = MO_TENT_SHAKE;
                    this->tentMaxAngle = .001f;
                    this->swingRateX = this->swingRateZ = this->swingSizeX = this->swingSizeZ = this->tentSpeed = 0;
                    this->timers[0] = 150;
                    this->mashCounter = 0;
                    this->sfxTimer = 30;
                    func_800F4BE8();
                    func_80064520(globalCtx, &globalCtx->csCtx);
                    this->csCamera = Gameplay_CreateSubCamera(globalCtx);
                    Gameplay_ChangeCameraStatus(globalCtx, MAIN_CAM, 1);
                    Gameplay_ChangeCameraStatus(globalCtx, this->csCamera, 7);
                    this->cameraEye = camera1->eye;
                    this->cameraAt = camera1->at;
                    this->cameraYaw = Math_FAtan2F(this->cameraEye.x - this->actor.world.pos.x,
                                                   this->cameraEye.z - this->actor.world.pos.z);
                    this->cameraYawRate = 0;
                    goto tent_shake; // I think this is genuinely the correct code
                }
            }
            break;
        tent_shake:
        case MO_TENT_SHAKE:
            if (this->timers[0] == 138) {
                ShrinkWindow_SetVal(0);
                Interface_ChangeAlpha(0xB);
            }
            if ((this->timers[0] % 8) == 0) {
                globalCtx->damagePlayer(globalCtx, -1);
            }
            Math_ApproachF(&this->waterLevelMod, -5.0f, 0.1f, 0.4f);
            sp1B4 = this->tentRot[15].x;
            buttons = globalCtx->state.input[0].press.button;
            if (CHECK_BTN_ALL(buttons, BTN_A) || CHECK_BTN_ALL(buttons, BTN_B)) {
                this->mashCounter++;
            }
            for (indS1 = 0; indS1 < 41; indS1++) {
                if (indS1 < 20) {
                    sin = Math_SinS(((s16)this->swingLagX * indS1) + this->tentSwingX);
                    temp_f22 = this->swingSizeX * (indS1 * 0.025f * sin);
                    cos = Math_SinS(((s16)this->swingLagZ * indS1) + this->tentSwingZ);
                    temp_f24 = this->swingSizeZ * (indS1 * 0.025f * cos);
                    temp = ((((40 - indS1) * 25.0f) / 100.0f) + 5.0f);
                    Math_ApproachF(&this->tentStretch[indS1].y, this->tentMaxStretch * temp, 0.1f, 0.1f);
                    Math_ApproachS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                    Math_ApproachS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
                }
            }
            player->unk_850 = 0xA;
            player->actor.world.pos.x = this->grabPosRot.pos.x;
            player->actor.world.pos.y = this->grabPosRot.pos.y;
            player->actor.world.pos.z = this->grabPosRot.pos.z;
            player->actor.world.rot.x = player->actor.shape.rot.x = this->grabPosRot.rot.x;
            player->actor.world.rot.y = player->actor.shape.rot.y = this->grabPosRot.rot.y;
            player->actor.world.rot.z = player->actor.shape.rot.z = this->grabPosRot.rot.z;
            player->actor.velocity.y = 0;
            player->actor.speedXZ = 0;
            Math_ApproachF(&this->tentMaxStretch, 1.0f, 0.5f, 0.01);
            Math_ApproachF(&this->tentMaxAngle, 0.5f, 1.0f, 0.005f);
            Math_ApproachF(&this->tentSpeed, 480.0f, 1.0f, 10.0f);
            Math_ApproachF(&this->tentPulse, 0.3f, 0.5f, 0.03f);
            if ((this->mashCounter >= 40) || (this->timers[0] == 0)) {
                tentXrot = this->tentRot[15].x;
                if ((tentXrot < 0) && (sp1B4 >= 0)) {
                    this->actionState = MO_TENT_RETREAT;
                    this->invincibilityTimer = 50;
                    if (&this->actor == player->actor.parent) {
                        player->unk_850 = 0x65;
                        player->actor.parent = NULL;
                        player->csMode = 0;
                        if (this->timers[0] == 0) {
                            func_8002F6D4(globalCtx, &this->actor, 20.0f, this->actor.shape.rot.y + 0x8000, 10.0f, 0);
                        }
                    }
                    this->timers[0] = 75;
                }
            }
            if (this->csCamera != 0) {
                sp138.x = 0;
                sp138.y = 100.0f;
                sp138.z = 200.0f;
                this->cameraYaw -= this->cameraYawRate;
                Math_ApproachF(&this->cameraYawRate, 0.01, 1.0f, 0.002f);
                Matrix_RotateY(this->cameraYaw, MTXMODE_NEW);
                Matrix_MultVec3f(&sp138, &sp12C);
                Math_ApproachF(&this->cameraEye.x, this->actor.world.pos.x + sp12C.x, 0.1f, 10.0f);
                Math_ApproachF(&this->cameraEye.y, this->actor.world.pos.y + sp12C.y, 0.1f, 10.0f);
                Math_ApproachF(&this->cameraEye.z, this->actor.world.pos.z + sp12C.z, 0.1f, 10.0f);
                Math_ApproachF(&this->cameraAt.x, player->actor.world.pos.x, 0.5f, 50.0f);
                Math_ApproachF(&this->cameraAt.y, player->actor.world.pos.y, 0.5f, 50.0f);
                Math_ApproachF(&this->cameraAt.z, player->actor.world.pos.z, 0.5f, 50.0f);
                Gameplay_CameraSetAtEye(globalCtx, this->csCamera, &this->cameraAt, &this->cameraEye);
            }
            break;
        case MO_TENT_CUT:
            func_80078914(&this->tentTipPos, NA_SE_EV_WATER_WALL - SFX_FLAG);
            if (&this->actor == player->actor.parent) {
                player->unk_850 = 0x65;
                player->actor.parent = NULL;
                player->csMode = 0;
            }
            Math_ApproachF(&this->tentRippleSize, 0.15f, 0.5f, 0.01);
            if (this->meltIndex < 41) {
                for (indS0 = 0; indS0 < 10; indS0++) {
                    sp120 = this->tentPos[this->meltIndex];
                    sp120.x += Rand_CenteredFloat(30.0f);
                    sp120.y += Rand_CenteredFloat(30.0f);
                    sp120.z += Rand_CenteredFloat(30.0f);
                    BossMo_SpawnStillDroplet(globalCtx->specialEffects, &sp120, Rand_ZeroFloat(0.1f) + .2f);
                }
                this->meltIndex++;
            }
            Math_ApproachF(&this->cutScale, 0.0, 1.0f, 0.2f);
            if ((this->meltIndex >= 41) || (this->timers[0] == 0)) {
                this->actionState = MO_TENT_RETREAT;
                this->timers[0] = 75;
                this->tentMaxAngle = 0.005f;
                this->tentSpeed = 50.0f;
                this->swingSizeX = 7000.0f;
                this->swingSizeZ = 5000.0f;
            }
            break;
        case MO_TENT_RETREAT:
            if (this->csCamera != 0) {
                Math_ApproachF(&this->cameraAt.x, player->actor.world.pos.x, 0.5f, 50.0f);
                Math_ApproachF(&this->cameraAt.y, player->actor.world.pos.y, 0.5f, 50.0f);
                Math_ApproachF(&this->cameraAt.z, player->actor.world.pos.z, 0.5f, 50.0f);
                Gameplay_CameraSetAtEye(globalCtx, this->csCamera, &this->cameraAt, &this->cameraEye);
                if (player->actor.world.pos.y <= 42.0f) {
                    camera2 = Gameplay_GetCamera(globalCtx, MAIN_CAM);
                    camera2->eye = this->cameraEye;
                    camera2->eyeNext = this->cameraEye;
                    camera2->at = this->cameraAt;
                    func_800C08AC(globalCtx, this->csCamera, 0);
                    this->csCamera = 0;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                }
            }
            for (indS1 = 0; indS1 < 41; indS1++) {
                sin = Math_SinS(((s16)this->swingLagX * indS1) + this->tentSwingX);
                temp_f22 = this->tentMaxStretch * (indS1 * 0.025f * sin * this->swingSizeX);
                cos = Math_SinS(((s16)this->swingLagZ * indS1) + this->tentSwingZ);
                temp_f24 = this->tentMaxStretch * (indS1 * 0.025f * cos * this->swingSizeZ);
                Math_ApproachF(&this->tentStretch[indS1].y, this->tentMaxStretch * 5.0f, 0.5f, 0.2f);
                Math_ApproachS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_ApproachS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            Math_ApproachF(&this->tentMaxStretch, 0, 0.5f, 0.02f);
            Math_ApproachF(&this->tentMaxAngle, 0.5f, 1.0f, 0.01);
            Math_ApproachF(&this->tentSpeed, 320.0f, 1.0f, 50.0f);
            if (this->timers[0] == 0) {
                this->actor.flags &= ~1;
                Math_ApproachF(&this->baseAlpha, 0.0, 1.0f, 5.0f);
                for (indS1 = 0; indS1 < 40; indS1++) {
                    if (sMorphaTent2->tentSpawnPos) {}
                    indT5 = Rand_ZeroFloat(20.9f);
                    VEC_SET(spFC, 0, 0, 0);
                    indS0 = sTentSpawnIndex[indT5];
                    Matrix_RotateY((player->actor.world.rot.y / (f32)0x8000) * M_PI, MTXMODE_NEW);
                    Matrix_MultVec3f(&spFC, &spF0);
                    spF0.x = player->actor.world.pos.x + spF0.x;
                    spF0.z = player->actor.world.pos.z + spF0.z;
                    if ((fabsf(spF0.x - sTentSpawnPos[indS0].x) <= 320) &&
                        (fabsf(spF0.z - sTentSpawnPos[indS0].y) <= 320) &&
                        ((sMorphaTent2 == NULL) || (sMorphaTent2->tentSpawnPos != indS0))) {
                        this->targetPos.x = sTentSpawnPos[indS0].x;
                        this->targetPos.z = sTentSpawnPos[indS0].y;
                        this->tentSpawnPos = indS0;
                        this->timers[0] = (s16)Rand_ZeroFloat(20.0f) + 30;
                        this->actionState = MO_TENT_DESPAWN;
                        break;
                    }
                }
            }
            if ((this == sMorphaTent1) && (sMorphaCore->hitCount >= 3) && (sMorphaTent2 == NULL)) {
                sMorphaTent2 =
                    (BossMo*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BOSS_MO, this->actor.world.pos.x,
                                         this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, BOSSMO_TENTACLE);

                sMorphaTent2->tentSpawnPos = this->tentSpawnPos;
                if (sMorphaTent2->tentSpawnPos > 10) {
                    sMorphaTent2->tentSpawnPos--;
                } else {
                    sMorphaTent2->tentSpawnPos++;
                }
                sMorphaTent2->targetPos.x = sTentSpawnPos[sMorphaTent2->tentSpawnPos].x;
                sMorphaTent2->targetPos.z = sTentSpawnPos[sMorphaTent2->tentSpawnPos].y;
                sMorphaTent2->timers[0] = 100;
                sMorphaTent2->actionState = MO_TENT_DESPAWN;
                sMorphaTent2->otherTent = &sMorphaTent1->actor;
                sMorphaTent1->otherTent = &sMorphaTent2->actor;
            }
            break;
        case MO_TENT_DESPAWN:
            this->actor.flags &= ~1;
            Math_ApproachF(&this->baseAlpha, 0, 1.0f, 5.0f);
            if ((this->baseAlpha <= 0.5f) && (this->timers[0] == 0)) {
                this->meltIndex = 0;
                this->actor.world.pos.x = this->targetPos.x;
                this->actor.world.pos.z = this->targetPos.z;
                this->actor.prevPos = this->actor.world.pos;
                this->cutScale = 1.0f;
                this->cutIndex = this->meltIndex;
                this->actionState = MO_TENT_WAIT;
                this->timers[0] = (s16)Rand_ZeroFloat(20.0f) + 10;

                this->tentSpeed = 0;
                this->swingRateX = 0;
                this->swingRateZ = 0;
                this->swingSizeX = 0;
                this->swingSizeZ = 0;

                this->tentMaxAngle = .001f;
            }
            break;
        case MO_TENT_DEATH_START:
            this->actor.shape.rot.y = 0x4000;
            break;
        case MO_TENT_DEATH_3:
            this->baseBubblesTimer = 20;
            Math_ApproachF(&sMorphaCore->waterLevel, -300.0f, 0.1f, 0.8f);
            this->actor.flags &= ~1;
            for (indS1 = 0; indS1 < 41; indS1++) {
                sin = Math_SinS(((s16)this->swingLagX * indS1) + this->tentSwingX);
                temp_f22 = this->swingSizeX * (indS1 * 0.025f * sin);
                cos = Math_SinS(((s16)this->swingLagZ * indS1) + this->tentSwingZ);
                temp_f24 = this->swingSizeZ * (indS1 * 0.025f * cos);
                Math_ApproachF(&this->tentStretch[indS1].y, this->tentMaxStretch * 5.0f, 0.1f, 0.4f);
                Math_ApproachS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_ApproachS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->actor.speedXZ = 0.0;
            Math_ApproachF(&this->tentMaxStretch, 4.3f, 0.5f, 0.04);
            Math_ApproachF(&this->tentPulse, 1.3f, 0.5f, 0.05f);
            break;
        case MO_TENT_DEATH_1:
            this->baseBubblesTimer = 20;
            this->actor.shape.rot.y = 0x4000;
            this->actor.shape.rot.x = -0x8000;
            this->actor.world.pos.y = sMorphaCore->waterLevel + 650.0f;
            Math_ApproachF(&sMorphaCore->waterLevel, -300.0f, 0.1f, 1.3f);
            for (indS1 = 0; indS1 < 41; indS1++) {
                sin = Math_SinS(((s16)this->swingLagX * indS1) + this->tentSwingX);
                temp_f22 = this->swingSizeX * (indS1 * 0.025f * sin);
                cos = Math_SinS(((s16)this->swingLagZ * indS1) + this->tentSwingZ);
                temp_f24 = this->swingSizeZ * (indS1 * 0.025f * cos);
                Math_ApproachF(&this->tentStretch[indS1].y, this->tentMaxStretch * 5.0f, 0.1f, 0.4f);
                Math_ApproachS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_ApproachS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->actor.speedXZ = 0.0;
            Math_ApproachF(&this->tentPulse, 1.3f, 0.5f, 0.05f);
            break;
        case MO_TENT_DEATH_2:
            this->baseBubblesTimer = 20;
            Math_ApproachF(&sMorphaCore->waterLevel, -295.0f, 0.1f, 1.3f);
            this->actor.world.pos.y = sMorphaCore->waterLevel + 650.0f;
            for (indS1 = 0; indS1 < 41; indS1++) {
                sin = Math_SinS(((s16)this->swingLagX * indS1) + this->tentSwingX);
                temp_f22 = this->swingSizeX * (indS1 * 0.025f * sin);
                cos = Math_SinS(((s16)this->swingLagZ * indS1) + this->tentSwingZ);
                temp_f24 = this->swingSizeZ * (indS1 * 0.025f * cos);
                Math_ApproachF(&this->tentStretch[indS1].y, this->tentMaxStretch * 5.0f, 0.1f, 0.4f);
                Math_ApproachS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_ApproachS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->actor.speedXZ = 0.0;
            this->noBubbles--;
            Math_ApproachF(&this->tentMaxStretch, 0.1f, 0.1f, 0.03);
            Math_ApproachF(&this->tentPulse, 0.02f, 0.5f, 0.015f);
            if ((this->timers[0] > 0) && (this->timers[0] < 40)) {
                Math_ApproachF(&this->actor.scale.x, 0.035f, 0.05f, this->flattenRate);
                if (this->timers[0] == 1) {
                    this->flattenRate = 0.0;
                }
            } else if (this->timers[0] == 0) {
                Math_ApproachF(&this->actor.scale.x, .001f, 0.05f, this->flattenRate);
            }
            Math_ApproachF(&this->flattenRate, 0.00045f, 0.1f, 0.00001f);
            break;
        case MO_TENT_DEATH_5:
            for (indS1 = 0; indS1 < 41; indS1++) {
                if (this->timers[0] != 0) {
                    Math_ApproachF(&this->tentStretch[indS1].y, this->tentMaxStretch * 5.0f, 0.05f, this->tentSpeed);
                } else {
                    Math_ApproachF(&this->tentStretch[indS1].y, this->tentMaxStretch * 5.0f, 0.3f, 100.0f);
                }
                this->tentRot[indS1].x = this->tentRot[indS1].z = 0;
            }
            this->tentPulse = 0.0;
            if (this->timers[0] != 0) {
                this->actor.world.pos.y = sMorphaCore->waterLevel + 650.0f;
                this->tentMaxStretch = 0.5f;
                Math_ApproachF(&this->actor.scale.x, 0.0015f, 0.05f, this->tentMaxAngle);
                Math_ApproachF(&this->tentMaxAngle, 0.00035f, 1.0f, 0.0000175f);
                Math_ApproachF(&this->tentSpeed, 0.1f, 1.0f, 0.005f);
                this->actor.velocity.y = 0.0;
            } else {
                this->tentMaxStretch = 0.2f;
                this->tentMaxStretch += Math_SinS(this->movementTimer * 0x2000) * 0.05f;
                padEC = Math_CosS(this->movementTimer * 0x2000) * 0.0005f;
                Math_ApproachF(&this->actor.scale.x, 0.002f + padEC, 0.5f, 0.0005f);
                this->actor.world.pos.y += this->actor.velocity.y;
                this->actor.velocity.y -= 1.0f;
                if (this->actor.world.pos.y < -250.0f) {
                    this->actor.world.pos.y = -250.0f;
                    this->actor.velocity.y = 0.0;
                    this->drawActor = false;
                    this->actionState = MO_TENT_DEATH_6;
                    this->timers[0] = 60;
                    func_80078914(&this->tentTipPos, NA_SE_EN_MOFER_CORE_JUMP);
                    for (indS1 = 0; indS1 < 300; indS1++) {
                        spC8.x = 0.0;
                        spC8.y = 0.0;
                        spC8.z = indS1 * 0.03f;
                        Matrix_RotateY(indS1 * 0.23f, MTXMODE_NEW);
                        Matrix_MultVec3f(&spC8, &spE0);
                        spE0.y = Rand_ZeroFloat(7.0f) + 4.0f;
                        spD4 = this->actor.world.pos;
                        spD4.x += spE0.x * 3.0f;
                        spD4.y += (spE0.y * 3.0f) - 30.0f;
                        if (spD4.y < -280.0f) {
                            spD4.y = -280.0f;
                        }
                        spD4.z += spE0.z * 3.0f;
                        BossMo_SpawnDroplet(MO_FX_DROPLET, (BossMoParticle*) globalCtx->specialEffects, &spD4, &spE0,
                                            ((300 - indS1) * .0015f) + 0.13f);
                    }
                    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1,
                                       this->actor.world.pos.x, -280.0f, this->actor.world.pos.z, 0, 0, 0, -1);
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.world.pos.x + 200.0f,
                                -280.0f, this->actor.world.pos.z, 0, 0, 0, 0);
                    Audio_QueueSeqCmd(0x21);
                    Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
                }
            }
            break;
        case MO_TENT_DEATH_6:
            break;
    }
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    if (((this->actionState == MO_TENT_ATTACK) || (this->actionState == MO_TENT_DEATH_2) ||
         (this->actionState == MO_TENT_CURL) || (this->actionState == MO_TENT_GRAB)) &&
        (Rand_ZeroOne() < 0.8f) && (this->actor.scale.x > 0.001f)) {
        Vec3f pos;                             // real
        Vec3f velocity = { 0.0f, 0.0f, 0.0f }; // real
        f32 scale;
        f32 temp;

        if (this->actionState >= MO_TENT_DEATH_2) {
            indS1 = 38;
            scale = Rand_ZeroFloat(0.1f) + 0.1f;
            pos.y = this->tentPos[indS1].y;
        } else {
            indS1 = (s16)Rand_ZeroFloat(20.0f) + 18;
            scale = Rand_ZeroFloat(0.02f) + .05f;
            pos.y = this->tentPos[indS1].y - 10.0f;
        }
        temp = (this->actor.scale.x * 100.0f) * 20.0f;
        pos.x = this->tentPos[indS1].x + Rand_CenteredFloat(temp);
        pos.z = this->tentPos[indS1].z + Rand_CenteredFloat(temp);
        BossMo_SpawnDroplet(MO_FX_DROPLET, (BossMoParticle*) globalCtx->specialEffects, &pos, &velocity, scale);
    }
}

void BossMo_TentCollisionCheck(BossMo* this, GlobalContext* globalCtx) {
    s16 i1;
    s16 i2;
    ColliderInfo* hurtbox;
    Vec3f pos;
    Vec3f velocity;

    for (i1 = 0; i1 < ARRAY_COUNT(this->tentElements); i1++) {
        if (this->tentCollider.elements[i1].info.bumperFlags & BUMP_HIT) {
            for (i2 = 0; i2 < 19; i2++) {
                this->tentCollider.elements[i2].info.bumperFlags &= ~BUMP_HIT;
                this->tentCollider.elements[i2].info.toucherFlags &= ~TOUCH_HIT;
            }
            hurtbox = this->tentCollider.elements[i1].info.acHitInfo;
            this->invincibilityTimer = 5;
            if (hurtbox->toucher.dmgFlags & 0x00020000) {
                func_80078914(&this->tentTipPos, NA_SE_EN_MOFER_CUT);
                this->cutIndex = 15;
                this->meltIndex = this->cutIndex + 1;
                this->actionState = MO_TENT_CUT;
                this->timers[0] = 40;
                this->cutScale = 1.0f;
            } else if (hurtbox->toucher.dmgFlags & 0x0D800600) {
                this->linkHitTimer = 5;
            }
            this->tentRippleSize = 0.2f;
            for (i2 = 0; i2 < 10; i2++) {
                velocity.x = Rand_CenteredFloat(8.0f);
                velocity.y = Rand_ZeroFloat(7.0f) + 4.0f;
                velocity.z = Rand_CenteredFloat(8.0f);
                pos = this->tentPos[2 * i1];
                pos.x += velocity.x * 3.0f;
                pos.z += velocity.z * 3.0f;
                BossMo_SpawnDroplet(MO_FX_DROPLET, (BossMoParticle*) globalCtx->specialEffects, &pos, &velocity,
                                    Rand_ZeroFloat(0.08f) + 0.13f);
            }
            break;
        } else if (this->tentCollider.elements[i1].info.toucherFlags & TOUCH_HIT) {
            this->tentCollider.elements[i1].info.toucherFlags &= ~TOUCH_HIT;
            this->linkHitTimer = 5;
            break;
        }
    }
}

void BossMo_IntroCs(BossMo* this, GlobalContext* globalCtx) {
    static Vec3f cutsceneTargets[6] = {
        { -360.0f, -190.0f, 0.0f },  { 250.0f, -190.0f, 0.0f }, { 300.0f, -120.0f, -278.0f },
        { 180.0f, -80.0f, -340.0f }, { 180.0f, 0.0f, -340.0f }, { 180.0f, 60.0f, -230.0f },
    };
    u8 sp9F = 0;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 tempX;
    f32 tempY;
    s32 pad84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    Player* player = PLAYER;
    Camera* camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);
    Vec3f bubblePos;
    Vec3f bubblePos2;
    Camera* camera2;
    f32 pad50;
    f32 pad4C;
    f32 pad48;

    if (this->csState < MO_INTRO_REVEAL) {
        this->cameraZoom = 80.0f;
    }
    switch (this->csState) {
        case MO_INTRO_WAIT:
            if (this->timers[0] == 1) {
                func_8010B680(globalCtx, 0x403F, NULL);
            }
            if (((fabsf(player->actor.world.pos.z - 180.0f) < 40.0f) &&
                 (fabsf(player->actor.world.pos.x - 180.0f) < 40.0f)) ||
                ((fabsf(player->actor.world.pos.z - -180.0f) < 40.0f) &&
                 (fabsf(player->actor.world.pos.x - 180.0f) < 40.0f)) ||
                ((fabsf(player->actor.world.pos.z - 180.0f) < 40.0f) &&
                 (fabsf(player->actor.world.pos.x - -180.0f) < 40.0f)) ||
                ((fabsf(player->actor.world.pos.z - -180.0f) < 40.0f) &&
                 (fabsf(player->actor.world.pos.x - -180.0f) < 40.0f))) {
                // checks if Link is on one of the four platforms
                func_80064520(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 8);
                this->csCamera = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, MAIN_CAM, 1);
                Gameplay_ChangeCameraStatus(globalCtx, this->csCamera, 7);
                this->actor.speedXZ = 0.0f;
                this->csState = MO_INTRO_START;
                this->timers[2] = 50;
                this->rippleTimer = this->movementTimer = 0;
                this->actor.world.rot.y = 0x721A;
                sMorphaTent1->actionState = MO_TENT_READY;
                sMorphaTent1->timers[0] = 30000;
                Audio_QueueSeqCmd(0x103200FF);
                func_80106CCC(globalCtx);
            } else {
                break;
            }
        case MO_INTRO_START:
            player->actor.world.pos.x = 180.0f;
            player->actor.world.pos.z = -130.0f;
            player->actor.shape.rot.y = player->actor.world.rot.y = 0;
            player->actor.speedXZ = 0.0f;
            this->cameraEye.x = -424.0f;
            this->cameraEye.y = -190.0f;
            this->cameraEye.z = 180.0f;
            this->cameraAt.x = player->actor.world.pos.x;
            this->cameraAt.y = -330.0f;
            this->cameraAt.z = 0.0f;
            if (this->timers[2] == 0) {
                this->csState = MO_INTRO_SWIM;
                this->movementTimer = 0;
            } else if (this->timers[2] < 50) {
                bubblePos.x = (this->cameraEye.x + 20.0f) + 10.0f;
                bubblePos.y = -250.0f;
                bubblePos.z = this->cameraEye.z;
                EffectSsBubble_Spawn(globalCtx, &bubblePos, 0.0f, 10.0f, 50.0f, Rand_ZeroFloat(0.05f) + 0.13f);
            }
            if (this->timers[2] == 40) {
                func_80078914(&sAudioZeroVec, NA_SE_EN_MOFER_BUBLE_DEMO);
            }
            break;
        case MO_INTRO_SWIM:
            Math_ApproachF(&this->cameraYawShake, 0.1f, 1.0f, 0.002f);
            this->targetPos = cutsceneTargets[this->targetIndex];
            if (this->targetIndex == 5) {
                tempY = Math_SinS(this->movementTimer * 0x500) * 20.0f;
            } else {
                tempY = Math_SinS(this->movementTimer * 0x500) * 5.0f;
            }
            dx = this->targetPos.x - this->cameraEye.x;
            dy = this->targetPos.y - this->cameraEye.y + tempY;
            dz = this->targetPos.z - this->cameraEye.z;
            tempY = Math_FAtan2F(dx, dz);
            tempX = Math_FAtan2F(dy, sqrtf(SQ(dx) + SQ(dz)));
            Math_ApproachS(&this->actor.world.rot.y, tempY * (0x8000 / M_PI), 5, this->cameraYawRate);
            Math_ApproachS(&this->actor.world.rot.x, tempX * (0x8000 / M_PI), 5, this->cameraYawRate);
            if (this->movementTimer == 150) {
                this->cameraAtVel.x = fabsf(this->cameraAt.x - player->actor.world.pos.x);
                this->cameraAtVel.y = fabsf(this->cameraAt.y - player->actor.world.pos.y);
                this->cameraAtVel.z = fabsf(this->cameraAt.z - player->actor.world.pos.z);
            }
            if (this->movementTimer >= 150) {
                Math_ApproachF(&this->cameraAt.x, player->actor.world.pos.x, 0.1f,
                               this->cameraAtVel.x * this->cameraSpeedMod);
                Math_ApproachF(&this->cameraAt.y, player->actor.world.pos.y + 50.0f, 0.1f,
                               this->cameraAtVel.y * this->cameraSpeedMod);
                Math_ApproachF(&this->cameraAt.z, player->actor.world.pos.z, 0.1f,
                               this->cameraAtVel.z * this->cameraSpeedMod);
                Math_ApproachF(&this->cameraSpeedMod, 0.02f, 1.0f, 0.001f);
            }
            if (this->movementTimer == 190) {
                func_80078914(&sAudioZeroVec, NA_SE_EN_MOFER_BUBLE_DEMO);
            }
            if ((this->movementTimer > 150) && (this->movementTimer < 180)) {
                bubblePos2.x = (this->cameraEye.x + 20.0f) + 10.0f;
                bubblePos2.y = -250.0f;
                bubblePos2.z = this->cameraEye.z;
                EffectSsBubble_Spawn(globalCtx, &bubblePos2, 0.0f, 10.0f, 50.0f, Rand_ZeroFloat(0.05f) + 0.13f);
            }
            sp7C = (f32)0x1000;
            sp78 = 0.1f;
            if ((this->movementTimer > 100) && (this->movementTimer < 220)) {
                sp80 = 0.0f;
            } else if (this->movementTimer > 350) {
                sp80 = 2.0f;
                sp78 = 0.4f;
            } else if (this->movementTimer > 220) {
                sp80 = 7.0f;
                sp78 = 0.3f;
                sp7C = (f32)0x2000;
            } else {
                sp80 = 4.0f;
            }

            if (this->movementTimer > 250) {
                Math_ApproachF(&this->introWaterTexAlpha, 100.0f, 1.0f, 1.0f);
            }
            if (this->targetIndex < 5) {
                if (sqrtf(SQ(dx) + SQ(dz) + SQ(dy)) < 40.0f) {
                    this->targetIndex++;
                    this->cameraYawRate = 0.0f;
                }
            } else {
                sp80 = 1.5f;
                sp7C = (f32)0x600;
            }
            Math_ApproachF(&this->actor.speedXZ, sp80, 1.0f, sp78);
            Math_ApproachF(&this->cameraYawRate, sp7C, 1.0f, 128.0f);
            if (this->movementTimer == 525) {
                func_8002DF54(globalCtx, &this->actor, 2);
            }
            if (this->movementTimer > 540) {
                this->csState = MO_INTRO_REVEAL;
                func_8002DF54(globalCtx, &this->actor, 1);
                sMorphaTent1->drawActor = true;
                player->actor.world.pos.x = 180.0f;
                player->actor.world.pos.z = -210.0f;
                player->actor.world.rot.y = -0x8000;
                player->actor.shape.rot.y = player->actor.world.rot.y;
                this->cameraYawShake = 0.0f;
                sMorphaTent1->baseAlpha = 150.0;
                this->actor.speedXZ = 0.0f;
                this->timers[2] = 200;
                this->cameraZoom = 60.0f;
                this->actor.world.pos = sMorphaTent1->actor.world.pos;
                this->actionState = MO_CORE_INTRO_REVEAL;
                this->actor.flags &= ~1;
                sMorphaTent1->actor.flags |= 1;
            } else {
                sMorphaTent1->tentSwingX = 0xCEC;
                sMorphaTent1->swingRateX = 0.0f;
                sMorphaTent1->swingLagX = 1000.0f;
                sMorphaTent1->swingSizeX = 2500.0f;
                break;
            }
        case MO_INTRO_REVEAL:
            if (this->timers[2] >= 160) {
                this->cameraEye.x = 150.0f;
                this->cameraEye.y = 60.0f;
                this->cameraEye.z = -230.0f;
                this->cameraAt.x = 170.0f;
                this->cameraAt.y = 40.0;
                this->cameraAt.z = -280.0f;
                sMorphaTent1->tentSwingX = 0xCEC;
                sMorphaTent1->swingRateX = 0.0f;
                sMorphaTent1->swingLagX = 1000.0f;
                sMorphaTent1->swingSizeX = 2500.0f;
                if (this->timers[2] == 160) {
                    this->cameraNextAt.y = 65.0f;
                    this->cameraNextAt.z = -280.0f;
                    this->cameraEyeVel.x = fabsf(this->cameraEye.x - 150.0f) * 0.1f;
                    this->cameraEyeVel.y = fabsf(this->cameraEye.y - 60.0f) * 0.1f;
                    this->cameraEyeVel.z = fabsf(this->cameraEye.z - -260.0f) * 0.1f;
                    this->cameraNextEye.x = 150.0f;
                    this->cameraNextEye.y = 60.0f;
                    this->cameraNextEye.z = -260.0f;
                    this->cameraNextAt.x = 155.0f;
                    this->cameraAtMaxVel.x = this->cameraAtMaxVel.y = this->cameraAtMaxVel.z = 0.1f;
                    this->cameraAtVel.x = fabsf(this->cameraAt.x - this->cameraNextAt.x) * 0.1f;
                    this->cameraAtVel.y = fabsf(this->cameraAt.y - this->cameraNextAt.y) * 0.1f;
                    this->cameraAtVel.z = fabsf(this->cameraAt.z - this->cameraNextAt.z) * 0.1f;
                    this->cameraEyeMaxVel.x = this->cameraEyeMaxVel.y = this->cameraEyeMaxVel.z = 0.1f;
                    this->cameraSpeedMod = 0.0f;
                    this->cameraAccel = 0.01f;
                    this->tentMaxAngle = 0.001f;
                    this->tentSpeed = 0.0f;
                    sp9F = 1;
                }
            } else {
                sp9F = 1;
            }
            if (this->timers[2] == 50) {
                this->cameraNextAt.x = 160.0f;
                this->cameraNextAt.y = 58.0f;
                this->cameraNextAt.z = -247.0f;
                this->cameraEyeVel.x = fabsf(this->cameraEye.x - 111.0f) * 0.1f;
                this->cameraEyeVel.y = fabsf(this->cameraEye.y - 133.0f) * 0.1f;
                this->cameraEyeVel.z = fabsf(this->cameraEye.z - -191.0f) * 0.1f;
                if (1) {}
                this->csState = MO_INTRO_FINISH;
                this->timers[2] = 110;
                this->cameraNextEye.x = 111.0f;
                this->cameraNextEye.y = 133.0f;
                this->cameraNextEye.z = -191.0f;
                this->cameraAtVel.x = fabsf(this->cameraAt.x - this->cameraNextAt.x) * 0.1f;
                this->cameraAtVel.y = fabsf(this->cameraAt.y - this->cameraNextAt.y) * 0.1f;
                this->cameraAtVel.z = fabsf(this->cameraAt.z - this->cameraNextAt.z) * 0.1f;
                this->cameraEyeMaxVel.y = 0.03f;
                this->cameraAtMaxVel.y = 0.03f;
                this->cameraSpeedMod = 0.0f;
                this->cameraAccel = 0.01f;
            }
            if (this->timers[2] == 150) {
                Audio_QueueSeqCmd(0x1B);
            }
            if (this->timers[2] == 130) {
                TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx,
                                       SEGMENTED_TO_VIRTUAL(gMorphaTitleCardTex), 0xA0, 0xB4, 0x80, 0x28);
                gSaveContext.eventChkInf[7] |= 0x10;
            }
            break;
        case MO_INTRO_FINISH:
            sp9F = 1;
            this->cameraNextEye.x = 111.0f;
            this->cameraNextEye.y = 133.0f;
            this->cameraNextEye.z = -191.0f;
            this->cameraNextAt.x = 160.0f;
            this->cameraNextAt.y = 58.0f;
            this->cameraNextAt.z = -247.0f;
            if (this->timers[2] == 100) {
                sMorphaTent1->actionState = MO_TENT_RETREAT;
                sMorphaTent1->timers[0] = 50;
            }
            if (this->timers[2] == 20) {
                camera2 = Gameplay_GetCamera(globalCtx, MAIN_CAM);
                camera2->eye = this->cameraEye;
                camera2->eyeNext = this->cameraEye;
                camera2->at = this->cameraAt;
                func_800C08AC(globalCtx, this->csCamera, 0);
                this->csState = this->csCamera = MO_BATTLE;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
            }
            break;
    }
    if (sMorphaTent1->actionState == MO_TENT_READY) {
        sMorphaTent1->actor.world.pos.x = 180.0f;
        sMorphaTent1->actor.world.pos.z = -360.0f;
        sMorphaTent1->actor.prevPos = sMorphaTent1->actor.world.pos;
        sMorphaTent1->actor.speedXZ = 0.0f;
        sMorphaTent1->actor.shape.rot.y = sMorphaTent1->actor.yawTowardsPlayer;
    }
    if (this->csCamera != 0) {
        if (sp9F) {
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
        } else if (this->csState < MO_INTRO_REVEAL) {
            func_8002D908(&this->actor);
            this->cameraEye.x += this->actor.velocity.x;
            this->cameraEye.y += this->actor.velocity.y;
            this->cameraEye.z += this->actor.velocity.z;
        }
        this->cameraUp.x = this->cameraUp.z = sinf(this->rippleTimer * 0.03f) * this->cameraYawShake * (-2.0f);
        this->cameraUp.y = 1.0f;
        Gameplay_CameraSetAtEyeUp(globalCtx, this->csCamera, &this->cameraAt, &this->cameraEye, &this->cameraUp);
        camera->eye = this->cameraEye;
        camera->eyeNext = this->cameraEye;
        camera->at = this->cameraAt;
        Gameplay_CameraSetFov(globalCtx, this->csCamera, this->cameraZoom);
    }

    if ((this->csState > MO_INTRO_START) && (this->movementTimer > 540)) {
        func_80078914(&sMorphaTent1->tentTipPos, NA_SE_EN_MOFER_APPEAR - SFX_FLAG);
    } else if (this->csState >= MO_INTRO_START) {
        func_80078914(&sAudioZeroVec, NA_SE_EN_MOFER_MOVE_DEMO - SFX_FLAG);
    }
}

void BossMo_DeathCs(BossMo* this, GlobalContext* globalCtx) {
    s16 i;
    s16 one;
    f32 dx;
    f32 dz;
    f32 sp80;
    f32 sp7C;
    Vec3f sp70;
    Vec3f sp64;
    Camera* camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);
    Vec3f velocity;
    Vec3f pos;

    switch (this->csState) {
        case MO_DEATH_START:
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 8);
            this->csCamera = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, MAIN_CAM, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->csCamera, 7);
            this->csState = MO_DEATH_MO_CORE_BURST;
            this->cameraEye = camera->eye;
            this->timers[0] = 90;
            dx = this->actor.world.pos.x - this->cameraEye.x;
            dz = this->actor.world.pos.z - this->cameraEye.z;
            this->cameraYaw = Math_FAtan2F(dx, dz);
            this->cameraDist = sqrtf(SQ(dx) + SQ(dz));
            this->cameraYawRate = 0.0f;
        case MO_DEATH_MO_CORE_BURST:
            this->baseAlpha = 0.0f;
            if (this->timers[0] & 4) {
                sp80 = 0.005f;
                sp7C = 0.015f;
            } else {
                sp80 = 0.015f;
                sp7C = 0.005f;
            }
            Math_ApproachF(&this->actor.scale.x, sp80, 0.5f, 0.002f);
            this->actor.scale.z = this->actor.scale.x;
            Math_ApproachF(&this->actor.scale.y, sp7C, 0.5f, 0.002f);
            this->cameraYaw += this->cameraYawRate;
            if (this->timers[0] >= 30) {
                Math_ApproachF(&this->cameraYawRate, 0.05f, 1.0f, 0.002f);
            } else {
                Math_ApproachF(&this->cameraYawRate, 0.0f, 1.0f, 0.002f);
            }
            Math_ApproachF(&this->actor.world.pos.y, 150.0f, 0.05f, 5.0f);
            Math_ApproachF(&this->cameraEye.y, 100.0f, 0.05f, 2.0f);
            this->cameraAt = this->cameraNextAt = this->actor.world.pos;
            if (this->timers[0] > 20) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MOFER_DEAD - SFX_FLAG);
            }
            if (this->timers[0] == 20) {
                for (i = 0; i < 300; i++) {
                    velocity.x = Rand_CenteredFloat(10.0f);
                    velocity.y = Rand_CenteredFloat(10.0f);
                    velocity.z = Rand_CenteredFloat(10.0f);
                    pos = this->actor.world.pos;
                    pos.x += 2.0f * velocity.x;
                    pos.y += 2.0f * velocity.y;
                    pos.z += 2.0f * velocity.z;
                    BossMo_SpawnDroplet(MO_FX_DROPLET, (BossMoParticle*) globalCtx->specialEffects, &pos, &velocity,
                                        Rand_ZeroFloat(0.08f) + 0.13f);
                }
                this->drawActor = false;
                this->actor.flags &= ~1;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MOFER_CORE_JUMP);
                Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 70, NA_SE_EN_MOFER_LASTVOICE);
            }
            if (this->timers[0] == 0) {
                this->csState = MO_DEATH_DRAIN_WATER_1;
                this->cameraDist = 490.0f;
                this->actor.world.pos.y = -1000.0f;
                this->swingSizeX = 15.0f;
                this->cameraYaw = 0.0f;
                this->cameraEye.x = 490.0f;
                this->cameraEye.y = 50.0f;
                this->cameraEye.z = 0.0f;
                this->cameraAt.x = 0;
                this->cameraAt.y = -100.0f;
                this->cameraAt.z = 0.0f;
                this->rippleTimer = this->movementTimer = 0;
                this->cameraAtMaxVel.y = 0.05f;
                this->cameraAtVel.y = 4.0f;
                this->cameraSpeedMod = 0.0f;
                this->cameraAccel = 0.02f;
                this->cameraNextAt.y = 320.0f;
                if (1) {}
                this->timers[0] = 100;
                sMorphaTent1->drawActor = true;
                sMorphaTent1->actionState = MO_TENT_DEATH_3;
                sMorphaTent1->actor.shape.rot.x = 0;
                sMorphaTent1->actor.world.pos.x = 0.0f;
                sMorphaTent1->actor.world.pos.y = -50.0f;
                sMorphaTent1->actor.world.pos.z = 0.0f;
                sMorphaTent1->tentMaxStretch = 1.0f;
                sMorphaTent1->tentPulse = 0.2f;
                sMorphaCore->waterLevel = -50.0f;
                sMorphaTent1->flattenRate = 0.0f;
                sMorphaTent1->noBubbles = 0;
                for (i = 0; i < 41; i++) {
                    sMorphaTent1->tentStretch[i].y = 5.0f;
                }
                sMorphaTent1->swingRateX = -400.0f;
                sMorphaTent1->swingLagX = -3200.0f;
                sMorphaTent1->swingSizeX = .0f;
                sMorphaTent1->swingRateZ = 3000.0f;
                sMorphaTent1->swingLagZ = 2500.0f;
                sMorphaTent1->swingSizeZ = 4000.0f;
                sMorphaTent1->tentMaxAngle = 1.0f;
                sMorphaTent1->tentSpeed = 20480.0f;
                sMorphaTent1->baseAlpha = 150.0f;
                sMorphaTent1->cutIndex = sMorphaTent1->meltIndex = 0;
                sMorphaTent1->cutScale = 1.0f;
                Actor_SetScale(&sMorphaTent1->actor, 0.01f);
            }
            break;
        case MO_DEATH_DRAIN_WATER_1:
            if (this->timers[0] == 0) {
                this->csState = MO_DEATH_DRAIN_WATER_2;
                this->cameraAt.y = -200.0f;
                this->cameraNextAt.y = 320.0f;
                this->cameraAtMaxVel.y = 0.05f;
                this->cameraAtVel.y = 4.0f;
                this->cameraSpeedMod = 0.0f;
                this->cameraAccel = 0.0f;
                sMorphaTent1->actionState = MO_TENT_DEATH_1;
                this->timers[0] = 125;
                sMorphaTent1->tentMaxStretch = 3.7000003f;
                this->cameraYaw = 0.5f;
                this->cameraDist = 200.0f;
                return;
            }
            break;
        case MO_DEATH_DRAIN_WATER_2:
            if (this->timers[0] == 0) {
                this->cameraAccel = 0.02f;
                sMorphaTent1->actionState = MO_TENT_DEATH_2;
                this->csState = MO_DEATH_CEILING;
                sMorphaTent1->timers[0] = 120;
                this->timers[0] = 150;
            }
        case MO_DEATH_CEILING:
            Math_ApproachF(&this->cameraYaw, 0.0f, 0.05f, 0.0029999996f);
            Math_ApproachF(&this->cameraDist, 490.0f, 0.1f, 1.0f);
            if (this->timers[0] == 0) {
                this->csState = MO_DEATH_DROPLET;
                this->timers[0] = 140;
                this->cameraYawRate = 0.0f;
                this->cameraSpeed = 0.0f;
            }
            break;
        case MO_DEATH_DROPLET:
            if (this->timers[0] == 30) {
                sMorphaTent1->actionState = MO_TENT_DEATH_5;
                sMorphaTent1->timers[0] = 30;
                sMorphaTent1->tentMaxAngle = 0.0f;
                sMorphaTent1->tentSpeed = sMorphaTent1->tentMaxAngle;
            }
            if (this->timers[0] == 0) {
                if (-100.0f < this->cameraEye.y) {
                    Math_ApproachF(&this->cameraEye.y, sMorphaTent1->actor.world.pos.y - 100.0f, 0.1f, 2000.0f);
                } else {
                    Math_ApproachF(&this->cameraEye.y, -200.0f, 0.1f, 2000.0f);
                }

                Math_ApproachF(&this->cameraAt.y, (sMorphaTent1->actor.world.pos.y - 50.0f) + 30.0f, 0.5f, 2000.0f);
                this->cameraNextAt.y = this->cameraAt.y;
            } else {
                Math_ApproachF(&this->cameraEye.y, 300.0f, 0.05f, this->cameraSpeed);
            }
            Math_ApproachF(&this->cameraYaw, -M_PI / 2.0f, 0.05f, this->cameraYawRate);
            Math_ApproachF(&this->cameraSpeed, 3.0f, 1.0f, 0.05f);
            Math_ApproachF(&this->cameraYawRate, 0.012999999f, 1.0f, 0.0005f);
            if (sMorphaTent1->actionState == MO_TENT_DEATH_6) {
                Math_ApproachF(&this->cameraDist, 200.0f, 0.02f, this->cameraSpeed);
                if (sMorphaTent1->timers[0] == 0) {
                    this->csState = MO_DEATH_FINISH;
                    camera->eye = this->cameraEye;
                    camera->eyeNext = this->cameraEye;
                    camera->at = this->cameraAt;
                    func_800C08AC(globalCtx, this->csCamera, 0);
                    this->csCamera = 0;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 7);
                    sMorphaTent1->actor.world.pos.y = -1000.0f;
                }
            } else {
                Math_ApproachF(&this->cameraDist, 150.0f, 0.05f, this->cameraSpeed);
            }
            break;
        case MO_DEATH_FINISH:
            break;
    }
    if ((this->csState > MO_DEATH_START) && (this->csState < MO_DEATH_FINISH)) {
        if (this->movementTimer < 500) {
            func_80078914(&sAudioZeroVec, NA_SE_EN_MOFER_APPEAR - SFX_FLAG);
        }
        if ((this->movementTimer < 490) && (this->movementTimer > 230)) {
            func_80078914(&sAudioZeroVec, NA_SE_EV_DROP_FALL - SFX_FLAG);
        }
        if (this->movementTimer < 220) {
            func_80078914(&sAudioZeroVec, NA_SE_EV_SCOOPUP_WATER - SFX_FLAG);
        }
    }
    if (sMorphaCore->waterLevel < -200.0f) {
        globalCtx->unk_11D30[0]++;
        if (globalCtx->unk_11D30[0] >= 0xFF) {
            globalCtx->unk_11D30[0] = 0xFF;
        }
    }
    if (sMorphaCore->waterLevel < -250.0f) {
        Math_ApproachF(&sMorphaTent1->waterTexAlpha, 0.0f, 1.0f, 3.0f);
    }
    Math_ApproachF(&this->swingSizeX, 0.0f, 0.1f, 0.05f);

    sp70.x = this->cameraDist;
    sp70.y = 0.0f;
    sp70.z = 0.0f;
    Matrix_RotateY(this->cameraYaw, MTXMODE_NEW);
    Matrix_MultVec3f(&sp70, &sp64);
    this->cameraEye.x = sp64.x + this->cameraAt.x;
    this->cameraEye.z = sp64.z + this->cameraAt.z;
    one = 1; // Super fake, but it works
    if (this->csCamera != 0) {
        if (one) {
            Math_ApproachF(&this->cameraAt.y, this->cameraNextAt.y, this->cameraAtMaxVel.y,
                           this->cameraAtVel.y * this->cameraSpeedMod);
            Math_ApproachF(&this->cameraSpeedMod, 1.0f, 1.0f, this->cameraAccel);
        }
        Gameplay_CameraSetAtEye(globalCtx, this->csCamera, &this->cameraAt, &this->cameraEye);
    }
}

void BossMo_CoreCollisionCheck(BossMo* this, GlobalContext* globalCtx) {
    s16 i;
    Player* player = PLAYER;

    osSyncPrintf(VT_FGCOL(YELLOW));
    osSyncPrintf("Core_Damage_check START\n");
    if (this->coreCollider.base.atFlags & AT_HIT) {
        this->coreCollider.base.atFlags &= ~AT_HIT;
        if (this->actionState == MO_CORE_UNDERWATER) {
            this->waitUnderwater = true;
            this->timers[0] = 150;
        }
    }
    if (this->coreCollider.base.acFlags & AC_HIT) {
        ColliderInfo* hurtbox = this->coreCollider.info.acHitInfo;
        // hit!!
        osSyncPrintf("Core_Damage_check 当り！！\n");
        this->coreCollider.base.acFlags &= ~AC_HIT;
        if ((hurtbox->toucher.dmgFlags & 0x00020000) && (this->actionState == MO_CORE_ATTACK)) {
            this->actionState = MO_CORE_RETREAT;
        }
        // hit 2 !!
        osSyncPrintf("Core_Damage_check 当り 2 ！！\n");
        if ((this->actionState != MO_CORE_UNDERWATER) && (this->invincibilityTimer == 0)) {
            u8 damage = CollisionCheck_GetSwordDamage(hurtbox->toucher.dmgFlags);

            if ((damage != 0) && (this->actionState < MO_CORE_ATTACK)) {
                // sword hit !!
                osSyncPrintf("Core_Damage_check 剣 当り！！\n");
                this->actionState = MO_CORE_STUNNED;
                this->timers[0] = 25;

                this->actor.speedXZ = 15.0f;

                this->actor.world.rot.y = this->actor.yawTowardsPlayer + 0x8000;
                this->damageFlashTimer = 15;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MOFER_CORE_DAMAGE);
                this->actor.colChkInfo.health -= damage;
                this->hitCount++;
                if ((s8)this->actor.colChkInfo.health <= 0) {
                    if (((sMorphaTent1->csCamera == 0) && (sMorphaTent2 == NULL)) ||
                        ((sMorphaTent1->csCamera == 0) && (sMorphaTent2 != NULL) && (sMorphaTent2->csCamera == 0))) {
                        Enemy_StartFinishingBlow(globalCtx, &this->actor);
                        Audio_QueueSeqCmd(NA_BGM_STOP | (1 << 0x10));
                        this->csState = MO_DEATH_START;
                        sMorphaTent1->drawActor = false;
                        sMorphaTent1->actionState = MO_TENT_DEATH_START;
                        sMorphaTent1->baseAlpha = 0.0f;
                        if (sMorphaTent2 != NULL) {
                            sMorphaTent2->tent2KillTimer = 1;
                        }
                        if (player->actor.parent != NULL) {
                            player->unk_850 = 0x65;
                            player->actor.parent = NULL;
                            player->csMode = 0;
                        }
                    } else {
                        this->actor.colChkInfo.health = 1;
                    }
                }
                this->invincibilityTimer = 10;
            } else if (!(hurtbox->toucher.dmgFlags & 0x00100000) && (hurtbox->toucher.dmgFlags & 0x80)) {
                if (this->actionState >= MO_CORE_ATTACK) {
                    func_80078914(&sMorphaTent1->tentTipPos, NA_SE_EN_MOFER_CUT);
                    sMorphaTent1->cutIndex = this->corePos;
                    sMorphaTent1->meltIndex = sMorphaTent1->cutIndex + 1;
                    sMorphaTent1->cutScale = 1.0f;
                    sMorphaTent1->actionState = MO_TENT_CUT;
                    sMorphaTent1->timers[0] = 40;
                    sMorphaTent1->actor.flags &= ~1;
                    if (player->actor.parent == &sMorphaTent1->actor) {
                        player->unk_850 = 0x65;
                        player->actor.parent = NULL;
                        player->csMode = 0;
                    }
                }
                this->actionState = MO_CORE_STUNNED;
                this->timers[0] = 30;
                this->invincibilityTimer = 10;
                this->actor.speedXZ = 0.0f;
            }
            for (i = 0; i < 10; i++) {
                Vec3f pos;
                Vec3f velocity;

                velocity.x = Rand_CenteredFloat(4.0f);
                velocity.y = Rand_ZeroFloat(2.0f) + 3.0f;
                velocity.z = Rand_CenteredFloat(4.0f);
                pos = this->actor.world.pos;
                pos.x += (velocity.x * 3.0f);
                pos.z += (velocity.z * 3.0f);
                BossMo_SpawnDroplet(MO_FX_DROPLET, (BossMoParticle*) globalCtx->specialEffects, &pos, &velocity,
                                    Rand_ZeroFloat(0.08f) + 0.13f);
            }
        }
    }
    // end !!
    osSyncPrintf("Core_Damage_check 終わり ！！\n");
    osSyncPrintf(VT_RST);
}

void BossMo_Core(BossMo* this, GlobalContext* globalCtx) {
    static f32 coreBulge[11] = {
        0.1f, 0.15f, 0.2f, 0.3f, 0.4f, 0.43f, 0.4f, 0.3f, 0.2f, 0.15f, 0.1f,
    };
    // Because of the large number of temps, I have indicated which named temps
    // are not actually on the stack and can be reordered. All pads are unused.
    u8 nearLand;
    s16 i;                   // not on stack
    Player* player = PLAYER; // not on stack
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    s32 padC8;
    s32 temp;         // not on stack
    f32 xScaleTarget; // not on stack
    f32 yScaleTarget;
    Vec3f effectPos;
    Vec3f effectVelocity;
    Vec3f effectAccel;
    s32 pad94;
    s32 pad90;
    s16 j;
    s16 index; // not on stack
    f32 sp88;
    s32 pad84;
    f32 sp80;
    f32 sp7C;
    Vec3f sp70;
    Vec3f sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;

    this->waterTex1x += -1.0f;
    this->waterTex1y += -1.0f;
    this->waterTex2x = this->waterTex2x;
    this->waterTex2y++;

    Math_ApproachF(&this->baseAlpha, 255.0f, 1.0f, 10.0f);
    if ((this->csState != MO_BATTLE) && (this->csState < MO_DEATH_START)) {
        BossMo_IntroCs(this, globalCtx);
        if (this->actionState == MO_CORE_INTRO_WAIT) {
            this->actor.flags &= ~1;
            return;
        }
    } else if (this->csState >= MO_DEATH_START) {
        BossMo_DeathCs(this, globalCtx);
        return;
    }
    if ((this->actionState < MO_CORE_ATTACK) && (this->actionState >= MO_CORE_MOVE) &&
        (this->actor.world.pos.y > MO_WATER_LEVEL(globalCtx))) {
        if (this->actor.velocity.y > 0.0f) {
            xScaleTarget = 0.005f;
            yScaleTarget = 0.015f;
        } else {
            xScaleTarget = 0.015f;
            yScaleTarget = 0.005f;
        }
    } else {
        xScaleTarget = yScaleTarget = 0.008f;
    }
    Math_ApproachF(&this->actor.scale.x, xScaleTarget, 0.2f, 0.001f);
    this->actor.scale.z = this->actor.scale.x;
    Math_ApproachF(&this->actor.scale.y, yScaleTarget, 0.2f, 0.001f);
    this->drawShadow = BossMo_NearLand(&this->actor.world.pos, 15.0f);
    nearLand = BossMo_NearLand(&this->actor.world.pos, 0.0f);
    if ((player->actor.world.pos.y < (MO_WATER_LEVEL(globalCtx) - 50.0f)) &&
        ((this->actionState == MO_CORE_MOVE) || (this->actionState == MO_CORE_MAKE_TENT))) {
        this->actionState = MO_CORE_UNDERWATER;
        this->actor.speedXZ = 0.0f;
        this->waitUnderwater = 0;
    }
    switch (this->actionState) {
        case MO_CORE_MOVE:
            this->actor.flags |= 1;
            if ((this->timers[0] == 0) &&
                ((sMorphaTent1->actionState == MO_TENT_WAIT) || (sMorphaTent1->actionState == MO_TENT_READY)) &&
                (this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx))) {
                this->actor.speedXZ = 0.0f;
                this->actionState = MO_CORE_MAKE_TENT;
                if (sMorphaTent1->actionState == MO_TENT_WAIT) {
                    sMorphaTent1->actionState = MO_TENT_SPAWN;
                    sMorphaTent1->timers[0] = 70;
                    sMorphaTent1->actor.shape.rot.y = sMorphaTent1->actor.yawTowardsPlayer;
                }
            }
            break;
        case MO_CORE_MAKE_TENT:
            if ((sMorphaTent1->actionState == MO_TENT_DESPAWN) || (sMorphaTent1->actionState == MO_TENT_WAIT)) {
                this->actionState = MO_CORE_MOVE;
                this->timers[0] = 70;
            }
            if (sMorphaTent1->actionState == MO_TENT_CUT) {
                this->actionState = MO_CORE_ATTACK;
                this->corePos = 0;
                this->timers[0] = 0;
            }
            if (sMorphaTent1->actionState == MO_TENT_ATTACK) {
                this->actionState = MO_CORE_ATTACK;
                this->corePos = 0;
                this->timers[0] = 0;
                this->actor.speedXZ = 0.0f;
            }
            break;
        case MO_CORE_UNDERWATER:
            if (player->actor.world.pos.y >= MO_WATER_LEVEL(globalCtx)) {
                this->actionState = MO_CORE_MOVE;
                this->actor.speedXZ = 0.0f;
            }
            break;
        case MO_CORE_STUNNED:
            this->actor.flags |= 1;
            if (this->timers[0] == 0) {
                this->actionState = MO_CORE_MOVE;
                this->timers[0] = 30;
            }
            if (this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx)) {
                this->actionState = MO_CORE_MAKE_TENT;
                this->timers[0] = 50;
                this->actor.speedXZ = 0.0f;
            }
            break;
        case MO_CORE_UNUSED:
            break;
    }
    if (this->timers[0] == 0) {
        switch (this->actionState) {
            case MO_CORE_ATTACK:
                this->actor.flags |= 1;
                this->corePos++;
                if (sMorphaTent1->actionState == MO_TENT_ATTACK) {
                    temp = (s16)(Math_SinS(this->movementTimer * 0x300) * 10.0f) + 15;
                    if (this->corePos >= temp) {
                        this->corePos = temp;
                    }
                }
                if ((sMorphaTent1->actionState != MO_TENT_ATTACK) && (sMorphaTent1->actionState != MO_TENT_CUT)) {
                    this->actionState = MO_CORE_RETREAT;
                    this->timers[0] = 0;
                }
                break;
            case MO_CORE_RETREAT:
                this->corePos--;
                if (this->corePos <= 0) {
                    this->actionState = MO_CORE_MAKE_TENT;
                    this->timers[0] = 100;
                    this->tentSpeed = 0.0f;
                    this->actor.speedXZ = 0.0f;
                }
                this->timers[0] = 0;
                break;
            case MO_CORE_INTRO_REVEAL:
                this->actor.flags &= ~1;
                this->corePos++;
                temp = (s16)(Math_SinS(this->movementTimer * 0x500) * 10.0f) + 15;
                if (this->corePos >= temp) {
                    this->corePos = temp;
                }
                if (sMorphaTent1->actionState != MO_TENT_READY) {
                    this->actionState = MO_CORE_RETREAT;
                    this->timers[0] = 0;
                }
                break;
        }
    }
    if (this->actionState >= MO_CORE_ATTACK) {
        if (this->corePos < 0) {
            this->corePos = 0;
        } else if (this->corePos > 40) {
            this->corePos = 40;
        }
        index = ((300 - (this->corePos * 2)) + sMorphaTent1->tentWidthIndex) % 300;
        sp88 = sMorphaTent1->tentWidth[index] * sTentWidth[this->corePos];
        for (j = -5; j < 6; j++) {
            index = (this->corePos + j) - 2;
            if ((0 <= index) && (index <= 40)) {
                Math_ApproachF(&sMorphaTent1->tentScale[index].x, ((coreBulge[j + 5] * 300.0f) / 100.0f) + sp88, 0.75f,
                               5.0f);
            }
        }
        this->targetPos.x = sMorphaTent1->tentPos[this->corePos].x;
        this->targetPos.y = sMorphaTent1->tentPos[this->corePos].y;
        this->targetPos.z = sMorphaTent1->tentPos[this->corePos].z;
        if (this->corePos <= 1) {
            this->targetPos.y -= 20.0f;
        }
        Math_ApproachF(&this->actor.world.pos.x, this->targetPos.x, 0.5f, this->actor.speedXZ);
        Math_ApproachF(&this->actor.world.pos.y, this->targetPos.y, 0.5f, this->actor.speedXZ);
        Math_ApproachF(&this->actor.world.pos.z, this->targetPos.z, 0.5f, this->actor.speedXZ);
        Math_ApproachF(&this->actor.speedXZ, 30.0f, 1.0f, 1.0f);
    } else {
        switch (this->actionState) {
            case MO_CORE_MOVE:
                sp80 = Math_SinS(this->rippleTimer * 0x800) * 100.0f;
                sp7C = Math_CosS(this->rippleTimer * 0x800) * 100.0f;
                Math_ApproachF(&this->actor.world.pos.x, sMorphaTent1->targetPos.x + sp80, 0.05f, this->actor.speedXZ);
                Math_ApproachF(&this->actor.world.pos.z, sMorphaTent1->targetPos.z + sp7C, 0.05f, this->actor.speedXZ);
                Math_ApproachF(&this->actor.speedXZ, 10.0f, 1.0f, 0.5f);
                break;
            case MO_CORE_STUNNED:
                this->actor.velocity.x = Math_SinS(this->actor.world.rot.y) * this->actor.speedXZ;
                this->actor.velocity.z = Math_CosS(this->actor.world.rot.y) * this->actor.speedXZ;
                this->actor.world.pos.x += this->actor.velocity.x;
                this->actor.world.pos.z += this->actor.velocity.z;
                break;
        }
        if ((this->actionState == MO_CORE_MOVE) || (this->actionState == MO_CORE_STUNNED)) {
            this->actor.world.pos.y += this->actor.velocity.y;
            this->actor.velocity.y -= 1.0f;
            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 50.0f, 20.0f, 100.0f, 1);
            effectVelocity.x = effectVelocity.y = effectVelocity.z = 0.0f;
            for (i = 0; i < 1; i++) {
                effectPos.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
                effectPos.y = Rand_CenteredFloat(20.0f) + this->actor.world.pos.y;
                effectPos.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
                BossMo_SpawnDroplet(MO_FX_DROPLET, (BossMoParticle*) globalCtx->specialEffects, &effectPos, &effectVelocity,
                                    Rand_ZeroFloat(0.02f) + 0.05f);
            };

            if (nearLand) {
                if (this->actor.world.pos.y <= 10) {
                    this->actor.world.pos.y = 10;
                    this->actor.velocity.y = -0.01f;
                    if (this->timers[1] != 0) {
                        if (this->timers[1] == 1) {
                            this->actor.velocity.y = 6.0f;
                        }
                    } else {
                        this->timers[1] = 2;
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MOFER_CORE_LAND);
                        for (i = 0; i < 10; i++) {
                            effectVelocity.x = Rand_CenteredFloat(4.0f);
                            effectVelocity.y = Rand_ZeroFloat(2.0f) + 3.0f;
                            effectVelocity.z = Rand_CenteredFloat(4.0f);
                            effectPos = this->actor.world.pos;
                            effectPos.x += effectVelocity.x;
                            effectPos.z += effectVelocity.z;
                            BossMo_SpawnDroplet(MO_FX_DROPLET, (BossMoParticle*) globalCtx->specialEffects, &effectPos,
                                                &effectVelocity, Rand_ZeroFloat(0.08f) + 0.13f);
                        }
                        effectVelocity.x = effectVelocity.y = effectVelocity.z = 0.0f;
                        effectPos = this->actor.world.pos;
                        effectPos.y = 0.0f;
                        BossMo_SpawnDroplet(MO_FX_DROPLET, (BossMoParticle*) globalCtx->specialEffects, &effectPos,
                                            &effectVelocity, 0.4f);
                    }
                }
            } else if (this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx)) {
                this->actor.velocity.y = BossMo_NearLand(&this->actor.world.pos, 40.0f) ? 15.0f : 6.0f;
                if ((this->actor.world.pos.y + 15.0f) >= MO_WATER_LEVEL(globalCtx)) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MOFER_CORE_JUMP);
                }
            }
        } else if (this->actionState >= MO_CORE_MOVE) {
            if (this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx)) {
                if (this->actionState == MO_CORE_MAKE_TENT) {
                    this->targetPos.x = sMorphaTent1->targetPos.x;
                    this->targetPos.y = sMorphaTent1->actor.world.pos.y - 40.0f;
                    this->targetPos.z = sMorphaTent1->targetPos.z;
                    Math_ApproachF(&this->actor.speedXZ, 10.0f, 1.0f, 0.5f);
                } else if (this->actionState == MO_CORE_UNDERWATER) {
                    switch (this->waitUnderwater) {
                        case false:
                            this->targetPos = player->actor.world.pos;
                            this->targetPos.y += 30.0f;
                            sp70.x = 0.0f;
                            sp70.y = 0.0f;
                            sp70.z = 100.0f;
                            Matrix_RotateY((player->actor.world.rot.y / (f32)0x8000) * M_PI, MTXMODE_NEW);
                            Matrix_MultVec3f(&sp70, &sp64);
                            this->targetPos.x = player->actor.world.pos.x + sp64.x;
                            this->targetPos.y = player->actor.world.pos.y + 30.0f;
                            this->targetPos.z = player->actor.world.pos.z + sp64.z;
                            Math_ApproachF(&this->actor.speedXZ, 10.0f, 1.0f, 1.0f);
                            if (this->timers[0] == 0) {
                                this->waitUnderwater = true;
                                this->timers[0] = (s16)Rand_ZeroFloat(50.0f) + 50;
                            }
                            break;
                        case true:
                            Math_ApproachF(&this->actor.speedXZ, 1.0f, 1.0f, 0.5f);
                            if (this->timers[0] == 0) {
                                this->waitUnderwater = false;
                                this->timers[0] = (s16)Rand_ZeroFloat(20.0f) + 20;
                                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MOFER_CORE_MOVE_WT);
                            }
                            break;
                    }
                }
                this->targetPos.x += Math_SinS(this->movementTimer * 3096.0f) * 30.0f;
                this->targetPos.y += Math_SinS(this->movementTimer * 2096.0f) * 30.0f;
                this->targetPos.z += Math_SinS(this->movementTimer * 2796.0f) * 30.0f;
                this->tentMaxAngle = 5.0f;
                this->tentSpeed = 4000.0f;
                spDC = this->targetPos.x - this->actor.world.pos.x;
                spD8 = this->targetPos.y - this->actor.world.pos.y;
                spD4 = this->targetPos.z - this->actor.world.pos.z;
                spCC = (s16)(Math_FAtan2F(spDC, spD4) * (0x8000 / M_PI));
                spD0 = (s16)(Math_FAtan2F(spD8, sqrtf(SQ(spDC) + SQ(spD4))) * (0x8000 / M_PI));
                Math_ApproachS(&this->actor.world.rot.y, spCC, this->tentMaxAngle, this->tentSpeed);
                Math_ApproachS(&this->actor.world.rot.x, spD0, this->tentMaxAngle, this->tentSpeed);
                func_8002D908(&this->actor);
            } else {
                this->actor.world.pos.y += this->actor.velocity.y;
                this->actor.velocity.y -= 1.0f;
            }
            func_8002D7EC(&this->actor);
            temp = (this->actor.world.pos.y < -200.0f) ? 5 : 1;
            this->actor.world.pos.y -= 20.0f;
            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 50.0f, 20.0f, 100.0f, temp);
            this->actor.world.pos.y += 20.0f;
        }
    }
    if ((this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx)) && (MO_WATER_LEVEL(globalCtx) <= this->actor.prevPos.y)) {
        if (this->actor.velocity.y < -5.0f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MOFER_CORE_JUMP);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MOFER_CORE_SMJUMP);
        }
        if ((this->timers[3] != 0) || ((sMorphaTent1->tentMaxStretch > 0.2f) &&
                                       (fabsf(this->actor.world.pos.x - sMorphaTent1->actor.world.pos.x) < 30.0f) &&
                                       (fabsf(this->actor.world.pos.z - sMorphaTent1->actor.world.pos.z) < 30.0f))) {
            // This space intentionally left blank.
        } else {
            this->timers[3] = 8;
            for (i = 0; i < 10; i++) {
                sp5C = Rand_ZeroFloat(3.14f);
                sp60 = Rand_ZeroFloat(0.6f) + 1.6f;
                effectVelocity.x = Math_SinS(((i * (f32)0x10000) / 10.0f) + sp5C) * sp60;
                effectVelocity.z = Math_CosS(((i * (f32)0x10000) / 10.0f) + sp5C) * sp60;
                effectVelocity.y = Rand_ZeroFloat(0.3f) + 3.0f;

                effectPos = this->actor.world.pos;
                effectPos.x += effectVelocity.x * 3.0f;
                effectPos.y = MO_WATER_LEVEL(globalCtx);
                effectPos.z += effectVelocity.z * 3.0f;
                BossMo_SpawnDroplet(MO_FX_SPLASH, (BossMoParticle*) globalCtx->specialEffects, &effectPos, &effectVelocity,
                                    Rand_ZeroFloat(0.075f) + 0.15f);
            }
            effectPos = this->actor.world.pos;
            effectPos.y = MO_WATER_LEVEL(globalCtx);
            BossMo_SpawnRipples(globalCtx->specialEffects, &effectPos, 100.0f, 800.0f, 100, 290, MO_FX_SMALL_RIPPLE);
            BossMo_SpawnRipples(globalCtx->specialEffects, &effectPos, 50.0f, 600.0f, 70, 290, MO_FX_SMALL_RIPPLE);
            BossMo_SpawnRipples(globalCtx->specialEffects, &effectPos, 0, 400.0f, 50, 290, MO_FX_SMALL_RIPPLE);
        }
    }
    if ((this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx)) || (this->actionState >= MO_CORE_ATTACK)) {
        for (i = 0; i < 3; i++) {
            effectAccel.x = effectAccel.z = 0.0f;
            effectVelocity.x = effectVelocity.y = effectVelocity.z = 0.0f;
            if (this->actionState >= MO_CORE_ATTACK) {
                effectAccel.y = 0.0f;
                sp58 = 10.0f;
            } else {
                effectAccel.y = 0.1f;
                sp58 = 20.0f;
            }
            effectPos.x = Rand_CenteredFloat(sp58) + this->actor.world.pos.x;
            effectPos.y = Rand_CenteredFloat(sp58) + this->actor.world.pos.y;
            effectPos.z = Rand_CenteredFloat(sp58) + this->actor.world.pos.z;
            BossMo_SpawnBubble(globalCtx->specialEffects, &effectPos, &effectVelocity, &effectAccel,
                               Rand_ZeroFloat(0.05f) + 0.1f, NULL);
        }
    }
    BossMo_CoreCollisionCheck(this, globalCtx);
}

void BossMo_UpdateCore(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossMo* this = THIS;
    s16 i;
    Player* player = PLAYER;

    osSyncPrintf("CORE mode = <%d>\n", this->actionState);
    if (sMorphaTent2 == NULL) {
        MO_WATER_LEVEL(globalCtx) = sMorphaTent1->waterLevelMod + (s16)this->waterLevel;
    } else {
        MO_WATER_LEVEL(globalCtx) = sMorphaTent2->waterLevelMod + ((s16)this->waterLevel + sMorphaTent1->waterLevelMod);
    }
    this->actor.flags |= 0x200;
    this->actor.focus.pos = this->actor.world.pos;
    this->rippleTimer++;

    if (this->damageFlashTimer != 0) {
        this->damageFlashTimer--;
    }
    if (this->invincibilityTimer != 0) {
        this->invincibilityTimer--;
    }
    this->movementTimer++;

    for (i = 0; i < 5; i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }

    BossMo_Core(this, globalCtx);
    Collider_UpdateCylinder(&this->actor, &this->coreCollider);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->coreCollider.base);
    if ((this->actionState != MO_CORE_STUNNED) || (this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx))) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->coreCollider.base);
    } else {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->coreCollider.base);
    }
    BossMo_UpdateParticles(this, globalCtx);
    if (player->actor.parent != NULL) {
        this->actor.flags &= ~1;
    }
    BossMo_Unknown();
}

void BossMo_Update(Actor* thisx, GlobalContext* globalCtx) {
    s16 i;
    s16 index;
    s32 pad;
    BossMo* this = THIS;
    Player* player = PLAYER;
    f32 phi_f0;

    if ((this == sMorphaTent2) && (this->tent2KillTimer != 0)) {
        this->tent2KillTimer++;
        this->actor.draw = NULL;
        if (this->tent2KillTimer > 20) {
            Actor_Kill(&this->actor);
            func_800F89E8(&this->tentTipPos);
            sMorphaTent2 = NULL;
        }
        return;
    }

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->tentPos[40], &this->tentTipPos, &this->actor.projectedW);
    osSyncPrintf("MO : Move mode = <%d>\n", this->actionState);
    Math_ApproachS(&player->actor.shape.rot.x, 0, 5, 0x3E8);
    Math_ApproachS(&player->actor.shape.rot.z, 0, 5, 0x3E8);
    this->rippleTimer++;
    this->sfxTimer++;
    this->movementTimer++;
    this->tentWidthIndex++;
    if (this->tentWidthIndex >= 300) {
        this->tentWidthIndex = 0;
    }
    this->tentPulsePhase -= 3000;
    index = this->tentWidthIndex;
    this->tentWidth[index] = (Math_SinS(this->tentPulsePhase) * this->tentPulse) + (1.0f + this->tentPulse);
    for (i = 0; i < 41; i++) {
        if (this->actionState >= MO_TENT_DEATH_START) {
            if (this->actionState >= MO_TENT_DEATH_1) {
                if (this->actionState == MO_TENT_DEATH_5) {
                    phi_f0 = (this->timers[0] != 0) ? sFlatWidth[i] : sDropletWidth[i];
                    Math_ApproachF(&this->tentScale[i].x, phi_f0, 0.5f, 100.0f);
                } else {
                    index = ((this->tentWidthIndex + (i * 2)) + 220) % 300;
                    phi_f0 = this->tentWidth[index] + SQ(sTentWidth[i]);
                    Math_ApproachF(&this->tentScale[i].x, phi_f0, 0.5f, 0.3f);
                }
            } else {
                index = ((this->tentWidthIndex - (i * 2)) + 300) % 300;
                phi_f0 = this->tentWidth[index] * sTentWidth[i];
                this->tentScale[i].x = phi_f0;
            }
        } else {
            index = ((this->tentWidthIndex - (i * 2)) + 300) % 300;
            phi_f0 = this->tentWidth[index] * sTentWidth[i];
            Math_ApproachF(&this->tentScale[i].x, phi_f0, 0.5f, 0.3f);
        }
        phi_f0 = Math_SinS((this->rippleTimer * 12000.0f) + (i * 20000.0f));
        this->tentRipple[i].x = (1.0f * phi_f0) * this->tentRippleSize;
        this->tentScale[i].y = this->tentScale[i].z = this->tentScale[i].x;
        this->tentRipple[i].y = this->tentRipple[i].z = this->tentRipple[i].x;
    }

    Math_ApproachF(&this->tentRippleSize, 0.0f, 0.1f, 0.005f);
    Math_ApproachF(&this->tentPulse, 0.2f, 0.5f, 0.01f);
    this->actionFunc(this, globalCtx);
    for (i = 0; i < 5; i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }
    Math_ApproachS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 0xA, 0xC8);
    Actor_MoveForward(&this->actor);
    Math_ApproachF(&this->actor.speedXZ, 0.0, 1.0f, 0.02f);

    if (BossMo_NearLand(&this->actor.world.pos, 40)) {
        this->actor.world.pos = this->actor.prevPos;
    }
    if ((this->rippleTimer % 8) == 0) {
        f32 rippleScale;
        Vec3f pos = this->actor.world.pos;

        if (this->actionState < MO_TENT_DEATH_START) {
            rippleScale = 400.0f;
        } else {
            rippleScale = 0.0;
            if (this->actionState >= MO_TENT_DEATH_1) {
                pos = this->tentPos[38];
            }
        }
        BossMo_SpawnRipples(globalCtx->specialEffects, &pos, rippleScale, rippleScale * 3.0f, this->baseAlpha * 0.6666f,
                            300, MO_FX_BIG_RIPPLE);
    }
    if (this->baseBubblesTimer != 0) {
        Vec3f sp88;
        Vec3f sp7C;
        Vec3f bubblePos;
        Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
        s32 pad;

        this->baseBubblesTimer--;
        sp88.x = 0.0;
        sp88.y = 0.0;
        sp88.z = 100.0f;
        Matrix_RotateY(Rand_ZeroFloat(2.0f * M_PI), MTXMODE_NEW);
        Matrix_MultVec3f(&sp88, &sp7C);
        if ((this->actionState >= MO_TENT_DEATH_1) && (this->actionState != MO_TENT_DEATH_3)) {
            i = 38;
        } else {
            i = 0;
            if (this->actionState < MO_TENT_CUT) {
                func_80078914(&this->tentTipPos, NA_SE_EN_MOFER_CORE_ROLL - SFX_FLAG);
            }
        }
        bubblePos.x = this->tentPos[i].x + sp7C.x;
        bubblePos.y = (MO_WATER_LEVEL(globalCtx) - 40.0f) + Rand_ZeroFloat(20.0f);
        bubblePos.z = this->tentPos[i].z + sp7C.z;
        BossMo_SpawnBubble(globalCtx->specialEffects, &bubblePos, &zeroVec, &zeroVec,
                           Rand_ZeroFloat(0.05f) + 0.2f, &this->tentPos[i]);
    }

    if (this->damageFlashTimer != 0) {
        this->damageFlashTimer--;
    }
    if (this->invincibilityTimer != 0) {
        this->invincibilityTimer--;
    }
    if (this->linkHitTimer != 0) {
        this->linkHitTimer--;
    }

    if (this->drawActor) {
        BossMo_TentCollisionCheck(this, globalCtx);
        if ((this->invincibilityTimer == 0) && (this->actionState != MO_TENT_GRAB) &&
            (this->actionState != MO_TENT_SHAKE)) {
            BossMo* otherTent = (BossMo*)this->otherTent;

            if (!HAS_LINK(otherTent) && (this->cutIndex == 0)) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->tentCollider.base);
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->tentCollider.base);
            }
        }
        if (this->cutIndex == 0) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->tentCollider.base);
        }
    }
    this->baseTex1x++;
    this->baseTex1y++;
    this->baseTex2x -= 3;
    this->baseTex2y++;
    Math_ApproachZeroF(&this->waterLevelMod, 0.1f, 0.2f);
}

void BossMo_UpdateTentColliders(BossMo* this, s32 item, ColliderJntSph* tentCollider, Vec3f* center) {
    tentCollider->elements[item].dim.worldSphere.center.x = center->x;
    tentCollider->elements[item].dim.worldSphere.center.y = center->y;
    tentCollider->elements[item].dim.worldSphere.center.z = center->z;
    if (this->actionState <= MO_TENT_SHAKE) {
        tentCollider->elements[item].dim.worldSphere.radius =
            tentCollider->elements[item].dim.modelSphere.radius * tentCollider->elements[item].dim.scale;
    } else {
        tentCollider->elements[item].dim.worldSphere.radius = 0;
    }
}

static Gfx* sTentDLists[41] = {
    gMorphaTentaclePart0DL,  gMorphaTentaclePart1DL,  gMorphaTentaclePart2DL,  gMorphaTentaclePart3DL,
    gMorphaTentaclePart4DL,  gMorphaTentaclePart5DL,  gMorphaTentaclePart6DL,  gMorphaTentaclePart7DL,
    gMorphaTentaclePart8DL,  gMorphaTentaclePart9DL,  gMorphaTentaclePart10DL, gMorphaTentaclePart11DL,
    gMorphaTentaclePart12DL, gMorphaTentaclePart13DL, gMorphaTentaclePart14DL, gMorphaTentaclePart15DL,
    gMorphaTentaclePart16DL, gMorphaTentaclePart17DL, gMorphaTentaclePart18DL, gMorphaTentaclePart19DL,
    gMorphaTentaclePart20DL, gMorphaTentaclePart21DL, gMorphaTentaclePart22DL, gMorphaTentaclePart23DL,
    gMorphaTentaclePart24DL, gMorphaTentaclePart25DL, gMorphaTentaclePart26DL, gMorphaTentaclePart27DL,
    gMorphaTentaclePart28DL, gMorphaTentaclePart29DL, gMorphaTentaclePart30DL, gMorphaTentaclePart31DL,
    gMorphaTentaclePart32DL, gMorphaTentaclePart33DL, gMorphaTentaclePart34DL, gMorphaTentaclePart35DL,
    gMorphaTentaclePart36DL, gMorphaTentaclePart37DL, gMorphaTentaclePart38DL, gMorphaTentaclePart39DL,
    gMorphaTentaclePart40DL,
};

void BossMo_DrawTentacle(BossMo* this, GlobalContext* globalCtx) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    s16 i;
    s16 notCut;
    s16 index;
    Mtx* matrix = Graph_Alloc(globalCtx->state.gfxCtx, 41 * sizeof(Mtx));
    f32 phi_f20;
    f32 phi_f22;
    Vec3f sp110;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6366);

    sp110.x = globalCtx->envCtx.unk_2A;
    sp110.y = globalCtx->envCtx.unk_2B;
    sp110.z = globalCtx->envCtx.unk_2C;

    Matrix_Push();

    gDPPipeSync(POLY_XLU_DISP++);

    gSPSegment(POLY_XLU_DISP++, 0x0C, matrix);

    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, MTXMODE_APPLY);
    Matrix_RotateX((this->actor.shape.rot.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);

    BossMo_InitRand(1, 29100, 9786);

    for (i = 0; i < 41; i++, matrix++) {
        s32 pad;
        s32 pad2;

        if (i < 2) {
            Matrix_Push();
            Matrix_Scale(0.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            notCut = true;
        } else {
            if (i >= 3) {
                Matrix_Translate(0.0f, this->tentStretch[i - 2].y, 0.0f, MTXMODE_APPLY);
                Matrix_RotateX((this->tentRot[i - 2].x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
                Matrix_RotateZ((this->tentRot[i - 2].z / (f32)0x8000) * M_PI, MTXMODE_APPLY);
            }
            Matrix_Push();
            Matrix_Scale((this->tentScale[i - 2].x + this->tentRipple[i - 2].x) * this->actor.scale.x,
                         (this->tentScale[i - 2].y + this->tentRipple[i - 2].y) * this->actor.scale.y,
                         (this->tentScale[i - 2].z + this->tentRipple[i - 2].z) * this->actor.scale.z, MTXMODE_APPLY);
            notCut = true;
            if ((i >= this->cutIndex) && (this->meltIndex >= i)) {
                Matrix_Scale(this->cutScale, this->cutScale, this->cutScale, MTXMODE_APPLY);
                notCut = false;
            }
        }

        index = ((this->tentWidthIndex - (i * 2)) + 300) % 300;
        if (this->actionState < MO_TENT_DEATH_START) {
            Matrix_RotateY((((this->tentWidth[index] - 1.0f - this->tentPulse) * 1000) / 1000.0f) *
                               (*this).tentMaxStretch,
                           MTXMODE_APPLY);
        }
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        Matrix_ToMtx(matrix, "../z_boss_mo.c", 6452);

        gSPMatrix(POLY_XLU_DISP++, matrix, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        if (i == 0) {
            func_8002EB44(&this->tentPos[i], &globalCtx->view.eye, &sp110, globalCtx->state.gfxCtx);
        }

        if (i == 0) {
            gSPDisplayList(POLY_XLU_DISP++, gMorphaTentacleBaseDL);
        } else {
            gSPDisplayList(POLY_XLU_DISP++, sTentDLists[i]);
        }

        Matrix_Pop();

        if ((i >= 2) && notCut && (i < (this->noBubbles + 38))) {
            if ((this->actionState == MO_TENT_DEATH_1) || (this->actionState == MO_TENT_DEATH_2)) {
                phi_f20 = this->movementTimer & 3;
                phi_f20 *= -15.0f;
                phi_f22 = ((0.18f + BossMo_RandZeroOne() * 0.1f) * this->actor.scale.x) * 100.0f;
            } else {
                phi_f20 = 0.0f;
                phi_f22 = (((BossMo_RandZeroOne() * (0.08f)) + .08f) * this->actor.scale.x) * 100.0f;
            }
            Matrix_Push();
            Matrix_Translate(((BossMo_RandZeroOne() - 0.5f) * 10.0f) * this->tentScale[i - 2].x,
                             ((BossMo_RandZeroOne() - 0.5f) * 3.0f) + phi_f20,
                             ((BossMo_RandZeroOne() - 0.5f) * 10.0f) * this->tentScale[i - 2].z, MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(phi_f22, phi_f22, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6511),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_OPA_DISP++, gMorphaBubbleDL);

            Matrix_Pop();
        }

        Matrix_MultVec3f(&zeroVec, &this->tentPos[i]);
        if (i == 36) {
            Matrix_MultVec3f(&zeroVec, &this->actor.focus.pos);
        }
        if (i == 24) {
            MtxF sp98;
            Vec3f sp8C = { -16.0f, 13.0f, 30.0f };
            Vec3s sp84;

            Matrix_Push();
            if (this->linkToLeft) {
                sp8C.x *= -1.0f;
            }
            Matrix_MultVec3f(&sp8C, &this->grabPosRot.pos);
            Matrix_RotateX(-35 * M_PI / 64, MTXMODE_APPLY);
            Matrix_Get(&sp98);
            func_800D20CC(&sp98, &sp84, 0);
            this->grabPosRot.rot.x = sp84.x;
            this->grabPosRot.rot.y = sp84.y;
            this->grabPosRot.rot.z = sp84.z;
            Matrix_Pop();
        }
        if ((i < 38) && ((i & 1) == 1)) {
            BossMo_UpdateTentColliders(this, i / 2, &this->tentCollider, &this->tentPos[i]);
        }
    }

    Matrix_Pop();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6571);
}

void BossMo_DrawWater(BossMo* this, GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6582);
    if (1) {}

    Matrix_Push();
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Translate(0.0f, MO_WATER_LEVEL(globalCtx), 0.0f, MTXMODE_NEW);

    gSPSegment(POLY_XLU_DISP++, 0x0D,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->waterTex1x, (s16)this->waterTex1y, 32, 32, 1,
                                (s16)this->waterTex2x, (s16)this->waterTex2y, 32, 32));

    gDPPipeSync(POLY_XLU_DISP++);

    gDPSetPrimColor(POLY_XLU_DISP++, 0xFF, 0xFF, 200, 255, 255, (s8)sMorphaTent1->waterTexAlpha);

    gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, 80);

    Matrix_Scale(0.5f, 1.0f, 0.5f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6675),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_XLU_DISP++, gMorphaWaterDL);

    Matrix_Pop();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6680);
}

void BossMo_DrawCore(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossMo* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6688);
    if (this->actor.world.pos.y > MO_WATER_LEVEL(globalCtx)) {
        BossMo_DrawWater(this, globalCtx);
    }
    if (this->drawActor) {
        func_80093D84(globalCtx->state.gfxCtx);

        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, sMorphaTent1->rippleTimer * 3,
                                    sMorphaTent1->rippleTimer * 3, 32, 32, 1, sMorphaTent1->rippleTimer * -3,
                                    sMorphaTent1->rippleTimer * -3, 32, 32));
        gSPSegment(POLY_XLU_DISP++, 0x09,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, sMorphaTent1->rippleTimer * 5, 0, 32, 32, 1, 0,
                                    sMorphaTent1->rippleTimer * -10, 32, 32));

        Matrix_RotateX(this->movementTimer * 0.5f, MTXMODE_APPLY);
        Matrix_RotateZ(this->movementTimer * 0.8f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6735),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 255, (s8)this->baseAlpha);

        func_8002ED80(&this->actor, globalCtx, 0);

        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gMorphaCoreMembraneDL));

        gDPPipeSync(POLY_XLU_DISP++);

        gDPSetEnvColor(POLY_XLU_DISP++, 0, 220, 255, 128);
        if (this->damageFlashTimer & 1) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 60, 0, 255);
        } else {
            gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 255, 255);
        }
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gMorphaCoreNucleusDL));

        if ((this->drawShadow && (this->actor.world.pos.y >= 0.0f)) ||
            (this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx))) {
            f32 groundLevel;
            s16 shadowAlpha;
            
            if (this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx)) {
                groundLevel = -280.0f;
                shadowAlpha = 100;
            } else {
                groundLevel = 0.0f;
                shadowAlpha = 160;
            }

            func_80094044(globalCtx->state.gfxCtx);

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, shadowAlpha);

            Matrix_Translate(this->actor.world.pos.x, groundLevel, this->actor.world.pos.z, MTXMODE_NEW);
            Matrix_Scale(0.23f, 1.0f, 0.23f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6820),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gCircleShadowDL));
        }
    }

    if (this->actor.world.pos.y < MO_WATER_LEVEL(globalCtx)) {
        BossMo_DrawWater(this, globalCtx);
    }

    if ((this->csCamera != 0) && (this->csState < MO_INTRO_REVEAL)) {
        f32 sp8C;
        f32 sp88;
        f32 sp84;
        f32 temp;
        f32 sp7C;
        f32 sp78;
        Vec3f sp6C;
        Vec3f sp60;

        func_80093D84(globalCtx->state.gfxCtx);

        gDPSetPrimColor(POLY_XLU_DISP++, 0xFF, 0xFF, 200, 255, 255, (s8)this->introWaterTexAlpha);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, (s8)this->introWaterTexAlpha);

        gSPSegment(POLY_XLU_DISP++, 0x0D,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)sMorphaTent1->waterTex1x,
                                    (s16)sMorphaTent1->waterTex1y, 32, 32, 1, (s16)sMorphaTent1->waterTex2x,
                                    (s16)sMorphaTent1->waterTex2y, 32, 32));

        sp8C = this->cameraAt.x - this->cameraEye.x;
        sp88 = this->cameraAt.y - this->cameraEye.y;
        sp84 = this->cameraAt.z - this->cameraEye.z;
        temp = SQ(sp8C) + SQ(sp84);
        sp7C = Math_FAtan2F(sp8C, sp84);
        sp78 = -Math_FAtan2F(sp88, sqrtf(temp));

        sp6C.x = 0.0f;
        sp6C.y = 0.0f;
        sp6C.z = 10.0f;

        Matrix_RotateY(sp7C, MTXMODE_NEW);
        Matrix_RotateX(sp78, MTXMODE_APPLY);
        Matrix_MultVec3f(&sp6C, &sp60);
        sp8C = sp60.x + this->cameraEye.x;
        sp88 = sp60.y + this->cameraEye.y;
        sp84 = sp60.z + this->cameraEye.z;
        Matrix_Translate(sp8C, sp88, sp84, MTXMODE_NEW);
        Matrix_RotateY(sp7C, MTXMODE_APPLY);
        Matrix_RotateX(sp78, MTXMODE_APPLY);
        Matrix_RotateZ(-(0.01f * this->rippleTimer), MTXMODE_APPLY);
        Matrix_RotateZ(0.1f * this->rippleTimer, MTXMODE_APPLY);
        Matrix_Scale(0.825f, 1.175f, 0.825f, MTXMODE_APPLY);
        Matrix_RotateZ(-(this->rippleTimer * 0.1f), MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        Matrix_Scale(0.05f, 1.0f, 0.05f, MTXMODE_APPLY);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6941),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(POLY_XLU_DISP++, gMorphaWaterDL);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6945);

    BossMo_DrawParticles(globalCtx->specialEffects, globalCtx);
}

void BossMo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossMo* this = THIS;
    u16 scroll;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6958);
    if (1) {}
    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, (s8)(this->baseAlpha * 1.5f));
    gDPSetEnvColor(POLY_OPA_DISP++, 150, 150, 150, 0);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->baseTex1x, this->baseTex1y, 32, 32, 1,
                                this->baseTex2x, this->baseTex2y, 32, 32));
    gDPSetPrimColor(POLY_XLU_DISP++, 0xFF, 0xFF, 200, 255, 255, (s8)((this->baseAlpha * 12.0f) / 10.0f));
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, (s8)this->baseAlpha);
    scroll = (s16)(Math_SinS(this->rippleTimer * 0xB00) * 30.0f) + 350;
    gSPTexture(POLY_XLU_DISP++, scroll, scroll, 0, G_TX_RENDERTILE, G_ON);

    if (this->drawActor) {
        BossMo_DrawTentacle(this, globalCtx);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 7023);
}

void BossMo_UpdateParticles(BossMo* this, GlobalContext* globalCtx) {
    BossMoParticle* particle = globalCtx->specialEffects;
    s16 i;
    Vec3f* targetPos;
    f32 dx;
    f32 dz;
    Vec3f bubbleSpeed = { 0.0f, 0.0f, 0.0f };
    Vec3f bubbleVel;

    for (i = 0; i < 300; i++, particle++) {
        if (particle->type != MO_FX_NULL) {
            particle->timer++;
            if (particle->stopTimer == 0) {
                particle->pos.x += particle->vel.x;
                particle->pos.y += particle->vel.y;
                particle->pos.z += particle->vel.z;
                particle->vel.x += particle->accel.x;
                particle->vel.y += particle->accel.y;
                particle->vel.z += particle->accel.z;
            } else {
                particle->stopTimer--;
            }
            if (particle->type <= MO_FX_BIG_RIPPLE) {
                if (this->csState >= MO_DEATH_START) {
                    particle->pos.y = MO_WATER_LEVEL(globalCtx);
                }
                Math_ApproachF(&particle->scale, particle->vMaxSize, 0.2f, particle->vSpreadRate);
                if (particle->rippleMode == 0) {
                    particle->alpha += 15;
                    if (particle->alpha >= particle->maxAlpha) {
                        particle->alpha = particle->maxAlpha;
                        particle->rippleMode++;
                    }
                } else {
                    particle->alpha -= 5;
                    if (particle->alpha <= 0) {
                        particle->alpha = 0;
                        particle->type = MO_FX_NULL;
                    }
                }
            } else if (particle->type == MO_FX_BUBBLE) {
                if (particle->targetPos == NULL) {
                    if ((particle->accel.y > 0.0f) && (particle->pos.y >= MO_WATER_LEVEL(globalCtx))) {
                        particle->type = MO_FX_NULL;
                    } else {
                        if (particle->vel.y > 2.0f) {
                            particle->vel.y = 2.0f;
                        }
                        particle->alpha -= 20;
                        if (particle->alpha <= 0) {
                            particle->alpha = 0;
                            particle->type = MO_FX_NULL;
                        }
                    }
                } else {
                    if ((particle->timer % 4) == 0) {
                        targetPos = particle->targetPos;
                        dx = targetPos->x - particle->pos.x;
                        dz = targetPos->z - particle->pos.z;
                        bubbleSpeed.z = particle->vSuction;
                        Matrix_RotateY(Math_FAtan2F(dx, dz), MTXMODE_NEW);
                        Matrix_MultVec3f(&bubbleSpeed, &bubbleVel);
                        particle->vel.x = bubbleVel.x;
                        particle->vel.z = bubbleVel.z;
                    }
                    Math_ApproachF(&particle->vSuction, 5.0f, 1.0f, 0.5f);
                    if (particle->timer > 20) {
                        particle->alpha -= 30;
                        particle->accel.y = 1.5f;
                        if ((particle->alpha <= 0) || (particle->pos.y >= MO_WATER_LEVEL(globalCtx))) {
                            particle->alpha = 0;
                            particle->type = MO_FX_NULL;
                        }
                    } else {
                        particle->alpha += 30;
                        if (particle->alpha >= 255) {
                            particle->alpha = 255;
                        }
                    }
                }
            } else if ((particle->type == MO_FX_DROPLET) || (particle->type == MO_FX_SPLASH) ||
                       (particle->type == MO_FX_SPLASH_TRAIL) || (particle->type == MO_FX_WET_SPOT)) {
                f32 shimmer = (particle->timer & 6) ? 80.0f : 200.0f;

                Math_ApproachF(&particle->vShimmer, shimmer, 1.0f, 80.0f);
                if (particle->type == MO_FX_WET_SPOT) {
                    Math_ApproachF(&particle->scale, particle->vMaxScale, 0.1f, 0.6f);
                    particle->alpha -= 15;
                    if (particle->alpha <= 0) {
                        particle->alpha = 0;
                        particle->type = MO_FX_NULL;
                    }
                } else {
                    particle->alpha = particle->vShimmer;
                    if (particle->type == MO_FX_SPLASH_TRAIL) {
                        Math_ApproachF(&particle->scale, 0.0f, 1.0f, 0.02f);
                        if (particle->scale <= 0.0f) {
                            particle->type = MO_FX_NULL;
                        }
                    } else {
                        if (particle->type == MO_FX_SPLASH) {
                            Vec3f velocity = { 0.0f, 0.0f, 0.0f };

                            BossMo_SpawnDroplet(MO_FX_SPLASH_TRAIL, (BossMoParticle*) globalCtx->specialEffects,
                                                &particle->pos, &velocity, particle->scale);
                        }
                        if (particle->vel.y < -20.0f) {
                            particle->vel.y = -20.0f;
                            particle->accel.y = 0.0f;
                        }
                        if (particle->stopTimer == 0) {
                            if (particle->vel.y < -5.0f) {
                                Math_ApproachF(&particle->vStretch, 5.0f, 0.1f, 0.15f);
                            }
                        } else if (particle->stopTimer == 1) {
                            particle->vel.x = Rand_CenteredFloat(3.0f);
                            particle->vel.z = Rand_CenteredFloat(3.0f);
                            particle->accel.y = -1.0f;
                        }
                        if ((particle->pos.y <= -280.0f) || ((1.0f >= particle->pos.y) && (particle->pos.y >= -20.0f) &&
                                                             BossMo_NearLand(&particle->pos, 0.0f))) {
                            particle->accel.y = 0.0f;
                            particle->vel.z = 0.0f;
                            particle->vel.y = 0.0f;
                            particle->vel.x = 0.0f;
                            if (particle->pos.y <= -280.0f) {
                                particle->pos.y = -280.0f;
                            } else {
                                particle->pos.y = 0.0f;
                            }
                            particle->type = MO_FX_WET_SPOT;
                            particle->alpha = 150;
                            particle->vStretch = (particle->scale * 15.0f) * 0.15f;
                        } else if (particle->pos.y <= MO_WATER_LEVEL(globalCtx)) {
                            Vec3f pos = particle->pos;

                            pos.y = MO_WATER_LEVEL(globalCtx);
                            if (particle->type == MO_FX_SPLASH) {
                                BossMo_SpawnRipples(globalCtx->specialEffects, &pos, 60.0f, 160.0f, 80, 290,
                                                    MO_FX_SMALL_RIPPLE);
                            } else {
                                BossMo_SpawnRipples(globalCtx->specialEffects, &pos, 40.0f, 110.0f, 80, 290,
                                                    MO_FX_SMALL_RIPPLE);
                            }
                            particle->type = MO_FX_NULL;
                        }
                    }
                }
            }
        }
    }
}

void BossMo_DrawParticles(BossMoParticle* particle, GlobalContext* globalCtx) {
    u8 flag = 0;
    s16 i;
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    BossMoParticle* firstParticle = particle;

    OPEN_DISPS(gfxCtx, "../z_boss_mo.c", 7264);
    Matrix_Push();

    for (i = 0; i < 300; i++, particle++) {
        if (particle->type == MO_FX_BIG_RIPPLE) {
            if (flag == 0) {
                func_80094BC4(gfxCtx);

                gDPSetEnvColor(POLY_XLU_DISP++, 155, 155, 255, 0);

                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, particle->alpha);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            Matrix_Scale(particle->scale, 1.0f, particle->scale, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7294),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, gEffWaterRippleDL);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (particle->type == MO_FX_SMALL_RIPPLE) {
            if (flag == 0) {
                func_80093D84(globalCtx->state.gfxCtx);

                gDPSetEnvColor(POLY_XLU_DISP++, 155, 155, 255, 0);

                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, particle->alpha);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            Matrix_Scale(particle->scale, 1.0f, particle->scale, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7330),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, gEffShockwaveDL);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (((particle->type == MO_FX_DROPLET) || (particle->type == MO_FX_SPLASH)) || (particle->type == MO_FX_SPLASH_TRAIL)) {
            if (flag == 0) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0);

                gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gDust1Tex));
                gSPDisplayList(POLY_XLU_DISP++, gMorphaDropletSetupDL);
                gDPSetEnvColor(POLY_XLU_DISP++, 250, 250, 255, 0);

                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, (s16)(*particle).vShimmer, (s16)(*particle).vShimmer, 255,
                            particle->alpha);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(particle->scale / particle->vStretch, particle->vStretch * particle->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7373),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, gMorphaDropletVtxDL);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (particle->type == MO_FX_WET_SPOT) {
            if (flag == 0) {
                func_80094044(gfxCtx);

                gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gDust1Tex));
                gDPSetEnvColor(POLY_XLU_DISP++, 250, 250, 255, 0);
                gSPDisplayList(POLY_XLU_DISP++, gMorphaDropletSetupDL);

                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, (s16)(*particle).vShimmer, (s16)(*particle).vShimmer, 0xFF,
                            particle->alpha);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            Matrix_Scale(particle->scale, 1.0f, particle->scale, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7441),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, gMorphaWetSpotVtxDL);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (particle->type == MO_FX_BUBBLE) {
            if (flag == 0) {
                func_80093D18(globalCtx->state.gfxCtx);

                gDPSetEnvColor(POLY_OPA_DISP++, 150, 150, 150, 0);

                flag++;
            }

            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, particle->alpha);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(particle->scale, particle->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7476),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_OPA_DISP++, gMorphaBubbleDL);
        }
    }

    Matrix_Pop();
    CLOSE_DISPS(gfxCtx, "../z_boss_mo.c", 7482);
}

void BossMo_Unknown(void) {
    // Called every frame by UpdateCore, but nothing sets the BREGs.
    // Testing in PJ64 indicates this function effectively does nothing.
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    static u16 unkSfx[532] = {
        0x0800, 0x0800, 0x0800, 0x0801, 0x0802, 0x0803, 0x0804, 0x0805, 0x0806, 0x0807, 0x0808, 0x080B, 0x080A, 0x080B,
        0x080C, 0x080D, 0x080F, 0x0810, 0x0810, 0x0811, 0x0812, 0x0813, 0x0814, 0x0815, 0x0816, 0x0817, 0x0818, 0x081B,
        0x081A, 0x081B, 0x081D, 0x081F, 0x0820, 0x0820, 0x0821, 0x0822, 0x0823, 0x0824, 0x0825, 0x0826, 0x0827, 0x0828,
        0x082B, 0x082A, 0x082B, 0x082D, 0x082F, 0x0830, 0x0831, 0x0831, 0x0832, 0x0833, 0x0834, 0x0834, 0x0834, 0x0834,
        0x0834, 0x0834, 0x0835, 0x0835, 0x0835, 0x0835, 0x0835, 0x0835, 0x0836, 0x2889, 0x288A, 0x0839, 0x083A, 0x083B,
        0x083C, 0x083D, 0x083E, 0x083F, 0x0840, 0x0840, 0x0840, 0x0841, 0x0842, 0x0843, 0x0844, 0x0845, 0x0846, 0x0847,
        0x0848, 0x084B, 0x084A, 0x084B, 0x084D, 0x084F, 0x0850, 0x0850, 0x0851, 0x0852, 0x0853, 0x0854, 0x0855, 0x0856,
        0x0857, 0x0858, 0x085B, 0x085A, 0x085B, 0x085D, 0x085F, 0x0863, 0x0864, 0x0865, 0x0866, 0x0867, 0x0068, 0x1800,
        0x1801, 0x1802, 0x1803, 0x1804, 0x1805, 0x1806, 0x1806, 0x1807, 0x1808, 0x1809, 0x180A, 0x100B, 0x180C, 0x100D,
        0x180E, 0x180F, 0x1010, 0x1811, 0x1812, 0x1813, 0x1814, 0x1814, 0x1815, 0x0000, 0x0000, 0x1818, 0x181A, 0x181B,
        0x181B, 0x181C, 0x181D, 0x181E, 0x181F, 0x1820, 0x1821, 0x1022, 0x1823, 0x1824, 0x1825, 0x1826, 0x1827, 0x1828,
        0x1829, 0x182A, 0x182B, 0x1830, 0x1830, 0x1830, 0x1831, 0x1832, 0x1833, 0x1834, 0x1835, 0x1836, 0x1837, 0x1838,
        0x1839, 0x183A, 0x183B, 0x1050, 0x1051, 0x5802, 0x2801, 0x2802, 0x2803, 0x2804, 0x2805, 0x2006, 0x2007, 0x2809,
        0x2808, 0x200A, 0x200B, 0x200B, 0x200C, 0x200D, 0x280E, 0x280F, 0x2810, 0x2811, 0x2812, 0x2813, 0x2814, 0x2815,
        0x2816, 0x2817, 0x2817, 0x2818, 0x2819, 0x281A, 0x281B, 0x281C, 0x281D, 0x201E, 0x281F, 0x2820, 0x2021, 0x2822,
        0x2823, 0x2024, 0x2025, 0x2826, 0x2027, 0x2028, 0x2029, 0x202A, 0x282B, 0x282C, 0x282F, 0x282F, 0x2030, 0x2031,
        0x2032, 0x2033, 0x2034, 0x2835, 0x2036, 0x2837, 0x2838, 0x2839, 0x283A, 0x203B, 0x283C, 0x283D, 0x283E, 0x283F,
        0x2040, 0x2041, 0x2842, 0x2843, 0x2844, 0x2845, 0x2846, 0x2047, 0x2848, 0x2830, 0x2831, 0x0000, 0x0000, 0x3800,
        0x3801, 0x3002, 0x3803, 0x3804, 0x3805, 0x3806, 0x3807, 0x3808, 0x3009, 0x380A, 0x380B, 0x380C, 0x380D, 0x380E,
        0x380F, 0x3810, 0x3811, 0x3812, 0x3813, 0x3961, 0x3962, 0x395C, 0x395D, 0x395E, 0x395F, 0x3960, 0x381B, 0x301C,
        0x381D, 0x3820, 0x3821, 0x3822, 0x3823, 0x3824, 0x387B, 0x3829, 0x382A, 0x382B, 0x382C, 0x382D, 0x382E, 0x382F,
        0x3828, 0x387A, 0x3838, 0x3839, 0x383A, 0x383B, 0x386C, 0x383D, 0x387A, 0x3840, 0x3841, 0x3842, 0x3844, 0x3845,
        0x3846, 0x3847, 0x3848, 0x384C, 0x384D, 0x304E, 0x304F, 0x3850, 0x3051, 0x3852, 0x3853, 0x3054, 0x3855, 0x3058,
        0x3859, 0x387A, 0x385C, 0x385D, 0x385E, 0x385F, 0x3860, 0x3861, 0x3862, 0x387B, 0x3064, 0x3865, 0x3868, 0x3869,
        0x386A, 0x386B, 0x386C, 0x387B, 0x386E, 0x386F, 0x3870, 0x3071, 0x3072, 0x3873, 0x3874, 0x3875, 0x3876, 0x3877,
        0x3878, 0x387C, 0x387D, 0x387E, 0x387F, 0x3880, 0x3881, 0x3884, 0x3885, 0x386D, 0x3890, 0x3891, 0x3892, 0x3893,
        0x3894, 0x3895, 0x3898, 0x3899, 0x309A, 0x38A1, 0x38A1, 0x38A2, 0x38A3, 0x30A4, 0x38A5, 0x38A6, 0x30A7, 0x38A8,
        0x38A9, 0x38AA, 0x38AB, 0x38AC, 0x38AD, 0x38AE, 0x38AF, 0x38B0, 0x38B1, 0x38B2, 0x38B8, 0x38B9, 0x38BA, 0x38BB,
        0x38BC, 0x38BD, 0x38BE, 0x387E, 0x38C1, 0x38C2, 0x38C3, 0x38C4, 0x38C5, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
        0x0000, 0x0000, 0x4800, 0x4801, 0x4802, 0x4803, 0x4804, 0x4805, 0x4806, 0x4807, 0x4807, 0x4808, 0x4809, 0x480A,
        0x480B, 0x480C, 0x480C, 0x0000, 0x4830, 0x4830, 0x480F, 0x4810, 0x4813, 0x4814, 0x4817, 0x4837, 0x4818, 0x0000,
        0x0000, 0x0000, 0x4823, 0x4824, 0x4825, 0x4826, 0x4827, 0x4828, 0x4829, 0x482A, 0x482B, 0x480C, 0x4837, 0x5800,
        0x0000, 0x0020, 0x6800, 0x6800, 0x6800, 0x6800, 0x6800, 0x6800, 0x6800, 0x6801, 0x6801, 0x681C, 0x6802, 0x6803,
        0x6814, 0x6804, 0x6804, 0x6804, 0x6804, 0x6805, 0x6805, 0x6808, 0x6807, 0x6808, 0x6808, 0x6809, 0x6809, 0x680B,
        0x680C, 0x680D, 0x6841, 0x6842, 0x6840, 0x6841, 0x6842, 0x6840, 0x6850, 0x30D0, 0x38D1, 0x38D2, 0x38D3, 0x38D4,
        0x38D5, 0x38D6, 0x38D7, 0x3927, 0x38D9, 0x30DA, 0x30DB, 0x3889, 0x39EF, 0x38E1, 0x38E2, 0x38E4, 0x38E5, 0x38E6,
        0x387A, 0x38E7, 0x38E8, 0x38EC, 0x38ED, 0x38EE, 0x38EF, 0x30F0, 0x30F1, 0x38F2, 0x38F3, 0x39EC, 0x38F4, 0x30F5,
        0x38F6, 0x38F7, 0x38FC, 0x38FD, 0x387B, 0x3900, 0x3901, 0x3902, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    };

    if (BREG(0x20) != 0) {
        BREG(0x20)--;
        Audio_QueueSeqCmd(NA_BGM_STOP | (1 << 0x10));
        func_80078914(&zeroVec, unkSfx[BREG(0x21)]);
    }
    if (BREG(0x22) != 0) {
        BREG(0x22) = 0;
        Audio_QueueSeqCmd((u16)BREG(0x23));
    }
}
