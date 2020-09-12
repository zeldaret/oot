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

extern SkeletonHeader D_06011660;
extern SkeletonHeader D_060115A0;
extern SkeletonHeader D_060114E0;
extern AnimationHeader D_060115E4;
extern AnimationHeader D_06011524;
extern AnimationHeader D_06011464;

extern Gfx D_0600A900[];
extern Gfx D_0600A880[];
extern Gfx D_0600D3A0[];
extern Gfx D_0600D420[];
extern Gfx D_0600B3A8[];
extern Gfx D_0600B3C8[];
extern Gfx D_0600D668[];
extern Gfx D_0600D6E8[];
extern Gfx D_0600B2F8[];
extern Gfx D_060059F8[];
extern Gfx D_0600CBC8[];
extern Gfx D_0600D0A0[];
extern Gfx D_060091E8[];
extern Gfx D_06009168[];
extern Gfx D_060038A8[];
extern Gfx D_060034A8[];
extern Gfx D_06003CA8[];
extern Gfx D_060079A0[];
extern Gfx D_06007AC0[];
extern Gfx D_06007B70[];
extern Gfx D_06007BD0[];
extern Gfx D_06007C30[];
extern Gfx D_06007C90[];
extern Gfx D_06007CF0[];
extern Gfx D_06007D50[];
extern Gfx D_06007DB0[];
extern Gfx D_06007E10[];
extern Gfx D_06007E70[];
extern Gfx D_06007ED0[];
extern Gfx D_06007F30[];
extern Gfx D_06007F90[];
extern Gfx D_06007FF0[];
extern Gfx D_06008038[];
extern Gfx D_06008080[];
extern Gfx D_060080D8[];

extern UNK_TYPE D_0600D700;

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

Vec3f holeLocations[] = { { 0.0f, 90.0f, -243.0f },    { 0.0f, 90.0f, 0.0f },    { 0.0f, 90.0f, 243.0f },
                          { -243.0f, 90.0f, -243.0f }, { -243.0f, 90.0f, 0.0f }, { -243.0f, 90.0f, 243.0f },
                          { 243.0f, 90.0f, -243.0f },  { 243.0f, 90.0f, 0.0f },  { 243.0f, 90.0f, 243.0f } };

Vec3f ceilingTargets[] = { { 0.0f, 900.0f, -243.0f }, { 243.0, 900.0f, -100.0f },  { 243.0f, 900.0f, 100.0f },
                           { 0.0f, 900.0f, 243.0f },  { -243.0f, 900.0f, 100.0f }, { -243.0, 900.0f, -100.0f } };

void BossFd_SpawnEmber(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 150; i++, particle++) {
        if (particle->type == 0) {
            particle->type = 1;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->opacity = 0xFF;
            particle->timer1 = (s16)Math_Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

void BossFd_SpawnDebris(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 150; i++, particle++) {
        if (particle->type == 0) {
            particle->type = 2;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->unk_34 = Math_Rand_ZeroFloat(100.0f);
            particle->unk_38 = Math_Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossFd_SpawnDust(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 150; i++, particle++) {
        if (particle->type == 0) {
            particle->type = 3;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->timer2 = 0;
            particle->scale = scale / 400.0f;
            break;
        }
    }
}

void BossFd_SpawnFireBreath(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale,
                            s16 opacity, s16 kbAngle) {
    s16 i;

    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == 0) {
            particle->type = 4;
            particle->timer1 = 0;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->pos.x -= particle->vel.x;
            particle->pos.y -= particle->vel.y;
            particle->pos.z -= particle->vel.z;
            particle->unk_34 = 0.0f;
            particle->opacity = opacity;
            particle->unk_38 = Math_Rand_ZeroFloat(10.0f);
            particle->timer2 = 0;
            particle->scale = scale / 400.0f;
            particle->kbAngle = kbAngle;
            break;
        }
    }
}

void BossFd_UpdateCamera1(BossFd* this, f32 arg1) {

    this->unk_1438.x = fabsf(this->unk_1408.x - this->unk_1450.x) * arg1;
    this->unk_1438.y = fabsf(this->unk_1408.y - this->unk_1450.y) * arg1;
    this->unk_1438.z = fabsf(this->unk_1408.z - this->unk_1450.z) * arg1;
    this->unk_1444.x = fabsf(this->unk_1414.x - this->unk_1468.x) * arg1;
    this->unk_1444.y = fabsf(this->unk_1414.y - this->unk_1468.y) * arg1;
    this->unk_1444.z = fabsf(this->unk_1414.z - this->unk_1468.z) * arg1;
}

void BossFd_UpdateCamera2(BossFd* this, GlobalContext* globalCtx) {

    if (this->introCameraState != 0) {
        Math_SmoothScaleMaxF(&this->unk_1408.x, this->unk_1450.x, this->unk_145C.x, this->unk_1438.x * this->unk_1480);
        Math_SmoothScaleMaxF(&this->unk_1408.y, this->unk_1450.y, this->unk_145C.y, this->unk_1438.y * this->unk_1480);
        Math_SmoothScaleMaxF(&this->unk_1408.z, this->unk_1450.z, this->unk_145C.z, this->unk_1438.z * this->unk_1480);
        Math_SmoothScaleMaxF(&this->unk_1414.x, this->unk_1468.x, this->unk_1474.x, this->unk_1444.x * this->unk_1480);
        Math_SmoothScaleMaxF(&this->unk_1414.y, this->unk_1468.y, this->unk_1474.y, this->unk_1444.y * this->unk_1480);
        Math_SmoothScaleMaxF(&this->unk_1414.z, this->unk_1468.z, this->unk_1474.z, this->unk_1444.z * this->unk_1480);
        Math_SmoothScaleMaxF(&this->unk_1480, 1.0f, 1.0f, this->unk_1484);
        this->unk_1414.y += this->unk_1488;
        func_800C04D8(globalCtx, this->introCameraState, &this->unk_1414, &this->unk_1408);
        Math_SmoothDownscaleMaxF(&this->unk_1488, 1.0f, 0.1f);
    }
}

void BossFd_Init(Actor* thisx, GlobalContext* globalCtx) {
    s16 i;
    BossFd* this = THIS;
    s16 pad;

    Flags_SetSwitch(globalCtx, 0x14);
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BG_VB_SIMA, 680.0f, -100.0f, 0.0f, 0, 0, 0,
                       0x64);
    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->actor, 0.05f);
    SkelAnime_Init(globalCtx, &this->skelAnime1, &D_06011660, &D_060115E4, 0, 0, 0);
    SkelAnime_Init(globalCtx, &this->skelAnime2, &D_060115A0, &D_06011524, 0, 0, 0);
    SkelAnime_Init(globalCtx, &this->skelAnime3, &D_060114E0, &D_06011464, 0, 0, 0);
    this->introState2 = 1;
    if (this->introState2 == 0) {
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
            this->centerManePos[i].x = this->actor.posRot.pos.x;
            this->centerManePos[i].y = this->actor.posRot.pos.y;
            this->centerManePos[i].z = this->actor.posRot.pos.z;
        }
    }

    this->actor.colChkInfo.health = 24;
    this->skinSegments = 18;
    if (this->introState2 == 0) {
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
                           this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, this->introState2);
    }
}

