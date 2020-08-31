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

void func_808CB6A8(BossFd* this, GlobalContext* globalCtx); // Setup flying
void func_808CB718(BossFd* this, GlobalContext* globalCtx); // Flying
void func_808CDE30(BossFd* this, GlobalContext* globalCtx); // Wait
void func_808CE01C(BossFd* this, GlobalContext* globalCtx); // Environment
void func_808CEC34(BossFd* this, GlobalContext* globalCtx); // Collision check
void func_808CF448(BossFd* this, GlobalContext* globalCtx); // Update particles

void func_808CADC0(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale);
// Spawn Ember
void func_808CAE8C(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale);
// Spawn Debris
void func_808CAF5C(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale);
// Spawn Dust
void func_808CAFF4(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale,
                   s16 opacity, s16 kbAngle);
// Spawn Fire Breath

void func_808CB100(BossFd* this, f32 arg1);
void func_808CB198(BossFd* this, GlobalContext* globalCtx); // Cutscene camera stuff

s32 func_808CB67C(BossFd* this); // Breathe Fire

s32 func_808D00A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
s32 func_808D01C0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
s32 func_808D07A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
void func_808D08A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot,
                   Actor* thisx); // Animation functions

void func_808D08F8(GlobalContext* globalCtx, BossFd* this);             // Draw Body
void func_808CF898(BossFdParticle* particle, GlobalContext* globalCtx); // Draw Particles
void func_808D02DC(GlobalContext* globalCtx, BossFd* this, Vec3f* manePos, Vec3f* maneRot, f32* maneScale,
                   u8 mode); // Draw Mane

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

// holeLocations
Vec3f D_808D192C[] = { { 0.0f, 90.0f, -243.0f },    { 0.0f, 90.0f, 0.0f },    { 0.0f, 90.0f, 243.0f },
                       { -243.0f, 90.0f, -243.0f }, { -243.0f, 90.0f, 0.0f }, { -243.0f, 90.0f, 243.0f },
                       { 243.0f, 90.0f, -243.0f },  { 243.0f, 90.0f, 0.0f },  { 243.0f, 90.0f, 243.0f } };

// ceiling targets
Vec3f D_808D1998[] = { { 0.0f, 900.0f, -243.0f }, { 243.0, 900.0f, -100.0f },  { 243.0f, 900.0f, 100.0f },
                       { 0.0f, 900.0f, 243.0f },  { -243.0f, 900.0f, 100.0f }, { -243.0, 900.0f, -100.0f } };

void func_808CADC0(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
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

void func_808CAE8C(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
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

void func_808CAF5C(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
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

void func_808CAFF4(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale,
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

void func_808CB100(BossFd* this, f32 arg1) {
    
    this->unk_1438.x = fabsf(this->unk_1408.x - this->unk_1450.x) * arg1;
    this->unk_1438.y = fabsf(this->unk_1408.y - this->unk_1450.y) * arg1;
    this->unk_1438.z = fabsf(this->unk_1408.z - this->unk_1450.z) * arg1;
    this->unk_1444.x = fabsf(this->unk_1414.x - this->unk_1468.x) * arg1;
    this->unk_1444.y = fabsf(this->unk_1414.y - this->unk_1468.y) * arg1;
    this->unk_1444.z = fabsf(this->unk_1414.z - this->unk_1468.z) * arg1;
}

void func_808CB198(BossFd* this, GlobalContext* globalCtx) {
    
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
    Collider_InitJntSph(globalCtx, &this->collider1);
    Collider_SetJntSph(globalCtx, &this->collider1, &this->actor, &sJntSphInit, this->colliderItems);

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
        this->actionFunc = func_808CDE30;
    } else {
        func_808CB6A8(this, globalCtx);
    }

    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num) != 0) {
        Actor_Kill(&this->actor);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, 100.0f, 0.0f, 0, 0,
                            0, -1);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 0.0f, 100.0f, 200.0f, 0, 0, 0, 0);
        return;
    }

    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_FD2, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, this->introState2);
}

void BossFd_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossFd* this = THIS;
    s16 pad;

    SkelAnime_Free(&this->skelAnime1, globalCtx);
    SkelAnime_Free(&this->skelAnime2, globalCtx);
    SkelAnime_Free(&this->skelAnime3, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider1);
}

s32 func_808CB67C(BossFd* this) {
    s16 temp_v0;
    temp_v0 = this->actor.yawTowardsLink - this->actor.posRot.rot.y;
    return ABS(temp_v0) < 0x2000;
}

void func_808CB6A8(BossFd* this, GlobalContext* globalCtx) {
    
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime1, &D_060115E4);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime2, &D_06011524);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime3, &D_06011464);
    this->actionFunc = &func_808CB718;
    this->maxTurnRate = 1000.0f;
}

Vec3f D_808D19E0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D19EC = { 0.0f, 0.03f, 0.0f };

Vec3f D_808D19F8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1A04 = { 0.0f, 0.0f, 0.0f };

Vec3f D_808D1A10 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1A1C = { 0.0f, 0.03f, 0.0f };

