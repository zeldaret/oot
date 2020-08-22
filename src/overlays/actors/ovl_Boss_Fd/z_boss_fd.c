#include "z_boss_fd.h"

#define FLAGS 0x00000035

#define THIS ((BossFd*)thisx)

#define NON_MATCHING

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
void func_808CB198(BossFd* this, GlobalContext* globalCtx);
s32 func_808CB67C(BossFd* this); // Breathe Fire

s32 func_808D00A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
s32 func_808D01C0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
s32 func_808D07A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                  Actor* thisx); // Animation functions
void func_808D08A4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx);

void func_808D08F8(GlobalContext* globalCtx, BossFd* this);             // Draw Body
void func_808CF898(BossFdParticle* particle, GlobalContext* globalCtx); // Draw Particles
void func_808D02DC(GlobalContext *globalCtx, BossFd *this, Vec3f *manePos, Vec3f *maneRot, f32 *maneScale, u8 mode); // Draw Mane

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
////
// D_808D1660
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

// D_808D190C
static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    19,
    sJntSphItemsInit,
};

// D_808D191C
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

Vec3f D_808D1998[] = { { 0.0f, 900.0f, -243.0f }, { 243.0, 900.0f, -100.0f },  { 243.0f, 900.0f, 100.0f },
                       { 0.0f, 900.0f, 243.0f },  { -243.0f, 900.0f, 100.0f }, { -243.0, 900.0f, -100.0f } };

Vec3f D_808D19E0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D19EC = { 0.0f, 0.03f, 0.0f };

Vec3f D_808D19F8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1A04 = { 0.0f, 0.0f, 0.0f };

Vec3f D_808D1A10 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1A1C = { 0.0f, 0.03f, 0.0f };

Vec3f D_808D1A28 = { 0.0f, 0.0f, 50.0f };


s16 D_808D1A34[5] = { 0x0000, 0x0001, 0x0002, 0x0002, 0x0001 };
Vec3f D_808D1A40 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1A4C = { 0.0f, 0.0f, 0.0f };
Color_RGBA8_n D_808D1A58 = { 0xFF, 0xFF, 0x00, 0xFF };
Color_RGBA8_n D_808D1A5C = { 0xFF, 0x0A, 0x00, 0xFF };

// Vec3f D_808D1A60 = { 0.0f, 0.0f, 0.0f };
// Vec3f D_808D1A6C = { 0.0f, -1.0f, 0.0f };
// Vec3f D_808D1A78 = { 0.0f, 0.0f, 0.0f };
// Vec3f D_808D1A84 = { 0.0f, 0.0f, 0.0f };

// Color_RGB8 D_808D1A90[] = {{0xFF,0x80,0x00},{0xFF, 0x00,0x00},{0xFF,0xFF, 0x00},{0xFF,0x00,0x00}};

// UNK_TYPE D_808D1A9C[] = { 0x04051DB0, 0x04051DB0, 0x040521B0, 0x040525B0, 0x040529B0,
                          // 0x04052DB0, 0x040531B0, 0x040535B0, 0x040539B0 };

// s16 D_808D1AC0[] = { 0x0000, 0x005F, 0x005A, 0x0055, 0x0050, 0x004B, 0x0046, 0x0041, 0x003C, 0x0037, 0x0032,
                     // 0x002D, 0x0028, 0x0023, 0x001E, 0x0019, 0x0014, 0x000F, 0x000A, 0x0005, 0x0000, 0x001C,
                     // 0x001A, 0x0018, 0x0016, 0x0014, 0x0012, 0x0010, 0x000E, 0x000C, 0x000A, 0x0000 };

// f32 D_808D1B00[] = { 0.0f, 10.0f, 17.0f, 20.0f, 19.5f, 18.0f, 17.0f, 15.0f, 15.0f, 15.0f };
// f32 D_808D1B28[] = { 0.0f, 10.0f, 17.0f, 20.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f };
// f32 D_808D1B50[] = { 0.4636457f, 0.33661291f, 0.14879614f, 0.04995025f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
// f32 D_808D1B78[] = { -0.4636457f, -0.33661291f, -0.14879614f, 0.024927188f, 0.07478157f,
                     // 0.04995025f, 0.09961288f,  0.0f,         0.0f,         0.0f };

// Vec3f D_808D1BA0 = { 4500.0f, 0.0f, 0.0f };
// Vec3f D_808D1BAC = { 4000.0f, 0.0f, 0.0f };

// Gfx* D_808D1BB8[] = { 0x060038A8, 0x060034A8, 0x06003CA8 };

// Gfx* D_808D1BC4[] = { 0x060079A0, 0x06007AC0, 0x06007B70, 0x06007BD0, 0x06007C30, 0x06007C90,
                      // 0x06007CF0, 0x06007D50, 0x06007DB0, 0x06007E10, 0x06007E70, 0x06007ED0,
                      // 0x06007F30, 0x06007F90, 0x06007FF0, 0x06008038, 0x06008080, 0x060080D8 };

// Vec3f D_808D1C0C = { 0.0f, 0.0f, 0.0f };
// Vec3f D_808D1C18 = { 0.0f, 1700.0f, 7000.0f };
// Vec3f D_808D1C24 = { -1000.0f, 700.0f, 7000.0f };

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
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BG_VB_SIMA, 680.0f, -100.0f, 0.0f, 0, 0, 0,
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
        this->bodySegmentsPos[i].x = this->actor.posRot.pos.x;
        this->bodySegmentsPos[i].y = this->actor.posRot.pos.y;
        this->bodySegmentsPos[i].z = this->actor.posRot.pos.z;
        if (i < 30) {
            this->centerManePos[i].x = this->actor.posRot.pos.x;
            this->centerManePos[i].y = this->actor.posRot.pos.y;
            this->centerManePos[i].z = this->actor.posRot.pos.z;
        }
    }

    this->actor.colChkInfo.health = 0x18;
    this->skinSegments = 0x12;
    if (this->introState2 == 0) {
        this->actionFunc = func_808CDE30;
    } else {
        func_808CB6A8(this, globalCtx);
    }

    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num) != 0) {
        Actor_Kill(&this->actor);
        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, 100.0f, 0.0f, 0, 0,
                            0, -1);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 0.0f, 100.0f, 200.0f, 0, 0, 0, 0);
        return;
    }

    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_FD2, this->actor.posRot.pos.x,
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
    this->unk_2AC = 1000.0f;
}

