/*
 * File: z_boss_va.c
 * Overlay: ovl_Boss_Va
 * Description: Barinade
 */

#include "z_boss_va.h"
#include "overlays/actors/ovl_En_Boom/z_en_boom.h"

#define FLAGS 0x00000035

#define THIS ((BossVa*)thisx)
#define BODY ((BossVa*)this->actor.parent)
#define vaGorePulse offset.x
#define vaGorePulseRate offset.y
#define vaBariFlags timer2
#define vaBariUnused headRot
#define vaCamRotMod headRot.x
#define vaBodySpinRate headRot.y

// #define NON_MATCHING

#define PHASE_2 3
#define PHASE_3 9
#define PHASE_4 15
#define PHASE_DEATH 18

typedef struct BossVaParticle {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f velocity;
    /* 0x18 */ Vec3f accel;
    /* 0x24 */ u8 type;
    /* 0x26 */ u16 timer;
    /* 0x28 */ s16 mode;
    /* 0x2A */ Vec3s rot;
    /* 0x30 */ s16 primColor[4];
    /* 0x38 */ s16 envColor[4];
    /* 0x40 */ f32 scale;
    /* 0x44 */ f32 scaleMod;
    /* 0x48 */ Vec3f offset;
    /* 0x54 */ struct BossVa* parent;
} BossVaParticle; // size = 0x58

typedef enum BossVaParticleType {
    VA_NONE,
    VA_LARGE_SPARK,
    VA_BLAST_SPARK,
    VA_SMALL_SPARK,
    VA_SPARK_BALL,
    VA_ZAP_CHARGE,
    VA_BLOOD,
    VA_TUMOR,
    VA_GORE
} BossVaParticleType;

typedef enum BossVaSparkMode {
    SPARK_TETHER = 1,
    SPARK_BARI,
    SPARK_BLAST,
    SPARK_UNUSED,
    SPARK_BODY,
    SPARK_LINK
} BossVaSparkMode;

typedef enum BossVaBloodMode { BLOOD_DROPLET, BLOOD_SPLATTER, BLOOD_SPOT } BossVaBloodMode;

typedef enum BossVaTumorMode { TUMOR_UNUSED, TUMOR_BODY, TUMOR_ARM } BossVaTumorMode;

typedef enum BossVaGoreMode { GORE_PERMANENT, GORE_FLOOR, GORE_FADING } BossVaGoreMode;

typedef enum BossVaCutscene {
    INTRO_UNUSED_START = -5,
    INTRO_START,
    INTRO_LOOK_DOOR,
    INTRO_CLOSE_DOOR,
    INTRO_DOOR_SHUT,
    INTRO_CRACKLE,
    INTRO_SPAWN_BARI,
    INTRO_LOOK_BARI,
    INTRO_REVERSE_CAMERA,
    INTRO_SUPPORT_CAMERA,
    INTRO_BODY_SOUND,
    INTRO_LOOK_SUPPORT,
    INTRO_UNUSED_CALL_BARI,
    INTRO_CALL_BARI,
    INTRO_ATTACH_BARI,
    INTRO_TITLE,
    INTRO_BRIGHTEN,
    INTRO_FINISH,
    BOSSVA_BATTLE,
    DEATH_START,
    DEATH_BODY_TUMORS,
    DEATH_ZAPPER_1,
    DEATH_ZAPPER_2,
    DEATH_ZAPPER_3,
    DEATH_SHELL_BURST,
    DEATH_CORE_TUMORS,
    DEATH_CORE_DEAD,
    DEATH_CORE_BURST,
    DEATH_MUSIC,
    DEATH_FINISH
} BossVaCutscene;

void BossVa_Init(Actor* thisx, GlobalContext* globalCtx);
void BossVa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossVa_Update(Actor* thisx, GlobalContext* globalCtx);
void BossVa_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossVa_UpdateParticles(GlobalContext* globalCtx);
void BossVa_DrawParticles(BossVaParticle* ptr, GlobalContext* globalCtx);
void BossVa_DrawDoor(GlobalContext* globalCtx, s16 scale);