#ifdef NON_MATCHING
// Control flow is correct and works when compiled. It's enormous, though, so matching will be hard.
void func_808CB718(BossFd* this, GlobalContext* globalCtx) {

    u8 sp1CF;
    f32 angleToTarget;
    f32 pitchToTarget;
    f32 dy;
    Vec3f sp188;
    Vec3f sp17C;
    Vec3f sp170;
    Vec3f sp164;
    Vec3f sp158;
    s16 sp150;
    Vec3f sp144;
    Vec3f sp138;
    Vec3f sp12C;
    Vec3f sp120;
    Vec3f sp114;
    Vec3f sp108;
    Vec3f spE0[3];
    Vec3f spBC[3];
    f32 dx2;
    f32 dz2;
    f32 dPerp;
    Camera* camera;
    Vec3f* holePosition1;
    Vec3f* ceilingTarget;
    Vec3f* holePosition2;
    Vec3f* holeXYZ;
    Vec3f* tempC3C;
    Vec3f* tempC6C;
    f32 dzDeath;
    f32 dxDeath;
    f32 yWobble;
    s16 leadBodySeg;
    s16 leadManeSeg;
    s16 temp_rand2;
    u8 temp_rand;
    Player* player = PLAYER;
    s16 i1;
    s16 i2;
    f32 phi_f20;
    f32 dx;
    f32 dz;

    sp1CF = 0;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime1);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime2);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime3);
    dx = this->targetPosition.x - this->actor.posRot.pos.x;
    dy = this->targetPosition.y - this->actor.posRot.pos.y;
    dz = this->targetPosition.z - this->actor.posRot.pos.z;
    dx += Math_Sins(this->movementTimer * (2096.0f + this->flightWobbleRate)) * this->flightWobbleAmplitude;
    dy += Math_Sins(this->movementTimer * (1096.0f + this->flightWobbleRate)) * this->flightWobbleAmplitude;
    dz += Math_Sins(this->movementTimer * (1796.0f + this->flightWobbleRate)) * this->flightWobbleAmplitude;
    angleToTarget = (s16)(Math_atan2f(dx, dz) * 10430.378f);
    dx2 = dx * dx;
    dz2 = dz * dz;
    dPerp = sqrtf(dx2 + dz2);
    pitchToTarget = (s16)(Math_atan2f(dy, dPerp) * 10430.378f);
    osSyncPrintf("MODE %d\n", this->actionState);
    Math_SmoothScaleMaxF(&this->bodyPulse, 0.1f, 1.0f, 0.02f);

    /****************************************************************************************
     *                                   Boss Intro Cutscene                                *
     ****************************************************************************************/

    if (this->introState2 != 0) {
        camera = Gameplay_GetCamera(globalCtx, 0);
        switch (this->introState2) {
            case 1: // switch 1
                this->fogMode = 3;
                this->targetPosition.x = 0.0f;
                this->targetPosition.y = -110.0f;
                this->targetPosition.z = 0.0f;
                this->maxTurnRate = 10000.0f;
                this->actionState = -1;
                if ((fabsf(player->actor.posRot.pos.z) < 80.0f) &&
                    (fabsf(player->actor.posRot.pos.x - 340.0f) < 60.0f)) {

                    this->introState2 = 2;
                    func_80064520(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 8);
                    this->introCameraState = Gameplay_CreateSubCamera(globalCtx);
                    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                    Gameplay_ChangeCameraStatus(globalCtx, this->introCameraState, 7);
                    player->actor.posRot.pos.x = 380.0f;
                    player->actor.posRot.pos.y = 100.0f;
                    player->actor.posRot.pos.z = 0.0f;
                    player->actor.posRot.rot.y = -0x4000;
                    player->actor.speedXZ = 0.0f;
                    player->actor.shape.rot.y = player->actor.posRot.rot.y;
                    this->unk_1408.x = 380.0f - 70.0f;
                    this->unk_1408.y = player->actor.posRot.pos.y + 40.0f;
                    this->unk_1408.z = player->actor.posRot.pos.z + 70.0f;
                    this->unk_1414.x = player->actor.posRot.pos.x;
                    this->unk_1414.y = player->actor.posRot.pos.y + 30.0f;
                    this->unk_1414.z = player->actor.posRot.pos.z;
                    this->unk_1450.x = (player->actor.posRot.pos.x - 50.0f) + 18.0f;
                    this->unk_1450.y = player->actor.posRot.pos.y + 40.0f;
                    this->unk_1450.z = (player->actor.posRot.pos.z + 50.0f) - 18.0f;
                    this->unk_1468.x = player->actor.posRot.pos.x;
                    this->unk_1468.y = player->actor.posRot.pos.y + 50.0f;
                    this->unk_1468.z = player->actor.posRot.pos.z;
                    func_808CB100(this, 1.0f);
                    this->animationTimers[0] = 0;
                    this->unk_1474.z = 0.05f;
                    this->unk_1474.y = 0.05f;
                    this->unk_1474.x = 0.05f;
                    this->unk_145C.z = 0.05f;
                    this->unk_145C.y = 0.05f;
                    this->unk_145C.x = 0.05f;
                    this->unk_1480 = 0.0f;
                    this->unk_1484 = 0.0f;
                    if ((gSaveContext.eventChkInf[7] & 8) != 0) {
                        this->introState2 = 6;
                        this->unk_1450.x = ((player->actor.posRot.pos.x + 100.0f) + 300.0f) - 600.0f;
                        this->unk_1450.y = (player->actor.posRot.pos.y + 100.0f) - 50.0f;
                        this->unk_1450.z = (player->actor.posRot.pos.z + 200.0f) - 150.0f;
                        this->unk_1468.x = 0.0f;
                        this->unk_1468.y = 120.0f;
                        this->unk_1468.z = 0.0f;
                        func_808CB100(this, 0.5f);
                        this->animationTimers[0] = 0;
                        this->holeIndex = 1;
                        holePosition1 = &D_808D192C[this->holeIndex & 0xFF];
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
                        this->animationTimers[0] = 50;
                        this->actionState = 3;
                        this->actor.posRot.rot.x = 0x4000;
                        this->movementTimer = 0;
                        this->animationTimers[3] = 250;
                        this->animationTimers[2] = 470;
                        this->flightSpeed = 5.0f;
                    }
                }
                break;
            case 2: // switch 1
                if (this->animationTimers[0] == 0) {
                    this->animationTimers[0] = 0x64;
                    this->introState2 = 3;
                    this->unk_1484 = 0.0010000002f;
                }
            case 3: // switch 1
                player->actor.posRot.rot.y = -0x4000;
                player->actor.posRot.pos.x = 380.0f;
                player->actor.posRot.pos.y = 100.0f;
                player->actor.posRot.pos.z = 0.0f;
                player->actor.speedXZ = 0.0f;
                player->actor.shape.rot.y = player->actor.posRot.rot.y;
                if (this->animationTimers[0] == 50) {
                    this->fogMode = 1;
                }
                if (this->animationTimers[0] < 50) {
                    Audio_PlaySoundGeneral(0x304E, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    this->unk_1488 = Math_Coss(this->movementTimer * 0x8000) * this->unk_148C;
                    Math_SmoothScaleMaxF(&this->unk_148C, 2.0f, 1.0f, 0.007999999f);
                }
                if (this->animationTimers[0] == 40) {
                    func_8002DF54(globalCtx, &this->actor, 0x13);
                }
                if (this->animationTimers[0] == 0) {
                    this->introState2 = 4;
                    this->unk_1468.y = player->actor.posRot.pos.y + 10.0f;
                    this->unk_1480 = 0.0f;
                    this->unk_1474.y = 0.2f;
                    this->animationTimers[0] = 70;
                    this->movementTimer = 0;
                    this->unk_1484 = 0.02f;
                }
                break;
            case 4: // switch 1
                this->unk_1488 = Math_Coss(this->movementTimer * 0x8000) * this->unk_148C;
                Math_SmoothScaleMaxF(&this->unk_148C, 2.0f, 1.0f, 0.007999999f);
                Audio_PlaySoundGeneral(0x304E, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                if (this->animationTimers[0] == 0) {
                    this->introState2 = 5;
                    this->unk_1450.x = (player->actor.posRot.pos.x + 100.0f) + 300.0f;
                    this->unk_1450.y = player->actor.posRot.pos.y + 100.0f;
                    this->unk_1450.z = player->actor.posRot.pos.z + 200.0f;
                    this->unk_1468.x = player->actor.posRot.pos.x;
                    this->unk_1468.y = player->actor.posRot.pos.y - 150.0f;
                    this->unk_1468.z = player->actor.posRot.pos.z - 50.0f;
                    func_808CB100(this, 0.1f);
                    this->animationTimers[0] = 170;
                    this->unk_1480 = 0.0f;
                    this->unk_1484 = 0.0f;
                    func_8002DF54(globalCtx, &this->actor, 0x14);
                }
                break;
            case 5: // switch 1
                this->unk_1484 = 0.005f;
                this->unk_1488 = Math_Coss(this->movementTimer * 0x8000) * this->unk_148C;
                Math_SmoothScaleMaxF(&this->unk_148C, 2.0f, 1.0f, 0.007999999f);
                Audio_PlaySoundGeneral(0x304E, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                if (this->animationTimers[0] == 100) {
                    this->collapsePlatform = 1;
                }
                if (this->animationTimers[0] == 0) {
                    this->introState2 = 6;
                    this->unk_1480 = 0.0f;
                    this->unk_1450.x = ((player->actor.posRot.pos.x + 100.0f) + 300.0f) - 600.0f;
                    this->unk_1450.y = (player->actor.posRot.pos.y + 100.0f) - 50.0f;
                    this->unk_1450.z = (player->actor.posRot.pos.z + 200.0f) - 150.0f;
                    this->unk_1468.x = 0.0f;
                    this->unk_1468.y = 120.0f;
                    this->unk_1468.z = 0.0f;
                    func_808CB100(this, 0.5f);
                    this->unk_1474.x = 0.1f;
                    this->unk_1474.y = 0.1f;
                    this->unk_1474.z = 0.1f;
                    this->unk_145C.x = 0.1f;
                    this->unk_145C.y = 0.1f;
                    this->unk_145C.z = 0.1f;
                    this->unk_1484 = 0.005f;
                    this->animationTimers[0] = 0;
                    this->holeIndex = 1;
                    holeXYZ = &D_808D192C[this->holeIndex];

                    this->targetPosition.x = holeXYZ->x;
                    this->targetPosition.y = holeXYZ->y - 200.0f;
                    this->targetPosition.z = holeXYZ->z;
                    this->animationTimers[0] = 50;
                    this->actionState = 3;
                    this->actor.posRot.rot.x = 0x4000;
                    this->movementTimer = 0;
                    this->animationTimers[3] = 250;
                    this->animationTimers[2] = 470;
                    this->flightSpeed = 5.0f;
                }
                break;
            case 6: // switch 1
                osSyncPrintf("WAY_SPD X = %f\n", this->unk_1444.x);
                osSyncPrintf("WAY_SPD Y = %f\n", this->unk_1444.y);
                osSyncPrintf("WAY_SPD Z = %f\n", this->unk_1444.z);
                if ((this->animationTimers[3] >= 191) && ((gSaveContext.eventChkInf[7] & 8) == 0)) {
                    Audio_PlaySoundGeneral(0x304E, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                }
                if (this->animationTimers[3] == 190) {
                    this->unk_1474.z = 0.05f;
                    this->unk_1474.y = 0.05f;
                    this->collapsePlatform = 2;
                    this->unk_1474.x = 0.05f;
                    func_8002DF54(globalCtx, &this->actor, 1);
                }
                if (120.0f < this->actor.posRot.pos.y) {
                    this->unk_1468 = this->actor.posRot.pos;
                    this->unk_1444.x = 190.0f;
                    this->unk_1444.y = 85.56f;
                    this->unk_1444.z = 25.0f;
                } else {
                    Math_SmoothScaleMaxF(&this->unk_148C, 2.0f, 1.0f, 0.007999999f);
                    this->unk_1488 = Math_Coss(this->movementTimer * 0x8000) * this->unk_148C;
                }
                if (this->animationTimers[3] == 160) {
                    Audio_SetBGM(0x6B);
                }
                if ((this->animationTimers[3] == 130) && ((gSaveContext.eventChkInf[7] & 8) == 0)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(&D_0600D700),
                                           0xA0, 0xB4, 0x80, 0x28);
                }
                if (this->animationTimers[3] < 101) {
                    this->unk_1438.z = 2.0f;
                    this->unk_1438.y = 2.0f;
                    this->unk_1438.x = 2.0f;
                    this->unk_1450.x = player->actor.posRot.pos.x + 50.0f;
                    this->unk_1450.y = player->actor.posRot.pos.y + 50.0f;
                    this->unk_1450.z = player->actor.posRot.pos.z + 50.0f;
                }
                if (this->actionState == 1) {
                    switch (this->introState1) {
                        case 0:
                            this->animationTimers[5] = 100;
                            this->introState1 = 1;
                        case 1:
                            if (this->animationTimers[5] == 0) {
                                this->introState1 = 2;
                                this->animationTimers[5] = 75;
                            }
                            break;
                        case 2:
                            this->targetPosition = this->unk_1408;
                            if (this->animationTimers[5] == 0) {
                                this->animationTimers[0] = 0;
                                this->holeIndex = 7;
                                holeXYZ = &D_808D192C[this->holeIndex];
                                this->targetPosition.x = holeXYZ->x;
                                this->targetPosition.y = (holeXYZ->y + 200.0f) + 50.0f;
                                this->targetPosition.z = holeXYZ->z;
                                this->introState1 = 3;
                            }
                            if (this->animationTimers[5] == 30) {
                                this->roarTimer = 40;
                                this->fireBreathTimer = 20;
                            }
                        case 3:
                            break;
                        default:
                            break;
                    }
                }
                osSyncPrintf("this->timer[2] = %d\n", this->animationTimers[2]);
                osSyncPrintf("this->timer[5] = %d\n", this->animationTimers[5]);
                if (this->animationTimers[2] == 0) {
                    camera->eye = this->unk_1408;
                    camera->eyeNext = this->unk_1408;
                    camera->at = this->unk_1414;
                    func_800C08AC(globalCtx, this->introCameraState, 0);
                    this->introCameraState = 0;
                    this->introState1 = this->introCameraState;
                    this->introState2 = this->introCameraState;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 7);
                    this->actionFunc = &func_808CDE30;
                    this->handoffSignal = 100;
                    gSaveContext.eventChkInf[7] |= 8;
                }
        }
        func_808CB198(this, globalCtx);
    } else {
        this->flightSpeed = 5.0f;
    }

    /***********************************************************************************************
     *                              Attacks and Death Cutscene                                     *
     ***********************************************************************************************/

    switch (this->actionState) {
        case 0: // Cases 0 - 3 deal with flying in and out of holes
            sp1CF = 1;
            if (this->animationTimers[0] == 0) {
                if (this->actor.colChkInfo.health == 0) {
                    this->actionState = 200;
                    this->animationTimers[0] = 0;
                    this->animationTimers[1] = 100;
                } else {
                    if (this->introState2 != 0) {
                        this->holeIndex = 6;
                    } else {
                        do {
                            temp_rand = Math_Rand_ZeroFloat(8.9f);
                        } while (this->holeIndex == temp_rand);
                        this->holeIndex = temp_rand;
                    }
                    holePosition2 = &D_808D192C[this->holeIndex];
                    this->targetPosition.x = holePosition2->x;
                    this->targetPosition.y = (holePosition2->y + 200.0f) + 50.0f;
                    this->targetPosition.z = holePosition2->z;
                    this->turnRate = 0.0f;
                    this->maxTurnRate = 1000.0f;
                    this->flightWobbleAmplitude = 100.0f;
                    this->animationTimers[0] = (this->introState2 != 0) ? 10050 : 20;
                    this->actionState = 1;
                    if (this->startAttack != 0) {
                        this->startAttack = 0;
                        this->flightCount += 1;
                        if ((this->flightCount & 1) != 0) {
                            this->unk_236 = 0;
                            this->actionState = 100;
                            this->animationTimers[0] = 300;
                            this->maxTurnRate = 900.0f;
                            this->targetLinkYOffset = 300.0f;
                            this->unk_234 = this->unk_236;
                        } else {
                            this->actionState = 50;
                        }
                    }
                }
            }
            break;
        case 1:
            if (this->animationTimers[0] == 0) {
                if (sqrtf((dx2 + (dy * dy)) + dz2) < 100.0f) {
                    this->actionState = 2;
                    this->targetPosition.y = D_808D192C[this->holeIndex].y - 70.0f;
                    this->flightWobbleAmplitude = 0.0f;
                    this->holePosition.x = this->targetPosition.x;
                    this->maxTurnRate = 10000.0f;
                    this->holePosition.z = this->targetPosition.z;
                    this->animationTimers[0] = 150;
                    this->roarTimer = 40;
                }
            }
            break;
        case 2:
            sp1CF = 1;
            if (this->animationTimers[0] == 0) {
                this->actionFunc = &func_808CDE30;
                this->handoffSignal = 100;
            }
            break;
        case 3:
            if (this->animationTimers[0] == 0) {
                if (sqrtf((dx2 + (dy * dy)) + dz2) < 100.0f) {
                    this->actor.posRot.pos = this->targetPosition;
                    this->actionState = 0;
                    this->actor.posRot.rot.x = 0x4000;
                    this->animationTimers[4] = 80;
                    this->targetPosition.y = D_808D192C[this->holeIndex].y + 200.0f;
                    this->maxTurnRate = 1000.0f;
                    this->holePosition.z = this->targetPosition.z;
                    this->holePosition.x = this->targetPosition.x;
                    this->flightWobbleAmplitude = 0.0f;
                    func_80033E1C(globalCtx, 1, 0x50, 0x5000);
                    this->animationTimers[0] = (this->introState2 != 0) ? 50 : 50;
                    // This isn't a fake match. The game actually does this.
                }
            }
            break;
        case 50: // Flying up to the ceiling to drop rocks
            this->flightSpeed = 8.0f;
            this->flightWobbleAmplitude = 200.0f;
            this->targetPosition.y = 700.0f;
            this->targetPosition.x = 0.0f;
            this->targetPosition.z = -300.0f;
            this->maxTurnRate = 3000.0f;
            if (700.0f < this->actor.posRot.pos.y) {
                this->actionState = 51;
                this->animationTimers[0] = 25;
                this->animationTimers[2] = 150;
                this->ceilingTargetIndex = 0;
            }
            break;
        case 51: // Flying around the ceiling dropping rocks
            this->flightWobbleAmplitude = 200.0f;
            this->flightSpeed = 8.0f;
            ceilingTarget = &D_808D1998[this->ceilingTargetIndex];
            this->maxTurnRate = 10000.0f;
            this->targetPosition.x = ceilingTarget->x;
            this->targetPosition.y = ceilingTarget->y + 900.0f;
            this->targetPosition.z = ceilingTarget->z;
            if (this->animationTimers[0] == 0) {
                this->ceilingTargetIndex++;
                this->animationTimers[0] = 25;
                if (this->ceilingTargetIndex >= 6) {
                    this->ceilingTargetIndex = 0;
                }
            }
            func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 2);
            if (this->animationTimers[1] == 0) {
                osSyncPrintf("BGCHECKKKKKKKKKKKKKKKKKKKKKKK\n", 1000.0f);
                if ((this->actor.bgCheckFlags & 0x10) != 0) {
                    this->animationTimers[1] = 10;
                    this->unk_27C = -18384.0f;
                    Audio_PlaySoundGeneral(0x2802, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    func_80033E1C(globalCtx, 3, 0xA, 0x7530);
                    this->rockTimer = 300;
                }
            } else {
                pitchToTarget = this->unk_27C;
                Math_SmoothDownscaleMaxF(&this->unk_27C, 1.0f, 1000.0f);
            }
            if (this->animationTimers[2] == 0) {
                this->actionState = 0;
                this->animationTimers[0] = 0;
                this->startAttack = 0;
            }
            break;
        case 100: // Chasing Link and breathing fire at him
            this->actor.flags |= 0x1000000;
            yWobble = Math_Sins(this->movementTimer * 2396.0f) * 30.0f;
            this->targetPosition.x = player->actor.posRot.pos.x;
            this->targetPosition.y = (player->actor.posRot.pos.y + (this->targetLinkYOffset + yWobble)) + 30.0f;
            this->targetPosition.z = player->actor.posRot.pos.z;
            this->flightWobbleAmplitude = 0.0f;
            if (((this->animationTimers[0] & 0x3F) == 0) && (this->animationTimers[0] < 450)) {
                this->roarTimer = 40;
                if (func_808CB67C(this) != 0) {
                    this->fireBreathTimer = 20;
                }
            }
            if ((this->damageFlashTimer != 0) || (this->animationTimers[0] == 0) ||
                (player->actor.posRot.pos.y < 70.0f)) {

                this->actionState = 0;
                this->animationTimers[0] = 0;
                this->startAttack = 0;
            } else {
                Math_SmoothScaleMaxF(&this->targetLinkYOffset, 50.0f, 1.0f, 2.0f);
            }
            break;
        case 200: // Start of death cutscene
            if (dPerp < 50.0f) {
                this->animationTimers[0] = 0;
            }
            if (this->animationTimers[0] == 0) {
                this->animationTimers[0] = (s32)Math_Rand_ZeroFloat(10.0f) + 10;
                do {
                    this->targetPosition.x = Math_Rand_CenteredFloat(200.0f);
                    this->targetPosition.y = 390.0f;
                    this->targetPosition.z = Math_Rand_CenteredFloat(200.0f);
                    dxDeath = this->targetPosition.x - this->actor.posRot.pos.x;
                    dzDeath = this->targetPosition.z - this->actor.posRot.pos.z;

                } while (100.0f >= sqrtf((dxDeath * dxDeath) + (dzDeath * dzDeath)));
            }
            this->flightWobbleAmplitude = 200.0f;
            this->flightWobbleRate = 1000.0f;
            this->maxTurnRate = 10000.0f;
            Math_SmoothScaleMaxF(&this->bodyPulse, 0.3f, 1.0f, 0.05f);
            if (this->animationTimers[1] == 0) {
                this->actionState = 201;
                this->animationTimers[0] = 30;
            }
            break;
        case 201: // Skin burning off scene
            this->flightWobbleAmplitude = 200.0f;
            this->targetPosition.y = 390.0f;
            this->flightWobbleRate = 1000.0f;
            this->targetPosition.x = 0.0f;
            this->targetPosition.z = 0.0f;
            this->maxTurnRate = 2000.0f;
            Math_SmoothScaleMaxF(&this->bodyPulse, 0.3f, 1.0f, 0.05f);
            if ((this->animationTimers[0] == 0) && ((this->movementTimer & 3) == 0)) {
                if (this->skinSegments != 0) {
                    this->skinSegments--;
                    if (this->skinSegments == 0) {
                        Audio_SetBGM(0x21);
                    }
                } else {
                    this->actionState = 202;
                    this->animationTimers[0] = 30;
                }
            }
            if ((this->movementTimer & 0x1F) == 0) {
                this->roarTimer = 40;
            }
            if (this->skinSegments != 0) {
                sp17C = D_808D19E0;
                sp164 = D_808D19EC;

                if (this->fogMode == 0) {
                    globalCtx->envCtx.unk_D8 = 0.0f;
                }
                this->fogMode = 0xA;
                sp150 = 1;
                if ((this->movementTimer & 0x1C) != 0) {
                    Audio_PlaySoundGeneral(0x30DA, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                }

                for (i1 = 0; i1 < sp150; i1++) {
                    temp_rand2 = (s16)Math_Rand_ZeroFloat(99.9f);
                    sp188.x = this->bodySegsPos[temp_rand2].x;
                    sp188.y = this->bodySegsPos[temp_rand2].y - 10.0f;
                    sp164.y = 0.03f;
                    sp188.z = this->bodySegsPos[temp_rand2].z;
                    func_80029DBC(globalCtx, &sp188, &sp17C, &sp164, (s16)Math_Rand_ZeroFloat(20.0f) + 40, 0x64);
                    for (i2 = 0; i2 < 15; i2++) {
                        sp170.x = Math_Rand_CenteredFloat(20.0f);
                        sp170.y = Math_Rand_CenteredFloat(20.0f);
                        sp170.z = Math_Rand_CenteredFloat(20.0f);
                        sp158.y = 0.4f;
                        sp158.x = Math_Rand_CenteredFloat(0.5f);
                        sp158.z = Math_Rand_CenteredFloat(0.5f);
                        func_808CADC0(this->particles, &sp188, &sp170, &sp158, (s16)Math_Rand_ZeroFloat(3.0f) + 8);
                    }
                }
            }
            break;
        case 202: // Skeleton breaks apart.
            this->stopFlag = 1;
            this->fogMode = 3;
            if (this->animationTimers[0] < 18) {
                this->bodyFallApart[this->animationTimers[0]] = 1;
            }
            if (this->animationTimers[0] == 0) {
                this->actionState = 203;
                this->animationTimers[0] = 15;
                this->ceilingTargetIndex = 0;
                player->actor.posRot.pos.y = 90.0f;
                player->actor.posRot.pos.x = 40.0f;
                player->actor.posRot.pos.z = 150.0f;
            }
            break;
        case 203: // Pause for effect
            if (this->animationTimers[0] == 0) {
                this->actionState = 204;
                this->animationTimers[0] = 20;
                this->stopFlag = 0;
            }
            break;
        case 204: // Skull falls to the ground
            this->flightSpeed = this->maxTurnRate = this->turnRate = this->actor.speedXZ = 0.0f;

            if (this->animationTimers[0] == 1) {
                this->actor.posRot.rot.y = 0;
                this->actor.posRot.pos.x = this->actor.velocity.x = this->actor.velocity.z = 0;
                this->actor.posRot.pos.y = 900.0f;
                this->actor.posRot.pos.z = 150.0f;
                this->actor.shape.rot.z = 0x1200;
                this->actor.posRot.rot.x = this->actor.posRot.rot.y;
            }
            if (this->animationTimers[0] == 0) {
                if (this->actor.posRot.pos.y <= 110.0f) {
                    this->actor.velocity.y = 0.0f;
                    this->actor.posRot.pos.y = 110.0f;
                    if (this->ceilingTargetIndex == 0) {
                        this->ceilingTargetIndex++;
                        this->animationTimers[1] = 60;
                        this->deathCameraShakeTimer = 20;
                        Audio_PlaySoundGeneral(0x3889, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                        func_8002DF54(globalCtx, &this->actor, 5);
                        for (i1 = 0; i1 < 15; i1++) {
                            sp144 = D_808D19F8;
                            sp138 = D_808D1A04;
                            sp144.x = Math_Rand_CenteredFloat(8.0f);
                            sp144.y = Math_Rand_ZeroFloat(1.0f);
                            sp144.z = Math_Rand_CenteredFloat(8.0f);
                            sp138.y = 0.3f;
                            sp12C.x = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.x;
                            sp12C.y = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.y;
                            sp12C.z = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.z;
                            func_808CAF5C(this->particles, &sp12C, &sp144, &sp138,
                                          Math_Rand_ZeroFloat(100.0f) + 300.0f);
                        }
                    }
                } else {
                    this->actor.velocity.y -= 1.0f;
                }
            } else {
                this->actor.velocity.y = 0.0f;
            }
            if (this->animationTimers[1] == 1) {
                this->actionState = 205;
                this->animationTimers[0] = 70;
            }
            break;
        case 205: // Skull burns away
            this->actor.velocity.y = 0.0f;
            this->actor.posRot.pos.y = 110.0f;
            this->turnRate = 0.0f;
            this->maxTurnRate = 0.0f;
            this->flightSpeed = 0.0f;
            this->actor.speedXZ = 0.0f;
            if ((this->animationTimers[0] < 50) && (this->animationTimers[0] > 0)) {
                sp114 = D_808D1A10;
                sp108 = D_808D1A1C;
                Audio_PlaySoundGeneral(0x301C, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                sp120.x = Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.x;
                sp120.y = (Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.y) - 10.0f;
                sp120.z = (Math_Rand_CenteredFloat(40.0f) + this->actor.posRot.pos.z) + 5.0f;
                sp108.y = 0.03f;
                func_80029DBC(globalCtx, &sp120, &sp114, &sp108, (s16)Math_Rand_ZeroFloat(15.0f) + 30, 0);
            }
            if (this->animationTimers[0] < 20) {
                Math_SmoothDownscaleMaxF(&this->actor.scale.x, 1.0f, 0.0025f);
                Actor_SetScale(&this->actor, this->actor.scale.x);
            }
            if (this->animationTimers[0] == 0) {
                this->actionFunc = &func_808CDE30;
                this->actor.posRot.pos.y -= 1000.0f;
            }
            if (this->animationTimers[0] == 7) {
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

    if (this->stopFlag == 0) {
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, angleToTarget, 0xA, this->turnRate);

        if (((this->actionState == 100) || (this->actionState == 101)) && (this->actor.posRot.pos.y < 110.0f) &&
            (pitchToTarget < 0.0f)) {
            pitchToTarget = 0.0f;
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
        leadBodySeg = this->leadBodySeg;
        this->bodySegsPos[leadBodySeg].x = this->actor.posRot.pos.x;
        this->bodySegsPos[leadBodySeg].y = this->actor.posRot.pos.y;
        this->bodySegsPos[leadBodySeg].z = this->actor.posRot.pos.z;
        this->bodySegsRot[leadBodySeg].x = (this->actor.posRot.rot.x / 32768.0f) * 3.1415927f;
        this->bodySegsRot[leadBodySeg].y = (this->actor.posRot.rot.y / 32768.0f) * 3.1415927f;
        this->bodySegsRot[leadBodySeg].z = (this->actor.posRot.rot.z / 32768.0f) * 3.1415927f;

        this->leadManeSeg++;
        if (this->leadManeSeg >= 30) {
            this->leadManeSeg = 0;
        }
        leadManeSeg = this->leadManeSeg;
        this->centerManeScale[leadManeSeg] = (Math_Sins(((this->movementTimer * 5596.0f))) * 0.3f) + 1.0f;
        this->rightManeScale[leadManeSeg] = (Math_Sins(((this->movementTimer * 5496.0f))) * 0.3f) + 1.0f;
        this->leftManeScale[leadManeSeg] = (Math_Coss(((this->movementTimer * 5696.0f))) * 0.3f) + 1.0f;
        this->centerManePos[leadManeSeg] = this->centerManeHead;
        this->fireManeRot[leadManeSeg].x = (this->actor.posRot.rot.x / 32768.0f) * 3.1415927f;
        this->fireManeRot[leadManeSeg].y = (this->actor.posRot.rot.y / 32768.0f) * 3.1415927f;
        this->fireManeRot[leadManeSeg].z = (this->actor.posRot.rot.z / 32768.0f) * 3.1415927f;
        this->rightManePos[leadManeSeg] = this->rightManeHead;
        this->leftManePos[leadManeSeg] = this->leftManeHead;

        if ((this->actor.posRot.rot.x < 0x3000) && (this->actor.posRot.rot.x >= -0x2FFF)) {
            Math_SmoothScaleMaxF(&this->flattenMane, 1.0f, 1.0f, 0.05f);
        } else {
            Math_SmoothScaleMaxF(&this->flattenMane, 0.5f, 1.0f, 0.05f);
        }

        if (this->actionState < 204) {
            if ((this->actor.pos4.y < 90.0f) && (90.0f <= this->actor.posRot.pos.y)) {
                this->animationTimers[4] = 80;
                func_80033E1C(globalCtx, 1, 80, 0x5000);
                this->roarTimer = 40;
                this->maneEmbersTimer = 30;
                this->holeSplashTimer = 10;
            }
            if ((90.0f < this->actor.pos4.y) && (this->actor.posRot.pos.y <= 90.0f)) {
                this->animationTimers[4] = 80;
                func_80033E1C(globalCtx, 1, 80, 0x5000);
                this->maneEmbersTimer = 30;
                this->holeSplashTimer = 10;
            }
        }
        if (sp1CF == 0) {
            spE0[0].x = spE0[0].y = Math_Sins(((this->movementTimer * 1500.0f))) * 3000.0f;
            spE0[1].x = Math_Sins(((this->movementTimer * 2000.0f))) * 4000.0f;
            spE0[1].y = Math_Sins(((this->movementTimer * 2200.0f))) * 4000.0f;
            spE0[2].x = Math_Sins(((this->movementTimer * 1700.0f))) * 2000.0f;
            spE0[2].y = Math_Sins(((this->movementTimer * 1900.0f))) * 2000.0f;
            spBC[0].x = spBC[0].y = Math_Sins(((this->movementTimer * 1500.0f))) * -3000.0f;
            spBC[1].x = Math_Sins(((this->movementTimer * 2200.0f))) * -4000.0f;
            spBC[1].y = Math_Sins(((this->movementTimer * 2000.0f))) * -4000.0f;
            spBC[2].x = Math_Sins(((this->movementTimer * 1900.0f))) * -2000.0f;
            spBC[2].y = Math_Sins(((this->movementTimer * 1700.0f))) * -2000.0f;

            for (i1 = 0; i1 < 3; i1++) {
                Math_SmoothScaleMaxF(&this->unk_C3C[i1].x, spE0[i1].x, 1.0f, 1000.0f);
                Math_SmoothScaleMaxF(&this->unk_C3C[i1].y, spE0[i1].y, 1.0f, 1000.0f);
                Math_SmoothScaleMaxF(&this->unk_C6C[i1].x, spBC[i1].x, 1.0f, 1000.0f);
                Math_SmoothScaleMaxF(&this->unk_C6C[i1].y, spBC[i1].y, 1.0f, 1000.0f);
            }
        } else {
            for (i1 = 0; i1 < 3; i1++) {
                phi_f20 = 0.0f;
                Math_SmoothDownscaleMaxF(&this->unk_C3C[i1].y, 0.1f, 100.0f);
                Math_SmoothDownscaleMaxF(&this->unk_C6C[i1].y, 0.1f, 100.0f);
                if (i1 == 0) {
                    phi_f20 = -3000.0f;
                }
                Math_SmoothScaleMaxF(&this->unk_C3C[i1].x, phi_f20, 0.1f, 100.0f);
                Math_SmoothScaleMaxF(&this->unk_C6C[i1].x, -phi_f20, 0.1f, 100.0f);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB718.s")
#endif

void func_808CDE30(BossFd* this, GlobalContext* globalCtx) {
    u8 temp_rand;
    
    if (this->handoffSignal == 1) { // Set by BossFd2
        this->handoffSignal = 0;
        func_808CB6A8(this, globalCtx);
        do {
            temp_rand = Math_Rand_ZeroFloat(8.9f);
        } while (temp_rand == this->holeIndex);
        this->holeIndex = temp_rand;
        if (globalCtx) {} // Needed for matching
        this->targetPosition.x = D_808D192C[this->holeIndex].x;
        this->targetPosition.y = D_808D192C[this->holeIndex].y - 200.0f;
        this->targetPosition.z = D_808D192C[this->holeIndex].z;
        this->actor.posRot.pos = this->targetPosition;
        this->animationTimers[0] = 10;
        this->actionState = 3;
        this->startAttack = 1;
    }
    if (this->handoffSignal == 2) {
        this->handoffSignal = 0;
        func_808CB6A8(this, globalCtx);
        this->holeIndex = 1;
        this->targetPosition.x = D_808D192C[1].x;
        this->targetPosition.y = D_808D192C[1].y - 200.0f;
        this->targetPosition.z = D_808D192C[1].z;
        this->actor.posRot.pos = this->targetPosition;
        this->animationTimers[0] = 10;
        this->actionState = 3;
    }
}

Vec3f D_808D1A28 = { 0.0f, 0.0f, 50.0f };

static Color_RGBA8_n D_808D1A58;
static Color_RGBA8_n D_808D1A5C;
void func_808CE01C(BossFd* this, GlobalContext* globalCtx) {
    s16 sp106 = 0;
    f32 phi_f0_2;
    f32 phi_f2;
    f32 phi_f0;
    f32 phi_f20;
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
        phi_f20 = phi_f0 = 20.0f;
    } else {
        phi_f0 = 3.0f;
        phi_f20 = 5.0f;
    }
    Math_SmoothScaleMaxF(&this->maneEmberRate, phi_f0, 1.0f, 0.1f);
    Math_SmoothScaleMaxF(&this->maneEmberSpeed, phi_f20, 1.0f, 0.5f);

    if (((this->varianceTimer & 7) == 0) && (Math_Rand_ZeroOne() < 0.3f)) {
        this->blinkTimer = 4;
    }
    this->eyeState = spE8[this->blinkTimer];
    DECR(this->blinkTimer);

    if (this->roarTimer != 0) {
        if (this->roarTimer == 0x25) {
            Audio_PlaySoundGeneral(0x38D1, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        phi_f0_2 = 6000.0f;
        phi_f2 = 1300.0f;
    } else {
        phi_f0_2 = ((this->varianceTimer & 0x10) != 0) ? 0.0f : 1000.0f;
        phi_f2 = 500.0f;
    }
    Math_SmoothScaleMaxF(&this->jawOpening, phi_f0_2, 0.3f, phi_f2);
    DECR(this->roarTimer);

    if (this->animationTimers[4] != 0) {
        Audio_PlaySoundGeneral(0x30D0, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (this->holeSplashTimer != 0) {
            this->holeSplashTimer--;
            if ((this->actor.colChkInfo.health == 0) ||
                ((this->introState2 == 6) && (this->actor.posRot.rot.x >= 0x3001))) {
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
                spB8.x =  temp_X + this->holePosition.x;
                spB8.y = 100.0f;
                spB8.z =  temp_Z + this->holePosition.z;
                
                func_8002836C(globalCtx, &spB8, &spD0, &spC4, &D_808D1A58, &D_808D1A5C,
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
                func_8002836C(globalCtx, &spB8, &spD0, &spC4, &D_808D1A58, &D_808D1A5C, 500, 0xA, 20);
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
            func_808CADC0(this->particles, &spB8, &spD0, &spC4, (s16)Math_Rand_ZeroFloat(1.5f) + 6);
        }
    }

    if ((this->fireBreathTimer != 0) && (this->fireBreathTimer < 0x11)) {
        sp106 = (this->fireBreathTimer >= 6) ? 0xFF : this->fireBreathTimer * 0x32;
    }
    if (sp106 != 0) {
        f32 spB0;
        f32 spAC;
        Vec3f spA0 = { 0.0f, 0.0f, 0.0f };
        Vec3f sp94;
        Vec3f sp88 = { 0.0f, 0.0f, 0.0f };
        Vec3f sp7C;
        this->fogMode = 2;
        spA0.z = 30.0f;

        Audio_PlaySoundGeneral(0x30DB, &D_808D1A28, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        sp7C = this->fireBreathSpawnPoint;
        spAC = (this->actor.posRot.rot.y / 32768.0f) * 3.1415927f;
        spB0 = (((-this->actor.posRot.rot.x) / 32768.0f) * 3.1415927f) + 0.3f;
        Matrix_RotateY(spAC, 0);
        Matrix_RotateX(spB0, 1);
        Matrix_MultVec3f(&spA0, &sp94);
        func_808CAFF4(this->particles, &sp7C, &sp94, &sp88, 50.0f * Math_Sins(this->varianceTimer * 0x2000) + 300.0f,
                      sp106, this->actor.posRot.rot.y);
        sp7C.x += sp94.x * 0.5f;
        sp7C.y += sp94.y * 0.5f;
        sp7C.z += sp94.z * 0.5f;
        func_808CAFF4(this->particles, &sp7C, &sp94, &sp88, 50.0f * Math_Sins(this->varianceTimer * 0x2000) + 300.0f,
                      sp106, this->actor.posRot.rot.y);
        spA0.x = 0.0f;
        spA0.z = 0.0f;
        spA0.y = 17.0f;

        for (i = 0; i < 6; i++) {
            spAC = Math_Rand_ZeroFloat(6.2831855f);
            spB0 = Math_Rand_ZeroFloat(6.2831855f);
            Matrix_RotateY(spAC, 0);
            Matrix_RotateX(spB0, 1);
            Matrix_MultVec3f(&spA0, &sp94);
            sp88.x = (sp94.x * -10) / 100;
            sp88.y = (sp94.y * -10) / 100;
            sp88.z = (sp94.z * -10) / 100;
            func_808CADC0(this->particles, &this->fireBreathSpawnPoint, &sp94, &sp88,
                          (s16)Math_Rand_ZeroFloat(2.0f) + 8);
        }
    }

    if ((this->actor.posRot.pos.y < 90.0f) || (700.0f < this->actor.posRot.pos.y) ||
        (this->actionFunc == func_808CDE30)) {
        this->actor.flags &= ~1;
    } else {
        this->actor.flags |= 1;
    }
}
static Color_RGBA8_n D_808D1A58 = { 0xFF, 0xFF, 0x00, 0xFF };
static Color_RGBA8_n D_808D1A5C = { 0xFF, 0x0A, 0x00, 0xFF };

void func_808CEC34(BossFd* this, GlobalContext* globalCtx) {
    ColliderJntSphItem* colliderItem1 = this->collider1.list;
    ColliderTouch* cTouch;

    if ((colliderItem1->body.bumperFlags & 2) != 0) {
        colliderItem1->body.bumperFlags &= ~2;
        cTouch = &colliderItem1->body.acHitItem->toucher;
        this->actor.colChkInfo.health -= 2;
        if ((cTouch->flags & 0x1000) != 0) {
            this->actor.colChkInfo.health -= 2;
        }
        if ((s8)this->actor.colChkInfo.health <= 2) {
            this->actor.colChkInfo.health = 2;
        }
        this->damageFlashTimer = 0xA;
        this->invincibilityTimer = 0x14;
        Audio_PlaySoundGeneral(0x38D5, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

Vec3f D_808D1A60 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1A6C = { 0.0f, -1.0f, 0.0f };
Vec3f D_808D1A78 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1A84 = { 0.0f, 0.0f, 0.0f };

void BossFd_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnVbBall* bossFdRock;
    BossFd* this = THIS;
    f32 phi_f2;
    f32 phi_f0_1;
    f32 phi_f0_3;
    f32 phi_f22;
    f32 phi_f20;
    Vec3f spB0;
    Vec3f spA4;
    Vec3f sp98;
    Vec3f sp8C;
    Vec3f sp80;
    Vec3f sp74;
    s16 temp_rand;
    s16 i;

    osSyncPrintf((const char*)"FD MOVE START \n");
    this->varianceTimer++;
    this->movementTimer++;
    this->actionFunc(this, globalCtx);

    for (i = 0; i < 6; i++) {
        DECR(this->animationTimers[i]);
    }
    DECR(this->fireBreathTimer);
    DECR(this->damageFlashTimer);
    DECR(this->invincibilityTimer);

    if (this->actionState < 0xC8) {
        if (this->invincibilityTimer == 0) {
            func_808CEC34(this, globalCtx);
        }
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    func_808CE01C(this, globalCtx);
    this->bodyTex1Scroll += 4.0f;
    this->bodyTex1Rot = 120.0f;
    this->bodyTex2Scroll += 3.0f;
    this->bodyTex2Rot -= 2.0f;

    phi_f2 = ((this->varianceTimer & 0x10) != 0) ? 30.0f : 158.0f;
    Math_SmoothScaleMaxF(&this->bodyTex2Opacity, phi_f2, 1.0f, 8.0f);
    if (this->skinSegments == 0) {
        this->headTex2Opacity = this->bodyTex2Opacity;
    } else {
        phi_f0_1 = ((this->varianceTimer & 4) != 0) ? 0.0f : 255.0f;
        Math_SmoothScaleMaxF(&this->headTex2Opacity, phi_f0_1, 1.0f, 64.0f);
    }

    phi_f0_3 = ((this->varianceTimer & 8) != 0) ? 128.0f : 255.0f;
    phi_f22 = (((this->varianceTimer + 3) & 8) != 0) ? 128.0f : 255.0f;
    phi_f20 = (((this->varianceTimer + 6) & 8) != 0) ? 128.0f : 255.0f;

    Math_SmoothScaleMaxF(&this->centerManeColor, phi_f0_3, 1.0f, 16.0f);
    Math_SmoothScaleMaxF(&this->rightManeColor, phi_f22, 1.0f, 16.0f);
    Math_SmoothScaleMaxF(&this->leftManeColor, phi_f20, 1.0f, 16.0f);

    if (this->rockTimer != 0) {
        this->rockTimer--;
        if ((this->rockTimer & 0xF) == 0) {
            bossFdRock = (EnVbBall*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_VB_BALL,
                                                        this->actor.posRot.pos.x, 1000.0f, this->actor.posRot.pos.z, 0,
                                                        0, (s16)Math_Rand_ZeroFloat(50.0f) + 0x82, 0x64);
            if (bossFdRock != 0) {
                for (i = 0; i < 10; i++) {
                    spB0 = D_808D1A60;
                    spA4 = D_808D1A6C;
                    sp98.x = Math_Rand_CenteredFloat(300.0f) + bossFdRock->actor.posRot.pos.x;
                    sp98.y = Math_Rand_CenteredFloat(300.0f) + bossFdRock->actor.posRot.pos.y;
                    sp98.z = Math_Rand_CenteredFloat(300.0f) + bossFdRock->actor.posRot.pos.z;
                    func_808CAE8C(this->particles, &sp98, &spB0, &spA4, (s16)Math_Rand_ZeroFloat(15.0f) + 0x14);
                }
            }
        }
    }

    sp8C = D_808D1A78;
    sp80 = D_808D1A84;

    if (1) {} // Needed for matching

    for (i = 0; i < 6; i++) {
        sp80.y = 0.4f;
        sp80.x = Math_Rand_CenteredFloat(0.5f);
        sp80.z = Math_Rand_CenteredFloat(0.5f);
        temp_rand = Math_Rand_ZeroFloat(8.9f);
        sp74.x = D_808D192C[temp_rand].x + Math_Rand_CenteredFloat(60.0f);
        sp74.y = (D_808D192C[temp_rand].y + 10.0f) + Math_Rand_ZeroFloat(40.0f);
        sp74.z = D_808D192C[temp_rand].z + Math_Rand_CenteredFloat(60.0f);
        func_808CADC0(this->particles, &sp74, &sp8C, &sp80, (s16)Math_Rand_ZeroFloat(2.0f) + 6);
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
                func_808CADC0(this->particles, &sp74, &sp8C, &sp80, (s16)Math_Rand_ZeroFloat(2.0f) + 8);
            }
        }
    }
    osSyncPrintf((const char*)"FD MOVE END 1\n");
    func_808CF448(this, globalCtx);
    osSyncPrintf((const char*)"FD MOVE END 2\n");
}

void func_808CF448(BossFd* this, GlobalContext* globalCtx) {
    BossFdParticle* part = this->particles;
    Player* player = PLAYER;
    Color_RGB8 sp8C[4] = { { 0xFF, 0x80, 0x00 }, { 0xFF, 0x00, 0x00 }, { 0xFF, 0xFF, 0x00 }, { 0xFF, 0x00, 0x00 } };
    Vec3f diff;
    s16 cInd;
    s16 i1;
    s16 i2;

    for (i1 = 0; i1 < 180; i1++, part++) {
        if (part->type != 0) {
            part->pos.x += part->vel.x;
            part->pos.y += part->vel.y;
            part->pos.z += part->vel.z;
            part->timer1++;
            part->vel.x += part->accel.x;
            part->vel.y += part->accel.y;
            part->vel.z += part->accel.z;
            if (part->type == 1) {
                cInd = part->timer1 % 4;
                part->color.r = sp8C[cInd].r;
                part->color.g = sp8C[cInd].g;
                part->color.b = sp8C[cInd].b;
                part->opacity -= 0x14;
                if (part->opacity <= 0) {
                    part->opacity = 0;
                    part->type = 0;
                }
            } else if ((part->type == 2) || (part->type == 5)) {
                part->unk_34 += 0.55f;
                part->unk_38 += 0.1f;
                if (part->pos.y <= 100.0f) {
                    part->type = 0;
                }
            } else if (3 == part->type) {
                if (part->timer2 >= 8) {
                    part->timer2 = 8;
                    part->type = 0;
                } else if (((part->timer1 & 1) != 0) || (Math_Rand_ZeroOne() < 0.3f)) {
                    part->timer2++;
                }
            } else if (part->type == 4) {
                diff.x = player->actor.posRot.pos.x - part->pos.x;
                diff.y = (player->actor.posRot.pos.y + 30.0f) - part->pos.y;
                diff.z = player->actor.posRot.pos.z - part->pos.z;
                if ((this->animationTimers[3] == 0) && (sqrtf(SQ(diff.x) + SQ(diff.y) + SQ(diff.z)) < 20.0f)) {
                    this->animationTimers[3] = 0x32;
                    func_8002F6D4(globalCtx, NULL, 5.0f, part->kbAngle, 0.0f, 0x30);
                    if (player->unk_A60 == 0) {
                        for (i2 = 0; i2 < 18; i2++) {
                            player->unk_A61[i2] = Math_Rand_S16Offset(0, 200);
                        }
                        player->unk_A60 = 1;
                    }
                }
                if (part->timer2 == 0) {
                    if (part->scale < 2.5f) {
                        part->scale += part->unk_34;
                        part->unk_34 += 0.08f;
                    }
                    if ((part->pos.y <= (part->unk_38 + 130.0f)) || (part->timer1 >= 10)) {
                        part->accel.y = 5.0f;
                        part->timer2 += 1;
                        part->vel.y = 0.0f;
                        part->accel.x = (part->vel.x * -25.0f) / 100.0f;
                        part->accel.z = (part->vel.z * -25.0f) / 100.0f;
                    }
                } else {
                    if (part->scale < 2.5f) {
                        Math_SmoothScaleMaxF(&part->scale, 2.5f, 0.5f, 0.5f);
                    }
                    part->timer2++;
                    if (part->timer2 >= 9) {
                        part->type = 0;
                    }
                }
            }
        }
    }
}

UNK_TYPE D_808D1A9C[] = { 0x04051DB0, 0x04051DB0, 0x040521B0, 0x040525B0, 0x040529B0,
                          0x04052DB0, 0x040531B0, 0x040535B0, 0x040539B0 };

void func_808CF898(BossFdParticle* ptr, GlobalContext* globalCtx) {
    u8 flag = 0;
    s16 i;
    f32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    BossFdParticle* particle;
    

    particle = ptr;
    OPEN_DISPS(gfxCtx, "../z_boss_fd.c", 0xFB7);

    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 1) {
            if (flag == 0) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600A880);
                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, ptr->color.r, ptr->color.g, ptr->color.b, ptr->opacity);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, 1);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0xFCE),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600A900);
        }
    }

    ptr = particle;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 2) {
            if (flag == 0) {
                func_80093D18(globalCtx->state.gfxCtx);
                gSPDisplayList(oGfxCtx->polyOpa.p++, D_0600D3A0);
                flag++;
            }

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_RotateY(ptr->unk_38, 1);
            Matrix_RotateX(ptr->unk_34, 1);
            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, 1);

            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0xFE4),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyOpa.p++, D_0600D420);
        }
    }

    ptr = particle;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 3) {
            if (flag == 0) {
                oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600B3A8);
                gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0x5A, 0x1E, 0x00, 0xFF);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x5A, 0x1E, 0x00, 0x00);
                flag++;
            }

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x1008),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_808D1A9C[ptr->timer2]));
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600B3C8);
        }
    }

    ptr = particle;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 4) {
            if (flag == 0) {
                oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600B3A8);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0xFF, 0x0A, 0x00, 0xFF);
                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0x00, ptr->opacity);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x103A),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_808D1A9C[ptr->timer2]));
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600B3C8);
        }
    }

    ptr = particle;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 5) {
            if (flag == 0) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600D668);
                flag++;
            }

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_RotateY(ptr->unk_38, 1);
            Matrix_RotateX(ptr->unk_34, 1);
            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, 1);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x1060),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600D6E8);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_boss_fd.c", 0x1066);
}