#ifdef NON_MATCHING
#include "BossFd_Fly.code"
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CB718.s")
#endif
//Obscenely long. Properly branched, but needs work on instruction matching and stack stuff.

void func_808CDE30(BossFd* this, GlobalContext* globalCtx) {
    u8 temp_rand;
    if (this->handoffSignal == 1) { // Set by BossFd2
        this->handoffSignal = 0;
        func_808CB6A8(this, globalCtx);
        do {
            temp_rand = (u32)Math_Rand_ZeroFloat(8.9f) & 0xFF;
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
///
#ifdef NON_MATCHING
// Control flow is correct, but lots of regalloc problems, especially with the float literals.
// The inline may present a problem with data ordering. Keep an eye on that.
void func_808CE01C(BossFd* this, GlobalContext* globalCtx) {

    s16 sp106 = 0;
    s16 spE8[5] = { 0x0000, 0x0001, 0x0002, 0x0002, 0x0001 }; // D_808D1A34
    s16 i1;
    u16 temp_v1;
    f32 phi_f2;
    f32 phi_f0_2;
    Vec3f spD0;
    Vec3f spC4;
    Vec3f spB8;
    f32 spB0;
    f32 spAC;
    Vec3f spA0;
    Vec3f sp94;
    Vec3f sp88;
    Vec3f sp7C;
    Vec3f* temp_vec;
    f32 phi_f0;
    f32 phi_f20;

    temp_v1 = this->fogMode;
    if (temp_v1 == 0) {
        globalCtx->envCtx.unk_BF = 0;
        globalCtx->envCtx.unk_D8 = (Math_Sins(this->varianceTimer * 0x500) * 0.5f) + 0.5f;
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 1;
        globalCtx->envCtx.unk_BE = 0;
    } else if (temp_v1 == 3) {
        globalCtx->envCtx.unk_BF = 0;
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 2;
        globalCtx->envCtx.unk_BE = 0;
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.05f);
    } else if (temp_v1 == 2) {
        this->fogMode--;
        globalCtx->envCtx.unk_BF = 0;
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, (Math_Sins(this->varianceTimer * 0x3E00) * 0.05f) + 0.55f, 1.0f,
                             0.15f);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 3;
        globalCtx->envCtx.unk_BE = 0;
    } else if (temp_v1 == 10) {
        this->fogMode = 1;
        globalCtx->envCtx.unk_BF = 0;
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, (Math_Sins(this->varianceTimer * 0xC00) * 0.07f) + 0.21f, 1.0f,
                             0.05f);
        globalCtx->envCtx.unk_DC = 2;
        globalCtx->envCtx.unk_BD = 3;
        globalCtx->envCtx.unk_BE = 0;
    } else if (temp_v1 == 1) {
        Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 0.0f, 1.0f, 0.03f);
        if (globalCtx->envCtx.unk_D8 <= 0.01f) {
            this->fogMode = 0;
        }
    }

    if (this->maneEmbersTimer != 0) {
        this->maneEmbersTimer--;
        phi_f0 = 20.0f;
        phi_f20 = 20.0f;
    } else {
        phi_f0 = 3.0f;
        phi_f20 = 5.0f;
    }
    Math_SmoothScaleMaxF(&this->maneEmberRate, phi_f0, 1.0f, 0.1f);
    Math_SmoothScaleMaxF(&this->maneEmberSpeed, phi_f20, 1.0f, 0.5f);
    if ((this->varianceTimer & 7) == 0) {
        if (Math_Rand_ZeroOne() < 0.3f) {
            this->blinkTimer = 4;
        }
    }

    this->eyeState = spE8[this->blinkTimer];
    if (this->blinkTimer != 0) {
        this->blinkTimer--;
    }

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

    if (this->roarTimer != 0) {
        this->roarTimer--;
    }
    if (this->animationTimers[4] != 0) {
        Audio_PlaySoundGeneral(0x30D0, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (this->holeSplashTimer != 0) {
            this->holeSplashTimer--;
            if ((this->actor.colChkInfo.health == 0) || (this->introState2 != 6) ||
                (this->actor.posRot.rot.x >= 0x3001)) {
                if ((u8)this->fogMode == 0) {
                    globalCtx->envCtx.unk_D8 = 0.0f;
                }
                this->fogMode = 2;
            }
            for (i1 = 0; i1 < 5; i1++) {
                spD0.x = Math_Rand_CenteredFloat(20.0f);
                spD0.y = Math_Rand_ZeroFloat(5.0f) + 4.0f;
                spD0.z = Math_Rand_CenteredFloat(20.0f);
                spC4.x = 0.0f;
                spC4.y = -0.3f;
                spC4.z = 0.0f;
                spB8.x = this->holePosition.x + ((spD0.x * 20.0f) / 10.0f);
                spB8.y = 100.0f;
                spB8.z = this->holePosition.z + ((spD0.z * 20.0f) / 10.0f);
                func_8002836C(globalCtx, &spB8, &spD0, &spC4, &D_808D1A58, &D_808D1A5C,
                              (s16)Math_Rand_ZeroFloat(150.0f) + 0x320, 0xA, (s16)Math_Rand_ZeroFloat(5.0f) + 0x11);
            }
        } else {
            for (i1 = 0; i1 < 2; i1++) {
                spD0.x = Math_Rand_CenteredFloat(10.0f);
                spD0.y = Math_Rand_ZeroFloat(3.0f) + 3.0f;
                spD0.z = Math_Rand_CenteredFloat(10.0f);
                spC4.x = 0.0f;
                spC4.y = -0.3f;
                spC4.z = 0.0f;
                spB8.x = this->holePosition.x + ((spD0.x * 50.0f) / 10.0f);
                spB8.y = 100.0f;
                spB8.z = this->holePosition.z + ((spD0.z * 50.0f) / 10.0f);
                func_8002836C(globalCtx, &spB8, &spD0, &spC4, &D_808D1A58, &D_808D1A5C, 0x1F4, 0xA, 0x14);
            }
        }
        
        for (i1 = 0; i1 < 8; i1++) {
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
        spA0 = D_808D1A40;
        sp88 = D_808D1A4C;
        this->fogMode = 2;
        spA0.z = 30.0f;
        
        
        Audio_PlaySoundGeneral(0x30DB, &D_808D1A28, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        temp_vec = &this->fireBreathSpawnPoint;
        sp7C = *temp_vec;
        spAC = (this->actor.posRot.rot.y / 32768.0f) * 3.1415927f;
        spB0 = (((-this->actor.posRot.rot.x) / 32768.0f) * 3.1415927f) + 0.3f;
        Matrix_RotateY(spAC, 0);
        Matrix_RotateX(spB0, 1);
        Matrix_MultVec3f(&spA0, &sp94);
        func_808CAFF4(this->particles, temp_vec, &sp94, &sp88,
                      (Math_Sins(this->varianceTimer * 0x2000) * 50.0f) + 300.0f, sp106, this->actor.posRot.rot.y);
        sp7C.x += sp94.x * 0.5f;
        sp7C.y += sp94.y * 0.5f;
        sp7C.z += sp94.z * 0.5f;
        func_808CAFF4(this->particles, &sp7C, &sp94, &sp88, (Math_Sins(this->varianceTimer * 0x2000) * 50.0f) + 300.0f,
                      sp106, this->actor.posRot.rot.y);
        spA0.x = 0.0f;
        spA0.z = 0.0f;
        spA0.y = 17.0f;

        for (i1 = 0; i1 < 6; i1++) {
            spAC = Math_Rand_ZeroFloat(6.2831855f);
            spB0 = Math_Rand_ZeroFloat(6.2831855f);
            Matrix_RotateY(spAC, 0);
            Matrix_RotateX(spB0, 1);
            Matrix_MultVec3f(&spA0, &sp94);
            sp88.x = (sp94.x * -10.0f) / 100.0f;
            sp88.y = (sp94.y * -10.0f) / 100.0f;
            sp88.z = (sp94.z * -10.0f) / 100.0f;
            func_808CADC0(this->particles, &sp7C, &sp94, &sp88, (s16)Math_Rand_ZeroFloat(2.0f) + 8);
        }
    }
    if ((this->actor.posRot.pos.y < 90.0f) || (700.0f < this->actor.posRot.pos.y) ||
        (func_808CDE30 == this->actionFunc)) {
        this->actor.flags &= ~1;
    } else {
        this->actor.flags |= 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808CE01C.s")
#endif

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
    Actor* bossFdRock; // Change to EnVbBall*
    BossFd* this = THIS;
    BossFdParticle* temp_ptr = this->particles;
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
    s16 i1;

    osSyncPrintf((const char*)"FD MOVE START \n");
    this->varianceTimer++;
    this->movementTimer++;
    this->actionFunc(this, globalCtx);

    for (i1 = 0; i1 < 6; i1++) {
        if (this->animationTimers[i1] != 0) {
            this->animationTimers[i1]--;
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
    if (this->actionState < 0xC8) {
        if (this->invincibilityTimer == 0) {
            func_808CEC34(this, globalCtx);
        }
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    func_808CE01C(this, globalCtx);
    this->bodyTextureFlow += 4.0f;
    this->bodyTextureRotation = 120.0f;
    this->bodyTextureRipple1 += 3.0f;
    this->bodyTextureRipple2 -= 2.0f;

    Math_SmoothScaleMaxF(&this->unk_270, ((this->varianceTimer & 0x10) != 0) ? 30.0f : 158.0f, 1.0f, 8.0f);

    if (this->skinSegments == 0) {
        this->unk_274 = this->unk_270;
    } else {
        phi_f0_1 = ((this->varianceTimer & 4) != 0) ? 0.0f : 255.0f;
        Math_SmoothScaleMaxF(&this->unk_274, phi_f0_1, 1.0f, 64.0f);
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
            bossFdRock = Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_VB_BALL,
                                             this->actor.posRot.pos.x, 1000.0f, this->actor.posRot.pos.z, 0, 0,
                                             (s16)Math_Rand_ZeroFloat(50.0f) + 0x82, 0x64);
            if (bossFdRock != 0) {
                for (i1 = 0; i1 < 10; i1++) {
                    spB0 = D_808D1A60;
                    spA4 = D_808D1A6C;
                    sp98.x = Math_Rand_CenteredFloat(300.0f) + bossFdRock->posRot.pos.x;
                    sp98.y = Math_Rand_CenteredFloat(300.0f) + bossFdRock->posRot.pos.y;
                    sp98.z = Math_Rand_CenteredFloat(300.0f) + bossFdRock->posRot.pos.z;
                    func_808CAE8C(temp_ptr, &sp98, &spB0, &spA4, (s16)Math_Rand_ZeroFloat(15.0f) + 0x14);
                }
            }
        }
    }

    sp8C = D_808D1A78;
    sp80 = D_808D1A84;

    if (temp_ptr) {} // Needed for matching

    for (i1 = 0; i1 < 6; i1++) {
        sp80.y = 0.4f;
        sp80.x = Math_Rand_CenteredFloat(0.5f);
        sp80.z = Math_Rand_CenteredFloat(0.5f);
        temp_rand = Math_Rand_ZeroFloat(8.9f);
        sp74.x = D_808D192C[temp_rand].x + Math_Rand_CenteredFloat(60.0f);
        sp74.y = (D_808D192C[temp_rand].y + 10.0f) + Math_Rand_ZeroFloat(40.0f);
        sp74.z = D_808D192C[temp_rand].z + Math_Rand_CenteredFloat(60.0f);
        func_808CADC0(temp_ptr, &sp74, &sp8C, &sp80, (s16)Math_Rand_ZeroFloat(2.0f) + 6);
    }

    if (this->skinSegments != 0) {
        for (i1 = 0; i1 < (s16)this->maneEmberRate; i1++) {
            temp_rand = Math_Rand_ZeroFloat(29.9f);
            sp74.y = this->centerManePos[temp_rand].y + Math_Rand_CenteredFloat(20.0f);
            if (90.0f <= sp74.y) {
                sp74.x = this->centerManePos[temp_rand].x + Math_Rand_CenteredFloat(20.0f);
                sp74.z = this->centerManePos[temp_rand].z + Math_Rand_CenteredFloat(20.0f);
                sp8C.x = Math_Rand_CenteredFloat(this->maneEmberSpeed);
                sp8C.y = Math_Rand_CenteredFloat(this->maneEmberSpeed);
                sp8C.z = Math_Rand_CenteredFloat(this->maneEmberSpeed);
                sp80.y = 0.4f;
                sp80.x = Math_Rand_CenteredFloat(0.5f);
                sp80.z = Math_Rand_CenteredFloat(0.5f);
                func_808CADC0(temp_ptr, &sp74, &sp8C, &sp80, (s16)Math_Rand_ZeroFloat(2.0f) + 8);
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
    Color_RGB8 sp8C[4] = {
        { 0xFF, 0x80, 0x00 }, { 0xFF, 0x00, 0x00 }, { 0xFF, 0xFF, 0x00 }, { 0xFF, 0x00, 0x00 }
    }; // D_808D1A90
    Vec3f diff;
    s16 phi_v1;
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
                phi_v1 = part->timer1 % 4;
                part->color.r = sp8C[phi_v1].r;
                part->color.g = sp8C[phi_v1].g;
                part->color.b = sp8C[phi_v1].b;
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
                            player->unk_A61[i2] = Math_Rand_S16Offset(0, 0xC8);
                        }
                        player->unk_A60 = 1;
                    }
                }
                if (part->timer2 == 0) {
                    if (part->scale < 2.5f) {
                        part->scale += part->unk_34;
                        part->unk_34 += 0.08f;
                    }
                    if ((part->pos.y <= (part->unk_38 + 130.0f)) || (part->timer1 >= 0xA)) {
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

s16 D_808D1AC0[] = { 0x0000, 0x005F, 0x005A, 0x0055, 0x0050, 0x004B, 0x0046, 0x0041, 0x003C, 0x0037, 0x0032,
                     0x002D, 0x0028, 0x0023, 0x001E, 0x0019, 0x0014, 0x000F, 0x000A, 0x0005, 0x0000, 0x001C,
                     0x001A, 0x0018, 0x0016, 0x0014, 0x0012, 0x0010, 0x000E, 0x000C, 0x000A, 0x0000 };

void func_808CF898(BossFdParticle *ptr, GlobalContext *globalCtx) {
     
    f32 pad[2];
    u8 flag = 0;
    s16 i;
    BossFdParticle* particle;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];
    
    particle = ptr;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_boss_fd.c", 0xFB7);

    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 1) {
            if (flag == 0) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600A880);
                flag++;
            }

            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, ptr->color.r, ptr->color.g, ptr->color.b, ptr->opacity);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, 1);

            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0xFCE),
                        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyXlu.p++, D_0600A900);
        }
    }

    ptr = particle;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 2) {
            if (flag == 0) {
                func_80093D18(globalCtx->state.gfxCtx);
                gSPDisplayList(gfxCtx->polyOpa.p++, D_0600D3A0);
                flag++;
            }

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_RotateY(ptr->unk_38, 1);
            Matrix_RotateX(ptr->unk_34, 1);
            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, 1);

            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0xFE4),
                        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_0600D420);
        }
    }

    ptr = particle;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 3) {
            if (flag == 0) {
                gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600B3A8);
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0x5A, 0x1E, 0x00, 0xFF);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x5A, 0x1E, 0x00, 0x00);
                flag++;
            }

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x1008),
                        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW); 
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_808D1A9C[ptr->timer2]));
            gSPDisplayList(gfxCtx->polyXlu.p++, D_0600B3C8);
        }
    }

    ptr = particle;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 4) {
            if (flag == 0) {
                gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600B3A8);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x0A, 0x00, 0xFF);
                flag++;
            }

            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0x00, ptr->opacity);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);

            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x103A),
                        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_808D1A9C[ptr->timer2]));
            gSPDisplayList(gfxCtx->polyXlu.p++, D_0600B3C8);
        }
    }

    ptr = particle;
    flag = 0;
    for (i = 0; i < 180; i++, ptr++) {
        if (ptr->type == 5) {
            if (flag == 0) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600D668);
                flag++;
            }

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_RotateY(ptr->unk_38, 1);
            Matrix_RotateX(ptr->unk_34, 1);
            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, 1);

            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x1060),
                        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyXlu.p++, D_0600D6E8);
        }
    }

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_boss_fd.c", 0x1066);
}