void BossFd_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossFd* this = THIS;
    s16 pad;

    SkelAnime_Free(&this->skelAnime1, globalCtx);
    SkelAnime_Free(&this->skelAnime2, globalCtx);
    SkelAnime_Free(&this->skelAnime3, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

s32 BossFd_FacingLink(BossFd* this) {
    return ABS((s16)(this->actor.yawTowardsLink - this->actor.posRot.rot.y)) < 0x2000;
}

void BossFd_SetupFly(BossFd* this, GlobalContext* globalCtx) {

    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime1, &D_060115E4);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime2, &D_06011524);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime3, &D_06011464);
    this->actionFunc = BossFd_Fly;
    this->maxTurnRate = 1000.0f;
}

#ifndef NON_MATCHING
// Somehow doesn't use rodata value D_808D1EB4 = 0.01f. It would occur after the 85.56f float
// literal in case 6 of the boss intro switch statement but before the next switch statement.
// All instructions match.
void BossFd_Fly(BossFd* this, GlobalContext* globalCtx) {
    u8 sp1CF = 0;
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
    f32 pad;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime1);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime2);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime3);
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

    if (this->introState2 != 0) {
        Player* player2 = PLAYER; // definitely needed for match
        Camera* camera = Gameplay_GetCamera(globalCtx, 0);
        switch (this->introState2) {
            case 1: // switch
                this->fogMode = 3;
                this->targetPosition.x = 0.0f;
                this->targetPosition.y = -110.0f;
                this->targetPosition.z = 0.0;
                this->maxTurnRate = 10000.0f;
                this->actionState = -1;
                if ((fabsf(player2->actor.posRot.pos.z) < 80.0f) &&
                    (fabsf(player2->actor.posRot.pos.x - 340.0f) < 60.0f)) {

                    this->introState2 = 2;
                    func_80064520(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 8);
                    this->introCameraState = Gameplay_CreateSubCamera(globalCtx);
                    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                    Gameplay_ChangeCameraStatus(globalCtx, this->introCameraState, 7);
                    player2->actor.posRot.pos.x = 380.0f;
                    player2->actor.posRot.pos.y = 100.0f;
                    player2->actor.posRot.pos.z = 0.0f;
                    player2->actor.posRot.rot.y = -0x4000;
                    player2->actor.speedXZ = 0.0f;
                    player2->actor.shape.rot.y = player2->actor.posRot.rot.y;
                    this->unk_1408.x = player2->actor.posRot.pos.x - 70.0f;
                    this->unk_1408.y = player2->actor.posRot.pos.y + 40.0f;
                    this->unk_1408.z = player2->actor.posRot.pos.z + 70.0f;
                    this->unk_1414.x = player2->actor.posRot.pos.x;
                    this->unk_1414.y = player2->actor.posRot.pos.y + 30.0f;
                    this->unk_1414.z = player2->actor.posRot.pos.z;
                    this->unk_1450.x = (player2->actor.posRot.pos.x - 50.0f) + 18.0f;
                    this->unk_1450.y = player2->actor.posRot.pos.y + 40;
                    this->unk_1450.z = (player2->actor.posRot.pos.z + 50.0f) - 18.0f;
                    this->unk_1468.x = player2->actor.posRot.pos.x;
                    this->unk_1468.y = player2->actor.posRot.pos.y + 50.0f;
                    this->unk_1468.z = player2->actor.posRot.pos.z;
                    BossFd_UpdateCamera1(this, 1.0f);
                    this->timers[0] = 0;
                    this->unk_1474.z = 0.05f;
                    this->unk_1474.y = 0.05f;
                    this->unk_1474.x = 0.05f;
                    this->unk_145C.z = 0.05f;
                    this->unk_145C.y = 0.05f;
                    this->unk_145C.x = 0.05f;
                    this->unk_1480 = 0.0f;
                    this->unk_1484 = 0.0f;
                    if (gSaveContext.eventChkInf[7] & 8) {
                        this->introState2 = 6;
                        this->unk_1450.x = ((player2->actor.posRot.pos.x + 100.0f) + 300.0f) - 600.0f;
                        this->unk_1450.y = (player2->actor.posRot.pos.y + 100.0f) - 50.0f;
                        this->unk_1450.z = (player2->actor.posRot.pos.z + 200.0f) - 150.0f;
                        this->unk_1468.x = 0.0f;
                        this->unk_1468.y = 120.0f;
                        this->unk_1468.z = 0.0f;
                        BossFd_UpdateCamera1(this, 0.5f);
                        this->timers[0] = 0;
                        this->holeIndex = 1;
                        holePosition1 = &holeLocations[(u8)this->holeIndex];
                        this->unk_145C.x = 0.1f;
                        this->unk_145C.y = 0.1f;
                        this->unk_145C.z = 0.1f;
                        this->unk_1474.x = 0.1f;
                        this->unk_1474.y = 0.1f;
                        this->unk_1474.z = 0.1f;
                        this->unk_1484 = 0.005f;
                        this->targetPosition.x = holePosition1->x;
                        this->targetPosition.y = holePosition1->y - 200.0f;
                        this->targetPosition.z = holePosition1->z;
                        this->timers[0] = 50;
                        this->actionState = 3;
                        this->actor.posRot.rot.x = 0x4000;
                        this->movementTimer = 0;
                        this->timers[3] = 250;
                        this->timers[2] = 470;
                        this->flightSpeed = 5.0f;
                    }
                }
                break;
            case 2: // switch 1
                if (this->timers[0] == 0) {
                    this->unk_1484 = 0.001;
                    this->timers[0] = 100;
                    this->introState2 = 3;
                }
            case 3: // switch 1
                player2->actor.posRot.rot.y = -0x4000;
                player2->actor.posRot.pos.x = 380.0f;
                player2->actor.posRot.pos.y = 100.0f;
                player2->actor.posRot.pos.z = 0.0f;
                player2->actor.speedXZ = 0.0f;
                player2->actor.shape.rot.y = player2->actor.posRot.rot.y;
                if (this->timers[0] == 50) {
                    this->fogMode = 1;
                }
                if (this->timers[0] < 50) {
                    Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                    this->unk_1488 = Math_Coss(this->movementTimer * 0x8000) * this->unk_148C;
                    Math_SmoothScaleMaxF(&this->unk_148C, 2.0f, 1.0f, 0.8 * 0.01f);
                }
                if (this->timers[0] == 40) {
                    func_8002DF54(globalCtx, &this->actor, 0x13);
                }
                if (this->timers[0] == 0) {
                    this->introState2 = 4;
                    this->unk_1468.y = player2->actor.posRot.pos.y + 10.0f;
                    this->unk_1474.y = 0.2f;
                    this->unk_1480 = 0.0f;
                    this->unk_1484 = 0.02f;
                    this->timers[0] = 70;
                    this->movementTimer = 0;
                }
                break;
            case 4: // switch 1
                this->unk_1488 = Math_Coss(this->movementTimer * 0x8000) * this->unk_148C;
                Math_SmoothScaleMaxF(&this->unk_148C, 2.0f, 1.0f, 0.8 * 0.01f);
                Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
                if (this->timers[0] == 0) {
                    this->introState2 = 5;
                    this->unk_1450.x = (player2->actor.posRot.pos.x + 100.0f) + 300.0f;
                    this->unk_1450.y = player2->actor.posRot.pos.y + 100.0f;
                    this->unk_1450.z = player2->actor.posRot.pos.z + 200.0f;
                    this->unk_1468.x = player2->actor.posRot.pos.x;
                    this->unk_1468.y = player2->actor.posRot.pos.y - 150.0f;
                    this->unk_1468.z = player2->actor.posRot.pos.z - 50.0f;
                    BossFd_UpdateCamera1(this, 0.1f);
                    this->timers[0] = 170;
                    this->unk_1480 = 0.0f;
                    this->unk_1484 = 0.0f;
                    func_8002DF54(globalCtx, &this->actor, 0x14);
                }
                break;
            case 5: // switch 1
                this->unk_1484 = 0.005f;
                this->unk_1488 = Math_Coss(this->movementTimer * 0x8000) * this->unk_148C;
                Math_SmoothScaleMaxF(&this->unk_148C, 2.0f, 1.0f, 0.8 * 0.01f);
                Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                       &D_801333E0, &D_801333E8);
                if (this->timers[0] == 100) {
                    this->collapsePlatform = 1;
                }
                if (this->timers[0] == 0) {
                    this->introState2 = 6;
                    this->unk_1480 = 0.0f;
                    this->unk_1450.x = ((player2->actor.posRot.pos.x + 100.0f) + 300.0f) - 600.0f;
                    this->unk_1450.y = (player2->actor.posRot.pos.y + 100.0f) - 50.0f;
                    this->unk_1450.z = (player2->actor.posRot.pos.z + 200.0f) - 150.0f;
                    this->unk_1468.x = 0.0f;
                    this->unk_1468.y = 120.0f;
                    this->unk_1468.z = 0.0f;
                    BossFd_UpdateCamera1(this, 0.5f);
                    this->unk_1474.x = this->unk_1474.y = this->unk_1474.z = 0.1f;
                    this->unk_145C.x = this->unk_145C.y = this->unk_145C.z = 0.1f;
                    this->unk_1484 = 0.005f;
                    this->timers[0] = 0;
                    this->holeIndex = 1;
                    this->targetPosition.x = holeLocations[this->holeIndex].x;
                    this->targetPosition.y = holeLocations[this->holeIndex].y - 200.0f;
                    this->targetPosition.z = holeLocations[this->holeIndex].z;
                    this->timers[0] = 50;
                    this->actionState = 3;
                    this->actor.posRot.rot.x = 0x4000;
                    this->movementTimer = 0;
                    this->timers[3] = 250;
                    this->timers[2] = 470;
                    this->flightSpeed = 5.0f;
                }
                break;
            case 6: // switch 1
                osSyncPrintf("WAY_SPD X = %f\n", this->unk_1444.x);
                osSyncPrintf("WAY_SPD Y = %f\n", this->unk_1444.y);
                osSyncPrintf("WAY_SPD Z = %f\n", this->unk_1444.z);
                if ((this->timers[3] > 190) && !(gSaveContext.eventChkInf[7] & 8)) {
                    Audio_PlaySoundGeneral(NA_SE_EN_DODO_K_ROLL - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                }
                if (this->timers[3] == 190) {
                    this->unk_1474.x = this->unk_1474.y = this->unk_1474.z = 0.05f;
                    this->collapsePlatform = 2;
                    func_8002DF54(globalCtx, &this->actor, 1);
                }
                if (this->actor.posRot.pos.y > 120.0f) {
                    this->unk_1468 = this->actor.posRot.pos;
                    this->unk_1444.x = 190.0f;
                    this->unk_1444.y = 85.56f;
                    this->unk_1444.z = 25.0f;
                } else {
                    Math_SmoothScaleMaxF(&this->unk_148C, 2.0f, 1.0f, 0.1 * 0.08f);
                    this->unk_1488 = Math_Coss(this->movementTimer * 0x8000) * this->unk_148C;
                }
                if (this->timers[3] == 160) {
                    Audio_SetBGM(0x6B);
                }
                if ((this->timers[3] == 130) && !(gSaveContext.eventChkInf[7] & 8)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(&D_0600D700),
                                           0xA0, 0xB4, 0x80, 0x28);
                }
                if (this->timers[3] <= 100) {
                    this->unk_1438.x = this->unk_1438.y = this->unk_1438.z = 2.0f;
                    this->unk_1450.x = player2->actor.posRot.pos.x + 50.0f;
                    this->unk_1450.y = player2->actor.posRot.pos.y + 50.0f;
                    this->unk_1450.z = player2->actor.posRot.pos.z + 50.0f;
                }
                if (this->actionState == 1) {
                    switch (this->introState1) {
                        case 0:
                            this->timers[5] = 100;
                            this->introState1 = 1;
                        case 1:
                            if (this->timers[5] == 0) {
                                this->introState1 = 2;
                                this->timers[5] = 75;
                            }
                            break;
                        case 2:
                            this->targetPosition = this->unk_1408;
                            if (this->timers[5] == 0) {
                                this->timers[0] = 0;
                                this->holeIndex = 7;
                                this->targetPosition.x = holeLocations[this->holeIndex].x;
                                this->targetPosition.y = holeLocations[this->holeIndex].y + 200.0f + 50.0f;
                                this->targetPosition.z = holeLocations[this->holeIndex].z;
                                this->introState1 = 3;
                            }
                            if (this->timers[5] == 30) {
                                this->roarTimer = 40;
                                this->fireBreathTimer = 20;
                            }
                            break;
                        case 3:
                            break;
                    }
                }
                osSyncPrintf("this->timer[2] = %d\n", this->timers[2]);
                osSyncPrintf("this->timer[5] = %d\n", this->timers[5]);
                if (this->timers[2] == 0) {
                    camera->eye = this->unk_1408;
                    camera->eyeNext = this->unk_1408;
                    camera->at = this->unk_1414;
                    func_800C08AC(globalCtx, this->introCameraState, 0);
                    this->introCameraState = 0;
                    this->introState1 = this->introCameraState;
                    this->introState2 = this->introCameraState;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 7);
                    this->actionFunc = BossFd_Wait;
                    this->handoffSignal = 100;
                    gSaveContext.eventChkInf[7] |= 8;
                }
                break;
        }
        BossFd_UpdateCamera2(this, globalCtx);
    } else {
        this->flightSpeed = 5.0f;
    }
    /***********************************************************************************************
     *                              Attacks and Death Cutscene                                     *
     ***********************************************************************************************/
    switch (this->actionState) {
        case 0: // Cases 0 - 3 deal with flying in and out of holes
            sp1CF = 1;
            if (this->timers[0] == 0) {
                if (this->actor.colChkInfo.health == 0) {
                    this->actionState = 200;
                    this->timers[0] = 0;
                    this->timers[1] = 100;
                } else {
                    if (this->introState2 != 0) {
                        this->holeIndex = 6;
                    } else {
                        do {
                            temp_rand = Math_Rand_ZeroFloat(8.9f);
                        } while (temp_rand == this->holeIndex);
                        this->holeIndex = temp_rand;
                    }
                    this->targetPosition.x = holeLocations[this->holeIndex].x;
                    this->targetPosition.y = (holeLocations[this->holeIndex].y + 200.0f) + 50.0f;
                    this->targetPosition.z = holeLocations[this->holeIndex].z;
                    this->turnRate = 0.0f;
                    this->maxTurnRate = 1000.0f;
                    if (this->introState2 != 0) {
                        this->timers[0] = 10050;
                    } else {
                        this->timers[0] = 20;
                    }
                    this->flightWobbleAmplitude = 100.0f;
                    this->actionState = 1;

                    if (this->startAttack) {
                        this->startAttack = 0;
                        this->flightCount += 1;
                        if (this->flightCount & 1) {
                            this->actionState = 100;
                            this->timers[0] = 300;
                            this->maxTurnRate = 900.0f;
                            this->targetLinkYOffset = 300.0f;
                            this->unk_234 = this->unk_236 = 0;
                        } else {
                            this->actionState = 50;
                        }
                    }
                }
            }
            break;
        case 1:
            if ((this->timers[0] == 0) && (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 100.0f)) {
                this->actionState = 2;
                this->targetPosition.y = holeLocations[this->holeIndex].y - 70.0f;
                this->maxTurnRate = 10000.0f;
                this->flightWobbleAmplitude = 0.0f;
                this->timers[0] = 150;
                this->roarTimer = 40;
                this->holePosition.x = this->targetPosition.x;
                this->holePosition.z = this->targetPosition.z;
            }
            break;
        case 2:
            sp1CF = 1;
            if (this->timers[0] == 0) {
                this->actionFunc = BossFd_Wait;
                this->handoffSignal = 100;
            }
            break;
        case 3:
            if ((this->timers[0] == 0) && (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 100.0f)) {
                this->actor.posRot.pos = this->targetPosition;
                this->actionState = 0;
                this->actor.posRot.rot.x = 0x4000;
                this->targetPosition.y = holeLocations[this->holeIndex].y + 200.0f;
                this->timers[4] = 80;
                this->maxTurnRate = 1000.0f;
                this->flightWobbleAmplitude = 0.0f;
                this->holePosition.x = this->targetPosition.x;
                this->holePosition.z = this->targetPosition.z;

                func_80033E1C(globalCtx, 1, 0x50, 0x5000);
                if (this->introState2) {
                    this->timers[0] = 50;
                } else { // This isn't a fake match. The game actually does this.
                    this->timers[0] = 50;
                }
            }
            break;
        case 50: // Flying up to the ceiling to drop rocks
            this->flightSpeed = 8;
            this->targetPosition.x = 0.0f;
            this->targetPosition.y = 700.0f;
            this->targetPosition.z = -300.0f;
            this->flightWobbleAmplitude = 200.0f;
            this->maxTurnRate = 3000.0f;
            if (this->actor.posRot.pos.y > 700.0f) {
                this->actionState = 51;
                this->timers[0] = 25;
                this->timers[2] = 150;
                this->ceilingTargetIndex = 0;
            }
            break;
        case 51: // Flying around the ceiling dropping rocks
            this->flightSpeed = 8;
            this->flightWobbleAmplitude = 200.0f;
            this->maxTurnRate = 10000.0f;
            this->targetPosition.x = ceilingTargets[this->ceilingTargetIndex].x;
            this->targetPosition.y = ceilingTargets[this->ceilingTargetIndex].y + 900.0f;
            this->targetPosition.z = ceilingTargets[this->ceilingTargetIndex].z;
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
                    this->unk_27C = -18384.0f;
                    this->timers[1] = 10;
                    Audio_PlaySoundGeneral(NA_SE_EV_EXPLOSION, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    func_80033E1C(globalCtx, 3, 0xA, 0x7530);
                    this->rockTimer = 300;
                }
            } else {
                pitchToTarget = this->unk_27C;
                Math_SmoothDownscaleMaxF(&this->unk_27C, 1.0f, 1000.0f);
            }
            if (this->timers[2] == 0) {
                this->actionState = 0;
                this->timers[0] = 0;
                this->startAttack = 0;
            }
            break;
        case 100: // Chasing Link and breathing fire at him
            this->actor.flags |= 0x1000000;
            temp_y = Math_Sins(this->movementTimer * 2396.0f) * 30.0f;
            temp_y = temp_y + this->targetLinkYOffset;
            this->targetPosition.x = player->actor.posRot.pos.x;
            this->targetPosition.y = player->actor.posRot.pos.y + temp_y + 30.0f;
            this->targetPosition.z = player->actor.posRot.pos.z;
            this->flightWobbleAmplitude = 0.0f;
            if (((this->timers[0] % 64) == 0) && (this->timers[0] < 450)) {
                this->roarTimer = 40;
                if (BossFd_FacingLink(this)) {
                    this->fireBreathTimer = 20;
                }
            }
            if ((this->damageFlashTimer != 0) || (this->timers[0] == 0) || (player->actor.posRot.pos.y < 70.0f)) {

                this->actionState = 0;
                this->timers[0] = 0;
                this->startAttack = 0;
            } else {
                Math_SmoothScaleMaxF(&this->targetLinkYOffset, 50.0, 1.0f, 2.0f);
            }
            break;
        case 200: // Start of death cutscene
            if (sqrtf(SQ(dx) + SQ(dz)) < 50.0f) {
                this->timers[0] = 0;
            }
            if (this->timers[0] == 0) {
                this->timers[0] = (s16)Math_Rand_ZeroFloat(10.0f) + 10;
                do {
                    this->targetPosition.x = Math_Rand_CenteredFloat(200.0f);
                    this->targetPosition.y = 390.0f;
                    this->targetPosition.z = Math_Rand_CenteredFloat(200.0f);
                    temp_x = this->targetPosition.x - this->actor.posRot.pos.x;
                    temp_z = this->targetPosition.z - this->actor.posRot.pos.z;
                } while (!(sqrtf(SQ(temp_x) + SQ(temp_z)) > 100.0f));
            }
            this->flightWobbleAmplitude = 200.0f;
            this->flightWobbleRate = 1000.0f;
            this->maxTurnRate = 10000.0f;
            Math_SmoothScaleMaxF(&this->bodyPulse, 0.3f, 1.0f, 0.05f);
            if (this->timers[1] == 0) {
                this->actionState = 201;
                this->timers[0] = 30;
            }
            break;
        case 201: // Skin burning off scene
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
                    this->actionState = 202;
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
                f32 pad5;
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
                    if (sp150) { // needed for match
                        temp_rand2 = Math_Rand_ZeroFloat(99.9f);
                        sp188.x = this->bodySegsPos[temp_rand2].x;
                        sp188.y = this->bodySegsPos[temp_rand2].y - 10.0f;
                        sp188.z = this->bodySegsPos[temp_rand2].z;
                        sp164.y = 0.03f;
                        func_80029DBC(globalCtx, &sp188, &sp17C, &sp164, (s16)Math_Rand_ZeroFloat(20.0f) + 40, 0x64);

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
        case 202: // Skeleton breaks apart.
            this->stopFlag = 1;
            this->fogMode = 3;
            if (this->timers[0] < 18) {
                this->bodyFallApart[this->timers[0]] = 1;
            }
            if (this->timers[0] == 0) {
                this->actionState = 203;
                this->timers[0] = 15;
                this->ceilingTargetIndex = 0;
                player->actor.posRot.pos.y = 90.0f;
                player->actor.posRot.pos.x = 40.0f;
                player->actor.posRot.pos.z = 150.0f;
            }
            break;
        case 203: // Pause for effect
            if (this->timers[0] == 0) {
                this->actionState = 204;
                this->timers[0] = 20;
                this->stopFlag = 0;
            }
            break;
        case 204: // Skull falls to the ground
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
                this->actionState = 205;
                this->timers[0] = 70;
            }
            break;
        case 205: // Skull burns away
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
                func_80029DBC(globalCtx, &sp120, &sp114, &sp108, (s16)Math_Rand_ZeroFloat(15.0f) + 30, 0);
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
        case -1: // Waiting before boss cutscene.
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
        f32 pad4;
        f32 pad3;
        f32 pad2;
        f32 pad1;
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, angleToTarget, 0xA, this->turnRate);

        if (((this->actionState == 100) || (this->actionState == 101)) && (this->actor.posRot.pos.y < 110.0f) &&
            (pitchToTarget < 0)) {
            pitchToTarget = 0;
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 110.0f, 1.0f, 5.0f);
        }

        Math_SmoothScaleMaxS(&this->actor.posRot.rot.x, pitchToTarget, 0xA, this->turnRate);
        Math_SmoothScaleMaxF(&this->turnRate, this->maxTurnRate, 1.0f, 20000.0f);
        Math_SmoothScaleMaxF(&this->actor.speedXZ, this->flightSpeed, 1.0f, 0.1f);
        if (this->actionState < 204) {
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
        this->centerManeScale[i4] = (Math_Sins(this->movementTimer * 5596.0f) * 0.3f) + 1.0f;
        this->rightManeScale[i4] = (Math_Sins(this->movementTimer * 5496.0f) * 0.3f) + 1.0f;
        this->leftManeScale[i4] = (Math_Coss(this->movementTimer * 5696.0f) * 0.3f) + 1.0f;
        this->centerManePos[i4] = this->centerManeHead;
        this->fireManeRot[i4].x = (this->actor.posRot.rot.x / (f32)0x8000) * M_PI;
        this->fireManeRot[i4].y = (this->actor.posRot.rot.y / (f32)0x8000) * M_PI;
        this->fireManeRot[i4].z = (this->actor.posRot.rot.z / (f32)0x8000) * M_PI;
        this->rightManePos[i4] = this->rightManeHead;
        this->leftManePos[i4] = this->leftManeHead;

        if ((0x3000 > this->actor.posRot.rot.x) && (this->actor.posRot.rot.x > -0x3000)) {
            Math_SmoothScaleMaxF(&this->flattenMane, 1.0f, 1.0f, 0.05f);
        } else {
            Math_SmoothScaleMaxF(&this->flattenMane, 0.5f, 1.0f, 0.05f);
        }

        if (this->actionState < 204) {
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
                Math_SmoothScaleMaxF(&this->unk_C3C[i3].x, spE0[i3].x, 1.0f, 1000.0f);
                Math_SmoothScaleMaxF(&this->unk_C3C[i3].y, spE0[i3].y, 1.0f, 1000.0f);
                Math_SmoothScaleMaxF(&this->unk_C6C[i3].x, spBC[i3].x, 1.0f, 1000.0f);
                Math_SmoothScaleMaxF(&this->unk_C6C[i3].y, spBC[i3].y, 1.0f, 1000.0f);
            }
        } else {
            for (i2 = 0; i2 < 3; i2++) {
                phi_f20 = 0.0f;
                Math_SmoothDownscaleMaxF(&this->unk_C3C[i2].y, 0.1f, 100.0f);
                Math_SmoothDownscaleMaxF(&this->unk_C6C[i2].y, 0.1f, 100.0f);
                if (i2 == 0) {
                    phi_f20 = -3000.0f;
                }
                Math_SmoothScaleMaxF(&this->unk_C3C[i2].x, phi_f20, 0.1f, 100.0f);
                Math_SmoothScaleMaxF(&this->unk_C6C[i2].x, -phi_f20, 0.1f, 100.0f);
            }
        }
    }
}
#else
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
        if (globalCtx) {} // Needed for matching
        this->targetPosition.x = holeLocations[this->holeIndex].x;
        this->targetPosition.y = holeLocations[this->holeIndex].y - 200.0f;
        this->targetPosition.z = holeLocations[this->holeIndex].z;
        this->actor.posRot.pos = this->targetPosition;
        this->timers[0] = 10;
        this->actionState = 3;
        this->startAttack = 1;
    }
    if (this->handoffSignal == 2) {
        this->handoffSignal = 0;
        BossFd_SetupFly(this, globalCtx);
        this->holeIndex = 1;
        this->targetPosition.x = holeLocations[1].x;
        this->targetPosition.y = holeLocations[1].y - 200.0f;
        this->targetPosition.z = holeLocations[1].z;
        this->actor.posRot.pos = this->targetPosition;
        this->timers[0] = 10;
        this->actionState = 3;
    }
}