void BossFd_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BossFd* this = THIS;
    s32 pad;

    osSyncPrintf("FD DRAW START\n");
    if (this->actionFunc != func_808CDE30) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1079);
        func_80093D18(globalCtx->state.gfxCtx);
        if (this->damageFlashTimer & 2) {
            oGfxCtx->polyOpa.p = Gfx_SetFog(oGfxCtx->polyOpa.p, 0xFF, 0xFF, 0xFF, 0, 0x384, 0x44B);
        }

        func_808D08F8(globalCtx, this);
        oGfxCtx->polyOpa.p = func_800BC8A0(globalCtx, oGfxCtx->polyOpa.p);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1093);
    }

    osSyncPrintf("FD DRAW END\n");
    func_808CF898(this->particles, globalCtx);
    osSyncPrintf("FD DRAW END2\n");
}

s32 func_808D00A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
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
        default:
            break;
    }
    if (this->skinSegments < limbIndex) {
        *dList = NULL;
    }
    return 0;
}

s32 func_808D01C0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
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
        default:
            break;
    }
    if (this->skinSegments < limbIndex) {
        *dList = NULL;
    }
    return 0;
}

s16 D_808D1AC0[] = { 0, 95, 90, 85, 80, 75, 70, 65, 60, 55, 50, 45, 40, 35, 30, 25, 20, 15, 10, 5 };
s16 D_808D1AE8[] = { 0, 28, 26, 24, 22, 20, 18, 16, 14, 12, 10 }; // Unused? Seems to be for the mane.