void BossFd_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BossFd* this = THIS;
    s32 pad;

    osSyncPrintf("FD DRAW START\n");
    if (this->actionFunc != func_808CDE30) {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1079);
        func_80093D18(globalCtx->state.gfxCtx);
        if (this->damageFlashTimer & 2) {
            gfxCtx->polyOpa.p = Gfx_SetFog(gfxCtx->polyOpa.p, 0xFF, 0xFF, 0xFF, 0, 0x384, 0x44B);
        }

        func_808D08F8(globalCtx, this);
        gfxCtx->polyOpa.p = func_800BC8A0(globalCtx, gfxCtx->polyOpa.p);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1093);
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

#ifdef NON_MATCHING
// Literally two ADDU instructions have their arguments swapped.
void func_808D02DC(GlobalContext *globalCtx, BossFd *this, Vec3f *manePos, Vec3f *maneRot, f32 *maneScale, u8 mode) {
    f32 sp140[] = { 0.0f, 10.0f, 17.0f, 20.0f, 19.5f, 18.0f, 17.0f, 15.0f, 15.0f, 15.0f };
    f32 sp118[] = { 0.0f, 10.0f, 17.0f, 20.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f };
    f32 spF0[] =  { 0.4636457f, 0.33661291f, 0.14879614f, 0.04995025f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
    f32 spC8[] = { -0.4636457f, -0.33661291f, -0.14879614f, 0.024927188f, 0.07478157f, 0.04995025f, 0.09961288f, 0.0f, 0.0f, 0.0f };
    
    s16 temp_s4;
    s16 phi_s2;
    s16 spC2 ;
    Vec3f spB4;
    Vec3f spA8;
    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    f32 phi_f20;
    f32 phi_f22;
    Gfx *disprefs[4];

    Graph_OpenDisps(disprefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1143);
    
    spC2 = this->skinSegments;
    if(spC2 >= 0xB){
        spC2 = 0xA;
    }


    for(phi_s2 = 0; phi_s2 < spC2; phi_s2++) {
        temp_s4 = (this->leadManeSegment - (phi_s2 * 2) + 0x1E) % 0x1E;
        
        if (mode == 0) {
            spB4.x = spB4.z = 0.0f;
            spB4.y = ((sp140[phi_s2] * 0.1f) * 10.0f) * this->flattenMane;
            phi_f20 = 0.0f;
            phi_f22 = spC8[phi_s2] * this->flattenMane;
        } else  if (mode == 1) {
            //temp_f0 = this->flattenMane;
            phi_f22 = (spC8[phi_s2] * this->flattenMane) * 0.7f;
            phi_f20 = spF0[phi_s2] * this->flattenMane;
            
            spB4.y = (sp140[phi_s2] * this->flattenMane) * 0.7f;
            spB4.x = -sp118[phi_s2] * this->flattenMane;
            spB4.z = 0.0f;
        } else {
            phi_f22 = (spC8[phi_s2] *this->flattenMane) * 0.7f;
            phi_f20 = -spF0[phi_s2] * this->flattenMane;
            
            spB4.y = (sp140[phi_s2] * this->flattenMane) * 0.7f;
            spB4.x = sp118[phi_s2] * this->flattenMane;
            spB4.z = 0.0f;
        }
        
        Matrix_RotateY(maneRot[temp_s4].y, 0); //here
        Matrix_RotateX(-maneRot[temp_s4].x, 1);
        
        Matrix_MultVec3f(&spB4,&spA8);
        //and below.
        Matrix_Translate(manePos[temp_s4].x + spA8.x, manePos[temp_s4].y + spA8.y, manePos[temp_s4].z + spA8.z, 0);
        Matrix_RotateY(maneRot[temp_s4].y + phi_f20, 1);
        Matrix_RotateX(-(maneRot[temp_s4].x + phi_f22), 1);
        Matrix_Scale(maneScale[temp_s4] * (0.01f - (phi_s2 * 0.0008f)), maneScale[temp_s4] * (0.01f - (phi_s2 * 0.0008f)), 0.01f, 1);
        Matrix_RotateX(-1.5707964f, 1);
        gSPMatrix(gfxCtx->polyXlu.p++,Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1180), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_060091E8);
    }
    
    Graph_CloseDisps(disprefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x1183);
}
#else