static Vec3f D_808D1A28 = { 0.0f, 0.0f, 50.0f };

static Color_RGBA8_n colorYellow;
static Color_RGBA8_n colorRed;
void BossFd_Effects(BossFd* this, GlobalContext* globalCtx) {
    s16 breathOpacity = 0;
    f32 jawAngle;
    f32 jawSpeed;
    f32 emberRate;
    f32 emberSpeed;
    s16 spE8[] = { 0, 1, 2, 2, 1 };
    f32 temp_X;
    f32 temp_Z;
    f32 pad;
    Vec3f spD0;
    Vec3f spC4;
    Vec3f spB8;
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
    this->eyeState = spE8[this->blinkTimer];
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
        Audio_PlaySoundGeneral(NA_SE_EN_VALVAISA_APPEAR - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                               &D_801333E0, &D_801333E8);
        if (this->holeSplashTimer != 0) {
            this->holeSplashTimer--;
            if ((this->actor.colChkInfo.health == 0) ||
                ((this->introState2 == 6) && (this->actor.posRot.rot.x > 0x3000))) {
                if ((u8)this->fogMode == 0) {
                    globalCtx->envCtx.unk_D8 = 0.0f;
                }
                this->fogMode = 2;
            }
            for (i = 0; i < 5; i++) {
                spD0.x = Math_Rand_CenteredFloat(20.0f);
                spD0.y = Math_Rand_ZeroFloat(5.0f) + 4.0f;
                spD0.z = Math_Rand_CenteredFloat(20.0f);
                spC4.x = spC4.z = 0.0f;
                spC4.y = -0.3f;
                temp_X = (spD0.x * 20) / 10.0f;
                temp_Z = (spD0.z * 20) / 10.0f;
                spB8.x = temp_X + this->holePosition.x;
                spB8.y = 100.0f;
                spB8.z = temp_Z + this->holePosition.z;
                func_8002836C(globalCtx, &spB8, &spD0, &spC4, &colorYellow, &colorRed,
                              (s16)Math_Rand_ZeroFloat(150.0f) + 800, 0xA, (s16)Math_Rand_ZeroFloat(5.0f) + 17);
            }
        } else {
            for (i = 0; i < 2; i++) {
                spD0.x = Math_Rand_CenteredFloat(10.0f);
                spD0.y = Math_Rand_ZeroFloat(3.0f) + 3.0f;
                spD0.z = Math_Rand_CenteredFloat(10.0f);
                spC4.x = spC4.z = 0.0f;
                spC4.y = -0.3f;
                temp_X = (spD0.x * 50) / 10.0f;
                temp_Z = (spD0.z * 50) / 10.0f;
                spB8.x = temp_X + this->holePosition.x;
                spB8.y = 100.0f;
                spB8.z = temp_Z + this->holePosition.z;
                func_8002836C(globalCtx, &spB8, &spD0, &spC4, &colorYellow, &colorRed, 500, 0xA, 20);
            }
        }

        for (i = 0; i < 8; i++) {
            spD0.x = Math_Rand_CenteredFloat(20.0f);
            spD0.y = Math_Rand_ZeroFloat(10.0f);
            spD0.z = Math_Rand_CenteredFloat(20.0f);
            spC4.y = 0.4f;
            spC4.x = Math_Rand_CenteredFloat(0.5f);
            spC4.z = Math_Rand_CenteredFloat(0.5f);
            spB8.x = Math_Rand_CenteredFloat(60.0) + this->holePosition.x;
            spB8.y = Math_Rand_ZeroFloat(40.0f) + 100.0f;
            spB8.z = Math_Rand_CenteredFloat(60.0) + this->holePosition.z;
            BossFd_SpawnEmber(this->particles, &spB8, &spD0, &spC4, (s16)Math_Rand_ZeroFloat(1.5f) + 6);
        }
    }

    if ((this->fireBreathTimer != 0) && (this->fireBreathTimer < 17)) {
        breathOpacity = (this->fireBreathTimer >= 6) ? 255 : this->fireBreathTimer * 50;
    }
    if (breathOpacity != 0) {
        f32 spB0;
        f32 spAC;
        Vec3f spA0 = { 0.0f, 0.0f, 0.0f };
        Vec3f sp94;
        Vec3f sp88 = { 0.0f, 0.0f, 0.0f };
        Vec3f sp7C;
        this->fogMode = 2;
        spA0.z = 30.0f;

        Audio_PlaySoundGeneral(NA_SE_EN_VALVAISA_FIRE - SFX_FLAG, &D_808D1A28, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        sp7C = this->fireBreathSpawnPoint;
        spAC = (this->actor.posRot.rot.y / (f32)0x8000) * M_PI;
        spB0 = (((-this->actor.posRot.rot.x) / (f32)0x8000) * M_PI) + 0.3f;
        Matrix_RotateY(spAC, 0);
        Matrix_RotateX(spB0, 1);
        Matrix_MultVec3f(&spA0, &sp94);
        BossFd_SpawnFireBreath(this->particles, &sp7C, &sp94, &sp88,
                               50.0f * Math_Sins(this->varianceTimer * 0x2000) + 300.0f, breathOpacity,
                               this->actor.posRot.rot.y);
        sp7C.x += sp94.x * 0.5f;
        sp7C.y += sp94.y * 0.5f;
        sp7C.z += sp94.z * 0.5f;
        BossFd_SpawnFireBreath(this->particles, &sp7C, &sp94, &sp88,
                               50.0f * Math_Sins(this->varianceTimer * 0x2000) + 300.0f, breathOpacity,
                               this->actor.posRot.rot.y);
        spA0.x = 0.0f;
        spA0.z = 0.0f;
        spA0.y = 17.0f;

        for (i = 0; i < 6; i++) {
            spAC = Math_Rand_ZeroFloat(2.0f * M_PI);
            spB0 = Math_Rand_ZeroFloat(2.0f * M_PI);
            Matrix_RotateY(spAC, 0);
            Matrix_RotateX(spB0, 1);
            Matrix_MultVec3f(&spA0, &sp94);
            sp88.x = (sp94.x * -10) / 100;
            sp88.y = (sp94.y * -10) / 100;
            sp88.z = (sp94.z * -10) / 100;
            BossFd_SpawnEmber(this->particles, &this->fireBreathSpawnPoint, &sp94, &sp88,
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
static Color_RGBA8_n colorYellow = { 255, 255, 0, 255 };
static Color_RGBA8_n colorRed = { 255, 10, 0, 255 };

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
    EnVbBall* bossFdRock;
    BossFd* this = THIS;
    f32 headGlow;
    f32 cManeGlow;
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

    if (this->actionState < 200) {
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

    cManeGlow = (this->varianceTimer & 8) ? 128.0f : 255.0f;
    rManeGlow = ((this->varianceTimer + 3) & 8) ? 128.0f : 255.0f;
    lManeGlow = ((this->varianceTimer + 6) & 8) ? 128.0f : 255.0f;

    Math_SmoothScaleMaxF(&this->centerManeColor, cManeGlow, 1.0f, 16.0f);
    Math_SmoothScaleMaxF(&this->rightManeColor, rManeGlow, 1.0f, 16.0f);
    Math_SmoothScaleMaxF(&this->leftManeColor, lManeGlow, 1.0f, 16.0f);

    if (this->rockTimer != 0) {
        this->rockTimer--;
        if ((this->rockTimer % 16) == 0) {
            bossFdRock = (EnVbBall*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_VB_BALL,
                                                       this->actor.posRot.pos.x, 1000.0f, this->actor.posRot.pos.z, 0,
                                                       0, (s16)Math_Rand_ZeroFloat(50.0f) + 0x82, 0x64);
            if (bossFdRock != NULL) {
                for (i = 0; i < 10; i++) {
                    Vec3f spB0 = { 0.0f, 0.0f, 0.0f };
                    Vec3f spA4 = { 0.0f, -1.0f, 0.0f };
                    Vec3f sp98;
                    sp98.x = Math_Rand_CenteredFloat(300.0f) + bossFdRock->actor.posRot.pos.x;
                    sp98.y = Math_Rand_CenteredFloat(300.0f) + bossFdRock->actor.posRot.pos.y;
                    sp98.z = Math_Rand_CenteredFloat(300.0f) + bossFdRock->actor.posRot.pos.z;
                    BossFd_SpawnDebris(this->particles, &sp98, &spB0, &spA4, (s16)Math_Rand_ZeroFloat(15.0f) + 0x14);
                }
            }
        }
    }

    if (1) { // Needed for matching, and also to define new variables
        Vec3f sp8C = { 0.0f, 0.0f, 0.0f };
        Vec3f sp80 = { 0.0f, 0.0f, 0.0f };
        Vec3f sp74;
        s16 temp_rand;

        for (i = 0; i < 6; i++) {
            sp80.y = 0.4f;
            sp80.x = Math_Rand_CenteredFloat(0.5f);
            sp80.z = Math_Rand_CenteredFloat(0.5f);
            temp_rand = Math_Rand_ZeroFloat(8.9f);
            sp74.x = holeLocations[temp_rand].x + Math_Rand_CenteredFloat(60.0f);
            sp74.y = (holeLocations[temp_rand].y + 10.0f) + Math_Rand_ZeroFloat(40.0f);
            sp74.z = holeLocations[temp_rand].z + Math_Rand_CenteredFloat(60.0f);
            BossFd_SpawnEmber(this->particles, &sp74, &sp8C, &sp80, (s16)Math_Rand_ZeroFloat(2.0f) + 6);
        }

        if (this->skinSegments != 0) {
            for (i = 0; i < (s16)this->maneEmberRate; i++) {
                temp_rand = Math_Rand_ZeroFloat(29.9f);
                sp74.y = this->centerManePos[temp_rand].y + Math_Rand_CenteredFloat(20.0f);
                if (sp74.y >= 90.0f) {
                    sp74.x = this->centerManePos[temp_rand].x + Math_Rand_CenteredFloat(20.0f);
                    sp74.z = this->centerManePos[temp_rand].z + Math_Rand_CenteredFloat(20.0f);
                    sp8C.x = Math_Rand_CenteredFloat(this->maneEmberSpeed);
                    sp8C.y = Math_Rand_CenteredFloat(this->maneEmberSpeed);
                    sp8C.z = Math_Rand_CenteredFloat(this->maneEmberSpeed);
                    sp80.y = 0.4f;
                    sp80.x = Math_Rand_CenteredFloat(0.5f);
                    sp80.z = Math_Rand_CenteredFloat(0.5f);
                    BossFd_SpawnEmber(this->particles, &sp74, &sp8C, &sp80, (s16)Math_Rand_ZeroFloat(2.0f) + 8);
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
        if (particle->type != 0) {
            particle->pos.x += particle->vel.x;
            particle->pos.y += particle->vel.y;
            particle->pos.z += particle->vel.z;
            particle->timer1++;
            particle->vel.x += particle->accel.x;
            particle->vel.y += particle->accel.y;
            particle->vel.z += particle->accel.z;
            if (particle->type == 1) {
                cInd = particle->timer1 % 4;
                particle->color.r = colors[cInd].r;
                particle->color.g = colors[cInd].g;
                particle->color.b = colors[cInd].b;
                particle->opacity -= 20;
                if (particle->opacity <= 0) {
                    particle->opacity = 0;
                    particle->type = 0;
                }
            } else if ((particle->type == 2) || (particle->type == 5)) {
                particle->unk_34 += 0.55f;
                particle->unk_38 += 0.1f;
                if (particle->pos.y <= 100.0f) {
                    particle->type = 0;
                }
            } else if (3 == particle->type) {
                if (particle->timer2 >= 8) {
                    particle->timer2 = 8;
                    particle->type = 0;
                } else if ((particle->timer1 & 1) || (Math_Rand_ZeroOne() < 0.3f)) {
                    particle->timer2++;
                }
            } else if (particle->type == 4) {
                diff.x = player->actor.posRot.pos.x - particle->pos.x;
                diff.y = (player->actor.posRot.pos.y + 30.0f) - particle->pos.y;
                diff.z = player->actor.posRot.pos.z - particle->pos.z;
                if ((this->timers[3] == 0) && (sqrtf(SQ(diff.x) + SQ(diff.y) + SQ(diff.z)) < 20.0f)) {
                    this->timers[3] = 50;
                    func_8002F6D4(globalCtx, NULL, 5.0f, particle->kbAngle, 0.0f, 0x30);
                    if (player->unk_A60 == 0) {
                        for (i2 = 0; i2 < 18; i2++) {
                            player->unk_A61[i2] = Math_Rand_S16Offset(0, 200);
                        }
                        player->unk_A60 = 1;
                    }
                }
                if (particle->timer2 == 0) {
                    if (particle->scale < 2.5f) {
                        particle->scale += particle->unk_34;
                        particle->unk_34 += 0.08f;
                    }
                    if ((particle->pos.y <= (particle->unk_38 + 130.0f)) || (particle->timer1 >= 10)) {
                        particle->accel.y = 5.0f;
                        particle->timer2 += 1;
                        particle->vel.y = 0.0f;
                        particle->accel.x = (particle->vel.x * -25.0f) / 100.0f;
                        particle->accel.z = (particle->vel.z * -25.0f) / 100.0f;
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

UNK_TYPE particleSegments[] = { 0x04051DB0, 0x04051DB0, 0x040521B0, 0x040525B0, 0x040529B0,
                                0x04052DB0, 0x040531B0, 0x040535B0, 0x040539B0 };

void BossFd_DrawParticles(BossFdParticle* particle, GlobalContext* globalCtx) {
    u8 flag = 0;
    s16 i;
    f32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    BossFdParticle* firstParticle;

    firstParticle = particle;
    OPEN_DISPS(gfxCtx, "../z_boss_fd.c", 4023);

    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == 1) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600A880);
                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, particle->color.r, particle->color.g, particle->color.b,
                            particle->opacity);
            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(particle->scale, particle->scale, 1.0f, 1);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4046),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600A900);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == 2) {
            if (!flag) {
                func_80093D18(globalCtx->state.gfxCtx);
                gSPDisplayList(oGfxCtx->polyOpa.p++, D_0600D3A0);
                flag++;
            }

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            Matrix_RotateY(particle->unk_38, 1);
            Matrix_RotateX(particle->unk_34, 1);
            Matrix_Scale(particle->scale, particle->scale, 1.0f, 1);

            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4068),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyOpa.p++, D_0600D420);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == 3) {
            if (!flag) {
                oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600B3A8);
                gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 90, 30, 0, 255);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 90, 30, 0, 0);
                flag++;
            }

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            Matrix_Scale(particle->scale, particle->scale, particle->scale, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4104),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(particleSegments[particle->timer2]));
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600B3C8);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == 4) {
            if (!flag) {
                oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600B3A8);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 10, 0, 255);
                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255, 0, particle->opacity);
            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            Matrix_Scale(particle->scale, particle->scale, particle->scale, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4154),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(particleSegments[particle->timer2]));
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600B3C8);
        }
    }

    particle = firstParticle;
    flag = 0;
    for (i = 0; i < 180; i++, particle++) {
        if (particle->type == 5) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600D668);
                flag++;
            }

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            Matrix_RotateY(particle->unk_38, 1);
            Matrix_RotateX(particle->unk_34, 1);
            Matrix_Scale(particle->scale, particle->scale, 1.0f, 1);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 4192),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600D6E8);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_boss_fd.c", 4198);
}