void BossVa_SetupIntro(BossVa* this);
void BossVa_SetupBodyPhase1(BossVa* this);
void BossVa_SetupBodyPhase2(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBodyPhase3(BossVa* this);
void BossVa_SetupBodyPhase4(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBodyDeath(BossVa* this, GlobalContext* globalCtx);

void BossVa_SetupSupportIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupSupportAttached(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupSupportCut(BossVa* this, GlobalContext* globalCtx);

void BossVa_SetupZapperIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupZapperAttack(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupZapperEnraged(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupZapperDamaged(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupZapperHold(BossVa* this, GlobalContext* globalCtx);

void BossVa_SetupStump(BossVa* this, GlobalContext* globalCtx);

void BossVa_SetupDoor(BossVa* this, GlobalContext* globalCtx);

void BossVa_SetupBariIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBariPhase2Attack(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBariPhase3Attack(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBariPhase3Stunned(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBariDeath(BossVa* this);

void BossVa_BodyIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyPhase1(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyPhase2(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyPhase3(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyPhase4(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyDeath(BossVa* this, GlobalContext* globalCtx);

void BossVa_SupportIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_SupportAttached(BossVa* this, GlobalContext* globalCtx);
void BossVa_SupportCut(BossVa* this, GlobalContext* globalCtx);

void BossVa_ZapperIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperAttack(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperEnraged(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperDamaged(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperHold(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperDeath(BossVa* this, GlobalContext* globalCtx);

void BossVa_Stump(BossVa* this, GlobalContext* globalCtx);

void BossVa_Door(BossVa* this, GlobalContext* globalCtx);

void BossVa_BariIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_BariPhase3Attack(BossVa* this, GlobalContext* globalCtx);
void BossVa_BariPhase2Attack(BossVa* this, GlobalContext* globalCtx);
void BossVa_BariPhase3Stunned(BossVa* this, GlobalContext* globalCtx);
void BossVa_BariDeath(BossVa* this, GlobalContext* globalCtx);

void BossVa_SpawnBloodSplatter(GlobalContext* globalCtx, BossVaParticle* ptr, Vec3f* pos, s16 yaw, s16 scale);
void BossVa_SpawnGore(GlobalContext* globalCtx, BossVaParticle* ptr, Vec3f* pos, s16 yaw, s16 scale);
void BossVa_SpawnSpark(GlobalContext* globalCtx, BossVaParticle* ptr, BossVa* this, Vec3f* offset, s16 scale, u8 mode);
void BossVa_SpawnZapperCharge(GlobalContext* globalCtx, BossVaParticle* ptr, BossVa* this, Vec3f* pos, Vec3s* rot,
                              s16 scale, u8 mode);
void BossVa_SpawnTumor(GlobalContext* globalCtx, BossVaParticle* ptr, BossVa* this, Vec3f* offset, s16 scale, u8 mode);
void BossVa_SpawnSparkBall(GlobalContext* globalCtx, BossVaParticle* ptr, BossVa* this, Vec3f* offset, s16 scale,
                           u8 mode);
void BossVa_SpawnBloodDroplets(GlobalContext* globalCtx, BossVaParticle* ptr, Vec3f* pos, s16 scale, s16 phase,
                               s16 yaw);
void BossVa_Tumor(GlobalContext* globalCtx, BossVa* this, s32 count, s16 scale, f32 xzSpread, f32 ySpread, u8 mode,
                  f32 range, u8 fixed);

extern SkeletonHeader D_06015B18;
extern SkeletonHeader D_06017498;
extern SkeletonHeader D_060199A0;
extern SkeletonHeader D_06018870;
extern SkeletonHeader D_06004E70;
extern AnimationHeader D_06005184;
extern AnimationHeader D_060166A8;
extern AnimationHeader D_06018D18;
extern AnimationHeader D_06018150;
extern AnimationHeader D_06000024;
extern AnimationHeader D_060162AC;
extern AnimationHeader D_060164B0;
extern AnimationHeader D_06017694;
extern AnimationHeader D_060177F4;
extern SkeletonHeader D_06017FC8;
extern AnimationHeader D_06018A68;
extern AnimationHeader D_06018B90;
extern Gfx D_06008D70[];
extern Gfx D_06008BB8[];
extern Gfx D_06000FA0[];
extern Gfx D_060156A0[];
extern Gfx D_06015710[];
extern Gfx D_06011738[];
extern Gfx D_06011768[];
extern Gfx D_06009430[];
extern Gfx D_06009468[];
extern Gfx D_060128B8[];
extern Gfx D_06012948[];
extern Gfx D_06012BA0[];
extern Gfx D_06012C50[];
extern Gfx D_060135B0[];
extern Gfx D_06013638[];
extern Gfx D_06008F08[];
extern Gfx D_06008F70[];
extern UNK_TYPE D_04055DB0;
extern UNK_TYPE D_06001230;

const ActorInit Boss_Va_InitVars = {
    ACTOR_BOSS_VA,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_BV,
    sizeof(BossVa),
    (ActorFunc)BossVa_Init,
    (ActorFunc)BossVa_Destroy,
    (ActorFunc)BossVa_Update,
    (ActorFunc)BossVa_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFEF, 0x03, 0x08 }, { 0x00000010, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 85, 120, 0, { 0, 0, 0 } },
};

static ColliderJntSphItemInit sJntSphElementsInitSupport[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000010, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { 0, { { 0, 0, 0 }, 25 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInitSupport = {
    { COLTYPE_UNK6, 0x00, 0x09, 0x00, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphElementsInitSupport,
};

static ColliderJntSphItemInit sJntSphElementsInitBari[1] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x03, 0x04 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x00 },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInitBari = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x00, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphElementsInitBari,
};

static ColliderQuadInit sQuadInit = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0x20000000, 0x03, 0x04 }, { 0x00000010, 0x00, 0x00 }, 0x81, 0x01, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static Vec3f sInitPosOffsets[] = {
    { 0.0f, 175.35f, 0.0f },       // Support 1
    { 0.0f, 175.35f, 0.0f },       // Support 2
    { 0.0f, 175.35f, 0.0f },       // Support 3
    { 120.0f, 103.425f, -67.0f },  // Zapper 1
    { 0.0f, 103.425f, 140.0f },    // Zapper 2
    { -120.0f, 103.425f, -70.0f }, // Zapper 3
    { -2.0f, 16.0f, 50.0f },       // Upper Bari 1
    { 48.0f, 16.0f, 15.0f },       // Upper Bari 2
    { 25.0f, 16.0f, -36.0f },      // Upper Bari 3
    { -29.0f, 16.0f, -36.0f },     // Upper Bari 4
    { -63.0f, 16.0f, 22.0f },      // Upper Bari 5
    { 0.0f, -10.0f, -64.0f },      // Lower Bari 1
    { 63.0f, -10.0f, -22.0f },     // Lower Bari 2
    { 35.0f, -10.0f, 46.0f },      // Lower Bari 3
    { -36.0f, -10.0f, 46.0f },     // Lower Bari 4
    { -49.0f, -10.0f, -17.0f },    // Lower Bari 5
    { 0.0f, 160.0f, 370.0f },      // Upper Bari 1 CS
    { 65.0f, 35.0f, 370.0f },      // Upper Bari 2 CS
    { 80.0f, 70.0f, -130.0f },     // Upper Bari 3 CS
    { -160.0f, 100.0f, -130.0f },  // Upper Bari 4 CS
    { -150.0f, 130.0f, 0.0f },     // Upper Bari 5 CS
    { 230.0f, 0.0f, 0.0f },        // Lower Bari 1 CS
    { 60.0f, 140.0f, 0.0f },       // Lower Bari 2 CS
    { 0.0f, 40.0f, 270.0f },       // Lower Bari 3 CS
    { -100.0f, 10.0f, 200.0f },    // Lower Bari 4 CS
    { -90.0f, 70.0f, -310.0f },    // Lower Bari 5 CS
};

static Vec3s sInitRot[] = {
    { 0x1FFE, 0x0000, 0x0000 }, { 0x1FFE, 0x5550, 0x0000 }, { 0x1FFE, 0xAAB0, 0x0000 }, { 0xD558, 0x5550, 0x0000 },
    { 0xD558, 0x0000, 0x0000 }, { 0xD558, 0xAAB0, 0x0000 }, { 0x2AA8, 0xFCCC, 0x0000 }, { 0x2AA8, 0x3330, 0x0000 },
    { 0x2AA8, 0x6660, 0x0000 }, { 0x2AA8, 0x99A0, 0x0000 }, { 0x2AA8, 0xCCD0, 0x0000 }, { 0x4C98, 0x81D0, 0x0000 },
    { 0x4C98, 0x4F70, 0x0000 }, { 0x4C98, 0x1758, 0x0000 }, { 0x4C98, 0xE8A8, 0x0000 }, { 0x4C98, 0xB648, 0x0000 },
};

static Vec3f sWarpPos[] = {
    { 10.0f, 0.0f, 30.0f },
    { 260.0f, 0.0f, -470.0f },
    { -240.0f, 0.0f, -470.0f },
};

static DamageTable sDamageTable[] = {
    0x10, 0x02, 0x01, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x02, 0xE0, 0x60, 0xD0, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };
static u8 sKillBari = 0;
static u8 sBodyBari[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
static s16 sCsCamera = 0;

static BossVaParticle sVaParticles[400];
static u8 sBodyState;
static u8 sFightProgress;
static s8 sCsState;
static Vec3f sCameraEye;
static Vec3f sCameraAt;
static Vec3f sCameraNextEye;
static Vec3f sCameraNextAt;
static Vec3f sCameraEyeMaxVel;
static Vec3f sCameraAtMaxVel;
static s16 sDoorState;
static u8 sPhase3Stop;
static Vec3s sZapperRot;
static u16 sPhase2Timer;
static s8 sPhase4HP;

void BossVa_SetupAction(BossVa* this, BossVaActionFunc func) {
    this->actionFunc = func;
}

void BossVa_AttachToBody(BossVa* this) {
    BossVa* vaBody = BODY;

    Matrix_Translate(vaBody->actor.posRot.pos.x, vaBody->actor.posRot.pos.y, vaBody->actor.posRot.pos.z, MTXMODE_NEW);
    Matrix_RotateRPY(vaBody->actor.shape.rot.x, 0, vaBody->actor.shape.rot.z, MTXMODE_APPLY);
    Matrix_MultVec3f(&sInitPosOffsets[this->actor.params], &this->actor.posRot.pos);

    switch (this->actor.params) {
        case BOSSVA_SUPPORT_1:
        case BOSSVA_SUPPORT_2:
        case BOSSVA_SUPPORT_3:
            if (!this->onCeiling) {
                this->actor.shape.rot.x = sInitRot[this->actor.params].x + vaBody->actor.shape.rot.x;
                this->actor.shape.rot.y = sInitRot[this->actor.params].y;
                this->actor.shape.rot.z = sInitRot[this->actor.params].z + vaBody->actor.shape.rot.z;
            }
            break;

        case BOSSVA_ZAPPER_1:
        case BOSSVA_ZAPPER_2:
        case BOSSVA_ZAPPER_3:
            this->actor.shape.rot.y = sInitRot[this->actor.params].y;
            this->actor.shape.rot.x = (sInitRot[this->actor.params].x +
                                       (s16)(Math_Coss(sInitRot[this->actor.params].y) * vaBody->actor.shape.rot.x)) -
                                      (s16)(Math_Sins(sInitRot[this->actor.params].y) * vaBody->actor.shape.rot.z);
            this->actor.shape.rot.z = (s16)(Math_Coss(sInitRot[this->actor.params].y) * vaBody->actor.shape.rot.z) +
                                      (sInitRot[this->actor.params].z +
                                       (s16)(Math_Sins(sInitRot[this->actor.params].y) * vaBody->actor.shape.rot.x));
            break;
    }

    this->actor.posRot.rot = this->actor.shape.rot;
    this->actor.shape.unk_08 = BODY->actor.shape.unk_08;
}

void BossVa_BloodDroplets(GlobalContext* globalCtx, Vec3f* pos, s16 phase, s16 yaw) {
    s32 i;
    Vec3f spawnPos;

    for (i = 2; i > 0; i--) {
        spawnPos.x = Math_Rand_CenteredFloat(10.0f) + pos->x;
        spawnPos.y = pos->y - (Math_Rand_ZeroOne() * 15.0f);
        spawnPos.z = Math_Rand_CenteredFloat(10.0f) + pos->z;
        BossVa_SpawnBloodDroplets(globalCtx, sVaParticles, &spawnPos, 65, phase, yaw);
    }
}

void BossVa_BloodSplatter(GlobalContext* globalCtx, BossVaParticle* src, s16 yaw, s16 scale, s32 count) {
    s32 i;
    Vec3f pos;

    for (i = count; i > 0; i--) {
        pos.x = Math_Rand_CenteredFloat(10.0f) + src->pos.x;
        pos.y = src->pos.y - (Math_Rand_ZeroOne() * 15.0f);
        pos.z = Math_Rand_CenteredFloat(10.0f) + src->pos.z;
        BossVa_SpawnBloodSplatter(globalCtx, sVaParticles, &pos, (s16)Math_Rand_CenteredFloat(26000.0f) + yaw, scale);
    }
}

void BossVa_Gore(GlobalContext* globalCtx, BossVaParticle* src, s16 yaw, s16 scale) {
    s32 i;
    Vec3f pos;

    for (i = (sCsState <= DEATH_SHELL_BURST) ? 2 : 1; i > 0; i--) {
        pos.x = Math_Rand_CenteredFloat(10.0f) + src->pos.x;
        pos.y = Math_Rand_CenteredFloat(10.0f) + src->pos.y;
        pos.z = Math_Rand_CenteredFloat(10.0f) + src->pos.z;
        BossVa_SpawnGore(globalCtx, sVaParticles, &pos, (s16)Math_Rand_CenteredFloat(26000.0f) + yaw, scale);
    }
}

void BossVa_Spark(GlobalContext* globalCtx, BossVa* this, s32 count, s16 scale, f32 xzSpread, f32 ySpread, u8 mode,
                  f32 range, u8 fixed) {
    s32 i;
    s16 index;
    Vec3f offset;

    for (i = count; i > 0; i--) {
        if (!fixed) {
            index = Math_Rand_ZeroOne() * (range - 0.6f);
        } else {
            index = range - 0.6f;
        }
        offset.x = Math_Rand_CenteredFloat(xzSpread) + this->effectPos[index].x - this->actor.posRot.pos.x;
        offset.y = Math_Rand_CenteredFloat(ySpread) + this->effectPos[index].y - this->actor.posRot.pos.y;
        offset.z = Math_Rand_CenteredFloat(xzSpread) + this->effectPos[index].z - this->actor.posRot.pos.z;
        BossVa_SpawnSpark(globalCtx, sVaParticles, this, &offset, scale, mode);
    }
}

void BossVa_Tumor(GlobalContext* globalCtx, BossVa* this, s32 count, s16 scale, f32 xzSpread, f32 ySpread, u8 mode,
                  f32 range, u8 fixed) {
    s16 index;
    s32 i;
    Vec3f offset;

    for (i = count; i > 0; i--) {
        if (!fixed) {
            index = Math_Rand_ZeroOne() * (range - 0.6f);
        } else {
            index = range - 0.6f;
        }

        offset.x = Math_Rand_CenteredFloat(xzSpread) + this->effectPos[index].x - this->actor.posRot.pos.x;
        offset.y = Math_Rand_CenteredFloat(ySpread) + this->effectPos[index].y - this->actor.posRot.pos.y;
        offset.z = Math_Rand_CenteredFloat(xzSpread) + this->effectPos[index].z - this->actor.posRot.pos.z;
        BossVa_SpawnTumor(globalCtx, sVaParticles, this, &offset, scale, mode);
    }
}

void BossVa_SetSparkEnv(GlobalContext* globalCtx) {
    globalCtx->envCtx.unk_8C[0][0] = 0xA;
    globalCtx->envCtx.unk_8C[0][1] = 0xA;
    globalCtx->envCtx.unk_8C[0][2] = 0xA;
    globalCtx->envCtx.unk_8C[1][0] = 0x73;
    globalCtx->envCtx.unk_8C[1][1] = 0x41;
    globalCtx->envCtx.unk_8C[1][2] = 0x64;
    globalCtx->envCtx.unk_8C[2][0] = 0x78;
    globalCtx->envCtx.unk_8C[2][1] = 0x78;
    globalCtx->envCtx.unk_8C[2][2] = 0x46;
}

void BossVa_SetDeathEnv(GlobalContext* globalCtx) {
    globalCtx->envCtx.unk_8C[2][0] = 0xDC;
    globalCtx->envCtx.unk_8C[2][1] = 0xDC;
    globalCtx->envCtx.unk_8C[2][2] = 0x96;
    globalCtx->envCtx.unk_9E = -0x3E8;
    globalCtx->envCtx.unk_A0 = -0x384;
    globalCtx->envCtx.unk_8C[0][0] = 0xC8;
    globalCtx->envCtx.unk_8C[0][1] = 0xC8;
    globalCtx->envCtx.unk_8C[0][2] = 0xC8;
    globalCtx->envCtx.unk_8C[1][0] = 0xD7;
    globalCtx->envCtx.unk_8C[1][1] = 0xA5;
    globalCtx->envCtx.unk_8C[1][2] = 0xC8;
    globalCtx->envCtx.unk_E2[0] = 0xDC;
    globalCtx->envCtx.unk_E2[1] = 0xDC;
    globalCtx->envCtx.unk_E2[2] = 0x96;
    globalCtx->envCtx.unk_E2[3] = 0x64;
}

EnBoom* BossVa_FindBoomerang(GlobalContext* globalCtx) {
    Actor* misc = globalCtx->actorCtx.actorList[ACTORTYPE_MISC].first;

    while (misc != NULL) {
        if (misc->id != ACTOR_EN_BOOM) {
            misc = misc->next;
            continue;
        }
        return (EnBoom*)misc;
    }
    return NULL;
}

void BossVa_KillBari(BossVa* this, GlobalContext* globalCtx) {
    s32 i;
    s16 scale;
    Vec3f pos;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.0f, 0.0f };

    for (i = 7; i >= 0; i--) {
        pos.x = Math_Rand_CenteredFloat(60.0f) + this->actor.posRot.pos.x;
        pos.y = Math_Rand_CenteredFloat(50.0f) +
                (this->actor.posRot.pos.y + (this->actor.shape.unk_08 * this->actor.scale.y));
        pos.z = Math_Rand_CenteredFloat(60.0f) + this->actor.posRot.pos.z;
        velocity.y = Math_Rand_ZeroOne() + 1.0f;
        scale = Math_Rand_S16Offset(80, 100);
        if (Math_Rand_ZeroOne() < 0.7f) {
            EffectSsDtBubble_SpawnColorProfile(globalCtx, &pos, &velocity, &accel, scale, 25, 2, 1);
        } else {
            EffectSsDtBubble_SpawnColorProfile(globalCtx, &pos, &velocity, &accel, scale, 25, 0, 1);
        }
    }

    sFightProgress++;
    BossVa_SetupBariDeath(this);
}

void BossVa_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossVa* this = THIS;
    s32 i;
    s16 warpId;

    Actor_SetScale(&this->actor, 0.1f);
    this->actor.unk_1F = 5;
    this->actor.colChkInfo.mass = 0xFF;

    switch (this->actor.params) {
        case BOSSVA_BODY:
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_06015B18, &D_06005184, NULL, NULL, 0);
            this->actor.flags |= 0x1000000;
            break;
        case BOSSVA_SUPPORT_1:
        case BOSSVA_SUPPORT_2:
        case BOSSVA_SUPPORT_3:
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06017498, &D_060166A8, NULL, NULL, 0);
            break;
        case BOSSVA_ZAPPER_1:
        case BOSSVA_ZAPPER_2:
        case BOSSVA_ZAPPER_3:
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060199A0, &D_06018D18, NULL, NULL, 0);
            break;
        case BOSSVA_STUMP_1:
        case BOSSVA_STUMP_2:
        case BOSSVA_STUMP_3:
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06018870, &D_06018150, NULL, NULL, 0);
            break;
        default:
            this->actor.flags |= 0x1000000;
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_06004E70, &D_06000024, NULL, NULL, 0);
            this->actor.shape.unk_08 = 400.0f;
            break;
        case BOSSVA_DOOR:
            break;
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->onCeiling = false;
    this->actor.naviEnemyId = 0x14;

    switch (this->actor.params) {
        case BOSSVA_BODY:
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA, 0.0f, 80.0f, 400.0f, 0, 0,
                               0, BOSSVA_DOOR);
            if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
                warpId = ACTOR_EN_RU1;
                if (gSaveContext.eventChkInf[3] & 0x80) {
                    warpId = ACTOR_DOOR_WARP1;
                }
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, warpId, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                            this->actor.posRot.pos.z, 0, 0, 0, 0);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.posRot.pos.x + 160.0f,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
                sDoorState = 100;
                Actor_Kill(&this->actor);
            } else {
                this->actor.colChkInfo.damageTable = sDamageTable;
                sPhase2Timer = 0xFFFF;
                if (gSaveContext.eventChkInf[7] & 0x40) {
                    sCsState = INTRO_CALL_BARI;
                    sDoorState = 100;
                    func_8002DF54(globalCtx, &this->actor, 1);
                    globalCtx->envCtx.unk_E2[0] = 0xDC;
                    globalCtx->envCtx.unk_E2[1] = 0xDC;
                    globalCtx->envCtx.unk_E2[2] = 0xBE;
                    globalCtx->envCtx.unk_E2[3] = 0xD2;
                    func_80064520(globalCtx, &globalCtx->csCtx);
                    sCsCamera = Gameplay_CreateSubCamera(globalCtx);
                    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                    Gameplay_ChangeCameraStatus(globalCtx, sCsCamera, 7);
                    sCameraNextEye.x = sCameraEye.x = 140.0f;
                    sCameraNextEye.y = sCameraEye.y = 205.0f;
                    sCameraNextEye.z = sCameraEye.z = -20.0f;
                    sCameraNextAt.x = sCameraAt.x = 10.0f;
                    sCameraNextAt.y = sCameraAt.y = 50.0f;
                    sCameraNextAt.z = sCameraAt.z = -220.0f;
                    func_800C04D8(globalCtx, sCsCamera, &sCameraAt, &sCameraEye);
                    this->timer = 20;

                    for (i = BOSSVA_BARI_LOWER_5; i >= BOSSVA_BARI_UPPER_1; i--) {
                        Actor_SpawnAsChild(
                            &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA,
                            sInitPosOffsets[i].x + this->actor.posRot.pos.x, sInitPosOffsets[i].y + this->actor.posRot.pos.y,
                            sInitPosOffsets[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
                            sInitRot[i].y + this->actor.posRot.rot.y, sInitRot[i].z + this->actor.posRot.rot.z, i);
                    }

                    sCameraAtMaxVel = sCameraEyeMaxVel = sZeroVec;

                } else {
                    sCsState = INTRO_START;
                    sDoorState = 5;
                }

                this->zapHeadPos.x = 1.0f;
                Collider_InitCylinder(globalCtx, &this->colliderBody);
                Collider_SetCylinder(globalCtx, &this->colliderBody, &this->actor, &sCylinderInit);

                for (i = BOSSVA_ZAPPER_3; i >= BOSSVA_SUPPORT_1; i--) {
                    Actor_SpawnAsChild(
                        &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA,
                        sInitPosOffsets[i].x + this->actor.posRot.pos.x, sInitPosOffsets[i].y + this->actor.posRot.pos.y,
                        sInitPosOffsets[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
                        sInitRot[i].y + this->actor.posRot.rot.y, sInitRot[i].z + this->actor.posRot.rot.z, i);
                }

                Lib_MemSet((u8*)sVaParticles, 400 * sizeof(BossVaParticle), 0);
                if (sCsState < BOSSVA_BATTLE) {
                    BossVa_SetupIntro(this);
                } else {
                    BossVa_SetupBodyPhase1(this);
                }
            }
            break;
        case BOSSVA_SUPPORT_1:
        case BOSSVA_SUPPORT_2:
        case BOSSVA_SUPPORT_3:
            Collider_InitJntSph(globalCtx, &this->colliderSph);
            Collider_SetJntSph(globalCtx, &this->colliderSph, &this->actor, &sJntSphInitSupport, this->elements);
            if (sCsState < BOSSVA_BATTLE) {
                BossVa_SetupSupportIntro(this, globalCtx);
            } else {
                BossVa_SetupSupportAttached(this, globalCtx);
            }
            this->onCeiling++;
            break;
        case BOSSVA_ZAPPER_1:
        case BOSSVA_ZAPPER_2:
        case BOSSVA_ZAPPER_3:
            Collider_InitQuad(globalCtx, &this->colliderLightning);
            Collider_SetQuad(globalCtx, &this->colliderLightning, &this->actor, &sQuadInit);
            if (sCsState < BOSSVA_BATTLE) {
                BossVa_SetupZapperIntro(this, globalCtx);
            } else {
                BossVa_SetupZapperAttack(this, globalCtx);
            }
            break;
        case BOSSVA_STUMP_1:
        case BOSSVA_STUMP_2:
        case BOSSVA_STUMP_3:
            BossVa_SetupStump(this, globalCtx);
            break;
        case BOSSVA_DOOR:
            BossVa_SetupDoor(this, globalCtx);
            break;
        default:
            Collider_InitJntSph(globalCtx, &this->colliderSph);
            Collider_SetJntSph(globalCtx, &this->colliderSph, &this->actor, &sJntSphInitBari, this->elements);
            Collider_InitQuad(globalCtx, &this->colliderLightning);
            Collider_SetQuad(globalCtx, &this->colliderLightning, &this->actor, &sQuadInit);
            this->unk_1D8.x = 1.0f;
            this->unk_1D8.y = 1.0f;
            if (sCsState < BOSSVA_BATTLE) {
                BossVa_SetupBariIntro(this, globalCtx);
            } else if (sFightProgress >= PHASE_3) {
                BossVa_SetupBariPhase3Attack(this, globalCtx);
            } else {
                BossVa_SetupBariPhase2Attack(this, globalCtx);
            }
            break;
    }
}

void BossVa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossVa* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->colliderSph);
    Collider_DestroyCylinder(globalCtx, &this->colliderBody);
}

void BossVa_SetupIntro(BossVa* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_06005184.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005184, 1.0f, frames, frames, 2, 0.0f);
    this->actor.shape.unk_08 = -450.0f;
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_BodyIntro);
}

void BossVa_BodyIntro(BossVa* this, GlobalContext* globalCtx) {
    s32 i;
    Player* player = PLAYER;

    this->unk_1AC += 0xC31;
    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;

    switch (sCsState) {
        case INTRO_UNUSED_START:
            this->timer--;
            if (this->timer == 0) {
                sCsState = INTRO_CLOSE_DOOR;
                this->timer = 10;
            }
            break;
        case INTRO_START:
            globalCtx->envCtx.unk_E2[0] = 0xDC;
            globalCtx->envCtx.unk_E2[1] = 0xDC;
            globalCtx->envCtx.unk_E2[2] = 0xBE;
            globalCtx->envCtx.unk_E2[3] = 0xD2;
            func_8002DF54(globalCtx, &this->actor, 8);
            player->actor.posRot.rot.y = player->actor.shape.rot.y = 0x7FFF;
            sCsState++;
            break;
        case INTRO_LOOK_DOOR:
            func_80064520(globalCtx, &globalCtx->csCtx);
            if (sCsCamera == 0) {
                sCsCamera = Gameplay_CreateSubCamera(globalCtx);
            }
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, sCsCamera, 7);

            sCameraNextEye.x = sCameraEye.x = 13.0f;
            sCameraNextEye.y = sCameraEye.y = 124.0f;
            sCameraNextEye.z = sCameraEye.z = 167.0f;

            sCameraNextAt.x = sCameraAt.x = player->actor.posRot.pos.x;
            sCameraNextAt.y = sCameraAt.y = player->actor.posRot.pos.y;
            sCameraNextAt.z = sCameraAt.z = player->actor.posRot.pos.z;

            sCameraAtMaxVel = sCameraEyeMaxVel = sZeroVec;

            this->timer = 10;
            sCsState++;
            break;
        case INTRO_CLOSE_DOOR:
            this->timer--;
            if (this->timer == 0) {
                func_8002DF54(globalCtx, &this->actor, 2);
                sCsState++;
                this->timer = 30;
            }
            break;
        case INTRO_DOOR_SHUT:
            this->timer--;
            if (this->timer == 0) {
                sCsState++;
            }
            if (Math_Rand_ZeroOne() < 0.1f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
            }
            break;
        case INTRO_CRACKLE:
            func_8002DF54(globalCtx, &this->actor, 1);
            sCsState++;
            break;
        case INTRO_SPAWN_BARI:
            func_80064520(globalCtx, &globalCtx->csCtx);
            if (sCsCamera == 0) {
                sCsCamera = Gameplay_CreateSubCamera(globalCtx);
            }
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, sCsCamera, 7);

            sCameraNextEye.x = sCameraEye.x = 13.0f;
            sCameraNextEye.y = sCameraEye.y = 124.0f;
            sCameraNextEye.z = sCameraEye.z = 167.0f;

            sCameraNextAt.x = sCameraAt.x = player->actor.posRot.pos.x;
            sCameraNextAt.y = sCameraAt.y = player->actor.posRot.pos.y;
            sCameraNextAt.z = sCameraAt.z = player->actor.posRot.pos.z;

            sCameraAtMaxVel = sCameraEyeMaxVel = sZeroVec;

            for (i = BOSSVA_BARI_LOWER_5; i >= BOSSVA_BARI_UPPER_1; i--) {
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA,
                                   sInitPosOffsets[i].x + this->actor.posRot.pos.x, sInitPosOffsets[i].y + this->actor.posRot.pos.y,
                                   sInitPosOffsets[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
                                   sInitRot[i].y + this->actor.posRot.rot.y, sInitRot[i].z + this->actor.posRot.rot.z,
                                   i);
            }

            this->timer = 90;
            sCsState++;
            break;
        case INTRO_REVERSE_CAMERA:
            sCameraNextEye.x = -92.0f;
            sCameraNextEye.y = 22.0f;
            sCameraNextEye.z = 360.0f;
            sCameraNextAt.x = 63.0f;
            sCameraNextAt.y = 104.0f;
            sCameraNextAt.z = 248.0f;
            Math_SmoothScaleMaxMinF(&sCameraEyeMaxVel.x, 7.0f, 0.3f, 0.7f, 0.05f);
            sCameraEyeMaxVel.z = sCameraEyeMaxVel.x;
            sCameraEyeMaxVel.y = sCameraEyeMaxVel.z;
            sCameraAtMaxVel = sCameraEyeMaxVel;

            this->timer--;
            if (this->timer == 0) {
                sCsState++;
                this->timer = 60;
            }
            break;
        case INTRO_SUPPORT_CAMERA:
            sCameraNextEye.x = sCameraEye.x = 140.0f;
            sCameraNextEye.y = sCameraEye.y = 205.0f;
            sCameraNextEye.z = sCameraEye.z = -20.0f;

            sCameraNextAt.x = sCameraAt.x = 10.0f;
            sCameraNextAt.y = sCameraAt.y = 247.0f;
            sCameraNextAt.z = sCameraAt.z = -220.0f;

            sCsState++;
            this->timer = 1;
            break;
        case INTRO_BODY_SOUND:
            sCameraNextAt.x = 10.0f;
            sCameraNextAt.y = 247.0f;
            sCameraNextAt.z = -220.0f;
            Math_SmoothScaleMaxMinF(&sCameraEyeMaxVel.x, 7.0f, 0.3f, 0.7f, 0.05f);
            sCameraEyeMaxVel.z = sCameraEyeMaxVel.x;
            sCameraEyeMaxVel.y = sCameraEyeMaxVel.z;
            sCameraAtMaxVel = sCameraEyeMaxVel;

            this->timer--;
            if (this->timer == 0) {
                sCsState++;
                this->timer = 40;
            }
            break;
        case INTRO_LOOK_SUPPORT:
            this->timer--;
            if (this->timer == 0) {
                sCameraNextAt.x = 10.0f;
                sCameraNextAt.y = 50.0f;
                sCameraNextAt.z = -220.0f;

                sCameraAtMaxVel = sCameraEyeMaxVel = sZeroVec;

                sCsState++;
                sCsState++;
                this->timer = 20;
            }
            break;
        case INTRO_CALL_BARI:
            Math_SmoothScaleMaxMinF(&sCameraEyeMaxVel.x, 14.0f, 0.3f, 1.0f, 0.25f);

            sCameraEyeMaxVel.y = sCameraEyeMaxVel.x * 0.7f;
            sCameraEyeMaxVel.z = sCameraEyeMaxVel.x;

            sCameraAtMaxVel = sCameraEyeMaxVel;
            sCameraAtMaxVel.z = sCameraAtMaxVel.z * 1.75f;

            this->timer--;
            if (this->timer == 0) {
                sCsState++;
                this->timer = 7500;
                this->unk_1F2 = 0;
            }
            break;
        case INTRO_ATTACH_BARI:
            for (i = 10; i >= 1; i--) {
                if (sBodyBari[i - 1]) {
                    if (sBodyBari[i - 1] == 1) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_STICK);
                        BossVa_SetSparkEnv(globalCtx);
                        if (this->onCeiling == 0) {
                            this->onCeiling = 2; // Not used by body
                        }
                    } else if (sBodyBari[i - 1] == 2) {
                        BossVa_Spark(globalCtx, this, 6, 140, 50.0f, 30.0f, SPARK_BARI, i, true);
                    }

                    if (sBodyBari[i - 1] <= 2) {
                        sBodyBari[i - 1]++;
                    }
                }
            }
            Math_SmoothScaleMaxMinS(&this->unk_1F2, 0x280, 1, 0x32, 0);
            Math_SmoothScaleMaxMinF(&sCameraEyeMaxVel.x, 14.0f, 0.3f, 1.0f, 0.25f);
            sCameraEyeMaxVel.z = sCameraEyeMaxVel.x;
            sCameraAtMaxVel = sCameraEyeMaxVel;
            if (this->timer >= 45000) {
                globalCtx->envCtx.unk_BF = 1;
                func_8002DF54(globalCtx, &this->actor, 8);
            } else if (this->timer >= 35000) {
                Audio_SetBGM(0x1B);
            }

            this->timer += this->unk_1F2;
            if (this->timer >= 65536) {
                sCameraEyeMaxVel.y = sCameraAtMaxVel.y = 9.8f;
                sCsState++;

                sCameraNextEye.x = 10.0f;
                sCameraNextEye.z = 0.0f;

                sCameraNextAt.x = 10.0f;
                sCameraNextAt.y = 140.0f;
                sCameraNextAt.z = -200.0f;

                if (!(gSaveContext.eventChkInf[7] & 0x40)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(&D_06001230),
                                           0xA0, 0xB4, 0x80, 0x28);
                }

                if (Math_Rand_ZeroOne() < 0.1f) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
                }

                this->timer = 40;
            } else {
                sCameraEyeMaxVel.y = 1.6f;
                sCameraNextEye.y = 5.0f;
                sCameraNextEye.x = Math_Sins(this->timer) * 200.0f;
                sCameraNextEye.z = (Math_Coss(this->timer) * 200.0f) + -200.0f;
            }
            break;
        case INTRO_TITLE:
            BossVa_Spark(globalCtx, this, 3, 140, 50.0f, 30.0f, SPARK_BARI, 10.0f, false);
            this->timer--;
            if (this->timer == 0) {
                sCsState++;
                this->timer = 45;
            }
            break;
        case INTRO_BRIGHTEN:
            BossVa_Spark(globalCtx, this, 3, 140, 50.0f, 30.0f, SPARK_BARI, 10.0f, false);
            this->timer--;
            if (this->timer == 0) {
                sCsState++;
                this->timer = 11;
            }
            break;
        case INTRO_FINISH:
            this->timer--;
            if (this->timer == 0) {
                Gameplay_ClearCamera(globalCtx, sCsCamera);
                sCsCamera = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
                func_8002DF54(globalCtx, &this->actor, 7);
                sCsState++;
                gSaveContext.eventChkInf[7] |= 0x40;
                player->actor.shape.rot.y = player->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x8000;
            }
            break;
        case BOSSVA_BATTLE:
            BossVa_SetupBodyPhase1(this);
            break;
    }

    if (sCsState >= INTRO_BODY_SOUND) {
        func_800F436C(&this->actor.projectedPos, 0x313C, 1.0f);
        if ((sCsState >= INTRO_CALL_BARI) && ((globalCtx->gameplayFrames % 4) == 0)) {
            BossVa_Spark(globalCtx, this, 1, 100, 50.0f, 10.0f, SPARK_BODY, 10.0f, false);
        }
    }

    this->unk_1B0 += 0xCE4;
    this->bodyGlow = (s16)(Math_Sins(this->unk_1B0) * 50.0f) + 150;
    if ((sCsCamera != 0) && (sCsState <= INTRO_TITLE)) {
        Math_SmoothScaleMaxMinF(&sCameraEye.x, sCameraNextEye.x, 0.3f, sCameraEyeMaxVel.x, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraEye.y, sCameraNextEye.y, 0.3f, sCameraEyeMaxVel.y, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraEye.z, sCameraNextEye.z, 0.3f, sCameraEyeMaxVel.z, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraAt.x, sCameraNextAt.x, 0.3f, sCameraAtMaxVel.x, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraAt.y, sCameraNextAt.y, 0.3f, sCameraAtMaxVel.y, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraAt.z, sCameraNextAt.z, 0.3f, sCameraAtMaxVel.z, 0.075f);
        func_800C04D8(globalCtx, sCsCamera, &sCameraAt, &sCameraEye);
    }
}

void BossVa_SetupBodyPhase1(BossVa* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_06005184.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005184, 1.0f, frames, frames, 2, 0.0f);
    this->actor.shape.unk_08 = -450.0f;
    this->actor.flags &= ~1;
    this->timer = 25;
    sBodyState = 0x80;
    BossVa_SetupAction(this, BossVa_BodyPhase1);
}