f32 D_808D1B00[] = { 0.0f, 10.0f, 17.0f, 20.0f, 19.5f, 18.0f, 17.0f, 15.0f, 15.0f, 15.0f };
f32 D_808D1B28[] = { 0.0f, 10.0f, 17.0f, 20.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f, 21.0f };
f32 D_808D1B50[] = { 0.4636457f, 0.33661291f, 0.14879614f, 0.04995025f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
f32 D_808D1B78[] = { -0.4636457f, -0.33661291f, -0.14879614f, 0.024927188f, 0.07478157f,
                     0.04995025f, 0.09961288f,  0.0f,         0.0f,         0.0f };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D02DC.s")
#endif

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
    if ((this->faceGlow == 1) && (limbIndex == 5)) {
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

Gfx* D_808D1BB8[] = { 0x060038A8, 0x060034A8, 0x06003CA8 };

Gfx* D_808D1BC4[] = { 0x060079A0, 0x06007AC0, 0x06007B70, 0x06007BD0, 0x06007C30, 0x06007C90,
                      0x06007CF0, 0x06007D50, 0x06007DB0, 0x06007E10, 0x06007E70, 0x06007ED0,
                      0x06007F30, 0x06007F90, 0x06007FF0, 0x06008038, 0x06008080, 0x060080D8 };

Vec3f D_808D1C0C = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D1C18 = { 0.0f, 1700.0f, 7000.0f };
Vec3f D_808D1C24 = { -1000.0f, 700.0f, 7000.0f };

#ifdef NON_MATCHING
void func_808D08F8(GlobalContext *globalCtx, BossFd *this) {
    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    Mtx *tempMat = Graph_Alloc(gfxCtx, 0x480);
    Gfx *disprefs[4];
    f32 temp_f12;
    f32 temp_f20;
    s16 temp_v0_16;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v0_8;
    s16 phi_s1;
    f32 phi_f20;
    f32 phi_f20_2;
    Actor *temp_v0_13;
    f32 pad[10];
    MtxF *spFC;
    Vec3f spF0;
    Vec3f spE4;
    Vec3s spDC;
    f32 spD4;
    Vec3f spB0;
    Vec3f spA4;
    f32 sp8C;
    f32 sp84;

    //tempMat = ;
    Graph_OpenDisps(disprefs, gfxCtx, "../z_boss_fd.c", 0x11ED);
    if (this->skinSegments != 0) {
        // gfxCtx->polyOpa.p++;
        // gfxCtx->polyOpa.p->words.w0 = 0xDB060024;
        // temp_a0 = D_808D1BB8[this->eyeState];
        // gfxCtx->polyOpa.p->words.w1 = ((temp_a0 & 0xFFFFFF) + gSegments[(temp_a0 * 0x10) >> 0x1C]) + 0x80000000;
        gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_808D1BB8[this->eyeState]));
    }
    // gfxCtx->polyOpa.p++;
    // gfxCtx->polyOpa.p->words.w0 = 0xDB060020;
    // gfxCtx->polyOpa.p->words.w1 = Gfx_TwoTexScroll(gfxCtx, 0, this->bodyTextureFlow, this->bodyTextureRotation, 0x20, 0x20, 1, this->bodyTextureRipple1, this->bodyTextureRipple2, 0x20, 0x20);
    // gfxCtx->polyOpa.p++;
    // gfxCtx->polyOpa.p->words.w1 = -1;
    // gfxCtx->polyOpa.p->words.w0 = 0xFA000000;
    // gfxCtx->polyOpa.p++;
    // gfxCtx->polyOpa.p->words.w0 = 0xFB000000;
    // gfxCtx->polyOpa.p->words.w1 = ((u8) this->unk_270 & 0xFF) | -0x100;
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16) this->bodyTextureFlow, (s16) this->bodyTextureRotation, 0x20, 0x20, 1,
                                                            (s16) this->bodyTextureRipple1, (s16) this->bodyTextureRipple2, 0x20, 0x20));
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, (s8) this->unk_270);
    
    osSyncPrintf("LH\n");
    Matrix_Push();
    temp_v0_5 = (D_808D1AC0[2] + this->leadBodySegment) % 0x64 ;
    Matrix_Translate(this->bodySegmentsPos[temp_v0_5].x, this->bodySegmentsPos[temp_v0_5].y, this->bodySegmentsPos[temp_v0_5].z, 0);
    Matrix_RotateY(this->bodySegmentsRot[temp_v0_5].y, 1);
    Matrix_RotateX(-this->bodySegmentsRot[temp_v0_5].x, 1);
    Matrix_Translate(-13.0f, -5.0f, 13.0f, 1);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime2.skeleton, this->skelAnime2.limbDrawTbl, &func_808D00A4, 0, &this->actor);
    Matrix_Pull();
    osSyncPrintf("RH\n");
    Matrix_Push();
    temp_v0_6 = (D_808D1AC0[2] + this->leadBodySegment) % 0x64;
    Matrix_Translate(this->bodySegmentsPos[temp_v0_6].x, this->bodySegmentsPos[temp_v0_6].y, this->bodySegmentsPos[temp_v0_6].z, 0);
    Matrix_RotateY(this->bodySegmentsRot[temp_v0_6].y, 1);
    Matrix_RotateX(-this->bodySegmentsRot[temp_v0_6].x, 1);
    Matrix_Translate(13.0f, -5.0f, 13.0f, 1);
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime3.skeleton, this->skelAnime3.limbDrawTbl, &func_808D01C0, 0, &this->actor);
    Matrix_Pull();
    osSyncPrintf("BD\n");
    
    // gfxCtx->polyOpa.p++;
    // gfxCtx->polyOpa.p->words.w1 = tempMat;
    // gfxCtx->polyOpa.p->words.w0 = 0xDB060034;
    gSPSegment(gfxCtx->polyOpa.p++, 0x0D, tempMat);
    
    Matrix_Push();
    //sp7C = &this->collider1;
    for(phi_s1 = 0; phi_s1 < 0x12; phi_s1++,tempMat++){
        temp_v0_8 = (D_808D1AC0[phi_s1+1] + this->leadBodySegment) % 0x64;
        Matrix_Translate(this->bodySegmentsPos[temp_v0_8].x, this->bodySegmentsPos[temp_v0_8].y, this->bodySegmentsPos[temp_v0_8].z, 0);
        Matrix_RotateY(this->bodySegmentsRot[temp_v0_8].y, 1);
        Matrix_RotateX(-this->bodySegmentsRot[temp_v0_8].x, 1);
        Matrix_Translate(0.0f, 0.0f, 35.0f, 1);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
        if (phi_s1 < this->skinSegments) {
            sp8C = Math_Sins((this->leadBodySegment * 5000.0f) + phi_s1 * 7000.0f);
            Matrix_Scale((this->unk_280 * sp8C) + 1.0f, (this->unk_280 * Math_Sins((this->leadBodySegment * 5000.0f) + phi_s1 * 7000.0f)) + 1.0f, 1.0f, 1);
            Matrix_RotateY(1.5707964f, 1);
            Matrix_ToMtx(tempMat, "../z_boss_fd.c", 0x126F);
            // gfxCtx->polyOpa.p++;
            // gfxCtx->polyOpa.p->words.w1 = tempMat;
            // gfxCtx->polyOpa.p->words.w0 = 0xDA380003;
            // gfxCtx->polyOpa.p++;
            // gfxCtx->polyOpa.p->words.w0 = 0xDE000000;
            // gfxCtx->polyOpa.p->words.w1 = D_808D1BC4[phi_s1];
            gSPMatrix(gfxCtx->polyOpa.p++, tempMat, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_808D1BC4[phi_s1]);
            
        } else {
            spF0 = D_808D1C0C;
            if (this->unk_13D0[phi_s1] < 2) {
                
                //phi_f20 = 0.1f;
                //sp80 = 0x600B2F8;
                Matrix_Translate(0.0f, 0.0f, -1100.0f, 1);
                Matrix_RotateY(-3.1415927f, 1);
                spD4 = 0.1f;
                if (phi_s1 >= 0xE) {
                    sp84 = 1.0f - ((phi_s1 - 0xE) * 0.2f);
                    Matrix_Scale(sp84, sp84, 1.0f, 1);
                    spD4 = 0.1f * sp84;
                    //spD4 = temp_f20;
                    //phi_f20 = temp_f20;
                }
                Matrix_Scale(0.1f, 0.1f, 0.1f, 1);
                // gfxCtx->polyOpa.p++;
                // gfxCtx->polyOpa.p->words.w0 = 0xDA380003;
                // gfxCtx->polyOpa.p->words.w1 = Matrix_NewMtx(gfxCtx, "../z_boss_fd.c", 0x12A0);
                // gfxCtx->polyOpa.p++;
                // gfxCtx->polyOpa.p->words.w0 = 0xDE000000;
                // gfxCtx->polyOpa.p->words.w1 = sp80;
                gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x12A0), G_MTX_NOPUSH |
                            G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(gfxCtx->polyOpa.p++, D_0600B2F8);
                if (this->unk_13D0[phi_s1] == 1) {
                    this->unk_13D0[phi_s1] = 2;
                    Matrix_MultVec3f(&spF0, &spE4);
                    Matrix_Get(spFC);
                    func_800D20CC(spFC, &spDC, 0);
                    temp_v0_13 = Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, 0xAD, spE4.x, spE4.y, spE4.z, spDC.x, spDC.y, spDC.z, phi_s1 + 0xC8);
                    
                    temp_v0_13->scale.x = this->actor.scale.x * spD4;
                    temp_v0_13->scale.y = this->actor.scale.y * spD4;
                    temp_v0_13->scale.z = this->actor.scale.z * 0.1f;
                }
            }
        }
        if (phi_s1 > 0) {
            func_800628A4(phi_s1 + 1, &this->collider1);
        }
    }
    Matrix_Pull();
    osSyncPrintf("BH\n");
    // gfxCtx->polyOpa.p++;
    // gfxCtx->polyOpa.p->words.w1 = 0;
    // gfxCtx->polyOpa.p->words.w0 = 0xE7000000;
    // gfxCtx->polyOpa.p++;
    // gfxCtx->polyOpa.p->words.w0 = 0xFB000000;
    // gfxCtx->polyOpa.p->words.w1 = (u8) this->unk_274| -0x100;
    
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, (s32) this->unk_274);
    Matrix_Push();
    phi_f20_2 = (this->actionState >= 0xCC) ? -20.0f : -10.0f - ((this->actor.speedXZ - 5.0f) * 10.0f);
    temp_v0_16 = D_808D1AC0[this->leadBodySegment] % 0x64;
    Matrix_Translate(this->bodySegmentsPos[temp_v0_16].x, this->bodySegmentsPos[temp_v0_16].y,this->bodySegmentsPos[temp_v0_16].z, 0);
    Matrix_RotateY(this->bodySegmentsRot[temp_v0_16].y, 1);
    Matrix_RotateX(-this->bodySegmentsRot[temp_v0_16].x, 1);
    Matrix_RotateZ((this->actor.shape.rot.z / 32768.0f) * 3.1415927f, 1);
    Matrix_Translate(0.0f, 0.0f, phi_f20_2, 1);
    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 25.0f, 1);
    osSyncPrintf("BHC\n");
    func_800628A4(0, &this->collider1);
    Matrix_Pull();
    osSyncPrintf("BHCE\n");
    Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
    SkelAnime_Draw(globalCtx, this->skelAnime1.skeleton, this->skelAnime1.limbDrawTbl, &func_808D07A4, &func_808D08A4, &this->actor);
    osSyncPrintf("SK\n");
    spB0 = D_808D1C18;
    spA4 = D_808D1C24;
    func_80093D84(gfxCtx);
    // gfxCtx->polyXlu.p++;
    // gfxCtx->polyOpa.p->words.w0 = 0xDE000000;
    // gfxCtx->polyOpa.p->words.w1 = 0x6009168;
    // gfxCtx->polyXlu.p++;
    // gfxCtx->polyXlu.p->words.w0 = 0xFA000000;
    // gfxCtx->polyXlu.p->words.w1 = ((( (u8) this->centerManeColor & 0xFF) << 0x10) | 0xFF000000) | 0xFF;
    gSPDisplayList(gfxCtx->polyXlu.p++, 0x06009168);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, (u8) this->centerManeColor, 0x00, 0xFF);
    Matrix_Push();
    Matrix_MultVec3f(&spB0, &this->centerManeHead);
    //temp_s0_2 = this->fireManeRot;
    func_808D02DC(globalCtx, this, this->centerManePos, this->fireManeRot, this->centerManeScale, 0);
    Matrix_Pull();
    // gfxCtx->polyXlu.p++;
    // gfxCtx->polyOpa.p->words.w0 = 0xFA000000;
    // gfxCtx->polyOpa.p->words.w1 = ((( (u8) this->rightManeColor & 0xFF) << 0x10) | 0xFF000000) | 0xFF;
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, (u8) this->rightManeColor, 0x00, 0xFF);
    Matrix_Push();
    Matrix_MultVec3f(&spA4, &this->rightManeHead);
    func_808D02DC(globalCtx, this, this->rightManePos, this->fireManeRot, this->rightManeScale, 1);
    Matrix_Pull();
    // gfxCtx->polyOpa.p++;
    // gfxCtx->polyOpa.p->words.w0 = 0xFA000000;
    // gfxCtx->polyOpa.p->words.w1 = ((((u8) this->leftManeColor & 0xFF) << 0x10) | 0xFF000000) | 0xFF;
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, (u8) this->leftManeColor, 0x00, 0xFF);
    Matrix_Push();
    spA4.x *= -1.0f;
    Matrix_MultVec3f(&spA4, &this->leftManeHead);
    func_808D02DC(globalCtx, this, this->leftManePos, this->fireManeRot, this->leftManeScale, 2);
    Matrix_Pull();
    Matrix_Pull();
    osSyncPrintf("END\n");
    Graph_CloseDisps(disprefs, gfxCtx, "../z_boss_fd.c", 0x137B);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D08F8.s")