void BossFd_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BossFd* this = THIS;
    s32 pad;

    osSyncPrintf("FD DRAW START\n");
    if (this->actionFunc != BossFd_Wait) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4217);
        func_80093D18(globalCtx->state.gfxCtx);
        if (this->damageFlashTimer & 2) {
            oGfxCtx->polyOpa.p = Gfx_SetFog(oGfxCtx->polyOpa.p, 255, 255, 255, 0, 0x384, 0x44B);
        }

        BossFd_DrawBody(globalCtx, this);
        oGfxCtx->polyOpa.p = func_800BC8A0(globalCtx, oGfxCtx->polyOpa.p);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4243);
    }

    osSyncPrintf("FD DRAW END\n");
    BossFd_DrawParticles(this->particles, globalCtx);
    osSyncPrintf("FD DRAW END2\n");
}

s32 BossFd_OverrideLeftArmDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               Actor* thisx) {
    BossFd* this = THIS;

    switch (limbIndex) {
        case 1:
            rot->y += 4000.0f + this->unk_C3C[0].x;
            break;
        case 2:
            rot->y += this->unk_C3C[1].x;
            rot->z += this->unk_C3C[1].y;
            break;
        case 3:
            rot->y += this->unk_C3C[2].x;
            rot->z += this->unk_C3C[2].y;
            break;
    }
    if (this->skinSegments < limbIndex) {
        *dList = NULL;
    }
    return 0;
}