void BossVa_BodyPhase1(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_1B0 += 0xCE4;
    this->bodyGlow = (s16)(Math_Sins(this->unk_1B0) * 50.0f) + 150;
    if (this->timer != 0) {
        this->timer--;
        if (this->timer == 0) {
            sBodyState &= 0x7F;
        }
    }

    if (this->colliderBody.base.atFlags & 2) {
        this->colliderBody.base.atFlags &= ~2;
        if (this->colliderBody.base.at == &player->actor) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsLink, 8.0f);
        }
    }

    if (sBodyState & 0x7F) {
        this->skelAnime.animCurrentFrame = 0.0f;
        func_8003426C(&this->actor, 0, 0xFF, 0, 0xC);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_DAMAGE);
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (sFightProgress >= PHASE_2)) {
        BossVa_SetupBodyPhase2(this, globalCtx);
    }

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->actor.posRot.rot.x, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->actor.posRot.rot.z, 1, 0xC8, 0);
    this->unk_1AC += 0xC31;
    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;
    if ((globalCtx->gameplayFrames % 4) == 0) {
        BossVa_Spark(globalCtx, this, 1, 100, 50.0f, 10.0f, SPARK_BARI, 10.0f, false);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    Collider_CylinderUpdate(&this->actor, &this->colliderBody);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    func_800F436C(&this->actor.projectedPos, 0x313C, 1.0f);
}

void BossVa_SetupBodyPhase2(BossVa* this, GlobalContext* globalCtx) {
    s32 i;

    sFightProgress++;
    for (i = BOSSVA_BARI_UPPER_5; i >= BOSSVA_BARI_UPPER_1; i--) {
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA,
                           sInitPosOffsets[i].x + this->actor.posRot.pos.x, sInitPosOffsets[i].y + this->actor.posRot.pos.y,
                           sInitPosOffsets[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
                           sInitRot[i].y + this->actor.posRot.rot.y, sInitRot[i].z + this->actor.posRot.rot.z, i);
    }

    this->invincibilityTimer = 0;
    this->actor.flags |= 1;
    BossVa_SetupAction(this, BossVa_BodyPhase2);
}

void BossVa_BodyPhase2(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f sp48;

    if (this->actor.dmgEffectTimer == 0) {
        sPhase2Timer++;
        if ((this->invincibilityTimer != 0) && (this->actor.dmgEffectParams & 0x4000)) {
            func_8003426C(&this->actor, 0, 0xFF, 0, 0xA0);
            this->actor.dmgEffectTimer = this->invincibilityTimer;
        } else {
            this->colliderBody.body.bumper.flags = 0x10;
        }
    }

    if (this->colliderBody.base.acFlags & 2) {
        this->colliderBody.base.acFlags &= ~2;

        if (this->colliderBody.base.ac->id == ACTOR_EN_BOOM) {
            sPhase2Timer &= 0xFE00;
            func_8003426C(&this->actor, 0, 0xFF, 0, 0xA0);
            this->colliderBody.body.bumper.flags = 0xFC00712;
        } else {
            sKillBari++;
            if ((this->actor.dmgEffectTimer != 0) && !(this->actor.dmgEffectParams & 0x4000)) {
                this->invincibilityTimer = this->actor.dmgEffectTimer - 5;
                if (this->invincibilityTimer > 160) {
                    this->invincibilityTimer = 0;
                }
            }

            func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xC);
        }

        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_FAINT);
    }

    if (this->colliderBody.base.atFlags & 2) {
        this->colliderBody.base.atFlags &= ~2;

        sPhase2Timer = (sPhase2Timer + 0x18) & 0xFFF0;
        if (this->colliderBody.base.at == &player->actor) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsLink, 8.0f);
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
        }
    }

    if ((sPhase2Timer > 10) && !(sPhase2Timer & 7) && (this->actor.speedXZ == 1.0f)) {
        sp48 = this->actor.posRot.pos;
        sp48.y += 310.0f + (this->actor.shape.unk_08 * this->actor.scale.y);
        sp48.x += -10.0f;
        sp48.z += 220.0f;
        BossVa_SpawnSparkBall(globalCtx, sVaParticles, this, &sp48, 4, 0);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->actor.posRot.rot.x, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->actor.posRot.rot.z, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -1000.0f, 1.0f, 20.0f, 0.0f);
    if (!(sPhase2Timer & 0x100)) {
        this->actor.flags |= 1;
        this->actor.speedXZ = 1.0f;
    } else {
        this->actor.flags &= ~1;
        this->actor.speedXZ = 0.0f;
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (sFightProgress >= PHASE_3)) {
        BossVa_SetupBodyPhase3(this);
    }

    this->unk_1AC += 0xC31;
    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;
    if ((globalCtx->gameplayFrames % 4) == 0) {
        BossVa_Spark(globalCtx, this, 1, 100, 50.0f, 10.0f, SPARK_BODY, 10.0f, false);
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 45.0f;

    Collider_CylinderUpdate(&this->actor, &this->colliderBody);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    if (this->actor.dmgEffectTimer == 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    }

    if ((this->actor.dmgEffectTimer == 0) || !(this->actor.dmgEffectParams & 0x4000)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    }

    func_800F436C(&this->actor.projectedPos, NA_SE_EN_BALINADE_LEVEL - SFX_FLAG,
                  (this->vaBodySpinRate * 0.00025f) + 1.0f);
}

void BossVa_SetupBodyPhase3(BossVa* this) {
    this->colliderBody.body.bumper.flags = 0x10;
    this->actor.speedXZ = 0.0f;
    sPhase3Stop = false;
    BossVa_SetupAction(this, BossVa_BodyPhase3);
}

void BossVa_BodyPhase3(BossVa* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    s32 i;
    s16 sp62;

    sp62 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
    this->unk_1B0 += 0xCE4;
    this->bodyGlow = (s16)(Math_Sins(this->unk_1B0) * 50.0f) + 150;
    if (this->colliderBody.base.atFlags & 2) {
        this->colliderBody.base.atFlags &= ~2;
        if (this->colliderBody.base.at == &player->actor) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsLink, 8.0f);
            this->actor.posRot.rot.y += (s16)Math_Rand_CenteredFloat(12000.0f) + 0x8000;
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
        }
    }

    if (this->colliderBody.base.acFlags & 2) {
        this->skelAnime.animCurrentFrame = 0.0f;
        func_8003426C(&this->actor, 0, 0xFF, 0, 0xC);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_FAINT);
        sBodyState = 1;
        this->timer = 131;
        this->actor.flags &= ~1;
    } else {
        sBodyState = 0;
        if (this->timer == 0) {
            if (Math_SmoothScaleMaxMinS(&this->vaBodySpinRate, 0xFA0, 1, 0x12C, 0) == 0) {
                if (this->actor.speedXZ == 0.0f) {
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                }
                Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 3.0f, 1.0f, 0.15f, 0.0f);
            }
            this->actor.flags |= 1;
        } else {
            this->timer--;
            if (this->timer < 35) {
                sBodyState = 0x80;
            }
            Math_SmoothScaleMaxMinS(&this->vaBodySpinRate, 0, 1, 0x12C, 0);
            Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.2f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -1420.0f, 1.0f, 30.0f, 0.0f);
        }
    }

    if (Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos) >= 400.0f) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, sp62, 1, 0x3E8, 0);
    } else if (player->invincibilityTimer != 0) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 1, 0x12C, 0);
    } else if ((globalCtx->gameplayFrames & 0x80) == 0) {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, 0x12C, 0);
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, sp62, 1, 0x258, 0);
    }

    if (sPhase3Stop) {
        this->actor.speedXZ = 0.0f;
    }

    Actor_MoveForward(&this->actor);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (sFightProgress >= PHASE_4)) {
        BossVa_SetupBodyPhase4(this, globalCtx);
    }

    this->actor.shape.rot.y += this->vaBodySpinRate;
    if (sFightProgress == PHASE_3) {
        Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -450.0f, 1.0f, 15.0f, 0.0f);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -810.0f, 1.0f, 15.0f, 0.0f);
    }

    if ((this->actor.shape.unk_08 >= -500.0f) && (sFightProgress == PHASE_3)) {
        for (i = BOSSVA_BARI_LOWER_5; i >= BOSSVA_BARI_LOWER_1; i--) {
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA,
                               sInitPosOffsets[i].x + this->actor.posRot.pos.x, sInitPosOffsets[i].y + this->actor.posRot.pos.y,
                               sInitPosOffsets[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
                               sInitRot[i].y + this->actor.posRot.rot.y, sInitRot[i].z + this->actor.posRot.rot.z, i);
        }
        sFightProgress++;
    }

    this->unk_1AC += 0xC31;
    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;
    if ((globalCtx->gameplayFrames % 4) == 0) {
        BossVa_Spark(globalCtx, this, 1, 0x64, 50.0f, 10.0f, SPARK_BODY, 10.0f, false);
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 20.0f;
    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    Collider_CylinderUpdate(&this->actor, &this->colliderBody);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    if (this->timer == 0) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    }

    func_800F436C(&this->actor.projectedPos, NA_SE_EN_BALINADE_LEVEL - SFX_FLAG,
                  (this->vaBodySpinRate * 0.00025f) + 1.0f);
}

void BossVa_SetupBodyPhase4(BossVa* this, GlobalContext* globalCtx) {
    this->unk_1AC = 0;
    this->actor.flags |= 1;
    this->vaBodySpinRate = this->unk_1AC;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    this->timer2 = (s16)(Math_Rand_ZeroOne() * 150.0f) + 300;
    sBodyState = 1;
    sPhase4HP = 4;
    if (this->actor.shape.unk_08 != 0.0f) {
        this->timer = -30;
    }

    this->colliderBody.dim.radius = 55;
    BossVa_SetupAction(this, BossVa_BodyPhase4);
}

void BossVa_BodyPhase4(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 tmpf1;
    EnBoom* boomerang;

    this->unk_1B0 = (this->unk_1B0 + (s16)((sFightProgress - PHASE_4 + 1) * 1000.0f)) + 0xCE4;
    this->bodyGlow = (s16)(Math_Sins(this->unk_1B0) * 50.0f) + 150;
    if (this->colliderBody.base.atFlags & 2) {
        this->colliderBody.base.atFlags &= ~2;
        if (this->colliderBody.base.at == &player->actor) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsLink, 8.0f);
            this->actor.posRot.rot.y += (s16)Math_Rand_CenteredFloat(12000.0f) + 0x8000;
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
        }
    }
    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    if (this->colliderBody.base.acFlags & 2) {
        this->colliderBody.base.acFlags &= ~2;
        this->skelAnime.animCurrentFrame = 0.0f;
        if (this->timer >= 0) {
            if (this->invincibilityTimer == 0) {
                this->invincibilityTimer = 8;
                if (this->actor.colChkInfo.damageEffect != 1) {
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_DAMAGE);
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xC);
                    sPhase4HP -= this->actor.colChkInfo.damage;
                    if (sPhase4HP <= 0) {
                        this->timer = 0;
                        sFightProgress++;
                        sPhase4HP += 3;
                        if (sFightProgress >= PHASE_DEATH) {
                            BossVa_SetupBodyDeath(this, globalCtx);
                            func_80032C7C(globalCtx, &this->actor);
                            return;
                        }
                        this->actor.speedXZ = -10.0f;
                        this->timer = -170 - (s16)(Math_Rand_ZeroOne() * 150.0f);
                    }
                } else {
                    this->timer = (s16)Math_Rand_CenteredFloat(40.0f) + 160;
                    this->vaBodySpinRate = 0;
                    this->actor.speedXZ = 0.0f;
                    func_8003426C(&this->actor, 0, 0x7D, 0, 0xFF);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_FAINT);
                }
            }
        } else if (this->colliderBody.base.ac->id == ACTOR_EN_BOOM) {
            boomerang = (EnBoom*)this->colliderBody.base.ac;
            boomerang->returnTimer = 0;
            boomerang->moveTo = &player->actor;
            boomerang->actor.posRot.rot.y = boomerang->actor.yawTowardsLink;
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_SHIELD_REFLECT_SW);
        }
    } else if ((this->timer2 == 0) && (this->actor.shape.unk_08 == 0.0f)) {
        this->timer = -220 - (s16)(Math_Rand_ZeroOne() * 200.0f);
    } else if (this->timer2 != 0) {
        this->timer2--;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer == 0) {
        Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 0.0f, 1.0f, ((sFightProgress - PHASE_4 + 1) * 5.0f) + 10.0f,
                                0.0f);
        if (Math_SmoothScaleMaxMinS(&this->vaBodySpinRate, (s16)((sFightProgress - PHASE_4 + 1) * 500.0f) + 0xFA0, 1,
                                    0x12C, 0) == 0) {
            if (this->actor.speedXZ == 0.0f) {
                this->actor.dmgEffectTimer = 0;
                this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                this->timer2 = (s16)(Math_Rand_ZeroOne() * 150.0f) + 300;
            }
            Math_SmoothScaleMaxMinF(&this->actor.speedXZ, ((sFightProgress - PHASE_4 + 1) * 1.5f) + 4.0f, 1.0f, 0.25f,
                                    0.0f);
        }
        this->colliderBody.body.bumper.flags = 0x10;
    } else {
        Math_SmoothScaleMaxMinS(&this->vaBodySpinRate, 0, 1, 0x96, 0);
        if (this->timer > 0) {
            if ((player->stateFlags1 & 0x4000000) && (this->timer > 35)) {
                this->timer = 35;
            }
            Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -480.0f, 1.0f, 30.0f, 0.0f);
            this->colliderBody.body.bumper.flags = 0xFC00712;
            this->timer--;
        } else {
            if ((player->stateFlags1 & 0x4000000) && (this->timer < -60)) {
                this->timer = -59;
            }
            if ((globalCtx->gameplayFrames % 4) == 0) {
                BossVa_Spark(globalCtx, this, 2, 0x64, 220.0f, 5.0f, SPARK_BODY, 12.0f, true);
            }
            if (this->timer < -30) {
                if (this->actor.speedXZ > 0.0f) {
                    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
                }
                Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -1400.0f, 1.0f, 60.0f, 0.0f);
            } else {
                if (this->actor.speedXZ == 0.0f) {
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x8000;
                    this->timer2 = (s16)(Math_Rand_ZeroOne() * 150.0f) + 330;
                }
                Math_SmoothScaleMaxMinS(&this->vaBodySpinRate, 0xFA0, 1, 0x1F4, 0);
                tmpf1 = sFightProgress - PHASE_4 + 1;
                Math_SmoothScaleMaxMinF(&this->actor.speedXZ, (tmpf1 + tmpf1) + 4.0f, 1.0f, 0.25f, 0.0f);
                Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 0.0f, 1.0f, 20.0f, 0.0f);
            }
            this->timer++;
        }
    }

    this->actor.shape.rot.y += this->vaBodySpinRate;
    if (this->actor.speedXZ < 0.0f) {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    }

    this->unk_1AC += 0xC31;
    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;
    if (this->actor.bgCheckFlags & 8) {
        this->actor.bgCheckFlags &= ~8;
        this->actor.posRot.rot.y = (s16)Math_Rand_CenteredFloat(30 * (0x10000 / 360)) + this->actor.wallPolyRot;
    }

    if (sFightProgress <= PHASE_4) {
        if (Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos) >= 400.0f) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y,
                                    Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos), 1, 0x5DC, 0);
        } else if (player->invincibilityTimer != 0) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 1, 0x12C, 0);
        } else if ((globalCtx->gameplayFrames & 0x80) == 0) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1,
                                    (s16)((sFightProgress - PHASE_4 + 1) * 100.0f) + 0x64, 0);
        }
    }

    Actor_MoveForward(&this->actor);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 60.0f;
    if (((globalCtx->gameplayFrames % 2) == 0) && (this->timer == 0)) {
        BossVa_Spark(globalCtx, this, 2, 125, 40.0f, 10.0f, SPARK_BODY, 10.0f, false);
        BossVa_Spark(globalCtx, this, 1, 100, 15.0f, 10.0f, SPARK_BARI, 11.0f, true);
    }

    func_8002E4B4(globalCtx, &this->actor, 30.0f, 70.0f, 0.0f, 1);
    Collider_CylinderUpdate(&this->actor, &this->colliderBody);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    if (this->invincibilityTimer == 0) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    }
    if ((this->vaBodySpinRate > 0x3E8) || (this->actor.shape.unk_08 < -1200.0f)) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    }
    func_800F436C(&this->actor.projectedPos, NA_SE_EN_BALINADE_LEVEL - SFX_FLAG,
                  (this->vaBodySpinRate * 0.00025f) + 1.0f);
    if (this->invincibilityTimer != 0) {
        this->invincibilityTimer--;
        sBodyState = (sBodyState & 0x80) | 2;
    } else {
        sBodyState = (sBodyState & 0x80) | 1;
    }
}