#endif


//#ifdef NON_MATCHING
// WIP by Maide
// void func_808D08F8(GlobalContext *globalCtx, BossFd *this) {
// s16 idx;
// f32 tmpf1;
// Vec3f spB0;
// Vec3f spA4;

// Mtx* mat = Graph_Alloc(globalCtx->state.gfxCtx, 18 * sizeof(Mtx));
// GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
// Gfx* dispRefs[4];

// Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x11ED);
// if (this->damageFlashTimer != 0) {
// gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_808D1BB8[this->eyeState]));
// }

// gSPSegment(gfxCtx->polyOpa.p++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0,
// this->unk254, this->unk258, 0x20, 0x20, 1, this->unk25C, this->unk260, 0x20, 0x20));
// gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
// gDPSetEnvColor(gfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, this->unk270);

// osSyncPrintf("LH\n");
// Matrix_Push();
// idx = D_808D1AC4[this->leadBodySegment] % 0x64;
// Matrix_Translate(this->centerManePos[idx].x, this->centerManePos[idx].y, this->centerManePos[idx].z, 0);
// Matrix_RotateY(this->bodySegmentsPos[idx].y, 1);
// Matrix_RotateX(-this->bodySegmentsPos[idx].x, 1);
// Matrix_Translate(-13.0f, -5.0f, 13.0f, 1);
// Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
// SkelAnime_Draw(globalCtx, this->skelAnime2.skeleton, this->skelAnime2.limbDrawTbl, func_808D00A4, 0, &this->actor);
// Matrix_Pull();
// osSyncPrintf("RH\n");
// Matrix_Push();
// idx = D_808D1AC4[this->leadBodySegment] % 0x64;
// Matrix_Translate(this->centerManePos[idx].x, this->centerManePos[idx].y, this->centerManePos[idx].z, 0);
// Matrix_RotateY(this->bodySegmentsPos[idx].y, 1);
// Matrix_RotateX(-this->bodySegmentsPos[idx].x, 1);
// Matrix_Translate(13.0f, -5.0f, 13.0f, 1);
// Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
// SkelAnime_Draw(globalCtx, this->skelAnime3.skeleton, this->skelAnime3.limbDrawTbl, func_808D01C0, 0, &this->actor);
// Matrix_Pull();
// osSyncPrintf("BD\n");