s32 BossFd_OverrideRightArmDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                Actor* thisx) {
    BossFd* this = THIS;

    switch (limbIndex) {
        case 1:
            rot->y += -4000.0f + this->unk_C6C[0].x;
            break;
        case 2:
            rot->y += this->unk_C6C[1].x;
            rot->z += this->unk_C6C[1].y;
            break;
        case 3:
            rot->y += this->unk_C6C[2].x;
            rot->z += this->unk_C6C[2].y;
            break;
    }
    if (this->skinSegments < limbIndex) {
        *dList = NULL;
    }
    return 0;
}

static s16 D_808D1AC0[] = { 0, 95, 90, 85, 80, 75, 70, 65, 60, 55, 50, 45, 40, 35, 30, 25, 20, 15, 10, 5 };
static s16 D_808D1AE8[] = { 0, 28, 26, 24, 22, 20, 18, 16, 14, 12, 10 }; // Unused? Seems to be for the mane.

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

        Matrix_RotateY((maneRot + maneIndex)->y, 0);
        Matrix_RotateX(-(maneRot + maneIndex)->x, 1);

        Matrix_MultVec3f(&spB4, &spA8);

        Matrix_Translate((manePos + maneIndex)->x + spA8.x, (manePos + maneIndex)->y + spA8.y,
                         (manePos + maneIndex)->z + spA8.z, 0);
        Matrix_RotateY((maneRot + maneIndex)->y + phi_f20, 1);
        Matrix_RotateX(-((maneRot + maneIndex)->x + phi_f22), 1);
        Matrix_Scale(maneScale[maneIndex] * (0.01f - (i * 0.0008f)), maneScale[maneIndex] * (0.01f - (i * 0.0008f)),
                     0.01f, 1);
        Matrix_RotateX(-M_PI / 2.0f, 1);
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4480),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_060091E8);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4483);
}