void BossVa_SetupBodyDeath(BossVa* this, GlobalContext* globalCtx) {
    func_800F436C(&this->actor.projectedPos, 0x313C, 1.0f);
    this->actor.flags &= ~5;
    Audio_SetBGM(0x100100FF);
    this->vaCamRotMod = 0xC31;
    sCsState = DEATH_START;
    this->actor.speedXZ = 0.0f;
    this->unk_1A8 = 0.0f;
    Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
    BossVa_SetupAction(this, BossVa_BodyDeath);
}

void BossVa_BodyDeath(BossVa* this, GlobalContext* globalCtx) {
    s32 i;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    s32 sp7C;
    Player* player = PLAYER;
    s16 tmp16;

    switch (sCsState) {
        case DEATH_START:
            func_8002DF54(globalCtx, &this->actor, 1);
            func_80064520(globalCtx, &globalCtx->csCtx);
            sCsCamera = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, sCsCamera, 7);

            sCameraNextAt.x = this->actor.posRot.pos.x;
            sCameraNextAt.y = this->actor.posRot.pos.y;
            sCameraNextAt.z = this->actor.posRot.pos.z;

            sCameraAt = camera->at;

            sCameraNextEye = sCameraEye = camera->eye;

            sCameraNextEye.y = 40.0f;
            sCameraNextAt.y = 140.0f;

            sCameraAtMaxVel = sCameraEyeMaxVel = sZeroVec;

            this->unk_1AC = Math_Vec3f_Yaw(&sCameraEye, &sCameraNextAt) - 0x100;
            this->unk_1B0 = 15;
            globalCtx->envCtx.unk_E2[0] = globalCtx->envCtx.unk_E2[1] = globalCtx->envCtx.unk_E2[2] = 0xFF;
            globalCtx->envCtx.unk_E2[3] = 0;
            globalCtx->envCtx.unk_E1 = 1;
            sCsState++;
        case DEATH_BODY_TUMORS:
            this->unk_1AC += 0x100;
            sCameraNextEye.x = (Math_Sins(this->unk_1AC) * (160.0f + this->unk_1A8)) + sCameraNextAt.x;
            sCameraNextEye.z = (Math_Coss(this->unk_1AC) * (160.0f + this->unk_1A8)) + sCameraNextAt.z;
            Math_SmoothScaleMaxMinF(&sCameraEyeMaxVel.x, 16.0f, 0.4f, 1.5f, 0.5f);
            sCameraEyeMaxVel.z = sCameraEyeMaxVel.x;
            sCameraEyeMaxVel.y = sCameraEyeMaxVel.x * 0.5f;
            sCameraAtMaxVel = sCameraEyeMaxVel;
            tmp16 = Math_Rand_CenteredFloat(0.5f) + ((sCameraEyeMaxVel.x * 0.5f) + 0.6f);
            if (((globalCtx->gameplayFrames % 4) == 0) && (this->unk_1B0 != 0)) {
                for (i = 6; i > 1; i--) {
                    BossVa_Tumor(globalCtx, this, 1, tmp16, 0.0f, 0.0f, TUMOR_BODY, i, true);
                }

                BossVa_Tumor(globalCtx, this, 1, tmp16, 0.0f, 0.0f, TUMOR_BODY, 11.0f, true);
                this->unk_1B0--;
            }

            if (this->unk_1B0 == 0) {
                sCsState++;

                sCameraAtMaxVel = sCameraEyeMaxVel = sZeroVec;
            }
            break;
        case DEATH_CORE_DEAD:
            this->unk_1AC += 0x1862;
            this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.12f) + 1.0f;
            this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.075f) + 1.0f;
            if (!this->isDead) {
                this->burst++;
                this->isDead++;
                this->timer = 30;
                sCsState++;
                EffectSsDeadSound_SpawnStationary(globalCtx, &this->actor.projectedPos, 0x3940, 1, 1, 0x28);
                this->onCeiling = 2; // Not used by body
                BossVa_SetDeathEnv(globalCtx);
                func_8002DF54(globalCtx, &this->actor, 8);
            }
            break;
        case DEATH_CORE_BURST:
            if (this->timer == 13) {
                Audio_SetBGM(0x21);
            }

            this->timer--;
            if (this->timer == 0) {
                sCameraNextAt.x = this->actor.posRot.pos.x;
                sCameraNextAt.y = this->actor.posRot.pos.y + 30.0f;
                sCameraNextAt.z = this->actor.posRot.pos.z;

                sCameraNextEye.x = (Math_Sins(player->actor.shape.rot.y) * -130.0f) + player->actor.posRot.pos.x;
                sCameraNextEye.z = (Math_Coss(player->actor.shape.rot.y) * -130.0f) + player->actor.posRot.pos.z;
                sCameraNextEye.y = player->actor.posRot.pos.y + 55.0f;

                sCameraAtMaxVel = sCameraEyeMaxVel = sZeroVec;

                sCsState++;
                this->timer = 133;
            }
            break;
        case DEATH_MUSIC:
            Math_SmoothScaleMaxMinF(&sCameraEyeMaxVel.x, 1.5f, 0.3f, 0.05f, 0.015f);
            sCameraEyeMaxVel.z = sCameraEyeMaxVel.x;
            sCameraEyeMaxVel.y = sCameraEyeMaxVel.z;
            sCameraAtMaxVel = sCameraEyeMaxVel;

            this->timer--;
            if (this->timer == 0) {
                Gameplay_ClearCamera(globalCtx, sCsCamera);
                sCsCamera = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 7);

                camera->eyeNext = camera->eye = sCameraEye;

                camera->at = sCameraAt;

                func_8002DF54(globalCtx, &this->actor, 7);
                sCsState++;

                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);

                for (i = 2, sp7C = 2; i > 0; i--) {
                    if (Math_Vec3f_DistXYZ(&sWarpPos[i], &player->actor.posRot.pos) <
                        Math_Vec3f_DistXYZ(&sWarpPos[i - 1], &player->actor.posRot.pos)) {
                        sp7C = i - 1;
                    }
                }

                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_RU1, sWarpPos[sp7C].x, sWarpPos[sp7C].y,
                            sWarpPos[sp7C].z, 0, 0, 0, 0);
            }
        case DEATH_FINISH:
            Math_Rand_CenteredFloat(0.5f);
            globalCtx->envCtx.unk_E1 = 0;
            break;
    }

    if (sCsCamera != 0) {
        Math_SmoothScaleMaxMinF(&sCameraEye.x, sCameraNextEye.x, 0.3f, sCameraEyeMaxVel.x, 0.15f);
        Math_SmoothScaleMaxMinF(&sCameraEye.y, sCameraNextEye.y, 0.3f, sCameraEyeMaxVel.y, 0.15f);
        Math_SmoothScaleMaxMinF(&sCameraEye.z, sCameraNextEye.z, 0.3f, sCameraEyeMaxVel.z, 0.15f);
        Math_SmoothScaleMaxMinF(&sCameraAt.x, sCameraNextAt.x, 0.3f, sCameraAtMaxVel.x, 0.15f);
        Math_SmoothScaleMaxMinF(&sCameraAt.y, sCameraNextAt.y, 0.3f, sCameraAtMaxVel.y, 0.15f);
        Math_SmoothScaleMaxMinF(&sCameraAt.z, sCameraNextAt.z, 0.3f, sCameraAtMaxVel.z, 0.15f);
        func_800C04D8(globalCtx, sCsCamera, &sCameraAt, &sCameraEye);
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -480.0f, 1.0f, 30.0f, 0.0f);
    Math_SmoothScaleMaxMinS(&this->vaBodySpinRate, 0, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinS(&this->vaCamRotMod, 0, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinS(&this->bodyGlow, 200, 1, 10, 0);
    if (globalCtx->envCtx.unk_E2[3] != 0) {
        globalCtx->envCtx.unk_E2[3] -= 50;
    }

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    this->actor.shape.rot.y += this->vaBodySpinRate;
    this->unk_1AC += this->vaCamRotMod;

    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;
}

void BossVa_SetupSupportIntro(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060166A8, 0.0f, 0.0f, SkelAnime_GetFrameCount(&D_060166A8.genericHeader),
                         1, 0.0f);
    this->timer = 0;
    BossVa_SetupAction(this, BossVa_SupportIntro);
}

void BossVa_SupportIntro(BossVa* this, GlobalContext* globalCtx) {
    BossVa_AttachToBody(this);
    if (sCsState == BOSSVA_BATTLE) {
        BossVa_SetupSupportAttached(this, globalCtx);
    } else if (sCsState >= INTRO_REVERSE_CAMERA) {
        this->timer++;
        if ((this->timer % 2) == 0) {
            BossVa_Spark(globalCtx, this, 2, 90, 5.0f, 0.0f, SPARK_BODY, ((this->timer & 0x20) >> 5) + 1, true);
        }

        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 1.0f, 1.0f, 0.05f, 0.0f);
        if (Math_Rand_ZeroOne() < 0.1f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
        }
    }
}

void BossVa_SetupSupportAttached(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060166A8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060166A8.genericHeader),
                         0, 0.0f);
    this->timer = this->actor.params * 10;
    BossVa_SetupAction(this, BossVa_SupportAttached);
}

void BossVa_SupportAttached(BossVa* this, GlobalContext* globalCtx) {
    this->timer++;
    if (sBodyState & 0x7F) {
        func_8003426C(&this->actor, 0, 0xFF, 0, 0xC);
        if (Math_Rand_ZeroOne() > 0.5f) {
            SkelAnime_ChangeAnim(&this->skelAnime, &D_060162AC, 1.0f, 0.0f,
                                 SkelAnime_GetFrameCount(&D_060162AC.genericHeader), 2, 0.0f);
        } else {
            SkelAnime_ChangeAnim(&this->skelAnime, &D_060164B0, 1.0f, 0.0f,
                                 SkelAnime_GetFrameCount(&D_060164B0.genericHeader), 2, 0.0f);
        }
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060166A8, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_060166A8.genericHeader), 0, 0.0f);
    }

    BossVa_AttachToBody(this);
    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    if (this->colliderSph.base.acFlags & 2) {
        BossVa_SetupSupportCut(this, globalCtx);
    } else {
        if (this->actor.dmgEffectTimer == 0) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
        }

        if ((this->timer & 1) == 0) {
            BossVa_Spark(globalCtx, this, 1, 100, 5.0f, 0.0f, SPARK_BODY, ((this->timer & 0x20) >> 5) + 1, true);
        }
    }
}

void BossVa_SetupSupportCut(BossVa* this, GlobalContext* globalCtx) {
    s32 stumpParams = this->actor.params + BOSSVA_STUMP_1;

    sBodyState++;
    sFightProgress++;
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BOSS_VA, this->armTip.x, this->armTip.y + 20.0f, this->armTip.z,
                0, this->actor.shape.rot.y, 0, stumpParams);
    func_8005AA1C(&globalCtx->mainCamera, 2, 0xB, 8);
    this->burst = false;
    this->timer2 = 0;
    BossVa_SetupAction(this, BossVa_SupportCut);
}

void BossVa_SupportCut(BossVa* this, GlobalContext* globalCtx) {
    BossVa* vaBody = BODY;
    f32 frames;

    BossVa_AttachToBody(this);

    if (this->onCeiling) {
        frames = SkelAnime_GetFrameCount(&D_06017694.genericHeader);
        this->onCeiling = false;
        this->timer = (s32)(Math_Rand_ZeroOne() * 10.0f) + 5;
        SkelAnime_Free(&this->skelAnime, globalCtx);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06017FC8, &D_06017694, 0, 0, 0);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06017694, 1.0f, 0.0f, frames, 2, 0.0f);
        sBodyState = 0;
        BODY->actor.shape.unk_08 -= 60.0f;

        switch (this->actor.params) {
            case BOSSVA_SUPPORT_1:
                BODY->actor.posRot.rot.x += 0x4B0;
                break;
            case BOSSVA_SUPPORT_2:
                BODY->actor.posRot.rot.x -= 0x258;
                BODY->actor.posRot.rot.z -= 0x4E2;
                break;
            case BOSSVA_SUPPORT_3:
                BODY->actor.posRot.rot.x -= 0x258;
                BODY->actor.posRot.rot.z += 0x4E2;
                break;
        }
    }

    Math_SmoothScaleMaxMinS(&this->headRot.x, vaBody->vaBodySpinRate * -3, 1, 0x4B0, 0);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        frames = SkelAnime_GetFrameCount(&D_060177F4.genericHeader);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060177F4, 1.0f, 0.0f, frames, 1, 0.0f);
        this->actor.flags &= ~1;
    }

    if ((this->timer == 0) && (sCsState < DEATH_START)) {
        this->timer = (s32)(Math_Rand_ZeroOne() * 10.0f) + 10;
        BossVa_BloodDroplets(globalCtx, &this->armTip, this->headRot.x, this->actor.shape.rot.y);
    }

    if (sCsState >= DEATH_START) {
        Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 0.0f, 0.3f, 0.25f, 0.125f);
    }

    switch (sCsState) {
        case DEATH_SHELL_BURST:
            sCameraEye = sCameraNextEye;
            sCameraAt = sCameraNextAt;
            Math_SmoothScaleMaxMinF(&sCameraEye.x, sCameraNextAt.x, 1.0f, 10.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&sCameraEye.z, sCameraNextAt.z, 1.0f, 10.0f, 0.0f);
            sCameraEye.y += 20.0f;
            sCsState++;

        case DEATH_CORE_TUMORS:
        case DEATH_CORE_DEAD:
        case DEATH_CORE_BURST:
            if (!this->burst) {
                if ((globalCtx->gameplayFrames % 2) != 0) {
                    BossVa_Tumor(globalCtx, this, 1, (s16)Math_Rand_CenteredFloat(5.0f) + 6, 7.0f, 5.0f, TUMOR_ARM,
                                 (this->timer2 >> 3) + 1, true);
                }

                this->timer2++;
                if (this->timer2 >= 32) {
                    this->burst++;
                    this->isDead = true;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BREAK2);
                    if (this->actor.params == BOSSVA_SUPPORT_3) {
                        sCsState++;
                    }
                }
            } else {
                this->timer2--;
                if (this->timer2 == 0) {
                    Actor_Kill(&this->actor);
                }
            }
            break;
    }

    this->timer--;
}

void BossVa_SetupStump(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06018150, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06018150.genericHeader),
                         2, 0.0f);
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_Stump);
}

void BossVa_Stump(BossVa* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (Math_Rand_ZeroOne() < 0.3f)) {
        this->skelAnime.animCurrentFrame -= Math_Rand_ZeroOne() * 3.0f;
    }

    if (sCsState >= DEATH_START) {
        Actor_Kill(&this->actor);
    }
}

void BossVa_SetupZapperIntro(BossVa* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_06018D18.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06018D18, 1.0f, frames - 1.0f, frames, 1, -6.0f);
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_ZapperIntro);
}

void BossVa_ZapperIntro(BossVa* this, GlobalContext* globalCtx) {
    BossVa_AttachToBody(this);

    switch (sCsState) {
        case INTRO_TITLE:
        case INTRO_BRIGHTEN:
        case INTRO_FINISH:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            break;
        case BOSSVA_BATTLE:
            BossVa_SetupZapperAttack(this, globalCtx);
            break;
    }

    Math_SmoothScaleMaxMinS(&this->unk_1F2, this->actor.shape.rot.y - this->actor.shape.rot.x, 1, 0x2EE, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1F0, this->skelAnime.limbDrawTbl[7].z, 1, 0x2EE, 0);
}

void BossVa_SetupZapperAttack(BossVa* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_06018D18.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06018D18, 1.0f, frames - 1.0f, frames, 1, -6.0f);
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_ZapperAttack);
}