void func_808D02DC(GlobalContext* globalCtx, BossFd* this, Vec3f* manePos, Vec3f* maneRot, f32* maneScale, u8 mode) {
    f32 sp140[] = { 0.0f, 10.0f, 17.0f, 20.0f, 19.5f, 18.0f, 17.0f, 15.0f, 15.0f, 15.0f };
    f32 sp118[] = { 0.0f, 10.0f, 17.0f, 20.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f };
    f32 spF0[] = { 0.4636457f, 0.33661291f, 0.14879614f, 0.04995025f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
    f32 spC8[] = { -0.4636457f, -0.33661291f, -0.14879614f, 0.024927188f, 0.07478157f,
                   0.04995025f, 0.09961288f,  0.0f,         0.0f,         0.0f };
    s16 temp_s4;
    s16 phi_s2;
    s16 spC2;
    Vec3f spB4;
    Vec3f spA8;
    f32 phi_f20;
    f32 phi_f22;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1143);

    spC2 = this->skinSegments;
    if (spC2 >= 0xB) {
        spC2 = 0xA;
    }

    for (phi_s2 = 0; phi_s2 < spC2; phi_s2++) {
        temp_s4 = (this->leadManeSeg - (phi_s2 * 2) + 0x1E) % 0x1E;

        if (mode == 0) {
            spB4.x = spB4.z = 0.0f;
            spB4.y = ((sp140[phi_s2] * 0.1f) * 10.0f) * this->flattenMane;
            phi_f20 = 0.0f;
            phi_f22 = spC8[phi_s2] * this->flattenMane;
        } else if (mode == 1) {
            phi_f22 = (spC8[phi_s2] * this->flattenMane) * 0.7f;
            phi_f20 = spF0[phi_s2] * this->flattenMane;

            spB4.y = (sp140[phi_s2] * this->flattenMane) * 0.7f;
            spB4.x = -sp118[phi_s2] * this->flattenMane;
            spB4.z = 0.0f;
        } else {
            phi_f22 = (spC8[phi_s2] * this->flattenMane) * 0.7f;
            phi_f20 = -spF0[phi_s2] * this->flattenMane;

            spB4.y = (sp140[phi_s2] * this->flattenMane) * 0.7f;
            spB4.x = sp118[phi_s2] * this->flattenMane;
            spB4.z = 0.0f;
        }

        Matrix_RotateY((maneRot + temp_s4)->y, 0);
        Matrix_RotateX(-(maneRot + temp_s4)->x, 1);

        Matrix_MultVec3f(&spB4, &spA8);

        Matrix_Translate((manePos + temp_s4)->x + spA8.x, (manePos + temp_s4)->y + spA8.y,
                         (manePos + temp_s4)->z + spA8.z, 0);
        Matrix_RotateY((maneRot + temp_s4)->y + phi_f20, 1);
        Matrix_RotateX(-((maneRot + temp_s4)->x + phi_f22), 1);
        Matrix_Scale(maneScale[temp_s4] * (0.01f - (phi_s2 * 0.0008f)),
                     maneScale[temp_s4] * (0.01f - (phi_s2 * 0.0008f)), 0.01f, 1);
        Matrix_RotateX(-1.5707964f, 1);
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1180),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_060091E8);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1183);
}