s32 BossFd_OverrideHeadDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                            Actor* thisx) {
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
    if ((this->faceExposed == 1) && (limbIndex == 5)) {
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
    return 0;
}

static Vec3f D_808D1BA0 = { 4500.0f, 0.0f, 0.0f };
static Vec3f D_808D1BAC = { 4000.0f, 0.0f, 0.0f };

void BossFd_PostHeadDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    BossFd* this = THIS;

    if (limbIndex == 5) {
        Matrix_MultVec3f(&D_808D1BA0, &this->actor.posRot2.pos);
        Matrix_MultVec3f(&D_808D1BAC, &this->fireBreathSpawnPoint);
    }
}

static Gfx* eyeDispLists[] = { D_060038A8, D_060034A8, D_06003CA8 };

static Gfx* bodyDispLists[] = { D_060079A0, D_06007AC0, D_06007B70, D_06007BD0, D_06007C30, D_06007C90,
                                D_06007CF0, D_06007D50, D_06007DB0, D_06007E10, D_06007E70, D_06007ED0,
                                D_06007F30, D_06007F90, D_06007FF0, D_06008038, D_06008080, D_060080D8 };

void BossFd_DrawBody(GlobalContext* globalCtx, BossFd* this) {
    s16 segIndex;
    s16 i1;
    f32 temp_float;
    Mtx* tempMat = Graph_Alloc(globalCtx->state.gfxCtx, 18 * sizeof(Mtx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4589);
    if (this->skinSegments != 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(eyeDispLists[this->eyeState]));
    }
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->bodyTex1Scroll, (s16)this->bodyTex1Rot, 0x20,
                                0x20, 1, (s16)this->bodyTex2Scroll, (s16)this->bodyTex2Rot, 0x20, 0x20));
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 255, 255, 255, 255);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 255, 255, 255, (s8)this->bodyTex2Opacity);

    osSyncPrintf("LH\n");
    Matrix_Push();
    segIndex = (D_808D1AC0[2] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z, 0);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, 1);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, 1);
    Matrix_Translate(-13.0f, -5.0f, 13.0f, 1);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime2.skeleton, this->skelAnime2.limbDrawTbl, BossFd_OverrideLeftArmDraw, NULL,
                   &this->actor);
    Matrix_Pull();
    osSyncPrintf("RH\n");
    Matrix_Push();
    segIndex = (D_808D1AC0[2] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z, 0);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, 1);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, 1);
    Matrix_Translate(13.0f, -5.0f, 13.0f, 1);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime3.skeleton, this->skelAnime3.limbDrawTbl, BossFd_OverrideRightArmDraw,
                   NULL, &this->actor);
    Matrix_Pull();
    osSyncPrintf("BD\n");
    gSPSegment(oGfxCtx->polyOpa.p++, 0x0D, tempMat);

    Matrix_Push();
    for (i1 = 0; i1 < 18; i1++, tempMat++) {
        segIndex = (D_808D1AC0[i1 + 1] + this->leadBodySeg) % 100;
        Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z,
                         0);
        Matrix_RotateY(this->bodySegsRot[segIndex].y, 1);
        Matrix_RotateX(-this->bodySegsRot[segIndex].x, 1);
        Matrix_Translate(0.0f, 0.0f, 35.0f, 1);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
        if (i1 < this->skinSegments) {
            Matrix_Scale(1.0f + (Math_Sins((this->leadBodySeg * 5000.0f) + (i1 * 7000.0f)) * (*this).bodyPulse),
                         1.0f + (Math_Sins((this->leadBodySeg * 5000.0f) + (i1 * 7000.0f)) * (*this).bodyPulse), 1.0f,
                         1);
            Matrix_RotateY(M_PI / 2.0f, 1);
            Matrix_ToMtx(tempMat, "../z_boss_fd.c", 4719);
            gSPMatrix(oGfxCtx->polyOpa.p++, tempMat, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyOpa.p++, bodyDispLists[i1]);
        } else {
            MtxF spFC;
            Vec3f spF0 = { 0.0f, 0.0f, 0.0f };
            Vec3f spE4;
            Vec3s spDC;
            f32 spD8;
            if (this->bodyFallApart[i1] < 2) {
                f32 spD4 = 0.1f;
                temp_float = 0.1f;

                Matrix_Translate(0.0f, 0.0f, -1100.0f, 1);
                Matrix_RotateY(-M_PI, 1);
                if (i1 >= 14) {
                    f32 sp84 = 1.0f - ((i1 - 14) * 0.2f);
                    Matrix_Scale(sp84, sp84, 1.0f, 1);
                    spD4 = 0.1f * sp84;
                    temp_float = 0.1f * sp84;
                }
                Matrix_Scale(0.1f, 0.1f, 0.1f, 1);
                gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4768),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(oGfxCtx->polyOpa.p++, D_0600B2F8);

                if (this->bodyFallApart[i1] == 1) {
                    EnVbBall* newActor;
                    this->bodyFallApart[i1] = 2;
                    Matrix_MultVec3f(&spF0, &spE4);
                    Matrix_Get(&spFC);
                    func_800D20CC(&spFC, &spDC, 0);
                    newActor =
                        (EnVbBall*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_VB_BALL,
                                                      spE4.x, spE4.y, spE4.z, spDC.x, spDC.y, spDC.z, i1 + 200);

                    newActor->actor.scale.x = this->actor.scale.x * temp_float;
                    newActor->actor.scale.y = this->actor.scale.y * spD4;
                    newActor->actor.scale.z = this->actor.scale.z * 0.1f;
                }
            }
        }
        if (i1 > 0) {
            func_800628A4(i1 + 1, &this->collider);
        }
    }
    Matrix_Pull();
    osSyncPrintf("BH\n");

    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 255, 255, 255, (s8)this->headTex2Opacity);
    Matrix_Push();
    temp_float = (this->actionState >= 204) ? -20.0f : -10.0f - ((this->actor.speedXZ - 5.0f) * 10.0f);
    segIndex = (D_808D1AC0[0] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z, 0);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, 1);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, 1);
    Matrix_RotateZ((this->actor.shape.rot.z / (f32)0x8000) * M_PI, 1);
    Matrix_Translate(0.0f, 0.0f, temp_float, 1);
    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 25.0f, 1);
    osSyncPrintf("BHC\n");
    func_800628A4(0, &this->collider);
    Matrix_Pull();
    osSyncPrintf("BHCE\n");
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime1.skeleton, this->skelAnime1.limbDrawTbl, BossFd_OverrideHeadDraw,
                   BossFd_PostHeadDraw, &this->actor);
    osSyncPrintf("SK\n");
    {
        Vec3f spB0 = { 0.0f, 1700.0f, 7000.0f };
        Vec3f spA4 = { -1000.0f, 700.0f, 7000.0f };
        func_80093D84(globalCtx->state.gfxCtx);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_06009168);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, this->centerManeColor, 0, 255);
        Matrix_Push();
        Matrix_MultVec3f(&spB0, &this->centerManeHead);
        BossFd_DrawMane(globalCtx, this, this->centerManePos, this->fireManeRot, this->centerManeScale, 0);
        Matrix_Pull();
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, this->rightManeColor, 0, 255);
        Matrix_Push();
        Matrix_MultVec3f(&spA4, &this->rightManeHead);
        BossFd_DrawMane(globalCtx, this, this->rightManePos, this->fireManeRot, this->rightManeScale, 1);
        Matrix_Pull();
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, this->leftManeColor, 0, 255);
        Matrix_Push();
        spA4.x *= -1.0f;
        Matrix_MultVec3f(&spA4, &this->leftManeHead);
        BossFd_DrawMane(globalCtx, this, this->leftManePos, this->fireManeRot, this->leftManeScale, 2);
        Matrix_Pull();
        Matrix_Pull();
        osSyncPrintf("END\n");
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 4987);
    }
}