void BossVa_ZapperAttack(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnBoom* boomerang;
    Actor* boomTarget;
    s16 yaw;
    s16 sp98;
    s16 sp96;
    s16 sp94;
    s16 tmp17;
    s16 sp90 = 0x1F4;
    s16 sp8E;
    u32 sp88;
    Vec3f sp7C;
    s32 pad3;
    f32 sp74;
    s32 i;
    s16 sp6E;
    s16 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s16 sp5A;
    s16 sp58;
    s16 sp56;
    s16 sp54;
    f32 sp50;

    boomerang = BossVa_FindBoomerang(globalCtx);

    if ((boomerang == NULL) || (boomerang->moveTo == NULL) || (boomerang->moveTo == &player->actor)) {
        sp7C = player->actor.posRot.pos;
        sp7C.y += 10.0f;
        sp8E = 0x3E80;
    } else {
        sp74 = R_UPDATE_RATE * 0.5f;
        sp8E = 0x4650;

        boomTarget = boomerang->moveTo;
        sp7C = boomerang->actor.posRot.pos;
        sp6C = boomerang->actor.posRot.rot.y;
        sp56 = boomerang->actor.posRot.rot.x;

        for (i = boomerang->returnTimer; i >= 3; i--) {
            sp6E = Math_Vec3f_Yaw(&sp7C, &boomTarget->posRot2.pos);
            sp5A = sp6C - sp6E;
            sp58 = Math_Vec3f_Pitch(&sp7C, &boomTarget->posRot2.pos);
            sp54 = sp56 - sp58;

            sp50 = (200.0f - Math_Vec3f_DistXYZ(&sp7C, &boomTarget->posRot2.pos)) * 0.005f;
            if (sp50 < 0.12f) {
                sp50 = 0.12f;
            }

            if (sp5A < 0) {
                sp5A = -sp5A;
            }

            if (sp54 < 0) {
                sp54 = -sp54;
            }

            Math_ApproxUpdateScaledS(&sp6C, sp6E, sp5A * sp50);
            Math_ApproxUpdateScaledS(&sp56, sp58, sp54 * sp50);

            sp68 = -Math_Sins(sp56) * 12.0f;
            sp5C = Math_Coss(sp56) * 12.0f;
            sp64 = Math_Sins(sp6C) * sp5C;
            sp60 = Math_Coss(sp6C);
            sp7C.x += sp64 * sp74;
            sp7C.y += sp68 * sp74;
            sp7C.z += sp60 * sp5C * sp74;
        }
        sp90 = 0x3E80;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    BossVa_AttachToBody(this);
    if (sFightProgress >= PHASE_4) {
        BossVa_SetupZapperEnraged(this, globalCtx);
        return;
    }

    if (sBodyState & 0x7F) {
        BossVa_SetupZapperDamaged(this, globalCtx);
        return;
    }

    if ((sFightProgress < PHASE_4) && (BODY->actor.speedXZ != 0.0f)) {
        BossVa_SetupZapperHold(this, globalCtx);
        return;
    }

    sp98 = Math_Vec3f_Yaw(&sp7C, &this->armTip);
    tmp17 = sp98 - this->actor.shape.rot.y;

    if ((sp8E >= ABS(tmp17) || this->burst) && !(sBodyState & 0x80) && !(player->stateFlags1 & 0x04000000)) {

        if (!this->burst) {

            // if((this->burst == 0) || (this->timer2 < 10)) {
            sp94 = sp98 - this->actor.shape.rot.y;

            if (ABS(sp94) > 0x1770) {
                if (sp94 > 0) {
                    sp94 = 0x1770;
                } else {
                    sp94 = -0x1770;
                }
            }

            tmp17 = Math_SmoothScaleMaxMinS(&this->unk_1E6, sp94, 1, 0x6D6, 0);
            sp88 = ABS(tmp17);

            sp94 = sp98 - sp94;

            if (ABS(sp94) > 0x1770) {
                if (sp94 > 0) {
                    sp94 = 0x1770;
                } else {
                    sp94 = -0x1770;
                }
            }

            tmp17 = Math_SmoothScaleMaxMinS(&this->unk_1EC, sp94, 1, 0x6D6, 0);
            sp88 += ABS(tmp17);

            yaw = Math_Vec3f_Yaw(&this->zapHeadPos, &sp7C);
            tmp17 = Math_SmoothScaleMaxMinS(&this->unk_1F2, yaw - 0x4000, 1, 0x9C4, 0);
            sp88 += ABS(tmp17);

            sp96 = this->actor.shape.rot.x + this->skelAnime.limbDrawTbl[1].z + this->skelAnime.limbDrawTbl[2].z +
                   this->skelAnime.limbDrawTbl[3].z + this->skelAnime.limbDrawTbl[4].z +
                   this->skelAnime.limbDrawTbl[5].z;

            yaw = Math_Vec3f_Pitch(&sp7C, &this->zapNeckPos);
            tmp17 = Math_SmoothScaleMaxMinS(&this->unk_1EA, yaw - sp96, 1, 0xFA0, 0);
            sp88 += ABS(tmp17);

            yaw = Math_Vec3f_Pitch(&this->zapHeadPos, &sp7C);
            tmp17 = Math_SmoothScaleMaxMinS(&this->unk_1F0, -yaw, 1, 0xFA0, 0);
            sp88 += ABS(tmp17);

            this->skelAnime.animPlaybackSpeed = 0.0f;
            if (Math_SmoothScaleMaxMinF(&this->skelAnime.animCurrentFrame, 0.0f, 1.0f, 2.0f, 0.0f) == 0.0f) {
                if (sp88 < sp90) {
                    // if(this->burst == 0) {this->timer2 = 0;}
                    this->timer2 = 0;
                    this->burst++;
                    this->unk_1D8 = sp7C;
                }

                if (Math_Rand_ZeroOne() < 0.1f) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
                }
            }
        }
    } else {
        if (this->burst || (this->timer2 < 0)) {
            if (this->colliderLightning.base.atFlags & 2) {
                if (this->timer2 > 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_HIT_RINK);
                    BossVa_SetSparkEnv(globalCtx);
                    this->timer2 = -1;
                    BODY->onCeiling = 6; // not used by body
                }
            } else if (this->timer2 > 0) {
                this->timer2 = 0;
            }

            if ((this->timer2 < 0) && (player->stateFlags1 & 0x4000000)) {
                BossVa_Spark(globalCtx, this, 1, 30, 0.0f, 0.0f, SPARK_LINK, 0.0f, true);
            }
        }

        Math_SmoothScaleMaxMinS(&this->unk_1E6, 0, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1EC, 0, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1EA, 0, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1F2, this->actor.shape.rot.y - this->actor.shape.rot.x, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1F0, this->skelAnime.limbDrawTbl[7].z, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 1.0f, 1.0f, 0.05f, 0.0f);
        this->burst = false;
    }

    if (this->burst && (this->burst != 2)) { // burst can never be 2
        // if (this->timer2 >= 32) {
        //     if (this->timer2 == 32) {
        if (this->timer2 >= 32) {
            if (this->timer2 == 32) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_THUNDER);
            }
            BossVa_Spark(globalCtx, this, 2, 110, 15.0f, 15.0f, SPARK_BLAST, 5.0f, true);
            BossVa_Spark(globalCtx, this, 2, 110, 15.0f, 15.0f, SPARK_BLAST, 6.0f, true);
            BossVa_Spark(globalCtx, this, 2, 110, 15.0f, 15.0f, SPARK_BLAST, 7.0f, true);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderLightning.base);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderLightning.base);
        } else {
            BossVa_Spark(globalCtx, this, 2, 50, 15.0f, 0.0f, SPARK_BODY, (this->timer2 >> 3) + 1, true);
            // if (this->timer2 == 30) {
            if (this->timer2 == 30) {
                BossVa_SetSparkEnv(globalCtx);
            }

            // if (this->timer2 == 20) {
            if (this->timer2 == 20) {
                Vec3f sp44 = this->zapHeadPos;

                BossVa_SpawnZapperCharge(globalCtx, sVaParticles, this, &sp44, &this->headRot, 100, 0);
            }
        }

        this->timer2++;
        // if (this->timer2 >= 40) {
        if (this->timer2 >= 40) {
            this->burst = false;
        }
    }
}

void BossVa_SetupZapperDamaged(BossVa* this, GlobalContext* globalCtx) {
    if (Math_Rand_ZeroOne() > 0.5f) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06018A68, 0.5f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06018A68.genericHeader), 3, 4.0f);
    } else {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06018B90, 0.5f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06018B90.genericHeader), 3, 4.0f);
    }

    func_8003426C(&this->actor, 0, 0xFF, 0, 0xC);
    this->burst = false;
    BossVa_SetupAction(this, BossVa_ZapperDamaged);
}

void BossVa_ZapperDamaged(BossVa* this, GlobalContext* globalCtx) {
    BossVa_AttachToBody(this);
    Math_SmoothScaleMaxMinS(&this->unk_1E6, 0, 1, 0xFA0, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1E4, 0, 1, 0xFA0, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1EC, 0, 1, 0xFA0, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1EA, 0, 1, 0xFA0, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1F2, this->actor.shape.rot.y - this->actor.shape.rot.x, 1, 0x2EE, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1F0, this->skelAnime.limbDrawTbl[7].z, 1, 0x2EE, 0);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (sFightProgress >= PHASE_4) {
            BossVa_SetupZapperEnraged(this, globalCtx);
        } else {
            BossVa_SetupZapperAttack(this, globalCtx);
        }
    }
}

void BossVa_SetupZapperDeath(BossVa* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_06018D18.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06018D18, Math_Rand_ZeroOne() + 0.25f, Math_Rand_ZeroOne() * 3.0f, frames,
                         1, -6.0f);
    this->burst = false;
    this->timer2 = (this->actor.params * -6) + 18;
    this->unk_1B0 = 0;
    BossVa_SetupAction(this, BossVa_ZapperDeath);
}

void BossVa_ZapperDeath(BossVa* this, GlobalContext* globalCtx) {
    f32 sp3C = 55.0f;
    f32 tmpf1;
    f32 tmpf2;

    BossVa_AttachToBody(this);
    if (((globalCtx->gameplayFrames % 32) == 0) && (sCsState <= DEATH_BODY_TUMORS)) {
        this->unk_1E8 = Math_Rand_CenteredFloat(0x4000);
        this->unk_1EE = Math_Rand_CenteredFloat(0x4000);
        this->unk_1F4 = (s16)Math_Rand_CenteredFloat(0x4000) + this->actor.shape.rot.y - this->actor.shape.rot.x;
    } else {
        Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 0.0f, 1.0f, 0.025f, 0.0f);
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxMinS(&this->unk_1E6, this->unk_1E8, 1, (s16)Math_Rand_CenteredFloat(500.0f) + 0x1F4, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1E4, 0, 1, 0x1F4, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1EC, this->unk_1EE, 1, (s16)Math_Rand_CenteredFloat(500.0f) + 0x1F4, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1EA, 0, 1, 0x1F4, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1F2, this->unk_1F4, 1, (s16)Math_Rand_CenteredFloat(500.0f) + 0x1F4, 0);

    switch (sCsState) {
        case DEATH_ZAPPER_2:
            sp3C = -55.0f;
        case DEATH_ZAPPER_1:
        case DEATH_ZAPPER_3:
            if (!this->burst) {
                if (((this->actor.params == BOSSVA_ZAPPER_1) && (this->timer2 < 16)) ||
                    ((this->actor.params == BOSSVA_ZAPPER_2) && (this->timer2 < 24)) ||
                    (this->actor.params == BOSSVA_ZAPPER_3)) {

                    if (!(this->timer2 & 1) && (this->timer2 >= 0)) {
                        if (this->timer2 < 8) {
                            BossVa_Tumor(globalCtx, this, 1, (s16)Math_Rand_CenteredFloat(5.0f) + 0xD, 0.0f, 0.0f,
                                         TUMOR_ARM, 0.6f, true);
                        } else {
                            BossVa_Tumor(globalCtx, this, 1, (s16)Math_Rand_CenteredFloat(5.0f) + 6, 0.0f, 7.0f,
                                         TUMOR_ARM, (this->timer2 >> 3) + 1, true);
                        }

                        BossVa_Spark(globalCtx, this, 2, 50, 15.0f, 0.0f, SPARK_BODY, (this->timer2 >> 3) + 1, true);
                    }

                    this->timer2++;
                    if (this->timer2 >= 32) {
                        this->burst++;
                        this->isDead = true;
                        BossVa_SetDeathEnv(globalCtx);
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BREAK2);
                    }
                } else {
                    this->burst++;
                    this->isDead = true;
                    this->timer2 = 32;
                    sCsState++;
                }

                if ((this->actor.params - BOSSVA_ZAPPER_1 + DEATH_ZAPPER_1) == sCsState) {
                    sCameraAt.x = this->zapNeckPos.x;
                    sCameraEye.y = sCameraAt.y = this->zapNeckPos.y;
                    sCameraAt.z = this->zapNeckPos.z;
                    sCameraEye.x = (Math_Coss(-(this->actor.shape.rot.y + this->unk_1B0)) * sp3C) + this->zapNeckPos.x;
                    sCameraEye.z = (Math_Sins(-(this->actor.shape.rot.y + this->unk_1B0)) * sp3C) + this->zapNeckPos.z;
                    this->unk_1B0 += 0x15E;
                }
            } else {
                this->timer2--;
                if (this->timer2 == 0) {
                    if (this->actor.params == BOSSVA_ZAPPER_3) {
                        sCsState++;
                    }
                    Actor_Kill(&this->actor);
                }
            }
            break;
    }
}

void BossVa_SetupZapperEnraged(BossVa* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_06018D18.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06018D18, 1.0f, frames - 1.0f, frames, 1, -6.0f);
    this->burst = false;
    BossVa_SetupAction(this, BossVa_ZapperEnraged);
}

void BossVa_ZapperEnraged(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 sp70_pad;
    s16 tmp16;
    s16 sp6C;
    s16 sp6A;
    s16 sp68;
    s16 yaw;
    u32 sp60;
    Vec3f sp54 = player->actor.posRot.pos;

    sp54.y += 10.0f;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    BossVa_AttachToBody(this);
    if (sFightProgress >= PHASE_DEATH) {
        BossVa_SetupZapperDeath(this, globalCtx);
        return;
    }

    if (sBodyState & 0x7E) {
        BossVa_SetupZapperDamaged(this, globalCtx);
        return;
    }

    sp54.y += 25.0;

    sp6C = Math_Vec3f_Yaw(&sp54, &this->armTip);
    tmp16 = sp6C - this->actor.shape.rot.y;

    if ((ABS(tmp16) <= 0x4650 || this->burst) && !(sBodyState & 0x80) && !(player->stateFlags1 & 0x04000000)) {
        if (!this->burst) {

            sp68 = sp6C - this->actor.shape.rot.y;
            if (ABS(sp68) > 0x1770) {
                if (sp68 > 0) {
                    sp68 = 0x1770;
                } else {
                    sp68 = -0x1770;
                }
            }

            tmp16 = Math_SmoothScaleMaxMinS(&this->unk_1E6, sp68, 1, 0xDAC, 0);
            sp60 = ABS(tmp16);

            sp68 = sp6C - sp68;
            if (ABS(sp68) > 0x1770) {
                if (sp68 > 0) {
                    sp68 = 0x1770;
                } else {
                    sp68 = -0x1770;
                }
            }

            tmp16 = Math_SmoothScaleMaxMinS(&this->unk_1EC, sp68, 1, 0xDAC, 0);
            sp60 += ABS(tmp16);

            yaw = Math_Vec3f_Yaw(&this->zapHeadPos, &sp54);
            tmp16 = Math_SmoothScaleMaxMinS(&this->unk_1F2, yaw - 0x4000, 1, 0xEA6, 0);
            sp60 += ABS(tmp16);

            sp6A = this->actor.shape.rot.x + this->skelAnime.limbDrawTbl[1].x + this->skelAnime.limbDrawTbl[2].x +
                   this->skelAnime.limbDrawTbl[3].x + this->skelAnime.limbDrawTbl[4].x +
                   this->skelAnime.limbDrawTbl[5].x;

            yaw = Math_Vec3f_Pitch(&sp54, &this->zapNeckPos);
            tmp16 = Math_SmoothScaleMaxMinS(&this->unk_1EA, yaw - sp6A, 1, 0x1B58, 0);
            sp60 += ABS(tmp16);

            yaw = Math_Vec3f_Pitch(&this->zapHeadPos, &sp54);
            tmp16 = Math_SmoothScaleMaxMinS(&this->unk_1F0, -yaw, 1, 0x1B58, 0);
            sp60 += ABS(tmp16);

            this->skelAnime.animPlaybackSpeed = 0.0f;
            if ((Math_SmoothScaleMaxMinF(&this->skelAnime.animCurrentFrame, 0.0f, 1.0f, 3.0f, 0.0f) == 0.0f) &&
                (sp60 < 0x258)) {
                this->timer2 = 0;
                this->burst++;
                this->unk_1D8 = sp54;
                if (Math_Rand_ZeroOne() < 0.1f) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
                }
            }
        }
    } else {
        if (this->burst || (this->timer2 < 0)) {
            if (this->colliderLightning.base.atFlags & 2) {
                if (this->timer2 > 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_HIT_RINK);
                    BossVa_SetSparkEnv(globalCtx);
                    this->timer2 = -1;
                    BODY->onCeiling = 6; // not used by body
                }
            } else if (this->timer2 > 0) {
                this->timer2 = 0;
            }

            if ((this->timer2 < 0) && (player->stateFlags1 & 0x4000000)) {
                BossVa_Spark(globalCtx, this, 1, 30, 0.0f, 0, SPARK_LINK, 0.0f, true);
            }
        }

        Math_SmoothScaleMaxMinS(&this->unk_1E6, 0, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1EC, 0, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1EA, 0, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1F2, this->actor.shape.rot.y - this->actor.shape.rot.x, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1F0, this->skelAnime.limbDrawTbl[7].z, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 1.0f, 1.0f, 0.05f, 0.0f);
        this->burst = false;
    }

    if (this->burst && (this->burst != 2)) { // burst can never be 2
        if (this->timer2 >= 16) {
            if (this->timer2 == 18) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_THUNDER);
            }

            BossVa_Spark(globalCtx, this, 2, 110, 15.0f, 15.0f, SPARK_BLAST, 5.0f, true);
            BossVa_Spark(globalCtx, this, 2, 110, 15.0f, 15.0f, SPARK_BLAST, 6.0f, true);
            BossVa_Spark(globalCtx, this, 2, 110, 15.0f, 15.0f, SPARK_BLAST, 7.0f, true);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderLightning.base);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderLightning.base);
        } else {
            BossVa_Spark(globalCtx, this, 2, 50, 15.0f, 0.0f, SPARK_BODY, (this->timer2 >> 1) + 1, true);
            if (this->timer2 == 14) {
                BossVa_SetSparkEnv(globalCtx);
            }
            if (this->timer2 == 4) {
                Vec3f sp48 = this->zapHeadPos;

                BossVa_SpawnZapperCharge(globalCtx, sVaParticles, this, &sp48, &this->headRot, 100, 0);
            }
        }

        this->timer2++;
        if (this->timer2 >= 24) {
            this->burst = false;
        }
    }
}

void BossVa_SetupZapperHold(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06018B90, 0.0f, 0.0f, SkelAnime_GetFrameCount(&D_06018B90.genericHeader),
                         3, -6.0f);
    this->burst = false;
    BossVa_SetupAction(this, BossVa_ZapperHold);
}

void BossVa_ZapperHold(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    BossVa_AttachToBody(this);
    Math_SmoothScaleMaxMinS(&this->unk_1E6, 0, 1, 0x1770, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1E4, 0, 1, 0x1770, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1EC, 0, 1, 0x1770, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1EA, 0, 1, 0x1770, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1F2, this->actor.shape.rot.y - 0x4000, 1, 0x2710, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1F0, this->skelAnime.limbDrawTbl[7].z - 0x1388, 1, 0x1770, 0);
    if (BODY->actor.speedXZ == 0.0f) {
        BossVa_SetupZapperAttack(this, globalCtx);
    }
}

void BossVa_SetupBariIntro(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000024, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000024.genericHeader),
                         0, 0.0f);
    this->unk_1A0 = 60.0f;
    this->unk_1A4 = Math_Rand_ZeroOne() * 360.0f;
    this->timer2 = 64;
    this->unk_1F0 = 120;
    this->unk_1A8 = 0.0f;
    this->actor.posRot.pos.x = sInitPosOffsets[this->actor.params + 10].x + this->actor.initPosRot.pos.x;
    this->actor.posRot.pos.y = sInitPosOffsets[this->actor.params + 10].y + this->actor.initPosRot.pos.y;
    this->actor.posRot.pos.z = sInitPosOffsets[this->actor.params + 10].z + this->actor.initPosRot.pos.z;
    this->timer = 45;
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_BariIntro);
}