s32 func_808D07A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    BossFd* this = THIS;

    switch (limbIndex) {
        case 5:
        case 6:
            rot->z -= this->jawOpening * 0.1f;
            break;
        case 2:
            rot->z += this->jawOpening;
            break;
        default:
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

Vec3f D_808D1BA0 = { 4500.0f, 0.0f, 0.0f };
Vec3f D_808D1BAC = { 4000.0f, 0.0f, 0.0f };

void func_808D08A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    BossFd* this = THIS;
    
    if (limbIndex == 5) {
        Matrix_MultVec3f(&D_808D1BA0, &this->actor.posRot2.pos);
        Matrix_MultVec3f(&D_808D1BAC, &this->fireBreathSpawnPoint);
    }
}

Gfx* D_808D1BB8[] = { D_060038A8, D_060034A8, D_06003CA8 };

Gfx* D_808D1BC4[] = { D_060079A0, D_06007AC0, D_06007B70, D_06007BD0, D_06007C30, D_06007C90,
                      D_06007CF0, D_06007D50, D_06007DB0, D_06007E10, D_06007E70, D_06007ED0,
                      D_06007F30, D_06007F90, D_06007FF0, D_06008038, D_06008080, D_060080D8 };

void func_808D08F8(GlobalContext* globalCtx, BossFd* this) {
    s16 segIndex;
    s16 i1;
    f32 phi_f20_2;
    Mtx* tempMat = Graph_Alloc(globalCtx->state.gfxCtx, 0x480);

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x11ED);
    if (this->skinSegments != 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_808D1BB8[this->eyeState]));
    }
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->bodyTex1Scroll, (s16)this->bodyTex1Rot, 0x20,
                                0x20, 1, (s16)this->bodyTex2Scroll, (s16)this->bodyTex2Rot, 0x20, 0x20));
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, (s8)this->bodyTex2Opacity);

    osSyncPrintf("LH\n");
    Matrix_Push();
    segIndex = (D_808D1AC0[2] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z, 0);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, 1);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, 1);
    Matrix_Translate(-13.0f, -5.0f, 13.0f, 1);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime2.skeleton, this->skelAnime2.limbDrawTbl, &func_808D00A4, 0, &this->actor);
    Matrix_Pull();
    osSyncPrintf("RH\n");
    Matrix_Push();
    segIndex = (D_808D1AC0[2] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z, 0);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, 1);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, 1);
    Matrix_Translate(13.0f, -5.0f, 13.0f, 1);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime3.skeleton, this->skelAnime3.limbDrawTbl, &func_808D01C0, 0, &this->actor);
    Matrix_Pull();
    osSyncPrintf("BD\n");
    gSPSegment(oGfxCtx->polyOpa.p++, 0x0D, tempMat);

    Matrix_Push();
    for (i1 = 0; i1 < 0x12; i1++, tempMat++) {
        segIndex = (D_808D1AC0[i1 + 1] + this->leadBodySeg) % 100;
        Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z,
                         0);
        Matrix_RotateY(this->bodySegsRot[segIndex].y, 1);
        Matrix_RotateX(-this->bodySegsRot[segIndex].x, 1);
        Matrix_Translate(0.0f, 0.0f, 35.0f, 1);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
        if (i1 < this->skinSegments) {
            Matrix_Scale(1.0f + (Math_Sins((this->leadBodySeg * 5000.0f) + (i1 * 7000.0f)) *
                                 *((f32*)this + 0xA0)), // this->bodyPulse
                         1.0f + (Math_Sins((this->leadBodySeg * 5000.0f) + (i1 * 7000.0f)) *
                                 *((f32*)this + 0xA0)), // this->bodyPulse
                         1.0f, 1);
            Matrix_RotateY(1.5707964f, 1);
            Matrix_ToMtx(tempMat, "../z_boss_fd.c", 0x126F);
            gSPMatrix(oGfxCtx->polyOpa.p++, tempMat, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyOpa.p++, D_808D1BC4[i1]);
        } else {
            MtxF spFC;
            Vec3f spF0 = { 0.0f, 0.0f, 0.0f };
            Vec3f spE4;
            Vec3s spDC;
            f32 spD8;
            if (this->bodyFallApart[i1] < 2) {
                f32 spD4 = 0.1f;
                phi_f20_2 = 0.1f;

                Matrix_Translate(0.0f, 0.0f, -1100.0f, 1);
                Matrix_RotateY(-3.1415927f, 1);
                if (i1 >= 14) {
                    f32 sp84 = 1.0f - ((i1 - 14) * 0.2f);
                    Matrix_Scale(sp84, sp84, 1.0f, 1);
                    spD4 = 0.1f * sp84;
                    phi_f20_2 = 0.1f * sp84;
                }
                Matrix_Scale(0.1f, 0.1f, 0.1f, 1);
                gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x12A0),
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
                                                       spE4.x, spE4.y, spE4.z, spDC.x, spDC.y, spDC.z, i1 + 0xC8);

                    newActor->actor.scale.x = this->actor.scale.x * phi_f20_2;
                    newActor->actor.scale.y = this->actor.scale.y * spD4;
                    newActor->actor.scale.z = this->actor.scale.z * 0.1f;
                }
            }
        }
        if (i1 > 0) {
            func_800628A4(i1 + 1, &this->collider1);
        }
    }
    Matrix_Pull();
    osSyncPrintf("BH\n");

    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, (s8)this->headTex2Opacity);
    Matrix_Push();
    phi_f20_2 = (this->actionState >= 204) ? -20.0f : -10.0f - ((this->actor.speedXZ - 5.0f) * 10.0f);
    segIndex = (D_808D1AC0[0] + this->leadBodySeg) % 100;
    Matrix_Translate(this->bodySegsPos[segIndex].x, this->bodySegsPos[segIndex].y, this->bodySegsPos[segIndex].z, 0);
    Matrix_RotateY(this->bodySegsRot[segIndex].y, 1);
    Matrix_RotateX(-this->bodySegsRot[segIndex].x, 1);
    Matrix_RotateZ((this->actor.shape.rot.z / 32768.0f) * 3.1415927f, 1);
    Matrix_Translate(0.0f, 0.0f, phi_f20_2, 1);
    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 25.0f, 1);
    osSyncPrintf("BHC\n");
    func_800628A4(0, &this->collider1);
    Matrix_Pull();
    osSyncPrintf("BHCE\n");
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime1.skeleton, this->skelAnime1.limbDrawTbl, &func_808D07A4, &func_808D08A4,
                   &this->actor);
    osSyncPrintf("SK\n");
    {
        Vec3f spB0 = { 0.0f, 1700.0f, 7000.0f };
        Vec3f spA4 = { -1000.0f, 700.0f, 7000.0f };
        func_80093D84(globalCtx->state.gfxCtx);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_06009168);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, this->centerManeColor, 0x00, 0xFF);
        Matrix_Push();
        Matrix_MultVec3f(&spB0, &this->centerManeHead);
        func_808D02DC(globalCtx, this, this->centerManePos, this->fireManeRot, this->centerManeScale, 0);
        Matrix_Pull();
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, this->rightManeColor, 0x00, 0xFF);
        Matrix_Push();
        Matrix_MultVec3f(&spA4, &this->rightManeHead);
        func_808D02DC(globalCtx, this, this->rightManePos, this->fireManeRot, this->rightManeScale, 1);
        Matrix_Pull();
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, this->leftManeColor, 0x00, 0xFF);
        Matrix_Push();
        spA4.x *= -1.0f;
        Matrix_MultVec3f(&spA4, &this->leftManeHead);
        func_808D02DC(globalCtx, this, this->leftManePos, this->fireManeRot, this->leftManeScale, 2);
        Matrix_Pull();
        Matrix_Pull();
        osSyncPrintf("END\n");
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x137B);
    }
}