// gSPSegment(gfxCtx->polyOpa.p++, 0x0D, mat);
// Matrix_Push();

// for (i = 0; i < 18; i++) {
// idx = (D_808D1AC2[i] + this->leadBodySegment) % 0x64;
// Matrix_Translate(this->centerManePos[idx].x, this->centerManePos[idx].y, this->centerManePos[idx].z, 0);
// Matrix_RotateY(this->bodySegmentsPos[idx].y, 1);
// Matrix_RotateX(-this->bodySegmentsPos[idx].z, 1);
// Matrix_Translate(0.0f, 0.0f, 35.0f, 1);
// Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
// if (i < this->damageFlashTimer) {
// Matrix_Scale((this->unk280 * Math_Sins((this->leadBodySegment * 5000.0f) + (i * 7000.0f))) + 1.0f, (this->unk280 *
// Math_Sins((this->leadBodySegment * 5000.0f) + (i * 7000.0f))) + 1.0f, 1.0f, 1); Matrix_RotateY(1.5707964f, 1);
// Matrix_ToMtx(mat, "../z_boss_fd.c", 0x126F);

// gSPMatrix(gfxCtx->polyOpa.p++, mat, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
// gSPDisplayList(gfxCtx->polyOpa.p++, D_808D1BC4[i]);
// } else {
// Vec3f spFC;
// Vec3f spF0 = D_808D1C0C;
// Vec3f spE4;
// Vec3s spDC;
// f32 spD4;
// Actor* actorBall;