void BossVa_BariIntro(BossVa* this, GlobalContext* globalCtx) {
    Vec3f sp54 = this->actor.initPosRot.pos;
    f32 sp50 = 40.0f;
    s16 sp4E;
    s16 tmp;

    if (this->actor.initPosRot.pos.y >= 0.0f) {
        sp54.y += 25.0f;
    }

    this->unk_1A4 += Math_Rand_ZeroOne() * 0.25f;

    switch (sCsState) {
        case INTRO_LOOK_BARI:
            if (this->actor.params == BOSSVA_BARI_UPPER_1) {
                func_8002DF54(globalCtx, &this->actor, 1);
                if (Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 60.0f, 0.3f, 1.0f, 0.15f) == 0.0f) {
                    this->timer--;
                    if (this->timer == 0) {
                        sCsState++;
                    }
                }
            }
            this->actor.shape.rot.x = 0;
            break;
        case INTRO_REVERSE_CAMERA:
        case INTRO_SUPPORT_CAMERA:
        case INTRO_BODY_SOUND:
        case INTRO_LOOK_SUPPORT:
            if (this->actor.params != BOSSVA_BARI_UPPER_1) {
                Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y,
                                        sInitPosOffsets[this->actor.params + 10].y + this->actor.initPosRot.pos.y, 0.3f, 1.0f,
                                        0.15f);
                this->actor.posRot.pos.x += (func_800CA720(this->unk_1A4 * 0.25f) * 0.5f);
            } else {
                Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 60.0f, 0.3f, 1.0f, 0.15f);
            }
            this->actor.posRot.pos.y += func_800CA720(this->unk_1A4) * (2.0f - func_800CA720(this->unk_1A4));
            break;
        case INTRO_CALL_BARI:
        case INTRO_ATTACH_BARI:
            if ((this->vaBariFlags >= 0x10) && (this->timer < 0)) {
                Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, sp54.x, 1.0f, 6.5f, 0.0f);
                Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, sp54.y, 1.0f, 6.5f, 0.0f);
                Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, sp54.z, 1.0f, 6.5f, 0.0f);

                sp50 = Math_Vec3f_DistXYZ(&sp54, &this->actor.posRot.pos);
                if (sp50 <= 60.0f) {
                    tmp = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->actor.initPosRot.rot.x, 1, 0x7D0, 0);
                    sp4E = ABS(tmp);

                    tmp = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, 1, 0x7D0, 0);
                    sp4E += ABS(tmp);

                    if ((sp50 == 0.0f) && (sp4E == 0)) {
                        if (!this->isDead) {
                            if (this->actor.params >= BOSSVA_BARI_LOWER_1) {
                                if (this->actor.params == BOSSVA_BARI_LOWER_1) {
                                    sBodyBari[0]++;
                                } else {
                                    sBodyBari[this->actor.params - BOSSVA_BARI_UPPER_1]++;
                                }
                            } else {
                                sBodyBari[this->actor.params - BOSSVA_BARI_UPPER_1 + 1]++;
                            }
                            this->timer = -30;
                            this->isDead++;
                        } else {
                            this->timer++;
                            if (this->timer == 0) {
                                Actor_Kill(&this->actor);
                            }
                        }
                        return;
                    }
                }
            }
        case INTRO_UNUSED_CALL_BARI:
            this->timer--;
            if (this->timer == 0) {
                this->vaBariFlags = 0;
            } else {
                func_80035844(&BODY->actor.posRot.pos, &this->actor.posRot.pos, &this->actor.posRot.rot.x, false);
                this->unk_1A0 = Math_Vec3f_DistXYZ(&BODY->actor.posRot.pos, &this->actor.posRot.pos);
                if (sp50 > 30.0f) {
                    BossVa_Spark(globalCtx, this, 1, 80, 15.0f, 0.0f, SPARK_BARI, 1.0f, true);
                }
            }
            break;
        case BOSSVA_BATTLE:
            this->timer++;
            if (this->timer == 0) {
                Actor_Kill(&this->actor);
            }
            return;
        case INTRO_TITLE:
        case INTRO_BRIGHTEN:
        case INTRO_FINISH:
            break;
    }

    if (((globalCtx->gameplayFrames % 4) == 0) && (sCsState < INTRO_ATTACH_BARI)) {
        BossVa_Spark(globalCtx, this, 1, 70, 25.0f, 20.0f, SPARK_BARI, 2.0f, true);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }
}

void BossVa_SetupBariPhase3Attack(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000024, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000024.genericHeader),
                         0, 0.0f);
    this->vaBariFlags = 0x80;
    this->unk_1F0 = 0x78;
    this->unk_1A0 = 60.0f;
    this->unk_1A8 = 0.0f;
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_BariPhase3Attack);
}

void BossVa_BariPhase3Attack(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnBoom* boomerang;
    Vec3f sp54 = BODY->unk_1D8;
    s16 sp52;
    s32 pad;

    this->unk_1A4 += Math_Rand_ZeroOne() * 0.5f;
    sp52 = this->vaBariFlags & 0x1FF;

    if ((globalCtx->gameplayFrames % 128) == 0) {
        this->vaBariUnused.x = (s16)(Math_Rand_ZeroOne() * 100.0f) + 100;
    }

    Math_SmoothScaleMaxMinS(&this->vaBariUnused.z, this->vaBariUnused.x, 1, 0x1E, 0);
    this->vaBariUnused.y += this->vaBariUnused.z;
    if ((this->colliderLightning.base.atFlags & 2) || (this->colliderSph.base.atFlags & 2)) {
        if ((this->colliderLightning.base.at == &player->actor) || (this->colliderSph.base.at == &player->actor)) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, BODY->actor.yawTowardsLink, 8.0f);
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
            this->colliderSph.base.at = NULL;
            this->colliderLightning.base.at = NULL;
        }

        this->colliderLightning.base.atFlags &= ~2;
        this->colliderSph.base.atFlags &= ~2;
    }

    if (this->colliderSph.base.acFlags & 2) {
        this->colliderSph.base.acFlags &= ~2;
        if ((this->colliderSph.base.ac->id == ACTOR_EN_BOOM) && (sp52 >= 128)) {
            boomerang = (EnBoom*)this->colliderSph.base.ac;
            boomerang->returnTimer = 0;
            boomerang->moveTo = &player->actor;
            boomerang->actor.posRot.rot.y = boomerang->actor.yawTowardsLink;
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_SHIELD_REFLECT_SW);
        }
    }

    this->actor.posRot.pos.x = (Math_Sins(this->actor.posRot.rot.y) * this->unk_1A0) + sp54.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.posRot.rot.y) * this->unk_1A0) + sp54.z;
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 4.0f, 1.0f, 2.0f, 0.0f);
    this->actor.posRot.pos.y += 2.0f * func_800CA720(this->unk_1A4);
    this->actor.posRot.rot.x = Math_Vec3f_Pitch(&sp54, &this->actor.posRot.pos);
    Math_SmoothScaleMaxMinF(&this->unk_1A0, 160.0f, 1.0f, 2.0f, 0.0f);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, 0, 1, 0x5DC, 0);
    if (!(this->vaBariFlags & 0x200)) {
        this->unk_1AC = 0xBB8;
    } else {
        this->unk_1AC = -0xBB8;
    }

    if (sp52 >= 128) {
        BossVa_Spark(globalCtx, this, 1, 75, 15.0f, 7.0f, SPARK_TETHER, 1.0f, true);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
        sPhase3Stop = false;
    } else {
        sPhase3Stop = true;
    }

    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderLightning.base);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
    if ((globalCtx->gameplayFrames % 4) == 0) {
        Math_SmoothScaleMaxMinS(&this->unk_1F0, 0x78, 1, 0xA, 0);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    this->actor.posRot.rot.y += this->unk_1AC;
    if (sBodyState & 0x7F) {
        BossVa_SetupBariPhase3Stunned(this, globalCtx);
    }
}

void BossVa_SetupBariPhase2Attack(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000024, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000024.genericHeader),
                         0, 0.0f);
    this->vaBariFlags = 0x40;
    this->unk_1F0 = 0x78;
    this->unk_1A0 = 60.0f;
    this->unk_1A8 = 0.0f;
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_BariPhase2Attack);
}

void BossVa_BariPhase2Attack(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnBoom* boomerang;
    Vec3f sp54 = BODY->unk_1D8;
    s16 sp52;
    s16 sp50;
    f32 sp4C;
    s32 pad;

    this->unk_1A4 += Math_Rand_ZeroOne() * 0.5f;
    sp52 = this->vaBariFlags & 0x1FF;
    if ((globalCtx->gameplayFrames % 128) == 0) {
        this->vaBariUnused.x = (s16)(Math_Rand_ZeroOne() * 100.0f) + 100;
    }

    sp50 = (sFightProgress * 70) - 280;
    Math_SmoothScaleMaxMinS(&this->vaBariUnused.z, this->vaBariUnused.x, 1, 0x1E, 0);
    this->vaBariUnused.y += this->vaBariUnused.z;
    if (sKillBari != 0) {
        sKillBari--;
        BossVa_KillBari(this, globalCtx);
        return;
    }

    if ((this->colliderLightning.base.atFlags & 2) || (this->colliderSph.base.atFlags & 2)) {
        if ((this->colliderLightning.base.at == &player->actor) || (this->colliderSph.base.at == &player->actor)) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, BODY->actor.yawTowardsLink, 8.0f);
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
            this->colliderSph.base.at = NULL;
            this->colliderLightning.base.at = NULL;
        }

        this->colliderLightning.base.atFlags &= ~2;
        this->colliderSph.base.atFlags &= ~2;
    }

    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 4.0f, 1.0f, 2.0f, 0.0f);
    this->actor.posRot.rot.x = Math_Vec3f_Pitch(&sp54, &this->actor.posRot.pos);
    if ((globalCtx->gameplayFrames % 8) == 0) {
        Math_SmoothScaleMaxMinS(&this->unk_1F0, 0x28, 1, 0xA, 0);
        BossVa_Spark(globalCtx, this, 1, this->unk_1F0, 25.0f, 20.0f, 2, 2.0f, true);
    }

    if (!(sPhase2Timer & 0x100) && (BODY->actor.dmgEffectTimer == 0)) {
        sp4C = 200.0f;
        BossVa_Spark(globalCtx, this, 1, 125, 15.0f, 7.0f, SPARK_TETHER, 1.0f, true);
        this->actor.flags &= ~1;
        if (this->actor.params & 1) {
            sp4C = -200.0f;
        }

        Math_SmoothScaleMaxMinF(&this->unk_1A0, (Math_Sins(sPhase2Timer * 0x190) * sp4C) + 320.0f, 1.0f, 10.0f, 0.0f);
        Math_SmoothScaleMaxMinS(&this->unk_1AC, sp50 + 0x1F4, 1, 0x3C, 0);
        this->actor.posRot.pos.y += 2.0f * func_800CA720(this->unk_1A4);
        if (this->colliderSph.base.acFlags & 2) {
            this->colliderSph.base.acFlags &= ~2;

            if ((this->colliderSph.base.ac->id == ACTOR_EN_BOOM) && (sp52 >= 64)) {
                boomerang = (EnBoom*)this->colliderSph.base.ac;
                boomerang->returnTimer = 0;
                boomerang->moveTo = &player->actor;
                boomerang->actor.posRot.rot.y = boomerang->actor.yawTowardsLink;
                Audio_PlayActorSound2(&this->actor, NA_SE_IT_SHIELD_REFLECT_SW);
            }
        }

        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderLightning.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
    } else {
        this->actor.flags |= 1;
        Math_SmoothScaleMaxMinS(&this->unk_1AC, sp50 + 150, 1, 0x3C, 0);
        if (BODY->actor.dmgEffectTimer == 0) {
            Math_SmoothScaleMaxMinF(&this->unk_1A0, 180.0f, 1.0f, 1.5f, 0.0f);
        } else {
            this->unk_1AC = 0;
            if (this->actor.dmgEffectTimer == 0) {
                func_8003426C(&this->actor, 0, 0xFF, 0x2000, BODY->actor.dmgEffectTimer);
            }
        }

        this->actor.posRot.pos.y += func_800CA720(this->unk_1A4) * 4.0f;
        if (this->colliderSph.base.acFlags & 2) {
            BossVa_KillBari(this, globalCtx);
        }
    }

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, 0, 1, 0x5DC, 0);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
    if ((globalCtx->gameplayFrames % 4) == 0) {
        Math_SmoothScaleMaxMinS(&this->unk_1F0, 0x78, 1, 0xA, 0);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    if (BODY->actor.dmgEffectTimer == 0) {
        if (!(this->vaBariFlags & 0x400)) {
            this->actor.posRot.rot.y += this->unk_1AC;
        } else {
            this->actor.posRot.rot.y -= this->unk_1AC;
        }

        this->actor.posRot.pos.x = (Math_Sins(this->actor.posRot.rot.y) * this->unk_1A0) + sp54.x;
        this->actor.posRot.pos.z = (Math_Coss(this->actor.posRot.rot.y) * this->unk_1A0) + sp54.z;
    }
}

void BossVa_SetupBariPhase3Stunned(BossVa* this, GlobalContext* globalCtx) {
    this->actor.flags |= 1;
    this->timer = BODY->timer;
    func_8003426C(&this->actor, 0, 0xFF, 0x2000, this->timer);
    BossVa_SetupAction(this, BossVa_BariPhase3Stunned);
}

void BossVa_BariPhase3Stunned(BossVa* this, GlobalContext* globalCtx) {
    s32 sp44_pad;
    Vec3f sp40 = BODY->unk_1D8;

    this->actor.posRot.rot.x = Math_Vec3f_Pitch(&BODY->actor.posRot.pos, &this->actor.posRot.pos);
    if (this->colliderSph.base.acFlags & 2) {
        BossVa_KillBari(this, globalCtx);
        return;
    }

    this->unk_1A4 += (Math_Rand_ZeroOne() * 0.5f);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 4.0f, 1.0f, 2.0f, 0.0f);
    this->actor.posRot.pos.y += func_800CA720(this->unk_1A4) * 3.0f;
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderSph.base);
    if ((globalCtx->gameplayFrames % 4) == 0) {
        Math_SmoothScaleMaxMinS(&this->unk_1F0, 0x28, 1, 0xA, 0);
        BossVa_Spark(globalCtx, this, 1, this->unk_1F0, 25.0f, 20.0f, SPARK_BARI, 2.0f, true);
    }

    this->timer--;
    this->actor.posRot.rot.x = Math_Vec3f_Pitch(&sp40, &this->actor.posRot.pos);
    if (this->timer <= 0) {
        if (this->timer == 0) {
            this->vaBariFlags = 0;
        } else {
            BossVa_Spark(globalCtx, this, 1, 85, 15.0f, 0.0f, SPARK_TETHER, 1.0f, true);
            if (this->vaBariFlags >= 0x10) {
                this->actor.flags &= ~1;
                this->vaBariFlags = 0x80;
                BossVa_SetupAction(this, BossVa_BariPhase3Attack);
            }
        }
    }
}

void BossVa_SetupBariDeath(BossVa* this) {
    this->actor.flags &= ~1;
    this->timer = 30;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_DEAD);
    this->isDead++;
    BossVa_SetupAction(this, BossVa_BariDeath);
}

void BossVa_BariDeath(BossVa* this, GlobalContext* globalCtx) {
    this->timer--;
    if (this->timer == 0) {
        Actor_Kill(&this->actor);
    }
}

void BossVa_SetupDoor(BossVa* this, GlobalContext* globalCtx) {
    if (sCsState >= INTRO_SPAWN_BARI) {
        sDoorState = 100;
    }
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_Door);
}

void BossVa_Door(BossVa* this, GlobalContext* globalCtx) {
    if (sDoorState == 29) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_BUYODOOR_CLOSE);
    }

    if (sCsState <= INTRO_DOOR_SHUT) {
        if (sDoorState < 100) {
            sDoorState += 8;
        } else {
            sDoorState = 100;
        }
    }
}

void BossVa_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossVa* this = THIS;
    EnBoom* boomerang;
    s32 i;

    this->actionFunc(this, globalCtx);

    switch (this->actor.params) {
        case BOSSVA_BODY:
            if (THIS->colliderBody.base.acFlags & 2) {
                this->colliderBody.base.acFlags &= ~2;
                boomerang = (EnBoom*)this->colliderBody.base.ac;
                if (boomerang->actor.id == ACTOR_EN_BOOM) {
                    boomerang->returnTimer = 0;
                }
            }

            BossVa_UpdateParticles(globalCtx);

            for (i = 2; i >= 0; i--) {
                if ((globalCtx->envCtx.unk_8C[0][i] - 1) > 0) {
                    globalCtx->envCtx.unk_8C[0][i] -= 1;
                } else {
                    globalCtx->envCtx.unk_8C[0][i] = 0;
                }

                if ((globalCtx->envCtx.unk_8C[1][i] - 10) > 0) {
                    globalCtx->envCtx.unk_8C[1][i] -= 10;
                } else {
                    globalCtx->envCtx.unk_8C[1][i] = 0;
                }

                if ((globalCtx->envCtx.unk_8C[2][i] - 10) > 0) {
                    globalCtx->envCtx.unk_8C[2][i] -= 10;
                } else {
                    globalCtx->envCtx.unk_8C[2][i] = 0;
                }
            }

            if (this->onCeiling > 0) {
                this->onCeiling--; // not used by body
            }
            break;

        default:
            this->vaBariFlags++;
            this->actor.posRot2.pos = this->actor.posRot.pos;
            this->actor.posRot2.pos.y += 45.0f;
            this->unk_1D8.y = (Math_Coss(this->vaBariFlags * 0xFA4) * 0.24f) + 0.76f;
            this->unk_1D8.x = (Math_Sins(this->vaBariFlags * 0xFA4) * 0.2f) + 1.0f;
            break;

        case BOSSVA_SUPPORT_1:
        case BOSSVA_SUPPORT_2:
        case BOSSVA_SUPPORT_3:
        case BOSSVA_ZAPPER_1:
        case BOSSVA_ZAPPER_2:
        case BOSSVA_ZAPPER_3:
        case BOSSVA_DOOR:
            break;
    }
}

s32 BossVa_BodyOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                Actor* thisx) {
    BossVa* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4156);

    if (limbIndex == 20) {
        gDPPipeSync(POLY_OPA_DISP++);
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 8, 0x10, 1, 0,
                                    (globalCtx->gameplayFrames * -2) % 64, 0x10, 0x10));
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->bodyGlow);
        Matrix_RotateX(-M_PI / 2, MTXMODE_APPLY);
    } else if ((limbIndex >= 10) && (limbIndex < 20)) {
        rot->x -= 0x4000;
        *dList = NULL;
    } else if (limbIndex == 6) {
        Matrix_Scale(this->unk_1A4, this->unk_1A4, this->unk_1A4, MTXMODE_APPLY);
    } else if (limbIndex == 61) {
        Matrix_Scale(this->unk_1A0, this->unk_1A0, this->unk_1A0, MTXMODE_APPLY);
    } else if (limbIndex == 7) {
        rot->x -= 0xCCC;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4183);
    return 0;
}

void BossVa_BodyPostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    BossVa* this = THIS;
    Vec3f sp78 = { 0.0f, 0.0f, 0.0f };
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4192);

    if (limbIndex == 6) {
        if (sFightProgress < PHASE_3) {
            sp78.x = -1000.0f;
        } else {
            sp78.x = 200.0f;
        }
        Matrix_MultVec3f(&sp78, &this->unk_1D8);
    } else if ((limbIndex >= 10) && (limbIndex < 20) && (sBodyBari[limbIndex - 10] != 0)) {
        if (((limbIndex >= 16) || (limbIndex == 10)) && (sFightProgress <= PHASE_3)) {
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 4208),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, &D_06008BB8);
        } else if ((limbIndex >= 11) && (sFightProgress <= PHASE_2)) {
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 4212),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, &D_06008BB8);
        }

        if (sCsState >= DEATH_START) {
            sp78.x = Math_Rand_CenteredFloat(530.0f);
            sp78.y = Math_Rand_CenteredFloat(530.0f);
            sp78.z = -60.0f;
        }
        Matrix_MultVec3f(&sp78, &this->effectPos[limbIndex - 10]);
    } else if (limbIndex == 25) {
        gSPSegment(POLY_XLU_DISP++, 0x09,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, (globalCtx->gameplayFrames * 10) % 128, 0x10, 0x20,
                                    1, 0, (globalCtx->gameplayFrames * 5) % 128, 0x10, 0x20));
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 4232),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, &D_06008D70);
    } else if ((*dList != NULL) && (limbIndex >= 29) && (limbIndex < 56)) {
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 4236),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, *dList);
    } else if ((limbIndex == 24) && (sCsState < DEATH_START)) {
        sp78.x = (thisx->shape.unk_08 + 450.0f) + -140.0f;
        Matrix_MultVec3f(&sp78, &this->unk_280);
        sp78.x = 200.0f;
        Matrix_MultVec3f(&sp78, &this->unk_274);
    }

    if ((limbIndex == 7) && (sCsState >= DEATH_START)) {
        sp78.x = Math_Rand_CenteredFloat(320.0f) + -250.0f;
        sp78.y = Math_Rand_CenteredFloat(320.0f);
        sp78.z = Math_Rand_CenteredFloat(320.0f);

        if (sp78.y < 0.0f) {
            sp78.y -= 150.0f;
        } else {
            sp78.y += 150.0f;
        }

        if (sp78.z < 0.0f) {
            sp78.z -= 150.0f;
        } else {
            sp78.z += 150.0f;
        }
        Matrix_MultVec3f(&sp78, &this->unk_274);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4264);
}

s32 BossVa_SupportOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                   Actor* thisx) {
    BossVa* this = THIS;

    if (!this->onCeiling && (limbIndex == 4)) {
        rot->z += this->headRot.x;
    }
    return 0;
}

void BossVa_SupportPostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    BossVa* this = THIS;
    Vec3f sp20 = { 0.0f, 0.0f, 0.0f };
    s32 pad;

    if (this->onCeiling) {
        switch (limbIndex) {
            case 4:
                Matrix_MultVec3f(&sZeroVec, &this->actor.posRot2.pos);
                func_800628A4(0, &this->colliderSph);
                break;
            case 7:
                Matrix_MultVec3f(&sZeroVec, &this->armTip);
                sp20.x = ((this->timer & 0x1F) >> 1) * -40.0f;
                sp20.y = ((this->timer & 0x1F) >> 1) * -7.0f;
                Matrix_MultVec3f(&sp20, &this->effectPos[0]);
                break;
            case 9:
                sp20.x = ((this->timer & 0x1F) >> 1) * -60.0f;
                sp20.y = ((this->timer & 0x1F) >> 1) * -45.0f;
                Matrix_MultVec3f(&sp20, &this->effectPos[1]);
                break;
        }
    } else {
        switch (limbIndex) {
            case 5:
                Matrix_MultVec3f(&sZeroVec, &this->armTip);
                break;
            case 8:
                sp20.x = (this->timer2 & 7) * 90.0f;
                Matrix_MultVec3f(&sp20, &this->effectPos[2]);
                break;
            case 9:
                sp20.x = (this->timer2 & 7) * 50.0f;
                Matrix_MultVec3f(&sp20, &this->effectPos[1]);
                break;
            case 10:
                sp20.x = (this->timer2 & 7) * 46.0f;
                Matrix_MultVec3f(&sp20, &this->effectPos[0]);
                break;
        }
    }
}

s32 BossVa_ZapperOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                  Actor* thisx) {
    BossVa* this = THIS;
    MtxF zapperMtx;

    switch (limbIndex) {
        case 4:
            rot->y += this->unk_1E6;
            rot->z += this->unk_1E4;
            break;
        case 5:
            rot->y += this->unk_1EC;
            rot->z += this->unk_1EA;
            break;
        case 7:
            Matrix_Translate(pos->x, pos->y, pos->z, MTXMODE_APPLY);
            Matrix_Get(&zapperMtx);
            func_800D2264(&zapperMtx, &sZapperRot, false);
            Matrix_RotateX(-sZapperRot.x * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_RotateY(-sZapperRot.y * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_RotateZ(-sZapperRot.z * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_RotateY(this->unk_1F2 * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_RotateZ(this->unk_1F0 * (M_PI / 0x8000), MTXMODE_APPLY);
            pos->x = pos->y = pos->z = 0.0f;
            rot->x = rot->y = rot->z = 0;
            break;
    }
    return 0;
}

void BossVa_ZapperPostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    BossVa* this = THIS;
    Vec3f sp70 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp64 = { 15.0f, 0.0f, 0.0f };
    Vec3f sp58 = { -15.0f, 0.0f, 0.0f };
    Vec3f sp4C = { 15.0f, 0.0f, 0.0f };
    Vec3f sp40 = { -15.0f, 0.0f, 0.0f };
    s16 sp3E;
    s16 sp3C;

    switch (limbIndex) {
        case 3:
            sp70.x = (this->timer2 & 7) * 30.0f;
            Matrix_MultVec3f(&sp70, &this->effectPos[0]);
            break;

        case 4:
            Matrix_MultVec3f(&sZeroVec, &this->armTip);
            sp70.x = (this->timer2 & 7) * 30.0f;
            Matrix_MultVec3f(&sp70, &this->effectPos[1]);
            break;

        case 5:
            Matrix_MultVec3f(&sZeroVec, &this->zapNeckPos);
            sp70.x = (this->timer2 & 7) * 46.0f;
            Matrix_MultVec3f(&sp70, &this->effectPos[2]);
            break;

        case 7:
            Matrix_MultVec3f(&sZeroVec, &this->zapHeadPos);
            sp70.x = (this->timer2 & 7) * 46.0f;
            Matrix_MultVec3f(&sp70, &this->effectPos[3]);
            sp70.x = 20.0f;
            Matrix_MultVec3f(&sp70, &this->effectPos[9]);
            func_80035844(&this->effectPos[9], &this->unk_1D8, &this->headRot.x, false);
            sp3E = this->headRot.x;
            sp3C = this->headRot.y;
            Matrix_Push();
            Matrix_Translate(this->effectPos[9].x, this->effectPos[9].y, this->effectPos[9].z, MTXMODE_NEW);
            Matrix_RotateRPY(sp3E, sp3C, 0, MTXMODE_APPLY);
            sp70.x = 0.0f;
            if (sFightProgress >= PHASE_4) {
                sp70.z = ((this->timer2 - 16) & 7) * 120.0f;
            } else {
                sp70.z = ((this->timer2 - 32) & 0xF) * 80.0f;
            }
            sp4C.z = sp40.z = sp70.z += 40.0f;
            sp70.z += 50.0f;
            Matrix_MultVec3f(&sp70, &this->effectPos[4]);
            if (sFightProgress >= PHASE_4) {
                sp70.z -= 33.0f;
                if (sp70.z < 0.0f) {
                    sp70.z = 0.0f;
                }
                Matrix_MultVec3f(&sp70, &this->effectPos[6]);
                sp70.z -= 33.0f;
                if (sp70.z < 0.0f) {
                    sp70.z = 0.0f;
                }
            } else {
                sp70.z -= 22.0f;
                if (sp70.z < 0.0f) {
                    sp70.z = 0.0f;
                }
                Matrix_MultVec3f(&sp70, &this->effectPos[6]);
                sp70.z -= 22.0f;
                if (sp70.z < 0.0f) {
                    sp70.z = 0.0f;
                }
            }
            Matrix_MultVec3f(&sp70, &this->effectPos[5]);
            Matrix_MultVec3f(&sp64, &this->colliderLightning.dim.quad[1]);
            Matrix_MultVec3f(&sp58, &this->colliderLightning.dim.quad[0]);
            Matrix_MultVec3f(&sp4C, &this->colliderLightning.dim.quad[3]);
            Matrix_MultVec3f(&sp40, &this->colliderLightning.dim.quad[2]);
            func_80062734(&this->colliderLightning, &this->colliderLightning.dim.quad[0],
                          &this->colliderLightning.dim.quad[1], &this->colliderLightning.dim.quad[2],
                          &this->colliderLightning.dim.quad[3]);
            Matrix_Pull();
            break;
    }
}

s32 BossVa_BariOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                Actor* thisx) {
    BossVa* this = THIS;

    switch (limbIndex) {
        case 2:
            *dList = NULL;
            break;
        case 3:
            Matrix_Scale(this->unk_1D8.x, 1.0f, this->unk_1D8.x, MTXMODE_APPLY);
            break;
        case 4:
            Matrix_Scale(1.0f, this->unk_1D8.y, 1.0f, MTXMODE_APPLY);
            break;
    }
    return 0;
}

void BossVa_BariPostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    BossVa* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4494);

    if (limbIndex == 2) {
        gSPSegment(POLY_XLU_DISP++, 0x0A,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (globalCtx->gameplayFrames * 10) % 32, 0x10, 0x20, 1,
                                    0, (globalCtx->gameplayFrames * -5) % 32, 0x10, 0x20));
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 4508),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_06000FA0);
    } else if ((limbIndex == 3) || (limbIndex == 4)) {
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 4512),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, *dList);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4517);
}

void BossVa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    // GlobalContext* globalCtx = globalCtx2;
    s16* fakeParams; // Yeah this is the fakest shit ever. I don't know.
    BossVa* this = THIS;
    Vec3f spBC;
    Vec3f spB0 = { 0.0f, 45.0f, 0.0f };
    Vec3f spA4 = { 0.4f, 0.4f, 0.4f };
    Vec3f sp98 = { 15.0f, 40.0f, 0.0f };
    Vec3f sp8C = { -15.0f, 40.0f, 0.0f };
    Vec3f sp80 = { 15.0f, 40.0f, 0.0f };
    Vec3f sp74 = { -15.0f, 40.0f, 0.0f };
    Color_RGBA8 unused = { 250, 250, 230, 200 };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4542);

    func_80093D18(globalCtx->state.gfxCtx);
    fakeParams = &this->actor.params;
    func_80093D84(globalCtx->state.gfxCtx);

    switch (this->actor.params) {
        case BOSSVA_BODY:
            if (globalCtx->envCtx.unk_9E != 0) {
                globalCtx->envCtx.unk_9E += 0x15E;
                if (globalCtx->envCtx.unk_9E > 0) {
                    globalCtx->envCtx.unk_9E = 0;
                }
            }

            if (globalCtx->envCtx.unk_A0 != 0) {
                globalCtx->envCtx.unk_A0 += 0x15E;
                if (globalCtx->envCtx.unk_A0 > 0) {
                    globalCtx->envCtx.unk_A0 = 0;
                }
            }

            if (!this->isDead) {
                gSPSegment(POLY_OPA_DISP++, 0x08,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 8, 0x10, 1, 0,
                                            (globalCtx->gameplayFrames * -10) % 16, 0x10, 0x10));
                gSPSegment(POLY_OPA_DISP++, 0x09,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (globalCtx->gameplayFrames * -10) % 32, 0x10,
                                            0x20, 1, 0, (globalCtx->gameplayFrames * -5) % 32, 0x10, 0x20));
                SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                               BossVa_BodyOverrideLimbDraw, BossVa_BodyPostLimbDraw, &this->actor);
            }
            break;
        case BOSSVA_SUPPORT_1:
        case BOSSVA_SUPPORT_2:
        case BOSSVA_SUPPORT_3:
            if (!this->isDead) {
                SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                 this->skelAnime.dListCount, BossVa_SupportOverrideLimbDraw, BossVa_SupportPostLimbDraw,
                                 &this->actor);
            }
            break;
        case BOSSVA_ZAPPER_1:
        case BOSSVA_ZAPPER_2:
        case BOSSVA_ZAPPER_3:
            if (!this->isDead) {
                SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                 this->skelAnime.dListCount, BossVa_ZapperOverrideLimbDraw, BossVa_ZapperPostLimbDraw,
                                 &this->actor);
            }
            break;
        case BOSSVA_STUMP_1:
        case BOSSVA_STUMP_2:
        case BOSSVA_STUMP_3:
            SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                             this->skelAnime.dListCount, NULL, NULL, NULL);
            break;
        default:
            if (!this->isDead) {
                SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                               BossVa_BariOverrideLimbDraw, BossVa_BariPostLimbDraw, &this->actor);
                func_800628A4(0, &this->colliderSph);
                if (sCsState < BOSSVA_BATTLE) {
                    spBC = BODY->actor.posRot.pos;
                } else {
                    spBC = BODY->unk_1D8;
                }
                Matrix_MultVec3f(&sZeroVec, &this->effectPos[1]);
                Matrix_Push();
                Matrix_Translate(spBC.x, spBC.y, spBC.z, MTXMODE_NEW);
                Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, 0, MTXMODE_APPLY);
                sp80.z = sp74.z = this->unk_1A0;
                spB0.z = (this->vaBariFlags & 0xF) * (this->unk_1A0 * 0.0625f);
                Matrix_MultVec3f(&spB0, &this->effectPos[0]);
                Matrix_MultVec3f(&sp98, &this->colliderLightning.dim.quad[1]);
                Matrix_MultVec3f(&sp8C, &this->colliderLightning.dim.quad[0]);
                Matrix_MultVec3f(&sp80, &this->colliderLightning.dim.quad[3]);
                Matrix_MultVec3f(&sp74, &this->colliderLightning.dim.quad[2]);
                func_80062734(&this->colliderLightning, &this->colliderLightning.dim.quad[0],
                              &this->colliderLightning.dim.quad[1], &this->colliderLightning.dim.quad[2],
                              &this->colliderLightning.dim.quad[3]);
                Matrix_Pull();
                spBC = this->actor.posRot.pos;
                spBC.y += 9.0f;
                if (this->actor.dmgEffectTimer != 0) {
                    func_80026A6C(globalCtx);
                }
                func_80033C30(&spBC, &spA4, 0xFF, globalCtx);
                if (this->actor.dmgEffectTimer != 0) {
                    Color_RGBA8 blue = { 0, 0, 255, 255 };

                    func_80026860(globalCtx, &blue, this->actor.dmgEffectTimer, this->actor.dmgEffectParams & 0xFF);
                }
            }
            break;
        case BOSSVA_DOOR:
            break;
    }

    if (*fakeParams == BOSSVA_BODY) {
        BossVa_DrawParticles(sVaParticles, globalCtx);
    } else if (*fakeParams == BOSSVA_DOOR) {
        BossVa_DrawDoor(globalCtx, sDoorState);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4673);
}

static s32 sUnkValue = 0x009B0000; // Unreferenced? Possibly a color

void BossVa_UpdateParticles(GlobalContext* globalCtx) {
    BossVaParticle* ptr = sVaParticles;
    Player* player = PLAYER; // spB8
    s16 spB6;
    s16 i;
    f32 floorY;
    s32 padAC;
    s16 pitch; // spAA
    s16 yaw;
    BossVa* refActor2; // spA4
    BossVa* refActor;  // spA0
    Vec3f sp94;
    CollisionPoly* sp90;
    f32 pad8C;
    Vec3f sp80;
    CollisionPoly* sp7C;
    f32 pad78;
    f32 pad74;

    for (i = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type != VA_NONE) {
            ptr->timer--;

            ptr->pos.x += ptr->velocity.x;
            ptr->pos.y += ptr->velocity.y;
            ptr->pos.z += ptr->velocity.z;

            ptr->velocity.x += ptr->accel.x;
            ptr->velocity.y += ptr->accel.y;
            ptr->velocity.z += ptr->accel.z;

            if ((ptr->type == VA_LARGE_SPARK) || (ptr->type == VA_SMALL_SPARK)) {
                refActor = ptr->parent;

                ptr->rot.z += (s16)(Math_Rand_ZeroOne() * 20000.0f) + 0x2000;
                ptr->rot.y += (s16)(Math_Rand_ZeroOne() * 10000.0f) + 0x2000;

                if ((ptr->mode == SPARK_TETHER) || (ptr->mode == SPARK_UNUSED)) {
                    pitch = ptr->rot.x -
                            Math_Vec3f_Pitch(&refActor->actor.posRot.pos, &((BossVa*)refActor->actor.parent)->unk_1D8);
                    pad8C = Math_Sins(refActor->actor.posRot.rot.y);
                    ptr->pos.x = refActor->actor.posRot.pos.x - (ptr->offset.x * pad8C);
                    pad74 = Math_Coss(refActor->actor.posRot.rot.y);
                    ptr->pos.z = refActor->actor.posRot.pos.z - (ptr->offset.x * pad74);
                    pad78 = Math_Coss(-pitch);
                    ptr->pos.y = (ptr->offset.y * pad78) + refActor->actor.posRot.pos.y;
                } else if ((ptr->mode == SPARK_BARI) || (ptr->mode == SPARK_BODY)) {
                    ptr->pos.x = ptr->offset.x + refActor->actor.posRot.pos.x;
                    ptr->pos.y = ptr->offset.y + refActor->actor.posRot.pos.y;
                    ptr->pos.z = ptr->offset.z + refActor->actor.posRot.pos.z;
                } else {
                    spB6 = Math_Rand_ZeroFloat(17.9f);
                    ptr->pos.x = player->bodyPartsPos[spB6].x + Math_Rand_CenteredFloat(10.0f);
                    ptr->pos.y = player->bodyPartsPos[spB6].y + Math_Rand_CenteredFloat(15.0f);
                    ptr->pos.z = player->bodyPartsPos[spB6].z + Math_Rand_CenteredFloat(10.0f);
                }

                if (ptr->timer < 100) {
                    ptr->primColor[3] -= 50;
                    if (ptr->primColor[3] < 0) {
                        ptr->primColor[3] = 0;
                        ptr->timer = 0;
                        ptr->type = VA_NONE;
                    }
                }
            }

            if (ptr->type == VA_BLAST_SPARK) {
                ptr->rot.z += (s16)(Math_Rand_ZeroOne() * 20000.0f) + 0x4000;
                if (ptr->timer < 100) {
                    ptr->primColor[3] -= 50;
                    if (ptr->primColor[3] < 0) {
                        ptr->primColor[3] = 0;
                        ptr->timer = 0;
                        ptr->type = VA_NONE;
                    }
                }
            }

            if (ptr->type == VA_SPARK_BALL) {
                refActor2 = ptr->parent;

                ptr->rot.z += (s16)(Math_Rand_ZeroOne() * 10000.0f) + 0x24A8;
                ptr->pos.x = ptr->offset.x + refActor2->actor.posRot.pos.x;
                ptr->pos.y =
                    refActor2->actor.posRot.pos.y + 310.0f + (refActor2->actor.shape.unk_08 * refActor2->actor.scale.y);
                ptr->pos.z = ptr->offset.z + refActor2->actor.posRot.pos.z;
                ptr->mode = (ptr->mode + 1) & 7;

                if (ptr->timer < 100) {
                    ptr->primColor[3] -= 50;
                    if (ptr->primColor[3] < 0) {
                        ptr->primColor[3] = 0;
                        ptr->timer = 0;
                        ptr->type = VA_NONE;
                    }
                }
            }

            if (ptr->type == VA_ZAP_CHARGE) {
                ptr->mode = (ptr->mode + 1) & 7;
                ptr->primColor[3] -= 20;
                if (ptr->primColor[3] <= 0) {
                    ptr->primColor[3] = 0;
                    ptr->timer = 0;
                    ptr->type = VA_NONE;
                }
            }

            if (ptr->type == VA_BLOOD) {
                if (ptr->mode < BLOOD_SPOT) {
                    sp94 = ptr->pos;
                    sp94.y -= ptr->velocity.y + 4.0f;
                    floorY = func_8003C890(&globalCtx->colCtx, &sp90, &sp94);
                    if ((sp90 != NULL) && (ptr->pos.y <= floorY)) {
                        ptr->mode = BLOOD_SPOT;
                        ptr->pos.y = floorY + 1.0f;
                        if (sCsState <= DEATH_SHELL_BURST) {
                            ptr->timer = 80;
                        } else {
                            ptr->timer = 60000;
                        }

                        ptr->accel = ptr->velocity = sZeroVec;
                    }
                    if (!ptr->timer) {
                        ptr->type = VA_NONE;
                    }
                } else {
                    if (ptr->timer < 20) {
                        ptr->envColor[3] = ptr->timer * 5;
                        ptr->primColor[3] = ptr->timer * 10;
                    } else if (ptr->timer > 50000) {
                        ptr->timer++;
                    }
                }

                if (!ptr->timer) {
                    ptr->type = VA_NONE;
                }
            }

            if (ptr->type == VA_GORE) {
                if (ptr->mode == GORE_PERMANENT) {
                    sp80 = ptr->pos;
                    sp80.y -= ptr->velocity.y + 4.0f;
                    ptr->rot.x += 0x1770;
                    floorY = func_8003C890(&globalCtx->colCtx, &sp7C, &sp80);
                    if ((sp7C != NULL) && (ptr->pos.y <= floorY)) {
                        ptr->mode = GORE_FLOOR;
                        ptr->timer = 30;
                        ptr->pos.y = floorY + 1.0f;
                        ptr->accel = ptr->velocity = sZeroVec;
                        ptr->rot.x = -0x4000;
                    }

                    if (!ptr->timer) {
                        ptr->type = VA_NONE;
                    }

                } else if (ptr->mode == GORE_FADING) {
                    if (ptr->timer == 0) {
                        ptr->type = VA_NONE;
                        if (1) {}
                    }

                } else {
                    Math_SmoothScaleMaxMinF(&ptr->scaleMod, 0.075f, 1.0f, 0.005f, 0.0f);
                    Math_SmoothScaleMaxMinF(&ptr->vaGorePulseRate, 0.0f, 0.6f, 0.005f, 0.0013f);
                    if ((globalCtx->gameplayFrames % 4) == 0) {
                        Math_SmoothScaleMaxMinS(&ptr->primColor[0], 95, 1, 1, 0);
                    }
                }
                ptr->vaGorePulse += ptr->vaGorePulseRate;
            }

            if (ptr->type == VA_TUMOR) {
                refActor = ptr->parent;

                ptr->rot.z += 0x157C;
                ptr->envColor[3] = (s16)(Math_Sins(ptr->rot.z) * 50.0f) + 80;
                Math_SmoothScaleMaxMinF(&ptr->scale, ptr->scaleMod, 1.0f, 0.01f, 0.005f);
                ptr->pos.x = ptr->offset.x + refActor->actor.posRot.pos.x;
                ptr->pos.y = ptr->offset.y + refActor->actor.posRot.pos.y;
                ptr->pos.z = ptr->offset.z + refActor->actor.posRot.pos.z;

                switch (ptr->mode) {
                    case TUMOR_UNUSED:
                        if (ptr->timer == 0) {
                            yaw = Math_Vec3f_Yaw(&refActor->actor.posRot.pos, &ptr->pos);
                            ptr->type = VA_NONE;
                            BossVa_BloodSplatter(globalCtx, ptr, yaw, ptr->scale * 4500.0f, 1);
                            BossVa_Gore(globalCtx, ptr, yaw, ptr->scale * 1.2f);
                        }
                        break;
                    case TUMOR_BODY:
                    case TUMOR_ARM:
                        if (refActor->burst) {
                            ptr->type = VA_NONE;
                            yaw = Math_Vec3f_Yaw(&refActor->actor.posRot.pos, &ptr->pos);
                            BossVa_BloodSplatter(globalCtx, ptr, yaw, ptr->scale * 4500.0f, 1);
                            BossVa_Gore(globalCtx, ptr, yaw, ptr->scale * 1.2f);
                        }
                        break;
                }
                if (1) {}
            }
        }
    }
}