// if (this->unk_13D0[i] < 2) {
// spD4 = 0.1f;
// Matrix_Translate(0.0f, 0.0f, -1100.0f, 1);
// Matrix_RotateY(-M_PI, 1);
// if (i >= 14) {
// Matrix_Scale(1.0f - ((i - 14) * 0.2f), 1.0f - ((pi - 14) * 0.2f), 1.0f, 1);
// spD4 = 0.1f * (i * 2);
// }

// Matrix_Scale(0.1f, 0.1f, 0.1f, 1);
// gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x12A0), G_MTX_NOPUSH |
// G_MTX_LOAD | G_MTX_MODELVIEW); gSPDisplayList(gfxCtx->polyOpa.p++, D_0600B2F8); if (temp_s2->unk13D0 == 1) {
// temp_s2->unk13D0 = 2;
// Matrix_MultVec3f(&spF0, &spE4);
// Matrix_Get(&spFC);
// func_800D20CC(&spFC, &spDC, 0);
// actorBall = Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_VB_BALL, spE4, spE8, spEC,
// spDC, spDE, spE0, phi_s1 + 0xC8); actorBall->actor.scale.x *= spD4; actorBall->actor.scale.y *= spD4;
// actorBall->actor.scale.z *= 0.1f;
// }
// }
// }

// if (i > 0) {
// func_800628A4(i + 1, &this->collider1);
// }
// }

// Matrix_Pull();
// osSyncPrintf("BH\n");

// gDPPipeSync(gfxCtx->polyOpa.p++);
// gDPSetEnvColor(gfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, this->unk_274);

// Matrix_Push();
// if (this->actionState >= 0xCC) {
// tmpf1 = -20.0f;
// } else {
// tmpf1 = -10.0f - ((this->actor.speedXZ - 5.0f) * 10.0f);
// }

// idx = D_808D1AC0[this->leadBodySegment] % 0x64;
// Matrix_Translate(this->centerManePos[idx].x, this->centerManePos[idx].y, this->centerManePos[idx].z, 0);
// Matrix_RotateY(this->bodySegmentsPos[idx].y, 1);
// Matrix_RotateX(-this->bodySegmentsPos[idx].x, 1);
// Matrix_RotateZ((this->actor.shape.rot.z / 32768.0f) * 3.1415927f, 1);
// Matrix_Translate(0.0f, 0.0f, tmpf1, 1);
// Matrix_Push();
// Matrix_Translate(0.0f, 0.0f, 25.0f, 1);
// osSyncPrintf("BHC\n");
// func_800628A4(0, sp7C);
// Matrix_Pull();
// osSyncPrintf("BHCE\n");
// Matrix_Scale(this->actor.scale.x * 0.1f, this->actor.scale.y * 0.1f, this->actor.scale.z * 0.1f, 1);
// SkelAnime_Draw(globalCtx, this->skelAnime1.skeleton, this->skelAnime1.limbDrawTbl, func_808D07A4, &func_808D08A4,
// &this->actor); osSyncPrintf("SK\n"); spB0 = D_808D1C18; spA4 = D_808D1C24; func_80093D84(globalCtx->state.gfxCtx);

// gSPDisplayList(gfxCtx->polyOpa.p++, 0x06009168);
// gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, this->unk_284, 0x00, 0xFF);

// Matrix_Push();
// Matrix_MultVec3f(&spB0, &this->centerManePos[0x28]);
// temp_s0_2 = this + 0xC9C;
// func_808D02DC(globalCtx, this, this->centerManePos, temp_s0_2, this + 0xF6C, 0);
// Matrix_Pull();
// temp_v1_3 = temp_s4->polyXlu.p;
// temp_s4->polyXlu.p = temp_v1_3 + 8;
// temp_v1_3->words.w0 = 0xFA000000;
// temp_v1_3->words.w1 = (((this->unk288 & 0xFF) << 0x10) | 0xFF000000) | 0xFF;
// Matrix_Push();
// Matrix_MultVec3f(&spA4, this + 0x11D0);
// func_808D02DC(globalCtx, this, this + 0xFF0, temp_s0_2, this + 0x1158, 1);
// Matrix_Pull();
// temp_v1_4 = temp_s4->polyXlu.p;
// temp_s4->polyXlu.p = temp_v1_4 + 8;
// temp_v1_4->words.w0 = 0xFA000000;
// temp_v1_4->words.w1 = (((this->unk28C & 0xFF) << 0x10) | 0xFF000000) | 0xFF;
// Matrix_Push();
// temp_a0_2 = &spA4;
// spA4 = spA4 * -1.0f;
// Matrix_MultVec3f(temp_a0_2, this + 0x13BC);
// func_808D02DC(globalCtx, this, this + 0x11DC, temp_s0_2, this + 0x1344, 2);
// Matrix_Pull();
// Matrix_Pull();
// osSyncPrintf("END\n");
// Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd.c", 0x137B);
// }
//#else
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Fd/func_808D08F8.s")
//#endif