void BossVa_DrawParticles(BossVaParticle* ptr, GlobalContext* globalCtx) {
    static UNK_PTR sSparkBallTex[] = {
        0x060096F8, 0x0600A6F8, 0x0600B6F8, 0x0600C6F8, 0x0600D6F8, 0x0600E6F8, 0x0600F6F8, 0x060106F8,
    };
    s16 i;
    GraphicsContext* localGfx = globalCtx->state.gfxCtx;
    u8 flag = 0;
    BossVaParticle* ptrHead = ptr;
    Camera* camera = Gameplay_GetCamera(globalCtx, sCsCamera);

    OPEN_DISPS(localGfx, "../z_boss_va.c", 4953);

    for (i = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_LARGE_SPARK) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gDPSetEnvColor(POLY_XLU_DISP++, 130, 130, 30, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_060156A0);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 230, 230, 230, ptr->primColor[3]);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_RotateZ((ptr->rot.z / (f32)0x8000) * 3.1416f, MTXMODE_APPLY);
            Matrix_Scale(ptr->scale * 0.0185f, ptr->scale * 0.0185f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 4976),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06015710);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_SPARK_BALL) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_XLU_DISP++, D_06011738);
                flag++;
            }
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, MTXMODE_APPLY);
            // Not M_PI
            Matrix_RotateZ((ptr->rot.z / (f32)0x8000) * 3.1416f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5002),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPPipeSync(POLY_XLU_DISP++);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sSparkBallTex[ptr->mode]));
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, ptr->primColor[0], ptr->primColor[1], ptr->primColor[2],
                            ptr->primColor[3]);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetEnvColor(POLY_XLU_DISP++, ptr->envColor[0], ptr->envColor[1], ptr->envColor[2], ptr->envColor[3]);
            gSPDisplayList(POLY_XLU_DISP++, D_06011768);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_BLOOD) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_XLU_DISP++, D_06009430);
                gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_04055DB0));
                flag++;
            }

            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 0, ptr->envColor[3]);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 150, 0, ptr->primColor[3]);

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, MTXMODE_NEW);
            if (ptr->mode == BLOOD_SPOT) {
                Matrix_RotateX(M_PI / 2, MTXMODE_APPLY);
            } else {
                func_800D1FD4(&globalCtx->mf_11DA0);
            }

            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, MTXMODE_APPLY);

            gDPPipeSync(POLY_XLU_DISP++);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5052),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06009468);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_TUMOR) {
            BossVa* parent = ptr->parent;
            if (!flag) {
                func_80093D18(globalCtx->state.gfxCtx);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, ptr->envColor[3]);
                gSPDisplayList(POLY_OPA_DISP++, D_060128B8);
                flag++;
            }

            if ((ptr->mode != TUMOR_BODY) || ((Math_Vec3f_DistXZ(&camera->eye, &ptr->pos) -
                                               Math_Vec3f_DistXZ(&camera->eye, &parent->actor.posRot.pos)) < 10.0f)) {
                Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, MTXMODE_NEW);
                Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5080),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, D_06012948);
            }
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_GORE) {
            if (!flag) {
                func_80093D18(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_OPA_DISP++, D_06012BA0);
                flag++;
            }

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, ptr->primColor[3]);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, ptr->primColor[0], ptr->primColor[1], ptr->primColor[2],
                            ptr->primColor[3]);

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, MTXMODE_NEW);
            Matrix_RotateRPY(ptr->rot.x, ptr->rot.y, 0, MTXMODE_APPLY);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, MTXMODE_APPLY);
            Matrix_RotateX(ptr->offset.x * 0.115f, MTXMODE_APPLY);
            Matrix_RotateY(ptr->offset.x * 0.13f, MTXMODE_APPLY);
            Matrix_RotateZ(ptr->offset.x * 0.1f, MTXMODE_APPLY);
            Matrix_Scale(1.0f - ptr->scaleMod, ptr->scaleMod + 1.0f, 1.0f - ptr->scaleMod, MTXMODE_APPLY);
            Matrix_RotateZ(-(ptr->offset.x * 0.1f), MTXMODE_APPLY);
            Matrix_RotateY(-(ptr->offset.x * 0.13f), MTXMODE_APPLY);
            Matrix_RotateX(-(ptr->offset.x * 0.115f), MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5124),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, D_06012C50);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_ZAP_CHARGE) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_XLU_DISP++, D_060135B0);
                flag++;
            }

            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 50, ptr->primColor[3]);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, ptr->primColor[3]);

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, MTXMODE_NEW);
            Matrix_RotateRPY(ptr->rot.x, ptr->rot.y, 0, MTXMODE_APPLY);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5152),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06013638);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_BLAST_SPARK) {
            if (!flag) {
                func_80093C14(globalCtx->state.gfxCtx);
                gDPSetEnvColor(POLY_XLU_DISP++, 130, 130, 30, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_060156A0);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 230, 230, 230, ptr->primColor[3]);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            // Not M_PI
            Matrix_RotateZ((ptr->rot.z / (f32)0x8000) * 3.1416f, MTXMODE_APPLY);
            Matrix_Scale(ptr->scale * 0.02f, ptr->scale * 0.02f, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5180),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06015710);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_SMALL_SPARK) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 100, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_06008F08);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, ptr->primColor[3]);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, MTXMODE_NEW);
            // Not M_PI
            Matrix_RotateZ((ptr->rot.z / (f32)0x8000) * 3.1416f, MTXMODE_APPLY);
            Matrix_RotateY((ptr->rot.y / (f32)0x8000) * 3.1416f, MTXMODE_APPLY);
            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5208),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06008F70);
        }
    }

    CLOSE_DISPS(localGfx, "../z_boss_va.c", 5215);
}

void BossVa_SpawnSpark(GlobalContext* globalCtx, BossVaParticle* ptr, BossVa* this, Vec3f* offset, s16 scale, u8 mode) {
    Player* player = PLAYER;
    s16 index;
    Vec3f pos = { 0.0f, -1000.0f, 0.0f };
    Vec3f tempVec;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_NONE) {
            ptr->type = VA_LARGE_SPARK;
            ptr->parent = this;
            ptr->pos = pos;
            ptr->timer = (s16)(Math_Rand_ZeroOne() * 10.0f) + 111;
            ptr->velocity = ptr->accel = sZeroVec;
            ptr->mode = mode;

            switch (mode) {
                case SPARK_UNUSED:
                    ptr->type = VA_SMALL_SPARK;
                case SPARK_TETHER:
                    tempVec = *offset;
                    tempVec.x += this->actor.posRot.pos.x;
                    tempVec.z += this->actor.posRot.pos.z;
                    ptr->offset.x = Math_Vec3f_DistXZ(&this->actor.posRot.pos, &tempVec);
                    ptr->rot.x = Math_Vec3f_Pitch(&this->actor.posRot.pos, &BODY->unk_1D8);
                    break;

                case SPARK_BODY:
                    ptr->type = VA_SMALL_SPARK;
                case SPARK_BARI:
                    ptr->offset.x = offset->x;
                    ptr->offset.z = offset->z;
                    break;

                case SPARK_BLAST:
                    ptr->type = VA_BLAST_SPARK;
                    ptr->pos.x = offset->x + this->actor.posRot.pos.x;
                    ptr->pos.y = offset->y + this->actor.posRot.pos.y;
                    ptr->pos.z = offset->z + this->actor.posRot.pos.z;
                    ptr->timer = 111;
                    break;

                case SPARK_LINK:
                    ptr->type = VA_SMALL_SPARK;
                    index = Math_Rand_ZeroFloat(17.9f);
                    ptr->pos.x = player->bodyPartsPos[index].x + Math_Rand_CenteredFloat(10.0f);
                    ptr->pos.y = player->bodyPartsPos[index].y + Math_Rand_CenteredFloat(15.0f);
                    ptr->pos.z = player->bodyPartsPos[index].z + Math_Rand_CenteredFloat(10.0f);
            }

            ptr->offset.y = offset->y;
            ptr->scale = (Math_Rand_ZeroFloat(scale) + scale) * 0.01f;
            ptr->primColor[3] = 255;
            break;
        }
    }
}

void BossVa_SpawnSparkBall(GlobalContext* globalCtx, BossVaParticle* ptr, BossVa* this, Vec3f* offset, s16 scale,
                           u8 mode) {
    Vec3f pos = { 0.0f, -1000.0f, 0.0f };
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_NONE) {
            ptr->type = VA_SPARK_BALL;
            ptr->parent = this;

            ptr->pos = pos;

            ptr->velocity = ptr->accel = sZeroVec;

            ptr->mode = 0;
            ptr->offset.x = offset->x;
            ptr->offset.z = offset->z;
            ptr->offset.y = offset->y;
            ptr->timer = (s16)(Math_Rand_ZeroOne() * 10.0f) + 111;
            ptr->primColor[0] = ptr->primColor[1] = ptr->primColor[2] = ptr->primColor[3] = 230;
            ptr->envColor[0] = 0;
            ptr->envColor[1] = 100;
            ptr->envColor[2] = 220;
            ptr->envColor[3] = 160;

            ptr->scale = (Math_Rand_ZeroFloat(scale) + scale) * 0.01f;
            return;
        }
    }
}

void BossVa_SpawnBloodDroplets(GlobalContext* globalCtx, BossVaParticle* ptr, Vec3f* pos, s16 scale, s16 phase,
                               s16 yaw) {
    s32 i;
    Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    f32 xzVel;

    for (i = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_NONE) {
            ptr->type = VA_BLOOD;
            ptr->pos = *pos;
            ptr->mode = BLOOD_DROPLET;

            xzVel = Math_Sins(phase) * 6.0f;
            velocity.x = Math_Rand_CenteredFloat(1.0f) + (-Math_Sins(yaw) * xzVel);
            velocity.z = Math_Rand_CenteredFloat(1.0f) + (-Math_Coss(yaw) * xzVel);

            ptr->velocity = velocity;

            accel.y = Math_Rand_CenteredFloat(0.3f) - 1.0f;
            ptr->accel = accel;

            ptr->timer = 20;
            ptr->envColor[3] = 100;
            ptr->primColor[3] = 200;
            ptr->scale = (Math_Rand_ZeroFloat(scale) + scale) * 0.01f;
            break;
        }
    }
}

void BossVa_SpawnBloodSplatter(GlobalContext* globalCtx, BossVaParticle* ptr, Vec3f* pos, s16 yaw, s16 scale) {
    s32 i;
    f32 xzVel;
    Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f velocity;

    for (i = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_NONE) {
            ptr->type = VA_BLOOD;
            ptr->pos = *pos;

            ptr->mode = BLOOD_SPLATTER;

            xzVel = Math_Rand_ZeroOne() * 7.0f;
            velocity.x = Math_Sins(yaw) * xzVel;
            velocity.y = Math_Rand_CenteredFloat(4.0f) + 4.0f;
            velocity.z = Math_Coss(yaw) * xzVel;
            ptr->velocity = velocity;

            accel.y = Math_Rand_CenteredFloat(0.3f) - 1.0f;
            ptr->accel = accel;

            if (sCsState <= DEATH_SHELL_BURST) {
                ptr->timer = 20;
            } else {
                ptr->timer = 60;
            }
            ptr->envColor[3] = 100;
            ptr->primColor[3] = 200;
            ptr->scale = scale * 0.01f;
            break;
        }
    }
}

void BossVa_SpawnTumor(GlobalContext* globalCtx, BossVaParticle* ptr, BossVa* this, Vec3f* offset, s16 scale, u8 mode) {
    Vec3f pos = { 0.0f, -1000.0f, 0.0f };
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_NONE) {
            ptr->type = VA_TUMOR;
            ptr->parent = this;
            ptr->pos = pos;

            ptr->velocity = ptr->accel = sZeroVec;

            ptr->mode = mode;
            ptr->rot.z = 0;

            ptr->offset.x = offset->x;
            ptr->offset.z = offset->z;
            ptr->offset.y = offset->y;

            ptr->timer = (s16)(Math_Rand_ZeroOne() * 10.0f) + 10;
            ptr->envColor[3] = 100;
            ptr->scaleMod = scale * 0.01f;
            ptr->scale = 0.0f;

            if (((i & 3) == 0) || (mode == 2)) {
                Audio_PlaySoundGeneral(NA_SE_EN_BALINADE_BREAK, &ptr->pos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            break;
        }
    }
}

void BossVa_SpawnGore(GlobalContext* globalCtx, BossVaParticle* ptr, Vec3f* pos, s16 yaw, s16 scale) {
    s32 i;
    f32 xzVel;
    Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f velocity;

    for (i = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_NONE) {
            ptr->type = VA_GORE;
            ptr->pos = *pos;
            ptr->scaleMod = 0.0f;

            xzVel = (Math_Rand_ZeroOne() * 4.0f) + 4.0f;
            velocity.x = Math_Sins(yaw) * xzVel;
            velocity.y = Math_Rand_CenteredFloat(8.0f);
            velocity.z = Math_Coss(yaw) * xzVel;
            ptr->velocity = velocity;

            accel.y = Math_Rand_CenteredFloat(0.3f) - 1.0f;
            ptr->accel = accel;

            ptr->timer = 20;
            if (sCsState <= DEATH_SHELL_BURST) {
                ptr->mode = GORE_FADING;
            } else {
                ptr->mode = GORE_PERMANENT;
            }

            ptr->primColor[3] = ptr->envColor[0] = ptr->envColor[1] = ptr->envColor[2] = ptr->envColor[3] = 255;

            ptr->primColor[0] = 155;
            ptr->primColor[1] = ptr->primColor[2] = 55;

            ptr->rot.x = Math_Rand_CenteredFloat(65536.0f);
            ptr->rot.y = Math_Rand_CenteredFloat(65536.0f);
            ptr->scale = (Math_Rand_ZeroFloat(scale) + scale) * 0.01f;
            ptr->vaGorePulseRate = (Math_Rand_ZeroOne() * 0.25f) + 0.9f;
            break;
        }
    }
}

void BossVa_SpawnZapperCharge(GlobalContext* globalCtx, BossVaParticle* ptr, BossVa* this, Vec3f* pos, Vec3s* rot,
                              s16 scale, u8 mode) {
    Vec3f unused = { 0.0f, -1000.0f, 0.0f };
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sVaParticles); i++, ptr++) {
        if (ptr->type == VA_NONE) {
            ptr->type = VA_ZAP_CHARGE;
            ptr->parent = this;
            ptr->pos = *pos;

            ptr->velocity = ptr->accel = sZeroVec;

            ptr->mode = mode;
            ptr->rot.x = rot->x + 0x4000;
            ptr->rot.y = rot->y;
            ptr->timer = (s16)(Math_Rand_ZeroOne() * 10.0f) + 10;
            ptr->primColor[3] = 0xF0;
            ptr->scale = scale * 0.01f;
            break;
        }
    }
}

void BossVa_DrawDoor(GlobalContext* globalCtx, s16 scale) {
    static Gfx* doorPieceDispList[] = {
        0x0601A3E8, 0x0601AEE8, 0x0601B9E8, 0x0601C4E8, 0x0601CFE8, 0x0601DAE8, 0x0601E5E8, 0x0601F0E8,
    };
    static s16 doorPieceLength[] = { 836, 900, 836, 1016, 800, 1016, 836, 900 };

    MtxF doorMtx;
    f32 yScale;
    f32 segAngle = 0.0f;
    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 5600);

    Matrix_Translate(0.0f, 80.0f, 400.0f, MTXMODE_NEW);
    Matrix_RotateY(M_PI, MTXMODE_APPLY);
    yScale = (scale * 0.01f) * 0.1f;
    Matrix_Scale(0.1f, yScale, 0.1f, MTXMODE_APPLY);

    if (yScale != 0.0f) {
        yScale = 0.1f / yScale;
    } else {
        yScale = 0.0f;
    }

    Matrix_Get(&doorMtx);

    for (i = 0; i < 8; i++, segAngle -= M_PI / 4) {
        Matrix_Put(&doorMtx);
        Matrix_RotateZ(segAngle, MTXMODE_APPLY);
        Matrix_Translate(0.0f, doorPieceLength[i] * yScale, 0.0f, MTXMODE_APPLY);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 5621),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, doorPieceDispList[i]);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 5629);
}
