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

// #define NON_MATCHING

typedef enum BossVaEffectType {
    VA_NULL,
    VA_EFFECT_1,
    VA_EFFECT_2,
    VA_EFFECT_3,
    VA_LIGHT_BALL,
    VA_ZAP_CHARGE,
    VA_BLOOD,
    VA_GROWTH,
    VA_GORE
} BossVaEffectType;

typedef enum BossVaParam{
    BOSSVA_BODY = -1,
    BOSSVA_SUPPORT_1,
    BOSSVA_SUPPORT_2,
    BOSSVA_SUPPORT_3,
    BOSSVA_ZAPPER_1,
    BOSSVA_ZAPPER_2,
    BOSSVA_ZAPPER_3,
    BOSSVA_BARI_UPPER_1,
    BOSSVA_BARI_UPPER_2,
    BOSSVA_BARI_UPPER_3,
    BOSSVA_BARI_UPPER_4,
    BOSSVA_BARI_UPPER_5,
    BOSSVA_BARI_LOWER_1,
    BOSSVA_BARI_LOWER_2,
    BOSSVA_BARI_LOWER_3,
    BOSSVA_BARI_LOWER_4,
    BOSSVA_BARI_LOWER_5,
    BOSSVA_STUMP_1,
    BOSSVA_STUMP_2,
    BOSSVA_STUMP_3,
    BOSSVA_DOOR
} BossVaParam;

void BossVa_Init(Actor* thisx, GlobalContext* globalCtx);
void BossVa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossVa_Update(Actor* thisx, GlobalContext* globalCtx);
void BossVa_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossVa_SetupIntro(BossVa* this);
void BossVa_SetupBodyPhase1(BossVa* this);
void BossVa_SetupBariDeath(BossVa* this);
void BossVa_SetupBodyPhase3(BossVa* this);
void BossVa_UpdateEffects(GlobalContext* globalCtx);
void BossVa_DrawEffects(BossVaEffect* ptr, GlobalContext* globalCtx);
void BossVa_DrawDoor(GlobalContext* globalCtx, s16 arg1);
void BossVa_SetDeathEnv(GlobalContext* globalCtx);

void BossVa_SetupSupportIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupSupportPhase1(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupZapperIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupZapperAttack(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupStump(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupDoor(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBariIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBariPhase2Attack(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBariPhase1Attack(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyPhase1(BossVa* this, GlobalContext* globalCtx);
void BossVa_SupportIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupSupportCut(BossVa* this, GlobalContext* globalCtx);
void BossVa_SupportPhase1(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperAttack(BossVa* this, GlobalContext* globalCtx);
void BossVa_Stump(BossVa* this, GlobalContext* globalCtx);
void BossVa_SupportCut(BossVa* this, GlobalContext* globalCtx);
void BossVa_Door(BossVa* this, GlobalContext* globalCtx);
void BossVa_BariIntro(BossVa* this, GlobalContext* globalCtx);
void BossVa_BariPhase2Attack(BossVa* this, GlobalContext* globalCtx);
void BossVa_BariPhase1Attack(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBodyPhase2(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupZapperEnraged(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupZapperDamaged(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupZapperHold(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBariPhase2Stunned(BossVa* this, GlobalContext* globalCtx);
void BossVa_KillBari(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyPhase2(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperEnraged(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperDamaged(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperHold(BossVa* this, GlobalContext* globalCtx);
void BossVa_BariPhase2Stunned(BossVa* this, GlobalContext* globalCtx);
void BossVa_BariDeath(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyPhase3(BossVa* this, GlobalContext* globalCtx);
void BossVa_ZapperDeath(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupBodyPhase4(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyPhase4(BossVa* this, GlobalContext* globalCtx);
void BossVa_SetupDeath(BossVa* this, GlobalContext* globalCtx);
void BossVa_BodyDeath(BossVa* this, GlobalContext* globalCtx);

void BossVa_SpawnBloodSplatter(GlobalContext* globalCtx, BossVaEffect* ptr, Vec3f* arg2, s16 arg3, s16 arg4);
void BossVa_SpawnGore(GlobalContext* globalCtx, BossVaEffect* ptr, Vec3f* arg2, s16 arg3, s16 arg4);
void BossVa_SpawnLightning(GlobalContext* globalCtx, BossVaEffect* ptr, BossVa* this, Vec3f* arg3, s16 arg4, u8 arg5);
void BossVa_SpawnZapperCharge(GlobalContext* globalCtx, BossVaEffect* ptr, BossVa* this, Vec3f* arg3, Vec3s* arg4, s16 arg5,
                   u8 arg6);
void BossVa_SpawnGrowth(GlobalContext* globalCtx, BossVaEffect* ptr, BossVa* this, Vec3f* arg3, s16 arg4, u8 arg5);
void BossVa_SpawnLightningBall(GlobalContext* globalCtx, BossVaEffect* ptr, BossVa* this, Vec3f* arg3, s16 arg4, u8 arg5);
void BossVa_SpawnBloodDroplets(GlobalContext* globalCtx, BossVaEffect* ptr, Vec3f* arg2, s16 arg3, s16 arg4, s16 arg5);
void BossVa_Growth(GlobalContext* globalCtx, BossVa* this, s32 arg2, s16 arg3, f32 arg4, f32 arg5, u8 arg6, f32 arg7,
                   u8 arg8);

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

// sCylinderInit
ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFEF, 0x03, 0x08 }, { 0x00000010, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 85, 120, 0, { 0, 0, 0 } },
};

static ColliderJntSphItemInit sJntSphItemsInit1[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000010, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { 0, { { 0, 0, 0 }, 25 }, 100 },
    },
};

// sJntSphInit1
ColliderJntSphInit sJntSphInit1 = {
    { COLTYPE_UNK6, 0x00, 0x09, 0x00, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit1,
};

static ColliderJntSphItemInit sJntSphItemsInit2[1] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x03, 0x04 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x00 },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
};

// sJntSphInit2
ColliderJntSphInit sJntSphInit2 = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x00, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit2,
};

// sQuadInit
ColliderQuadInit sQuadInit = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0x20000000, 0x03, 0x04 }, { 0x00000010, 0x00, 0x00 }, 0x81, 0x01, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

Vec3f sInitPos[] = {
    { 0.0f, 175.35000610351562f, 0.0f }, // Support 1
    { 0.0f, 175.35000610351562f, 0.0f }, // Support 2
    { 0.0f, 175.35000610351562f, 0.0f }, // Support 3
    { 120.0f, 103.42500305175781f, -67.0f }, // Zapper 1
    { 0.0f, 103.42500305175781f, 140.0f }, // Zapper 2
    { -120.0f, 103.42500305175781f, -70.0f }, // Zapper 3
    { -2.0f, 16.0f, 50.0f }, // Upper Bari 1
    { 48.0f, 16.0f, 15.0f }, // Upper Bari 2
    { 25.0f, 16.0f, -36.0f }, // Upper Bari 3
    { -29.0f, 16.0f, -36.0f }, // Upper Bari 4
    { -63.0f, 16.0f, 22.0f }, // Upper Bari 5
    { 0.0f, -10.0f, -64.0f }, // Lower Bari 1
    { 63.0f, -10.0f, -22.0f }, // Lower Bari 2
    { 35.0f, -10.0f, 46.0f }, // Lower Bari 3
    { -36.0f, -10.0f, 46.0f }, // Lower Bari 4
    { -49.0f, -10.0f, -17.0f }, // Lower Bari 5
    { 0.0f, 160.0f, 370.0f }, // Upper Bari 1 CS offset
    { 65.0f, 35.0f, 370.0f }, // Upper Bari 2 CS offset
    { 80.0f, 70.0f, -130.0f }, // Upper Bari 3 CS offset
    { -160.0f, 100.0f, -130.0f }, // Upper Bari 4 CS offset
    { -150.0f, 130.0f, 0.0f }, // Upper Bari 5 CS offset
    { 230.0f, 0.0f, 0.0f }, // Lower Bari 1 CS offset
    { 60.0f, 140.0f, 0.0f }, // Lower Bari 2 CS offset
    { 0.0f, 40.0f, 270.0f }, // Lower Bari 3 CS offset
    { -100.0f, 10.0f, 200.0f }, // Lower Bari 4 CS offset
    { -90.0f, 70.0f, -310.0f }, // Lower Bari 5 CS offset
};

Vec3s sInitRot[] = {
    { 0x1FFE, 0x0000, 0x0000 }, { 0x1FFE, 0x5550, 0x0000 }, { 0x1FFE, 0xAAB0, 0x0000 }, { 0xD558, 0x5550, 0x0000 },
    { 0xD558, 0x0000, 0x0000 }, { 0xD558, 0xAAB0, 0x0000 }, { 0x2AA8, 0xFCCC, 0x0000 }, { 0x2AA8, 0x3330, 0x0000 },
    { 0x2AA8, 0x6660, 0x0000 }, { 0x2AA8, 0x99A0, 0x0000 }, { 0x2AA8, 0xCCD0, 0x0000 }, { 0x4C98, 0x81D0, 0x0000 },
    { 0x4C98, 0x4F70, 0x0000 }, { 0x4C98, 0x1758, 0x0000 }, { 0x4C98, 0xE8A8, 0x0000 }, { 0x4C98, 0xB648, 0x0000 },
};

Vec3f sWarpPos[] = {
    { 10.0f, 0.0f, 30.0f },
    { 260.0f, 0.0f, -470.0f },
    { -240.0f, 0.0f, -470.0f },
};

DamageTable sDamageTable[] = {
    0x10, 0x02, 0x01, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x02, 0xE0, 0x60, 0xD0, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };
static u8 D_8095C22C = 0;
u8 D_8095C230[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
s16 sCsCamera = 0;

BossVaEffect sEffects[400];
static u8 D_809668D0;
u8 sFightProgress;
s8 sCsState;
Vec3f sCameraEye;
Vec3f sCameraAt;
Vec3f sCameraNextEye;
Vec3f sCameraNextAt;
Vec3f sCameraEyeMaxVel;
Vec3f sCameraAtMaxVel;
s16 sDoorState;
static u8 D_80966936;
static Vec3s D_80966938;
u16 D_8096693E;
static s8 sPhase4HP;

void BossVa_SetupAction(BossVa* this, BossVaActionFunc func) {
    this->actionFunc = func;
}

void BossVa_AttachToBody(BossVa* this) {
    BossVa* vaBody = BODY;

    Matrix_Translate(vaBody->actor.posRot.pos.x, vaBody->actor.posRot.pos.y, vaBody->actor.posRot.pos.z, 0);
    Matrix_RotateRPY(vaBody->actor.shape.rot.x, 0, vaBody->actor.shape.rot.z, 1);
    Matrix_MultVec3f(&sInitPos[this->actor.params], &this->actor.posRot.pos);

    switch (this->actor.params) {
        case BOSSVA_SUPPORT_1:
        case BOSSVA_SUPPORT_2:
        case BOSSVA_SUPPORT_3:
            if (this->unk_194 == 0) {
                this->actor.shape.rot.x = sInitRot[this->actor.params].x + vaBody->actor.shape.rot.x;
                this->actor.shape.rot.y = sInitRot[this->actor.params].y;
                this->actor.shape.rot.z = sInitRot[this->actor.params].z + vaBody->actor.shape.rot.z;
            }
            break;

        case BOSSVA_ZAPPER_1:
        case BOSSVA_ZAPPER_2:
        case BOSSVA_ZAPPER_3:
            this->actor.shape.rot.y = sInitRot[this->actor.params].y;
            this->actor.shape.rot.x =
                (sInitRot[this->actor.params].x +
                 (s16)(Math_Coss(sInitRot[this->actor.params].y) * vaBody->actor.shape.rot.x)) -
                (s16)(Math_Sins(sInitRot[this->actor.params].y) * vaBody->actor.shape.rot.z);
            this->actor.shape.rot.z =
                (s16)(Math_Coss(sInitRot[this->actor.params].y) * vaBody->actor.shape.rot.z) +
                (sInitRot[this->actor.params].z +
                 (s16)(Math_Sins(sInitRot[this->actor.params].y) * vaBody->actor.shape.rot.x));
            break;
    }

    this->actor.posRot.rot = this->actor.shape.rot;
    this->actor.shape.unk_08 = BODY->actor.shape.unk_08;
}

void BossVa_BloodDroplets(GlobalContext* globalCtx, Vec3f* pos, s16 phase, s16 yaw) {
    s32 i;
    Vec3f sp50;

    for (i = 2; i > 0; i--) {
        sp50.x = Math_Rand_CenteredFloat(10.0f) + pos->x;
        sp50.y = pos->y - (Math_Rand_ZeroOne() * 15.0f);
        sp50.z = Math_Rand_CenteredFloat(10.0f) + pos->z;
        BossVa_SpawnBloodDroplets(globalCtx, sEffects, &sp50, 65, phase, yaw);
    }
}

void BossVa_BloodSplatter(GlobalContext* globalCtx, BossVaEffect* src, s16 yaw, s16 scale, s32 count) {
    s32 i;
    Vec3f sp60;

    for (i = count; i > 0; i--) {
        sp60.x = Math_Rand_CenteredFloat(10.0f) + src->pos.x;
        sp60.y = src->pos.y - (Math_Rand_ZeroOne() * 15.0f);
        sp60.z = Math_Rand_CenteredFloat(10.0f) + src->pos.z;
        BossVa_SpawnBloodSplatter(globalCtx, sEffects, &sp60, (s16)Math_Rand_CenteredFloat(26000.0f) + yaw, scale);
    }
}

void BossVa_Gore(GlobalContext* globalCtx, BossVaEffect* src, s16 yaw, s16 scale) {
    s32 i;
    Vec3f sp58;

    for (i = (sCsState < 20) ? 2 : 1; i > 0; i--) {
        sp58.x = Math_Rand_CenteredFloat(10.0f) + src->pos.x;
        sp58.y = Math_Rand_CenteredFloat(10.0f) + src->pos.y;
        sp58.z = Math_Rand_CenteredFloat(10.0f) + src->pos.z;
        BossVa_SpawnGore(globalCtx, sEffects, &sp58, (s16)Math_Rand_CenteredFloat(26000.0f) + yaw, scale);
    }
}

void BossVa_Lightning(GlobalContext* globalCtx, BossVa* this, s32 count, s16 scale, f32 xzSpread, f32 ySpread, u8 mode, f32 range,
                   u8 fixed) {
    s32 i;
    s16 tmp;
    Vec3f sp6C;

    for (i = count; i > 0; i--) {
        if (!fixed) {
            tmp = Math_Rand_ZeroOne() * (range - 0.6f);
        } else {
            tmp = range - 0.6f;
        }
        sp6C.x = Math_Rand_CenteredFloat(xzSpread) + this->unk_1FC[tmp].x - this->actor.posRot.pos.x;
        sp6C.y = Math_Rand_CenteredFloat(ySpread) + this->unk_1FC[tmp].y - this->actor.posRot.pos.y;
        sp6C.z = Math_Rand_CenteredFloat(xzSpread) + this->unk_1FC[tmp].z - this->actor.posRot.pos.z;
        BossVa_SpawnLightning(globalCtx, sEffects, this, &sp6C, scale, mode);
    }
}

void BossVa_Growth(GlobalContext* globalCtx, BossVa* this, s32 count, s16 arg3, f32 xzSpread, f32 ySpread, u8 arg6, f32 range,
                   u8 fixed) {
    s16 tmp;
    s32 i;
    Vec3f sp6C;

    for (i = count; i > 0; i--) {
        if (!fixed) {
            tmp = Math_Rand_ZeroOne() * (range - 0.6f);
        } else {
            tmp = range - 0.6f;
        }

        sp6C.x = Math_Rand_CenteredFloat(xzSpread) + this->unk_1FC[tmp].x - this->actor.posRot.pos.x;
        sp6C.y = Math_Rand_CenteredFloat(ySpread) + this->unk_1FC[tmp].y - this->actor.posRot.pos.y;
        sp6C.z = Math_Rand_CenteredFloat(xzSpread) + this->unk_1FC[tmp].z - this->actor.posRot.pos.z;
        BossVa_SpawnGrowth(globalCtx, sEffects, this, &sp6C, arg3, arg6);
    }
}

void BossVa_SetLightningEnv(GlobalContext* globalCtx) {
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
    Actor* refActor = globalCtx->actorCtx.actorList[ACTORTYPE_MISC].first;

    while (refActor != NULL) {
        if (refActor->id != ACTOR_EN_BOOM) {
            refActor = refActor->next;
            continue;
        }
        return (EnBoom*)refActor;
    }
    return NULL;
}

void BossVa_KillBari(BossVa* this, GlobalContext* globalCtx) {
    s32 i;
    s16 scale;
    Vec3f sp84;
    Vec3f sp78 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp6C = { 0.0f, 0.0f, 0.0f };

    for (i = 7; i >= 0; i--) {
        sp84.x = Math_Rand_CenteredFloat(60.0f) + this->actor.posRot.pos.x;
        sp84.y = Math_Rand_CenteredFloat(50.0f) +
                 (this->actor.posRot.pos.y + (this->actor.shape.unk_08 * this->actor.scale.y));
        sp84.z = Math_Rand_CenteredFloat(60.0f) + this->actor.posRot.pos.z;
        sp78.y = Math_Rand_ZeroOne() + 1.0f;
        scale = Math_Rand_S16Offset(80, 100);
        if (Math_Rand_ZeroOne() < 0.7f) {
            EffectSsDtBubble_SpawnColorProfile(globalCtx, &sp84, &sp78, &sp6C, scale, 25, 2, 1);
        } else {
            EffectSsDtBubble_SpawnColorProfile(globalCtx, &sp84, &sp78, &sp6C, scale, 25, 0, 1);
        }
    }

    sFightProgress++;
    BossVa_SetupBariDeath(this);
}

#ifdef NON_MATCHING
// regalloc
void BossVa_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossVa* this = THIS;
    s32 i;
    s16 tmp16;

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
    this->unk_194 = 0;
    this->actor.naviEnemyId = 0x14;

    switch (this->actor.params) {
        case BOSSVA_BODY:
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA, 0.0f, 80.0f, 400.0f, 0, 0,
                               0, BOSSVA_DOOR);
            if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
                tmp16 = ACTOR_EN_RU1;
                if (gSaveContext.eventChkInf[3] & 0x80) {
                    tmp16 = ACTOR_DOOR_WARP1;
                }
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, tmp16, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                            this->actor.posRot.pos.z, 0, 0, 0, 0);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.posRot.pos.x + 160.0f,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
                sDoorState = 100;
                Actor_Kill(&this->actor);
            } else {
                this->actor.colChkInfo.damageTable = sDamageTable;
                D_8096693E = 0xFFFF;
                if (gSaveContext.eventChkInf[7] & 0x40) {
                    sCsState = 8;
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
                            sInitPos[i].x + this->actor.posRot.pos.x, sInitPos[i].y + this->actor.posRot.pos.y,
                            sInitPos[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
                            sInitRot[i].y + this->actor.posRot.rot.y, sInitRot[i].z + this->actor.posRot.rot.z, i);
                    }

                    sCameraAtMaxVel = sCameraEyeMaxVel = sZeroVec;

                } else {
                    sCsState = -4;
                    sDoorState = 5;
                }

                this->unk_1CC.x = 1.0f;
                Collider_InitCylinder(globalCtx, &this->collider1);
                Collider_SetCylinder(globalCtx, &this->collider1, &this->actor, &sCylinderInit);

                for (i = BOSSVA_ZAPPER_3; i >= BOSSVA_SUPPORT_1; i--) {
                    Actor_SpawnAsChild(
                        &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA,
                        sInitPos[i].x + this->actor.posRot.pos.x, sInitPos[i].y + this->actor.posRot.pos.y,
                        sInitPos[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
                        sInitRot[i].y + this->actor.posRot.rot.y, sInitRot[i].z + this->actor.posRot.rot.z, i);
                }

                Lib_MemSet((u8*)sEffects, 400 * sizeof(BossVaEffect), 0);
                if (sCsState < 13) {
                    BossVa_SetupIntro(this);
                } else {
                    BossVa_SetupBodyPhase1(this);
                }
            }
            break;

        case BOSSVA_SUPPORT_1:
        case BOSSVA_SUPPORT_2:
        case BOSSVA_SUPPORT_3:
            Collider_InitJntSph(globalCtx, &this->collider2);
            Collider_SetJntSph(globalCtx, &this->collider2, &this->actor, &sJntSphInit1, this->unk_2F8);
            if (sCsState < 13) {
                BossVa_SetupSupportIntro(this, globalCtx);
            } else {
                BossVa_SetupSupportPhase1(this, globalCtx);
            }
            this->unk_194++;
            break;

        case BOSSVA_ZAPPER_1:
        case BOSSVA_ZAPPER_2:
        case BOSSVA_ZAPPER_3:
            Collider_InitQuad(globalCtx, &this->collider3);
            Collider_SetQuad(globalCtx, &this->collider3, &this->actor, &sQuadInit);
            if (sCsState < 13) {
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
            Collider_InitJntSph(globalCtx, &this->collider2);
            Collider_SetJntSph(globalCtx, &this->collider2, &this->actor, &sJntSphInit2, this->unk_2F8);
            Collider_InitQuad(globalCtx, &this->collider3);
            Collider_SetQuad(globalCtx, &this->collider3, &this->actor, &sQuadInit);
            this->unk_1D8.x = 1.0f;
            this->unk_1D8.y = 1.0f;
            if (sCsState < 13) {
                BossVa_SetupBariIntro(this, globalCtx);
            } else if (sFightProgress >= 9) {
                BossVa_SetupBariPhase2Attack(this, globalCtx);
            } else {
                BossVa_SetupBariPhase1Attack(this, globalCtx);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/BossVa_Init.s")
#endif

void BossVa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossVa* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider2);
    Collider_DestroyCylinder(globalCtx, &this->collider1);
}

void BossVa_SetupIntro(BossVa* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_06005184.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005184, 1.0f, frames, frames, 2, 0.0f);
    this->actor.shape.unk_08 = -450.0f;
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_BodyIntro);
}

#ifdef NON_MATCHING
// regalloc
void BossVa_BodyIntro(BossVa* this, GlobalContext* globalCtx) {
    s32 i;
    Player* player = PLAYER;

    this->unk_1AC += 0xC31;
    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;

    switch (sCsState) {
        case -5:
            this->timer--;
            if (this->timer == 0) {
                sCsState = -2;
                this->timer = 10;
            }
            break;
        case -4:
            globalCtx->envCtx.unk_E2[0] = 0xDC;
            globalCtx->envCtx.unk_E2[1] = 0xDC;
            globalCtx->envCtx.unk_E2[2] = 0xBE;
            globalCtx->envCtx.unk_E2[3] = 0xD2;
            func_8002DF54(globalCtx, &this->actor, 8);
            player->actor.posRot.rot.y = player->actor.shape.rot.y = 0x7FFF;
            sCsState++;
            break;
        case -3:
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
        case -2:
            this->timer--;
            if (this->timer == 0) {
                func_8002DF54(globalCtx, &this->actor, 2);
                sCsState++;
                this->timer = 30;
            }
            break;
        case -1:
            this->timer--;
            if (this->timer == 0) {
                sCsState++;
            }
            if (Math_Rand_ZeroOne() < 0.1f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
            }
            break;
        case 0:
            func_8002DF54(globalCtx, &this->actor, 1);
            sCsState++;
            break;
        case 1:
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
                Actor_SpawnAsChild(
                    &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA,
                    sInitPos[i].x + this->actor.posRot.pos.x, sInitPos[i].y + this->actor.posRot.pos.y,
                    sInitPos[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
                    sInitRot[i].y + this->actor.posRot.rot.y, sInitRot[i].z + this->actor.posRot.rot.z, i);
            }

            this->timer = 90;
            sCsState++;
            break;
        case 3:
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
                this->timer = 0x3C;
            }
            break;
        case 4:
            sCameraNextEye.x = sCameraEye.x = 140.0f;
            sCameraNextEye.y = sCameraEye.y = 205.0f;
            sCameraNextEye.z = sCameraEye.z = -20.0f;

            sCameraNextAt.x = sCameraAt.x = 10.0f;
            sCameraNextAt.y = sCameraAt.y = 247.0f;
            sCameraNextAt.z = sCameraAt.z = -220.0f;

            sCsState++;
            this->timer = 1;
            break;
        case 5:
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
                this->timer = 0x28;
            }
            break;
        case 6:
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
        case 8:
            Math_SmoothScaleMaxMinF(&sCameraEyeMaxVel.x, 14.0f, 0.3f, 1.0f, 0.25f);

            sCameraEyeMaxVel.y = sCameraEyeMaxVel.x * 0.7f;
            sCameraEyeMaxVel.z = sCameraEyeMaxVel.x;

            sCameraAtMaxVel = sCameraEyeMaxVel;
            sCameraAtMaxVel.z = sCameraAtMaxVel.z * 1.75f;

            this->timer--;
            if (this->timer == 0) {
                sCsState++;
                this->timer = 0x1D4C;
                this->unk_1F2 = 0;
            }
            break;
        case 9:
            for (i = 10; i > 0; i--) {
                if (D_8095C230[i - 1]) {
                    if (D_8095C230[i - 1] == 1) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_STICK);
                        BossVa_SetLightningEnv(globalCtx);
                        if (this->unk_194 == 0) {
                            this->unk_194 = 2;
                        }
                    } else {
                        if (D_8095C230[i - 1] == 2) {
                            BossVa_Lightning(globalCtx, this, 6, 140, 50.0f, 30.0f, 2, i, true);
                        }
                    }

                    if (D_8095C230[i - 1] < 3) {
                        D_8095C230[i - 1]++;
                    }
                }
            }
            Math_SmoothScaleMaxMinS(&this->unk_1F2, 0x280, 1, 0x32, 0);
            Math_SmoothScaleMaxMinF(&sCameraEyeMaxVel.x, 14.0f, 0.3f, 1.0f, 0.25f);
            sCameraEyeMaxVel.z = sCameraEyeMaxVel.x;
            sCameraAtMaxVel = sCameraEyeMaxVel;
            if (this->timer >= 0xAFC8) {
                globalCtx->envCtx.unk_BF = 1;
                func_8002DF54(globalCtx, &this->actor, 8);
            } else if (this->timer >= 0x88B8) {
                Audio_SetBGM(0x1B);
            }

            this->timer += this->unk_1F2;
            if (this->timer >= 0x10000) {
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

                this->timer = 0x28;
            } else {
                sCameraEyeMaxVel.y = 1.6f;
                sCameraNextEye.y = 5.0f;
                sCameraNextEye.x = Math_Sins(this->timer) * 200.0f;
                sCameraNextEye.z = (Math_Coss(this->timer) * 200.0f) + -200.0f;
            }
            break;
        case 10:
            BossVa_Lightning(globalCtx, this, 3, 140, 50.0f, 30.0f, 2, 10.0f, false);
            this->timer--;
            if (this->timer == 0) {
                sCsState++;
                this->timer = 0x2D;
            }
            break;
        case 11:
            BossVa_Lightning(globalCtx, this, 3, 140, 50.0f, 30.0f, 2, 10.0f, false);
            this->timer--;
            if (this->timer == 0) {
                sCsState++;
                this->timer = 0xB;
            }
            break;
        case 12:
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
        case 13:
            BossVa_SetupBodyPhase1(this);
            break;
    }

    if (sCsState >= 5) {
        func_800F436C(&this->actor.projectedPos, 0x313C, 1.0f);
        if ((sCsState >= 8) && ((globalCtx->gameplayFrames % 4) == 0)) {
            BossVa_Lightning(globalCtx, this, 1, 100, 50.0f, 10.0f, 5, 10.0f, false);
        }
    }

    this->unk_1B0 += 0xCE4;
    this->unk_1AE = (s16)(Math_Sins(this->unk_1B0) * 50.0f) + 0x96;
    if ((sCsCamera != 0) && (sCsState < 11)) {
        Math_SmoothScaleMaxMinF(&sCameraEye.x, sCameraNextEye.x, 0.3f, sCameraEyeMaxVel.x, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraEye.y, sCameraNextEye.y, 0.3f, sCameraEyeMaxVel.y, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraEye.z, sCameraNextEye.z, 0.3f, sCameraEyeMaxVel.z, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraAt.x, sCameraNextAt.x, 0.3f, sCameraAtMaxVel.x, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraAt.y, sCameraNextAt.y, 0.3f, sCameraAtMaxVel.y, 0.075f);
        Math_SmoothScaleMaxMinF(&sCameraAt.z, sCameraNextAt.z, 0.3f, sCameraAtMaxVel.z, 0.075f);
        func_800C04D8(globalCtx, sCsCamera, &sCameraAt, &sCameraEye);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_80950780.s")
#endif

void BossVa_SetupBodyPhase1(BossVa* this) {
    f32 frames = SkelAnime_GetFrameCount(&D_06005184.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005184, 1.0f, frames, frames, 2, 0.0f);
    this->actor.shape.unk_08 = -450.0f;
    this->actor.flags &= ~1;
    this->timer = 25;
    D_809668D0 = 0x80;
    BossVa_SetupAction(this, BossVa_BodyPhase1);
}

void BossVa_BodyPhase1(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_1B0 += 0xCE4;
    this->unk_1AE = (s16)(Math_Sins(this->unk_1B0) * 50.0f) + 0x96;
    if (this->timer != 0) {
        this->timer--;
        if (this->timer == 0) {
            D_809668D0 &= 0x7F;
        }
    }

    if (this->collider1.base.atFlags & 2) {
        this->collider1.base.atFlags &= ~2;
        if (this->collider1.base.at == &player->actor) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsLink, 8.0f);
        }
    }

    if (D_809668D0 & 0x7F) {
        this->skelAnime.animCurrentFrame = 0.0f;
        func_8003426C(&this->actor, 0, 0xFF, 0, 0xC);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_DAMAGE);
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (sFightProgress >= 3)) {
        BossVa_SetupBodyPhase2(this, globalCtx);
    }

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->actor.posRot.rot.x, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->actor.posRot.rot.z, 1, 0xC8, 0);
    this->unk_1AC += 0xC31;
    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;
    if ((globalCtx->gameplayFrames % 4) == 0) {
        BossVa_Lightning(globalCtx, this, 1, 100, 50.0f, 10.0f, 2, 10.0f, false);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    Collider_CylinderUpdate(&this->actor, &this->collider1);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    func_800F436C(&this->actor.projectedPos, 0x313C, 1.0f);
}

void BossVa_SetupBodyPhase2(BossVa* this, GlobalContext* globalCtx) {
    s32 i;

    sFightProgress++;
    for (i = BOSSVA_BARI_UPPER_5; i >= BOSSVA_BARI_UPPER_1; i--) {
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA,
                           sInitPos[i].x + this->actor.posRot.pos.x, sInitPos[i].y + this->actor.posRot.pos.y,
                           sInitPos[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
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
        D_8096693E++;
        if ((this->invincibilityTimer != 0) && (this->actor.dmgEffectParams & 0x4000)) {
            func_8003426C(&this->actor, 0, 0xFF, 0, 0xA0);
            this->actor.dmgEffectTimer = this->invincibilityTimer;
        } else {
            this->collider1.body.bumper.flags = 0x10;
        }
    }

    if (this->collider1.base.acFlags & 2) {
        this->collider1.base.acFlags &= ~2;

        if (this->collider1.base.ac->id == ACTOR_EN_BOOM) {
            D_8096693E &= 0xFE00;
            func_8003426C(&this->actor, 0, 0xFF, 0, 0xA0);
            this->collider1.body.bumper.flags = 0xFC00712;
        } else {
            D_8095C22C++;
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

    if (this->collider1.base.atFlags & 2) {
        this->collider1.base.atFlags &= ~2;

        D_8096693E = (D_8096693E + 0x18) & 0xFFF0;
        if (this->collider1.base.at == &player->actor) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsLink, 8.0f);
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
        }
    }

    if ((D_8096693E > 10) && !(D_8096693E & 7) && (this->actor.speedXZ == 1.0f)) {
        sp48 = this->actor.posRot.pos;
        sp48.y += 310.0f + (this->actor.shape.unk_08 * this->actor.scale.y);
        sp48.x += -10.0f;
        sp48.z += 220.0f;
        BossVa_SpawnLightningBall(globalCtx, sEffects, this, &sp48, 4, 0);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->actor.posRot.rot.x, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->actor.posRot.rot.z, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -1000.0f, 1.0f, 20.0f, 0.0f);
    if (!(D_8096693E & 0x100)) {
        this->actor.flags |= 1;
        this->actor.speedXZ = 1.0f;
    } else {
        this->actor.flags &= ~1;
        this->actor.speedXZ = 0.0f;
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (sFightProgress >= 9)) {
        BossVa_SetupBodyPhase3(this);
    }

    this->unk_1AC += 0xC31;
    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;
    if ((globalCtx->gameplayFrames % 4) == 0) {
        BossVa_Lightning(globalCtx, this, 1, 100, 50.0f, 10.0f, 5, 10.0f, false);
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 45.0f;

    Collider_CylinderUpdate(&this->actor, &this->collider1);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    if (this->actor.dmgEffectTimer == 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    if ((this->actor.dmgEffectTimer == 0) || !(this->actor.dmgEffectParams & 0x4000)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    func_800F436C(&this->actor.projectedPos, 0x313C, (this->unk_1F6.y * 0.00025f) + 1.0f);
}

void BossVa_SetupBodyPhase3(BossVa* this) {
    this->collider1.body.bumper.flags = 0x10;
    this->actor.speedXZ = 0.0f;
    D_80966936 = false;
    BossVa_SetupAction(this, BossVa_BodyPhase3);
}

void BossVa_BodyPhase3(BossVa* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    s32 i;
    s16 sp62;

    sp62 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
    this->unk_1B0 += 0xCE4;
    this->unk_1AE = (s16)(Math_Sins(this->unk_1B0) * 50.0f) + 0x96;
    if (this->collider1.base.atFlags & 2) {
        this->collider1.base.atFlags &= ~2;
        if (this->collider1.base.at == &player->actor) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsLink, 8.0f);
            this->actor.posRot.rot.y += (s16)Math_Rand_CenteredFloat(12000.0f) + 0x8000;
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
        }
    }

    if (this->collider1.base.acFlags & 2) {
        this->skelAnime.animCurrentFrame = 0.0f;
        func_8003426C(&this->actor, 0, 0xFF, 0, 0xC);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_FAINT);
        D_809668D0 = 1;
        this->timer = 131;
        this->actor.flags &= ~1;
    } else {
        D_809668D0 = 0;
        if (this->timer == 0) {
            if (Math_SmoothScaleMaxMinS(&this->unk_1F6.y, 0xFA0, 1, 0x12C, 0) == 0) {
                if (this->actor.speedXZ == 0.0f) {
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                }
                Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 3.0f, 1.0f, 0.15f, 0.0f);
            }
            this->actor.flags |= 1;
        } else {
            this->timer--;
            if (this->timer < 35) {
                D_809668D0 = 0x80;
            }
            Math_SmoothScaleMaxMinS(&this->unk_1F6.y, 0, 1, 0x12C, 0);
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

    if (D_80966936) {
        this->actor.speedXZ = 0.0f;
    }

    Actor_MoveForward(&this->actor);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (sFightProgress >= 15)) {
        BossVa_SetupBodyPhase4(this, globalCtx);
    }

    this->actor.shape.rot.y += this->unk_1F6.y;
    if (sFightProgress == 9) {
        Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -450.0f, 1.0f, 15.0f, 0.0f);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -810.0f, 1.0f, 15.0f, 0.0f);
    }

    if ((this->actor.shape.unk_08 >= -500.0f) && (sFightProgress == 9)) {
        for (i = BOSSVA_BARI_LOWER_5; i >= BOSSVA_BARI_LOWER_1; i--) {
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_VA,
                               sInitPos[i].x + this->actor.posRot.pos.x, sInitPos[i].y + this->actor.posRot.pos.y,
                               sInitPos[i].z + this->actor.posRot.pos.z, sInitRot[i].x + this->actor.posRot.rot.x,
                               sInitRot[i].y + this->actor.posRot.rot.y, sInitRot[i].z + this->actor.posRot.rot.z,
                               i);
        }
        sFightProgress++;
    }

    this->unk_1AC += 0xC31;
    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;
    if ((globalCtx->gameplayFrames % 4) == 0) {
        BossVa_Lightning(globalCtx, this, 1, 0x64, 50.0f, 10.0f, 5, 10.0f, false);
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 20.0f;
    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    Collider_CylinderUpdate(&this->actor, &this->collider1);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    if (this->timer == 0) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    func_800F436C(&this->actor.projectedPos, 0x313C, (this->unk_1F6.y * 0.00025f) + 1.0f);
}

void BossVa_SetupBodyPhase4(BossVa* this, GlobalContext* globalCtx) {
    this->unk_1AC = 0;
    this->actor.flags |= 1;
    this->unk_1F6.y = this->unk_1AC;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    this->unk_19C = (s16)(Math_Rand_ZeroOne() * 150.0f) + 0x12C;
    D_809668D0 = 1;
    sPhase4HP = 4;
    if (this->actor.shape.unk_08 != 0.0f) {
        this->timer = -30;
    }

    this->collider1.dim.radius = 55;
    BossVa_SetupAction(this, BossVa_BodyPhase4);
}

void BossVa_BodyPhase4(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 tmpf1;
    EnBoom* refActor;

    this->unk_1B0 = (this->unk_1B0 + (s16)((sFightProgress - 14) * 1000.0f)) + 0xCE4;
    this->unk_1AE = (s16)(Math_Sins(this->unk_1B0) * 50.0f) + 0x96;
    if (this->collider1.base.atFlags & 2) {
        this->collider1.base.atFlags &= ~2;
        if (this->collider1.base.at == &player->actor) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsLink, 8.0f);
            this->actor.posRot.rot.y += (s16)Math_Rand_CenteredFloat(12000.0f) + 0x8000;
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
        }
    }
    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    if (this->collider1.base.acFlags & 2) {
        this->collider1.base.acFlags &= ~2;
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
                        if (sFightProgress >= 18) {
                            BossVa_SetupDeath(this, globalCtx);
                            func_80032C7C(globalCtx, &this->actor);
                            return;
                        }

                        this->actor.speedXZ = -10.0f;
                        this->timer = -0xAA - (s16)(Math_Rand_ZeroOne() * 150.0f);
                    }
                } else {
                    this->timer = (s16)Math_Rand_CenteredFloat(40.0f) + 160;
                    this->unk_1F6.y = 0;
                    this->actor.speedXZ = 0.0f;
                    func_8003426C(&this->actor, 0, 0x7D, 0, 0xFF);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_FAINT);
                }
            }
        } else if (this->collider1.base.ac->id == ACTOR_EN_BOOM) {
            refActor = (EnBoom*)this->collider1.base.ac;
            refActor->returnTimer = 0;
            refActor->moveTo = &player->actor;
            refActor->actor.posRot.rot.y = refActor->actor.yawTowardsLink;
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_SHIELD_REFLECT_SW);
        }
    } else if ((this->unk_19C == 0) && (0.0f == this->actor.shape.unk_08)) {
        this->timer = -220 - (s16)(Math_Rand_ZeroOne() * 200.0f);
    } else if (this->unk_19C != 0) {
        this->unk_19C--;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer == 0) {
        Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 0.0f, 1.0f, ((sFightProgress - 14) * 5.0f) + 10.0f, 0.0f);
        if (Math_SmoothScaleMaxMinS(&this->unk_1F6.y, (s16)((sFightProgress - 14) * 500.0f) + 0xFA0, 1, 0x12C, 0) == 0) {
            if (this->actor.speedXZ == 0.0f) {
                this->actor.dmgEffectTimer = 0;
                this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                this->unk_19C = (s16)(Math_Rand_ZeroOne() * 150.0f) + 0x12C;
            }
            Math_SmoothScaleMaxMinF(&this->actor.speedXZ, ((sFightProgress - 14) * 1.5f) + 4.0f, 1.0f, 0.25f, 0.0f);
        }
        this->collider1.body.bumper.flags = 0x10;
    } else {
        Math_SmoothScaleMaxMinS(&this->unk_1F6.y, 0, 1, 0x96, 0);
        if (this->timer > 0) {
            if ((player->stateFlags1 & 0x4000000) && (this->timer > 35)) {
                this->timer = 35;
            }

            Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -480.0f, 1.0f, 30.0f, 0.0f);
            this->collider1.body.bumper.flags = 0xFC00712;
            this->timer--;
        } else {
            if ((player->stateFlags1 & 0x4000000) && (this->timer < -60)) {
                this->timer = -59;
            }

            if ((globalCtx->gameplayFrames % 4) == 0) {
                BossVa_Lightning(globalCtx, this, 2, 0x64, 220.0f, 5.0f, 5, 12.0f, true);
            }

            if (this->timer < -30) {
                if (this->actor.speedXZ > 0.0f) {
                    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
                }

                Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -1400.0f, 1.0f, 60.0f, 0.0f);
            } else {
                if (this->actor.speedXZ == 0.0f) {
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x8000;
                    this->unk_19C = (s16)(Math_Rand_ZeroOne() * 150.0f) + 330;
                }

                Math_SmoothScaleMaxMinS(&this->unk_1F6.y, 0xFA0, 1, 0x1F4, 0);
                tmpf1 = sFightProgress - 14;
                Math_SmoothScaleMaxMinF(&this->actor.speedXZ, (tmpf1 + tmpf1) + 4.0f, 1.0f, 0.25f, 0.0f);
                Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 0.0f, 1.0f, 20.0f, 0.0f);
            }
            this->timer++;
        }
    }

    this->actor.shape.rot.y = this->actor.shape.rot.y + this->unk_1F6.y;
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

    if (sFightProgress <= 15) {
        if (Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos) >= 400.0f) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y,
                                    Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos), 1, 0x5DC, 0);
        } else if (player->invincibilityTimer != 0) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 1, 0x12C, 0);
        } else if ((globalCtx->gameplayFrames & 0x80) == 0) {
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1,
                                    (s16)((sFightProgress - 14) * 100.0f) + 0x64, 0);
        }
    }

    Actor_MoveForward(&this->actor);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 60.0f;
    if (((globalCtx->gameplayFrames % 2) == 0) && (this->timer == 0)) {
        BossVa_Lightning(globalCtx, this, 2, 125, 40.0f, 10.0f, 5, 10.0f, false);
        BossVa_Lightning(globalCtx, this, 1, 100, 15.0f, 10.0f, 2, 11.0f, true);
    }

    func_8002E4B4(globalCtx, &this->actor, 30.0f, 70.0f, 0.0f, 1);
    Collider_CylinderUpdate(&this->actor, &this->collider1);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    if (this->invincibilityTimer == 0) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    if ((this->unk_1F6.y >= 0x3E9) || (this->actor.shape.unk_08 < -1200.0f)) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    func_800F436C(&this->actor.projectedPos, 0x313C, (this->unk_1F6.y * 0.00025f) + 1.0f);
    if (this->invincibilityTimer != 0) {
        this->invincibilityTimer--;
        D_809668D0 = (D_809668D0 & 0x80) | 2;
    } else {
        D_809668D0 = (D_809668D0 & 0x80) | 1;
    }
}

void BossVa_SetupDeath(BossVa* this, GlobalContext* globalCtx) {
    func_800F436C(&this->actor.projectedPos, 0x313C, 1.0f);
    this->actor.flags &= ~5;
    Audio_SetBGM(0x100100FF);
    this->unk_1F6.x = 0xC31;
    sCsState = 0xE;
    this->actor.speedXZ = 0.0f;
    this->unk_1A8 = 0.0f;
    Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
    BossVa_SetupAction(this, BossVa_BodyDeath);
}

#ifdef NON_MATCHING
// regalloc in struct copies
void BossVa_BodyDeath(BossVa* this, GlobalContext* globalCtx) {
    s32 i;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    s32 sp7C;
    Player* player = PLAYER;
    s16 tmp16;

    switch (sCsState) {
        case 14:
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
            this->unk_1B0 = 0xF;
            globalCtx->envCtx.unk_E2[0] = globalCtx->envCtx.unk_E2[1] = globalCtx->envCtx.unk_E2[2] = 0xFF;
            globalCtx->envCtx.unk_E2[3] = 0;
            globalCtx->envCtx.unk_E1 = 1;
            sCsState++;
        case 15:
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
                    BossVa_Growth(globalCtx, this, 1, tmp16, 0.0f, 0.0f, 1, i, 1);
                }

                BossVa_Growth(globalCtx, this, 1, tmp16, 0.0f, 0.0f, 1, 11.0f, 1);
                this->unk_1B0--;
            }

            if (this->unk_1B0 == 0) {
                sCsState++;

                sCameraAtMaxVel = sCameraEyeMaxVel = sZeroVec;
            }
            break;
        case 21:
            this->unk_1AC += 0x1862;
            this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.12f) + 1.0f;
            this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.075f) + 1.0f;
            if (!this->isDead) {
                this->unk_195++;
                this->isDead++;
                this->timer = 30;
                sCsState++;
                EffectSsDeadSound_SpawnStationary(globalCtx, &this->actor.projectedPos, 0x3940, 1, 1, 0x28);
                this->unk_194 = 2;
                BossVa_SetDeathEnv(globalCtx);
                func_8002DF54(globalCtx, &this->actor, 8);
            }
            break;
        case 22:
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
        case 23:
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
        case 24:
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
    Math_SmoothScaleMaxMinS(&this->unk_1F6.y, 0, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1F6.x, 0, 1, 0xC8, 0);
    Math_SmoothScaleMaxMinS(&this->unk_1AE, 0xC8, 1, 0xA, 0);
    if (globalCtx->envCtx.unk_E2[3] != 0) {
        globalCtx->envCtx.unk_E2[3] -= 50;
    }

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    this->actor.shape.rot.y += this->unk_1F6.y;
    this->unk_1AC += this->unk_1F6.x;

    this->unk_1A0 = (Math_Coss(this->unk_1AC) * 0.1f) + 1.0f;
    this->unk_1A4 = (Math_Sins(this->unk_1AC) * 0.05f) + 1.0f;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809533F4.s")
#endif

void BossVa_SetupSupportIntro(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060166A8, 0.0f, 0.0f, SkelAnime_GetFrameCount(&D_060166A8.genericHeader),
                         1, 0.0f);
    this->timer = 0;
    BossVa_SetupAction(this, BossVa_SupportIntro);
}

void BossVa_SupportIntro(BossVa* this, GlobalContext* globalCtx) {
    BossVa_AttachToBody(this);
    if (sCsState == 13) {
        BossVa_SetupSupportPhase1(this, globalCtx);
    } else if (sCsState >= 3) {
        this->timer++;
        if ((this->timer % 2) == 0) {
            BossVa_Lightning(globalCtx, this, 2, 90, 5.0f, 0.0f, 5, ((this->timer & 0x20) >> 5) + 1, true);
        }

        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 1.0f, 1.0f, 0.05f, 0.0f);
        if (Math_Rand_ZeroOne() < 0.1f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
        }
    }
}

void BossVa_SetupSupportPhase1(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060166A8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060166A8.genericHeader),
                         0, 0.0f);
    this->timer = this->actor.params * 10;
    BossVa_SetupAction(this, BossVa_SupportPhase1);
}

void BossVa_SupportPhase1(BossVa* this, GlobalContext* globalCtx) {
    this->timer++;
    if (D_809668D0 & 0x7F) {
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

    if (this->collider2.base.acFlags & 2) {
        BossVa_SetupSupportCut(this, globalCtx);
    } else {
        if (this->actor.dmgEffectTimer == 0) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
        }

        if ((this->timer & 1) == 0) {
            BossVa_Lightning(globalCtx, this, 1, 100, 5.0f, 0.0f, 5, ((this->timer & 0x20) >> 5) + 1, true);
        }
    }
}

void BossVa_SetupSupportCut(BossVa* this, GlobalContext* globalCtx) {
    s32 stumpParams = this->actor.params + BOSSVA_STUMP_1;

    D_809668D0++;
    sFightProgress++;
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BOSS_VA, this->unk_1B4.x, this->unk_1B4.y + 20.0f,
                this->unk_1B4.z, 0, this->actor.shape.rot.y, 0, stumpParams);
    func_8005AA1C(&globalCtx->mainCamera, 2, 0xB, 8);
    this->unk_195 = 0;
    this->unk_19C = 0;
    BossVa_SetupAction(this, BossVa_SupportCut);
}

void BossVa_SupportCut(BossVa* this, GlobalContext* globalCtx) {
    BossVa* vaBody = BODY;
    f32 frames;

    BossVa_AttachToBody(this);

    if (this->unk_194 != 0) {
        frames = SkelAnime_GetFrameCount(&D_06017694.genericHeader);
        this->unk_194 = 0;
        this->timer = (s32)(Math_Rand_ZeroOne() * 10.0f) + 5;
        SkelAnime_Free(&this->skelAnime, globalCtx);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06017FC8, &D_06017694, 0, 0, 0);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06017694, 1.0f, 0.0f, frames, 2, 0.0f);
        D_809668D0 = 0;
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

    Math_SmoothScaleMaxMinS(&this->unk_1F6.x, vaBody->unk_1F6.y * -3, 1, 0x4B0, 0);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        frames = SkelAnime_GetFrameCount(&D_060177F4.genericHeader);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060177F4, 1.0f, 0.0f, frames, 1, 0.0f);
        this->actor.flags &= ~1;
    }

    if ((this->timer == 0) && (sCsState < 14)) {
        this->timer = (s32)(Math_Rand_ZeroOne() * 10.0f) + 10;
        BossVa_BloodDroplets(globalCtx, &this->unk_1B4, this->unk_1F6.x, this->actor.shape.rot.y);
    }

    if (sCsState >= 0xE) {
        Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 0.0f, 0.3f, 0.25f, 0.125f);
    }

    switch (sCsState) {
        case 19:
            sCameraEye = sCameraNextEye;
            sCameraAt = sCameraNextAt;
            Math_SmoothScaleMaxMinF(&sCameraEye.x, sCameraNextAt.x, 1.0f, 10.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&sCameraEye.z, sCameraNextAt.z, 1.0f, 10.0f, 0.0f);
            sCameraEye.y += 20.0f;
            sCsState++;

        case 20:
        case 21:
        case 22:
            if (this->unk_195 == 0) {
                if ((globalCtx->gameplayFrames % 2) != 0) {
                    BossVa_Growth(globalCtx, this, 1, (s16)Math_Rand_CenteredFloat(5.0f) + 6, 7.0f, 5.0f, 2,
                                  (this->unk_19C >> 3) + 1, 1);
                }

                this->unk_19C++;
                if (this->unk_19C >= 32) {
                    this->unk_195++;
                    this->isDead = true;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BREAK2);
                    if (this->actor.params == BOSSVA_SUPPORT_3) {
                        sCsState++;
                    }
                }
            } else {
                this->unk_19C--;
                if (this->unk_19C == 0) {
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

    if (sCsState >= 14) {
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
        case 10:
        case 11:
        case 12:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            break;
        case 13:
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
        // sp7C = boomerang->actor.posRot.pos;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    BossVa_AttachToBody(this);
    if (sFightProgress >= 15) {
        BossVa_SetupZapperEnraged(this, globalCtx);
        return;
    }

    if (D_809668D0 & 0x7F) {
        BossVa_SetupZapperDamaged(this, globalCtx);
        return;
    }

    if ((sFightProgress < 15) && (BODY->actor.speedXZ != 0.0f)) {
        BossVa_SetupZapperHold(this, globalCtx);
        return;
    }

    sp98 = Math_Vec3f_Yaw(&sp7C, &this->unk_1B4);
    tmp17 = sp98 - this->actor.shape.rot.y;

    if ((sp8E >= ABS(tmp17) || this->unk_195 != 0) &&
        !(D_809668D0 & 0x80 || player->stateFlags1 & 0x04000000)) {

        if (this->unk_195 == 0) {

        // if((this->unk_195 == 0) || (this->unk_19C < 10)) {
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

            yaw = Math_Vec3f_Yaw(&this->unk_1CC, &sp7C);
            tmp17 = Math_SmoothScaleMaxMinS(&this->unk_1F2, yaw - 0x4000, 1, 0x9C4, 0);
            sp88 += ABS(tmp17);

            sp96 = this->actor.shape.rot.x + this->skelAnime.limbDrawTbl[1].z + this->skelAnime.limbDrawTbl[2].z +
                   this->skelAnime.limbDrawTbl[3].z + this->skelAnime.limbDrawTbl[4].z +
                   this->skelAnime.limbDrawTbl[5].z;

            yaw = Math_Vec3f_Pitch(&sp7C, &this->unk_1C0);
            tmp17 = Math_SmoothScaleMaxMinS(&this->unk_1EA, yaw - sp96, 1, 0xFA0, 0);
            sp88 += ABS(tmp17);

            yaw = Math_Vec3f_Pitch(&this->unk_1CC, &sp7C);
            tmp17 = Math_SmoothScaleMaxMinS(&this->unk_1F0, -yaw, 1, 0xFA0, 0);
            sp88 += ABS(tmp17);

            this->skelAnime.animPlaybackSpeed = 0.0f;
            if (Math_SmoothScaleMaxMinF(&this->skelAnime.animCurrentFrame, 0.0f, 1.0f, 2.0f, 0.0f) == 0.0f) {
                if (sp88 < sp90) {
                    // if(this->unk_195 == 0) {this->unk_19C = 0;}
                    this->unk_19C = 0;
                    this->unk_195++;
                    this->unk_1D8 = sp7C;
                }

                if (Math_Rand_ZeroOne() < 0.1f) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
                }
            }
        }
    } else {
        if ((this->unk_195 != 0) || (this->unk_19C < 0)) {
            if (this->collider3.base.atFlags & 2) {
                if (this->unk_19C > 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_HIT_RINK);
                    BossVa_SetLightningEnv(globalCtx);
                    this->unk_19C = -1;
                    BODY->unk_194 = 6;
                }
            } else if (this->unk_19C > 0) {
                this->unk_19C = 0;
            }

            if ((this->unk_19C < 0) && (player->stateFlags1 & 0x4000000)) {
                BossVa_Lightning(globalCtx, this, 1, 30, 0.0f, 0.0f, 6, 0.0f, true);
            }
        }

        Math_SmoothScaleMaxMinS(&this->unk_1E6, 0, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1EC, 0, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1EA, 0, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1F2, this->actor.shape.rot.y - this->actor.shape.rot.x, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1F0, this->skelAnime.limbDrawTbl[7].z, 1, 0x6D6, 0);
        Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 1.0f, 1.0f, 0.05f, 0.0f);
        this->unk_195 = 0;
    }

    if ((this->unk_195 != 0) && (this->unk_195 != 2)) {
        // if (this->unk_19C >= 32) {
        //     if (this->unk_19C == 32) {
        if (this->unk_19C >= 32) {
            if (this->unk_19C == 32) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_THUNDER);
            }
            BossVa_Lightning(globalCtx, this, 2, 110, 15.0f, 15.0f, 3, 5.0f, true);
            BossVa_Lightning(globalCtx, this, 2, 110, 15.0f, 15.0f, 3, 6.0f, true);
            BossVa_Lightning(globalCtx, this, 2, 110, 15.0f, 15.0f, 3, 7.0f, true);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider3.base);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider3.base);
        } else {
            BossVa_Lightning(globalCtx, this, 2, 50, 15.0f, 0.0f, 5, (this->unk_19C >> 3) + 1, true);
            // if (this->unk_19C == 30) {
            if (this->unk_19C == 30) {
                BossVa_SetLightningEnv(globalCtx);
            }

            // if (this->unk_19C == 20) {
            if (this->unk_19C == 20) {
                Vec3f sp44 = this->unk_1CC;

                BossVa_SpawnZapperCharge(globalCtx, sEffects, this, &sp44, &this->unk_1F6, 100, 0);
            }
        }

        this->unk_19C++;
        // if (this->unk_19C >= 40) {
        if (this->unk_19C >= 40) {
            this->unk_195 = 0;
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
    this->unk_195 = 0;
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
        if (sFightProgress >= 15) {
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
    this->unk_195 = 0;
    this->unk_19C = (this->actor.params * -6) + 18;
    this->unk_1B0 = 0;
    BossVa_SetupAction(this, BossVa_ZapperDeath);
}

void BossVa_ZapperDeath(BossVa* this, GlobalContext* globalCtx) {
    f32 sp3C = 55.0f;
    f32 tmpf1;
    f32 tmpf2;

    BossVa_AttachToBody(this);
    if (((globalCtx->gameplayFrames % 32) == 0) && (sCsState <= 15)) {
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
        case 17:
            sp3C = -55.0f;
        case 16:
        case 18:
            if (this->unk_195 == 0) {
                if (((this->actor.params == BOSSVA_ZAPPER_1) && (this->unk_19C < 16)) ||
                    ((this->actor.params == BOSSVA_ZAPPER_2) && (this->unk_19C < 24)) || 
                     (this->actor.params == BOSSVA_ZAPPER_3)) {

                    if (!(this->unk_19C & 1) && (this->unk_19C >= 0)) {
                        if (this->unk_19C < 8) {
                            BossVa_Growth(globalCtx, this, 1, (s16)Math_Rand_CenteredFloat(5.0f) + 0xD, 0.0f, 0.0f, 2,
                                          0.6f, 1);
                        } else {
                            BossVa_Growth(globalCtx, this, 1, (s16)Math_Rand_CenteredFloat(5.0f) + 6, 0.0f, 7.0f, 2,
                                          (this->unk_19C >> 3) + 1, 1);
                        }

                        BossVa_Lightning(globalCtx, this, 2, 50, 15.0f, 0.0f, 5, (this->unk_19C >> 3) + 1, true);
                    }

                    this->unk_19C++;
                    if (this->unk_19C >= 32) {
                        this->unk_195++;
                        this->isDead = true;
                        BossVa_SetDeathEnv(globalCtx);
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BREAK2);
                    }
                } else {
                    this->unk_195++;
                    this->isDead = true;
                    this->unk_19C = 32;
                    sCsState++;
                }

                if ((this->actor.params + 13) == sCsState) {
                    sCameraAt.x = this->unk_1C0.x;
                    sCameraEye.y = sCameraAt.y = this->unk_1C0.y;
                    sCameraAt.z = this->unk_1C0.z;
                    sCameraEye.x = (Math_Coss(-(this->actor.shape.rot.y + this->unk_1B0)) * sp3C) + this->unk_1C0.x;
                    sCameraEye.z = (Math_Sins(-(this->actor.shape.rot.y + this->unk_1B0)) * sp3C) + this->unk_1C0.z;
                    this->unk_1B0 += 0x15E;
                }
            } else {
                this->unk_19C--;
                if (this->unk_19C == 0) {
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
    this->unk_195 = 0;
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
    if (sFightProgress >= 18) {
        BossVa_SetupZapperDeath(this, globalCtx);
        return;
    }

    if (D_809668D0 & 0x7E) {
        BossVa_SetupZapperDamaged(this, globalCtx);
        return;
    }

    sp54.y += 25.0;

    sp6C = Math_Vec3f_Yaw(&sp54, &this->unk_1B4);
    tmp16 = sp6C - this->actor.shape.rot.y;

    if (((ABS(tmp16) < 0x4651) || (this->unk_195 != 0)) &&
        (!(D_809668D0 & 0x80) && !(player->stateFlags1 & 0x4000000))) {
        if (this->unk_195 == 0) {

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

            yaw = Math_Vec3f_Yaw(&this->unk_1CC, &sp54);
            tmp16 = Math_SmoothScaleMaxMinS(&this->unk_1F2, yaw - 0x4000, 1, 0xEA6, 0);
            sp60 += ABS(tmp16);

            sp6A = this->actor.shape.rot.x + this->skelAnime.limbDrawTbl[1].x + this->skelAnime.limbDrawTbl[2].x +
                   this->skelAnime.limbDrawTbl[3].x + this->skelAnime.limbDrawTbl[4].x +
                   this->skelAnime.limbDrawTbl[5].x;

            yaw = Math_Vec3f_Pitch(&sp54, &this->unk_1C0);
            tmp16 = Math_SmoothScaleMaxMinS(&this->unk_1EA, yaw - sp6A, 1, 0x1B58, 0);
            sp60 += ABS(tmp16);

            yaw = Math_Vec3f_Pitch(&this->unk_1CC, &sp54);
            tmp16 = Math_SmoothScaleMaxMinS(&this->unk_1F0, -yaw, 1, 0x1B58, 0);
            sp60 += ABS(tmp16);

            this->skelAnime.animPlaybackSpeed = 0.0f;
            if ((Math_SmoothScaleMaxMinF(&this->skelAnime.animCurrentFrame, 0.0f, 1.0f, 3.0f, 0.0f) == 0.0f) &&
                (sp60 < 0x258)) {
                this->unk_19C = 0;
                this->unk_195++;
                this->unk_1D8 = sp54;
                if (Math_Rand_ZeroOne() < 0.1f) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
                }
            }
        }
    } else {
        if ((this->unk_195 != 0) || (this->unk_19C < 0)) {
            if (this->collider3.base.atFlags & 2) {
                if (this->unk_19C > 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_HIT_RINK);
                    BossVa_SetLightningEnv(globalCtx);
                    this->unk_19C = -1;
                    BODY->unk_194 = 6;
                }
            } else if (this->unk_19C > 0) {
                this->unk_19C = 0;
            }

            if ((this->unk_19C < 0) && (player->stateFlags1 & 0x4000000)) {
                BossVa_Lightning(globalCtx, this, 1, 30, 0.0f, 0, 6, 0.0f, true);
            }
        }

        Math_SmoothScaleMaxMinS(&this->unk_1E6, 0, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1EC, 0, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1EA, 0, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1F2, this->actor.shape.rot.y - this->actor.shape.rot.x, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinS(&this->unk_1F0, this->skelAnime.limbDrawTbl[7].z, 1, 0xEA6, 0);
        Math_SmoothScaleMaxMinF(&this->skelAnime.animPlaybackSpeed, 1.0f, 1.0f, 0.05f, 0.0f);
        this->unk_195 = 0;
    }

    if ((this->unk_195 != 0) && (this->unk_195 != 2)) {
        if (this->unk_19C >= 16) {
            if (this->unk_19C == 18) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_THUNDER);
            }

            BossVa_Lightning(globalCtx, this, 2, 110, 15.0f, 15.0f, 3, 5.0f, true);
            BossVa_Lightning(globalCtx, this, 2, 110, 15.0f, 15.0f, 3, 6.0f, true);
            BossVa_Lightning(globalCtx, this, 2, 110, 15.0f, 15.0f, 3, 7.0f, true);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider3.base);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider3.base);
        } else {
            BossVa_Lightning(globalCtx, this, 2, 50, 15.0f, 0.0f, 5, (this->unk_19C >> 1) + 1, true);
            if (this->unk_19C == 14) {
                BossVa_SetLightningEnv(globalCtx);
            }

            if (this->unk_19C == 4) {
                Vec3f sp48 = this->unk_1CC;

                BossVa_SpawnZapperCharge(globalCtx, sEffects, this, &sp48, &this->unk_1F6, 100, 0);
            }
        }

        this->unk_19C++;
        if (this->unk_19C >= 24) {
            this->unk_195 = 0;
        }
    }
}

void BossVa_SetupZapperHold(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06018B90, 0.0f, 0.0f, SkelAnime_GetFrameCount(&D_06018B90.genericHeader),
                         3, -6.0f);
    this->unk_195 = 0;
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
    this->unk_19C = 64;
    this->unk_1F0 = 120;
    this->unk_1A8 = 0.0f;
    this->actor.posRot.pos.x = sInitPos[this->actor.params + 10].x + this->actor.initPosRot.pos.x;
    this->actor.posRot.pos.y = sInitPos[this->actor.params + 10].y + this->actor.initPosRot.pos.y;
    this->actor.posRot.pos.z = sInitPos[this->actor.params + 10].z + this->actor.initPosRot.pos.z;
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
        case 2:
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
        case 3:
        case 4:
        case 5:
        case 6:
            if (this->actor.params != BOSSVA_BARI_UPPER_1) {
                Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y,
                                        sInitPos[this->actor.params + 10].y + this->actor.initPosRot.pos.y, 0.3f,
                                        1.0f, 0.15f);
                this->actor.posRot.pos.x += (func_800CA720(this->unk_1A4 * 0.25f) * 0.5f);
            } else {
                Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 60.0f, 0.3f, 1.0f, 0.15f);
            }
            this->actor.posRot.pos.y += func_800CA720(this->unk_1A4) * (2.0f - func_800CA720(this->unk_1A4));
            break;
        case 8:
        case 9:
            if ((this->unk_19C >= 16) && (this->timer < 0)) {
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
                                    D_8095C230[0]++;
                                } else {
                                    D_8095C230[this->actor.params - BOSSVA_BARI_UPPER_1]++;
                                }
                            } else {
                                D_8095C230[this->actor.params - BOSSVA_BARI_UPPER_1 + 1]++;
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
        case 7:
            this->timer--;
            if (this->timer == 0) {
                this->unk_19C = 0;
            } else {
                func_80035844(&BODY->actor.posRot.pos, &this->actor.posRot.pos, &this->actor.posRot.rot.x, 0);
                this->unk_1A0 = Math_Vec3f_DistXYZ(&BODY->actor.posRot.pos, &this->actor.posRot.pos);
                if (sp50 > 30.0f) {
                    BossVa_Lightning(globalCtx, this, 1, 80, 15.0f, 0.0f, 2, 1.0f, true);
                }
            }
            break;
        case 13:
            this->timer++;
            if (this->timer == 0) {
                Actor_Kill(&this->actor);
            }
            return;
        case 10:
        case 11:
        case 12:
            break;
    }

    if (((globalCtx->gameplayFrames % 4) == 0) && (sCsState < 9)) {
        BossVa_Lightning(globalCtx, this, 1, 70, 25.0f, 20.0f, 2, 2.0f, true);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }
}

void BossVa_SetupBariPhase2Attack(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000024, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000024.genericHeader),
                         0, 0.0f);
    this->unk_19C = 0x80;
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
    s32 pad;

    this->unk_1A4 += Math_Rand_ZeroOne() * 0.5f;
    sp52 = this->unk_19C & 0x1FF;

    if ((globalCtx->gameplayFrames % 128) == 0) {
        this->unk_1F6.x = (s16)(Math_Rand_ZeroOne() * 100.0f) + 100;
    }

    Math_SmoothScaleMaxMinS(&this->unk_1F6.z, this->unk_1F6.x, 1, 0x1E, 0);
    this->unk_1F6.y += this->unk_1F6.z;
    if ((this->collider3.base.atFlags & 2) || (this->collider2.base.atFlags & 2)) {
        if ((this->collider3.base.at == &player->actor) || (this->collider2.base.at == &player->actor)) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, BODY->actor.yawTowardsLink, 8.0f);
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
            this->collider2.base.at = NULL;
            this->collider3.base.at = NULL;
        }

        this->collider3.base.atFlags &= ~2;
        this->collider2.base.atFlags &= ~2;
    }

    if (this->collider2.base.acFlags & 2) {
        this->collider2.base.acFlags &= ~2;
        if ((this->collider2.base.ac->id == ACTOR_EN_BOOM) && (sp52 >= 128)) {
            boomerang = (EnBoom*)this->collider2.base.ac;
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
    if (!(this->unk_19C & 0x200)) {
        this->unk_1AC = 0xBB8;
    } else {
        this->unk_1AC = -0xBB8;
    }

    if (sp52 >= 128) {
        BossVa_Lightning(globalCtx, this, 1, 75, 15.0f, 7.0f, 1, 1.0f, true);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
        D_80966936 = false;
    } else {
        D_80966936 = true;
    }

    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider3.base);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    if ((globalCtx->gameplayFrames % 4) == 0) {
        Math_SmoothScaleMaxMinS(&this->unk_1F0, 0x78, 1, 0xA, 0);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    this->actor.posRot.rot.y += this->unk_1AC;
    if (D_809668D0 & 0x7F) {
        BossVa_SetupBariPhase2Stunned(this, globalCtx);
    }
}

void BossVa_SetupBariPhase1Attack(BossVa* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000024, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000024.genericHeader),
                         0, 0.0f);
    this->unk_19C = 0x40;
    this->unk_1F0 = 0x78;
    this->unk_1A0 = 60.0f;
    this->unk_1A8 = 0.0f;
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_BariPhase1Attack);
}

void BossVa_BariPhase1Attack(BossVa* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnBoom* boomerang;
    Vec3f sp54 = BODY->unk_1D8;
    s16 sp52;
    s16 sp50;
    f32 sp4C;
    s32 pad;

    this->unk_1A4 += Math_Rand_ZeroOne() * 0.5f;
    sp52 = this->unk_19C & 0x1FF;
    if ((globalCtx->gameplayFrames % 128) == 0) {
        this->unk_1F6.x = (s16)(Math_Rand_ZeroOne() * 100.0f) + 100;
    }

    sp50 = (sFightProgress * 70) - 280;
    Math_SmoothScaleMaxMinS(&this->unk_1F6.z, this->unk_1F6.x, 1, 0x1E, 0);
    this->unk_1F6.y += this->unk_1F6.z;
    if (D_8095C22C != 0) {
        D_8095C22C--;
        BossVa_KillBari(this, globalCtx);
        return;
    }

    if ((this->collider3.base.atFlags & 2) || (this->collider2.base.atFlags & 2)) {
        if ((this->collider3.base.at == &player->actor) || (this->collider2.base.at == &player->actor)) {
            func_8002F71C(globalCtx, &this->actor, 8.0f, BODY->actor.yawTowardsLink, 8.0f);
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
            this->collider2.base.at = NULL;
            this->collider3.base.at = NULL;
        }

        this->collider3.base.atFlags &= ~2;
        this->collider2.base.atFlags &= ~2;
    }

    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 4.0f, 1.0f, 2.0f, 0.0f);
    this->actor.posRot.rot.x = Math_Vec3f_Pitch(&sp54, &this->actor.posRot.pos);
    if ((globalCtx->gameplayFrames % 8) == 0) {
        Math_SmoothScaleMaxMinS(&this->unk_1F0, 0x28, 1, 0xA, 0);
        BossVa_Lightning(globalCtx, this, 1, this->unk_1F0, 25.0f, 20.0f, 2, 2.0f, true);
    }

    if (!(D_8096693E & 0x100) && (BODY->actor.dmgEffectTimer == 0)) {
        sp4C = 200.0f;
        BossVa_Lightning(globalCtx, this, 1, 125, 15.0f, 7.0f, 1, 1.0f, true);
        this->actor.flags &= ~1;
        if (this->actor.params & 1) {
            sp4C = -200.0f;
        }

        Math_SmoothScaleMaxMinF(&this->unk_1A0, (Math_Sins(D_8096693E * 400) * sp4C) + 320.0f, 1.0f, 10.0f, 0.0f);
        Math_SmoothScaleMaxMinS(&this->unk_1AC, sp50 + 0x1F4, 1, 0x3C, 0);
        this->actor.posRot.pos.y += 2.0f * func_800CA720(this->unk_1A4);
        if (this->collider2.base.acFlags & 2) {
            this->collider2.base.acFlags &= ~2;

            if ((this->collider2.base.ac->id == ACTOR_EN_BOOM) && (sp52 >= 64)) {
                boomerang = (EnBoom*)this->collider2.base.ac;
                boomerang->returnTimer = 0;
                boomerang->moveTo = &player->actor;
                boomerang->actor.posRot.rot.y = boomerang->actor.yawTowardsLink;
                Audio_PlayActorSound2(&this->actor, NA_SE_IT_SHIELD_REFLECT_SW);
            }
        }

        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider3.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
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
        if (this->collider2.base.acFlags & 2) {
            BossVa_KillBari(this, globalCtx);
        }
    }

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, 0, 1, 0x5DC, 0);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    if ((globalCtx->gameplayFrames % 4) == 0) {
        Math_SmoothScaleMaxMinS(&this->unk_1F0, 0x78, 1, 0xA, 0);
    }

    if (Math_Rand_ZeroOne() < 0.1f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BALINADE_BL_SPARK - SFX_FLAG);
    }

    if (BODY->actor.dmgEffectTimer == 0) {
        if (!(this->unk_19C & 0x400)) {
            this->actor.posRot.rot.y += this->unk_1AC;
        } else {
            this->actor.posRot.rot.y -= this->unk_1AC;
        }

        this->actor.posRot.pos.x = (Math_Sins(this->actor.posRot.rot.y) * this->unk_1A0) + sp54.x;
        this->actor.posRot.pos.z = (Math_Coss(this->actor.posRot.rot.y) * this->unk_1A0) + sp54.z;
    }
}

void BossVa_SetupBariPhase2Stunned(BossVa* this, GlobalContext* globalCtx) {
    this->actor.flags |= 1;
    this->timer = BODY->timer;
    func_8003426C(&this->actor, 0, 0xFF, 0x2000, this->timer);
    BossVa_SetupAction(this, BossVa_BariPhase2Stunned);
}

void BossVa_BariPhase2Stunned(BossVa* this, GlobalContext* globalCtx) {
    s32 sp44_pad;
    Vec3f sp40 = BODY->unk_1D8;

    this->actor.posRot.rot.x =
        Math_Vec3f_Pitch(&BODY->actor.posRot.pos, &this->actor.posRot.pos);
    if (this->collider2.base.acFlags & 2) {
        BossVa_KillBari(this, globalCtx);
        return;
    }

    this->unk_1A4 += (Math_Rand_ZeroOne() * 0.5f);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, 4.0f, 1.0f, 2.0f, 0.0f);
    this->actor.posRot.pos.y += func_800CA720(this->unk_1A4) * 3.0f;
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    if ((globalCtx->gameplayFrames % 4) == 0) {
        Math_SmoothScaleMaxMinS(&this->unk_1F0, 0x28, 1, 0xA, 0);
        BossVa_Lightning(globalCtx, this, 1, this->unk_1F0, 25.0f, 20.0f, 2, 2.0f, true);
    }

    this->timer--;
    this->actor.posRot.rot.x = Math_Vec3f_Pitch(&sp40, &this->actor.posRot.pos);
    if (this->timer <= 0) {
        if (this->timer == 0) {
            this->unk_19C = 0;
        } else {
            BossVa_Lightning(globalCtx, this, 1, 85, 15.0f, 0.0f, 1, 1.0f, true);
            if (this->unk_19C >= 16) {
                this->actor.flags &= ~1;
                this->unk_19C = 128;
                BossVa_SetupAction(this, BossVa_BariPhase2Attack);
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
    if (sCsState > 0) {
        sDoorState = 100;
    }
    this->actor.flags &= ~1;
    BossVa_SetupAction(this, BossVa_Door);
}

void BossVa_Door(BossVa* this, GlobalContext* globalCtx) {
    if (sDoorState == 29) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_BUYODOOR_CLOSE);
    }

    if (sCsState < 0) {
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
    EnBoom* refActor;
    s32 i;

    this->actionFunc(this, globalCtx);

    switch (this->actor.params) {
        case BOSSVA_BODY:
            if (THIS->collider1.base.acFlags & 2) {
                this->collider1.base.acFlags &= ~2;
                refActor = (EnBoom*)this->collider1.base.ac;
                if (refActor->actor.id == ACTOR_EN_BOOM) {
                    refActor->returnTimer = 0;
                }
            }

            BossVa_UpdateEffects(globalCtx);

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

            if (this->unk_194 > 0) {
                this->unk_194--;
            }
            break;

        default:
            this->unk_19C++;
            this->actor.posRot2.pos = this->actor.posRot.pos;
            this->actor.posRot2.pos.y += 45.0f;
            this->unk_1D8.y = (Math_Coss(this->unk_19C * 4004) * 0.24f) + 0.76f;
            this->unk_1D8.x = (Math_Sins(this->unk_19C * 4004) * 0.2f) + 1.0f;
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

s32 BossVa_BodyOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    BossVa* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4156);

    if (limbIndex == 20) {
        gDPPipeSync(POLY_OPA_DISP++);
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 8, 0x10, 1, 0,
                                    (globalCtx->gameplayFrames * -2) % 64, 0x10, 0x10));
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->unk_1AE);
        Matrix_RotateX(-1.5707964f, MTXMODE_APPLY);
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
        if (sFightProgress < 9) {
            sp78.x = -1000.0f;
        } else {
            sp78.x = 200.0f;
        }
        Matrix_MultVec3f(&sp78, &this->unk_1D8);
    } else if ((limbIndex >= 10) && (limbIndex < 20) && (D_8095C230[limbIndex - 10] != 0)) {
        if (((limbIndex >= 16) || (limbIndex == 10)) && (sFightProgress < 10)) {
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 4208),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, &D_06008BB8);
        } else if ((limbIndex >= 11) && (sFightProgress < 4)) {
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 4212),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, &D_06008BB8);
        }

        if (sCsState >= 0xE) {
            sp78.x = Math_Rand_CenteredFloat(530.0f);
            sp78.y = Math_Rand_CenteredFloat(530.0f);
            sp78.z = -60.0f;
        }
        Matrix_MultVec3f(&sp78, &this->unk_1FC[limbIndex - 10]);
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
    } else if ((limbIndex == 24) && (sCsState < 0xE)) {
        sp78.x = (thisx->shape.unk_08 + 450.0f) + -140.0f;
        Matrix_MultVec3f(&sp78, &this->unk_280);
        sp78.x = 200.0f;
        Matrix_MultVec3f(&sp78, &this->unk_274);
    }

    if ((limbIndex == 7) && (sCsState >= 0xE)) {
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

s32 BossVa_SupportOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    BossVa* this = THIS;

    if ((this->unk_194 == 0) && (limbIndex == 4)) {
        rot->z += this->unk_1F6.x;
    }
    return 0;
}

void BossVa_SupportPostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    BossVa* this = THIS;
    Vec3f sp20 = { 0.0f, 0.0f, 0.0f };
    s32 pad;

    if (this->unk_194 != 0) {
        switch (limbIndex) {
            case 4:
                Matrix_MultVec3f(&sZeroVec, &this->actor.posRot2.pos);
                func_800628A4(0, &this->collider2);
                break;
            case 7:
                Matrix_MultVec3f(&sZeroVec, &this->unk_1B4);
                sp20.x = ((this->timer & 0x1F) >> 1) * -40.0f;
                sp20.y = ((this->timer & 0x1F) >> 1) * -7.0f;
                Matrix_MultVec3f(&sp20, &this->unk_1FC[0]);
                break;
            case 9:
                sp20.x = ((this->timer & 0x1F) >> 1) * -60.0f;
                sp20.y = ((this->timer & 0x1F) >> 1) * -45.0f;
                Matrix_MultVec3f(&sp20, &this->unk_1FC[1]);
                break;
        }
    } else {
        switch (limbIndex) {
            case 5:
                Matrix_MultVec3f(&sZeroVec, &this->unk_1B4);
                break;
            case 8:
                sp20.x = (this->unk_19C & 7) * 90.0f;
                Matrix_MultVec3f(&sp20, &this->unk_1FC[2]);
                break;
            case 9:
                sp20.x = (this->unk_19C & 7) * 50.0f;
                Matrix_MultVec3f(&sp20, &this->unk_1FC[1]);
                break;
            case 10:
                sp20.x = (this->unk_19C & 7) * 46.0f;
                Matrix_MultVec3f(&sp20, &this->unk_1FC[0]);
                break;
        }
    }
}

s32 BossVa_ZapperOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    BossVa* this = THIS;
    MtxF sp2C;
    s32 pad;

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
            Matrix_Translate(pos->x, pos->y, pos->z, 1);
            Matrix_Get(&sp2C);
            func_800D2264(&sp2C, &D_80966938, 0);
            Matrix_RotateX(-D_80966938.x * (M_PI / 0x8000), 1);
            Matrix_RotateY(-D_80966938.y * (M_PI / 0x8000), 1);
            Matrix_RotateZ(-D_80966938.z * (M_PI / 0x8000), 1);
            Matrix_RotateY(this->unk_1F2 * (M_PI / 0x8000), 1);
            Matrix_RotateZ(this->unk_1F0 * (M_PI / 0x8000), 1);
            pos->z = 0.0f;
            pos->y = 0.0f;
            pos->x = 0.0f;
            rot->z = 0;
            rot->y = rot->z;
            rot->x = rot->z;
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
            sp70.x = (this->unk_19C & 7) * 30.0f;
            Matrix_MultVec3f(&sp70, &this->unk_1FC[0]);
            break;

        case 4:
            Matrix_MultVec3f(&sZeroVec, &this->unk_1B4);
            sp70.x = (this->unk_19C & 7) * 30.0f;
            Matrix_MultVec3f(&sp70, &this->unk_1FC[1]);
            break;

        case 5:
            Matrix_MultVec3f(&sZeroVec, &this->unk_1C0);
            sp70.x = (this->unk_19C & 7) * 46.0f;
            Matrix_MultVec3f(&sp70, &this->unk_1FC[2]);
            break;

        case 7:
            Matrix_MultVec3f(&sZeroVec, &this->unk_1CC);
            sp70.x = (this->unk_19C & 7) * 46.0f;
            Matrix_MultVec3f(&sp70, &this->unk_1FC[3]);
            sp70.x = 20.0f;
            Matrix_MultVec3f(&sp70, &this->unk_1FC[9]);
            func_80035844(&this->unk_1FC[9], &this->unk_1D8, &this->unk_1F6.x, 0);
            sp3E = this->unk_1F6.x;
            sp3C = this->unk_1F6.y;
            Matrix_Push();
            Matrix_Translate(this->unk_1FC[9].x, this->unk_1FC[9].y, this->unk_1FC[9].z, 0);
            Matrix_RotateRPY(sp3E, sp3C, 0, 1);
            sp70.x = 0.0f;
            if (sFightProgress >= 15) {
                sp70.z = ((this->unk_19C - 16) & 7) * 120.0f;
            } else {
                sp70.z = ((this->unk_19C - 32) & 0xF) * 80.0f;
            }
            sp70.z += 40.0f;
            sp40.z = sp70.z;
            sp4C.z = sp70.z;
            sp70.z += 50.0f;
            Matrix_MultVec3f(&sp70, &this->unk_1FC[4]);
            if (sFightProgress >= 15) {
                sp70.z -= 33.0f;
                if (sp70.z < 0.0f) {
                    sp70.z = 0.0f;
                }
                Matrix_MultVec3f(&sp70, &this->unk_1FC[6]);
                sp70.z -= 33.0f;
                if (sp70.z < 0.0f) {
                    sp70.z = 0.0f;
                }
            } else {
                sp70.z -= 22.0f;
                if (sp70.z < 0.0f) {
                    sp70.z = 0.0f;
                }
                Matrix_MultVec3f(&sp70, &this->unk_1FC[6]);
                sp70.z -= 22.0f;
                if (sp70.z < 0.0f) {
                    sp70.z = 0.0f;
                }
            }
            Matrix_MultVec3f(&sp70, &this->unk_1FC[5]);
            Matrix_MultVec3f(&sp64, &this->collider3.dim.quad[1]);
            Matrix_MultVec3f(&sp58, &this->collider3.dim.quad[0]);
            Matrix_MultVec3f(&sp4C, &this->collider3.dim.quad[3]);
            Matrix_MultVec3f(&sp40, &this->collider3.dim.quad[2]);
            func_80062734(&this->collider3, &this->collider3.dim.quad[0], &this->collider3.dim.quad[1],
                          &this->collider3.dim.quad[2], &this->collider3.dim.quad[3]);
            Matrix_Pull();
            break;
    }
}

s32 BossVa_BariOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    BossVa* this = THIS;

    switch (limbIndex) {
        case 2:
            *dList = NULL;
            break;
        case 3:
            Matrix_Scale(this->unk_1D8.x, 1.0f, this->unk_1D8.x, 1);
            break;
        case 4:
            Matrix_Scale(1.0f, this->unk_1D8.y, 1.0f, 1);
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

#ifdef NON_MATCHING
// If block in case -1 should jump to end, not to break.
void BossVa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossVa* this = THIS;
    Vec3f spBC;
    Vec3f spB0 = { 0.0f, 45.0f, 0.0f };
    Vec3f spA4 = { 0.4f, 0.4f, 0.4f };
    Vec3f sp98 = { 15.0f, 40.0f, 0.0f };
    Vec3f sp8C = { -15.0f, 40.0f, 0.0f };
    Vec3f sp80 = { 15.0f, 40.0f, 0.0f };
    Vec3f sp74 = { -15.0f, 40.0f, 0.0f };
    Color_RGBA8 sp70 = { 250, 250, 230, 200 };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4542);

    func_80093D18(globalCtx->state.gfxCtx);
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
            
            if (!this->isDead) { // should jump to end, not break
                gSPSegment(POLY_OPA_DISP++, 0x08,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 8, 0x10, 1, 0,
                                            (globalCtx->gameplayFrames * -10) % 16, 0x10, 0x10));
                gSPSegment(POLY_OPA_DISP++, 0x09,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (globalCtx->gameplayFrames * -10) % 32, 0x10,
                                            0x20, 1, 0, (globalCtx->gameplayFrames * -5) % 32, 0x10, 0x20));
                SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, BossVa_BodyOverrideLimbDraw,
                               BossVa_BodyPostLimbDraw, &this->actor);
            }
            break;
        case BOSSVA_SUPPORT_1:
        case BOSSVA_SUPPORT_2:
        case BOSSVA_SUPPORT_3:
            if (!this->isDead) {
                SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                 this->skelAnime.dListCount, BossVa_SupportOverrideLimbDraw, BossVa_SupportPostLimbDraw, &this->actor);
            }
            break;
        case BOSSVA_ZAPPER_1:
        case BOSSVA_ZAPPER_2:
        case BOSSVA_ZAPPER_3:
            if (!this->isDead) {
                SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                 this->skelAnime.dListCount, BossVa_ZapperOverrideLimbDraw, BossVa_ZapperPostLimbDraw, &this->actor);
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
                SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, BossVa_BariOverrideLimbDraw,
                               BossVa_BariPostLimbDraw, &this->actor);
                func_800628A4(0, &this->collider2);
                if (sCsState < 0xD) {
                    spBC = BODY->actor.posRot.pos;
                } else {
                    spBC = BODY->unk_1D8;
                }
                Matrix_MultVec3f(&sZeroVec, &this->unk_1FC[1]);
                Matrix_Push();
                Matrix_Translate(spBC.x, spBC.y, spBC.z, 0);
                Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, 0, 1);
                sp80.z = sp74.z = this->unk_1A0;
                spB0.z = (this->unk_19C & 0xF) * (this->unk_1A0 * 0.0625f);
                Matrix_MultVec3f(&spB0, &this->unk_1FC[0]);
                Matrix_MultVec3f(&sp98, &this->collider3.dim.quad[1]);
                Matrix_MultVec3f(&sp8C, &this->collider3.dim.quad[0]);
                Matrix_MultVec3f(&sp80, &this->collider3.dim.quad[3]);
                Matrix_MultVec3f(&sp74, &this->collider3.dim.quad[2]);
                func_80062734(&this->collider3, &this->collider3.dim.quad[0], &this->collider3.dim.quad[1],
                              &this->collider3.dim.quad[2], &this->collider3.dim.quad[3]);
                Matrix_Pull();
                spBC = this->actor.posRot.pos;
                spBC.y += 9.0f;
                if (this->actor.dmgEffectTimer != 0) {
                    func_80026A6C(globalCtx);
                }
                func_80033C30(&spBC, &spA4, 0xFF, globalCtx);
                if (this->actor.dmgEffectTimer != 0) {
                    Color_RGBA8 sp50 = { 0, 0, 255, 255 };

                    func_80026860(globalCtx, &sp50, this->actor.dmgEffectTimer, this->actor.dmgEffectParams & 0xFF);
                }
            }
            break;
        case BOSSVA_DOOR:
            break;
    }

    if (this->actor.params == BOSSVA_BODY) {
        BossVa_DrawEffects(sEffects, globalCtx);
    } else if (this->actor.params == BOSSVA_DOOR) {
        BossVa_DrawDoor(globalCtx, sDoorState);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 4673);
}
#else
Vec3f D_8095C2AC = { 0.0f, 45.0f, 0.0f };
Vec3f D_8095C2B8 = { 0.4f, 0.4f, 0.4f };
Vec3f D_8095C2C4 = { 15.0f, 40.0f, 0.0f };
Vec3f D_8095C2D0 = { -15.0f, 40.0f, 0.0f };
Vec3f D_8095C2DC = { 15.0f, 40.0f, 0.0f };
Vec3f D_8095C2E8 = { -15.0f, 40.0f, 0.0f };
Color_RGBA8 D_8095C2F4 = { 250, 250, 230, 200 };
Color_RGBA8 D_8095C2F8 = { 0, 0, 255, 255 };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/BossVa_Draw.s")
#endif

static s32 D_8095C2FC = 0x009B0000; // Unreferenced? Probably another colour, func_80026860 doesn't use 2 though

#ifdef NON_MATCHING
// Regalloc
void BossVa_UpdateEffects(GlobalContext* globalCtx) {
    f32 tmpf1;
    Player* player = PLAYER; // spB8
    s16 spB6;
    s16 i;
    BossVaEffect* ptr = sEffects;
    s32 padAC;
    s16 spAA;
    s16 tmp16;
    BossVa* refActor2; // spA4
    BossVa* refActor;  // spA0
    Vec3f sp94;
    CollisionPoly* sp90;
    f32 pad8C;
    Vec3f sp80;
    CollisionPoly* sp7C;
    f32 pad78;
    f32 pad74;

    for (i = 0; i < 400; i++, ptr++) {
        if (ptr->type != VA_NULL) {
            ptr->pos.x += ptr->velocity.x;
            ptr->pos.y += ptr->velocity.y;
            ptr->pos.z += ptr->velocity.z;
            ptr->timer--;
            ptr->velocity.x += ptr->accel.x;
            ptr->velocity.y += ptr->accel.y;
            ptr->velocity.z += ptr->accel.z;
            if ((ptr->type == VA_EFFECT_1) || (ptr->type == VA_EFFECT_3)) {
                refActor = ptr->unk_54;

                ptr->rot.z += (s16)(Math_Rand_ZeroOne() * 20000.0f) + 0x2000;
                ptr->rot.y += (s16)(Math_Rand_ZeroOne() * 10000.0f) + 0x2000;

                if ((ptr->mode == 1) || (ptr->mode == 4)) {
                    spAA = ptr->rot.x -
                           Math_Vec3f_Pitch(&refActor->actor.posRot.pos, &((BossVa*)refActor->actor.parent)->unk_1D8);
                    pad8C = Math_Sins(refActor->actor.posRot.rot.y);
                    ptr->pos.x =
                        refActor->actor.posRot.pos.x - (ptr->unk_48.x * pad8C);
                    pad74 = Math_Coss(refActor->actor.posRot.rot.y);
                    ptr->pos.z =
                        refActor->actor.posRot.pos.z - (ptr->unk_48.x * pad74);
                    pad78 = Math_Coss(-spAA);
                    ptr->pos.y = (ptr->unk_48.y * pad78) + refActor->actor.posRot.pos.y;
                } else if ((ptr->mode == 2) || (ptr->mode == 5)) {
                    ptr->pos.x = ptr->unk_48.x + refActor->actor.posRot.pos.x;
                    ptr->pos.y = ptr->unk_48.y + refActor->actor.posRot.pos.y;
                    ptr->pos.z = ptr->unk_48.z + refActor->actor.posRot.pos.z;
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
                        ptr->type = VA_NULL;
                    }
                }
            }

            if (ptr->type == VA_EFFECT_3) {
                ptr->rot.z += (s16)(Math_Rand_ZeroOne() * 20000.0f) + 0x4000;
                if (ptr->timer < 100) {
                    ptr->primColor[3] -= 50;
                    if (ptr->primColor[3] < 0) {
                        ptr->primColor[3] = 0;
                        ptr->timer = 0;
                        ptr->type = VA_NULL;
                    }
                }
            }

            if (ptr->type == VA_LIGHT_BALL) {
                refActor2 = ptr->unk_54;

                ptr->rot.z += (s16)(Math_Rand_ZeroOne() * 10000.0f) + 0x24A8;
                ptr->pos.x = ptr->unk_48.x + refActor2->actor.posRot.pos.x;
                ptr->pos.y = (refActor2->actor.posRot.pos.y + 310.0f) +
                                (refActor2->actor.shape.unk_08 * refActor2->actor.scale.y);
                ptr->pos.z = ptr->unk_48.z + refActor2->actor.posRot.pos.z;
                ptr->mode = (ptr->mode + 1) & 7;

                if (ptr->timer < 100) {
                    ptr->primColor[3] -= 50;
                    if (ptr->primColor[3] < 0) {
                        ptr->primColor[3] = 0;
                        ptr->timer = 0;
                        ptr->type = VA_NULL;
                    }
                }
            }

            if (ptr->type == VA_ZAP_CHARGE) {
                ptr->primColor[3] -= 20;
                ptr->mode = (ptr->mode + 1) & 7;
                if (ptr->primColor[3] <= 0) {
                    ptr->primColor[3] = 0;
                    ptr->timer = 0;
                    ptr->type = VA_NULL;
                }
            }

            if (ptr->type == VA_BLOOD) {
                if (ptr->mode < 2) {
                    sp94 = ptr->pos;
                    sp94.y -= ptr->velocity.y + 4.0f;
                    tmpf1 = func_8003C890(&globalCtx->colCtx, &sp90, &sp94);
                    if (sp90 != NULL) {
                        if (ptr->pos.y <= tmpf1) {
                            ptr->mode = 2;
                            ptr->pos.y = tmpf1 + 1.0f;
                            if (sCsState < 20) {
                                ptr->timer = 0x50;
                            } else {
                                ptr->timer = 0xEA60;
                            }

                            ptr->accel = ptr->velocity = sZeroVec;
                        }
                    }

                    if (ptr->timer == 0) {
                        ptr->type = VA_NULL;
                    }

                } else if (ptr->timer < 20) {
                    ptr->primColor[3] = ptr->timer * 10;
                    ptr->envColor[3] = ptr->timer * 5;
                } else if (ptr->timer >= 50000) {
                    ptr->timer++;
                }

                if (ptr->timer == 0) {
                    ptr->type = VA_NULL;
                }
            }

            if (ptr->type == VA_GORE) {
                if (ptr->mode == 0) {
                    sp80 = ptr->pos;
                    sp80.y -= ptr->velocity.y + 4.0f;
                    ptr->rot.x += 0x1770;
                    tmpf1 = func_8003C890(&globalCtx->colCtx, &sp7C, &sp80);
                    if ((sp7C != NULL) && (ptr->pos.y <= tmpf1)) {
                        ptr->mode = 1;
                        ptr->timer = 50;
                        ptr->pos.y = tmpf1 + 1.0f;

                        ptr->accel = ptr->velocity = sZeroVec;
                        ptr->rot.x = -0x4000;
                    }

                    if (ptr->timer == 0) {
                        ptr->type = VA_NULL;
                    }

                } else if (ptr->mode == 2) {
                    if (ptr->timer == 0) {
                        ptr->type = VA_NULL;
                    }

                } else {
                    Math_SmoothScaleMaxMinF(&ptr->unk_44, 0.075f, 1.0f, 0.005f, 0.0f);
                    Math_SmoothScaleMaxMinF(&ptr->unk_48.y, 0.0f, 0.6f, 0.005f, 0.0013f);
                    if ((globalCtx->gameplayFrames % 4) == 0) {
                        Math_SmoothScaleMaxMinS(&ptr->primColor[0], 0x5F, 1, 1, 0);
                    }
                }
                ptr->unk_48.x += ptr->unk_48.y;
            }

            if (ptr->type == VA_GROWTH) {
                refActor = ptr->unk_54;

                ptr->rot.z += 0x157C;
                ptr->envColor[3] = (s16)(Math_Sins(ptr->rot.z) * 50.0f) + 0x50;
                Math_SmoothScaleMaxMinF(&ptr->scale, ptr->unk_44, 1.0f, 0.01f, 0.005f);
                ptr->pos.x = ptr->unk_48.x + refActor->actor.posRot.pos.x;
                ptr->pos.y = ptr->unk_48.y + refActor->actor.posRot.pos.y;
                ptr->pos.z = ptr->unk_48.z + refActor->actor.posRot.pos.z;

                switch (ptr->mode) {
                    case 0:
                        if (ptr->timer == 0) {
                            tmp16 = Math_Vec3f_Yaw(&refActor->actor.posRot.pos, &ptr->pos);
                            ptr->type = VA_NULL;
                            BossVa_BloodSplatter(globalCtx, ptr, tmp16, ptr->scale * 4500.0f, 1);
                            BossVa_Gore(globalCtx, ptr, tmp16, ptr->scale * 1.2f);
                        }
                        break;
                    case 1:
                    case 2:
                        if (refActor->unk_195 != 0) {
                            ptr->type = 0;
                            tmp16 = Math_Vec3f_Yaw(&refActor->actor.posRot.pos, &ptr->pos);
                            BossVa_BloodSplatter(globalCtx, ptr, tmp16, ptr->scale * 4500.0f, 1);
                            BossVa_Gore(globalCtx, ptr, tmp16, ptr->scale * 1.2f);
                        }
                        break;
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Va/func_809597F4.s")
#endif

void BossVa_DrawEffects(BossVaEffect* ptr, GlobalContext* globalCtx) {
    static UNK_PTR D_8095C300[] = {
        0x060096F8, 0x0600A6F8, 0x0600B6F8, 0x0600C6F8, 0x0600D6F8, 0x0600E6F8, 0x0600F6F8, 0x060106F8,
    };

    GraphicsContext* localGfx = globalCtx->state.gfxCtx;
    BossVa* refActor;
    s16 i;
    u8 flag = 0;
    BossVaEffect* ptrHead = ptr;
    Camera* camera = Gameplay_GetCamera(globalCtx, sCsCamera);

    OPEN_DISPS(localGfx, "../z_boss_va.c", 4953);

    for (i = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_EFFECT_1) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gDPSetEnvColor(POLY_XLU_DISP++, 130, 130, 30, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_060156A0);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 230, 230, 230, ptr->primColor[3]);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_RotateZ((ptr->rot.z / (f32)0x8000) * 3.1416f, 1);
            Matrix_Scale(ptr->scale * 0.0185f, ptr->scale * 0.0185f, 1.0f, 1);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 4976),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06015710);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_LIGHT_BALL) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_XLU_DISP++, D_06011738);
                flag++;
            }
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, 1);
            // Not M_PI
            Matrix_RotateZ((ptr->rot.z / (f32)0x8000) * 3.1416f, 1);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5002),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPPipeSync(POLY_XLU_DISP++);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_8095C300[ptr->mode]));
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, ptr->primColor[0], ptr->primColor[1], ptr->primColor[2], ptr->primColor[3]);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetEnvColor(POLY_XLU_DISP++, ptr->envColor[0], ptr->envColor[1], ptr->envColor[2], ptr->envColor[3]);
            gSPDisplayList(POLY_XLU_DISP++, D_06011768);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < 400; i++, ptr++) {
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

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            if (ptr->mode == 2) {
                Matrix_RotateX(M_PI / 2, 1);
            } else {
                func_800D1FD4(&globalCtx->mf_11DA0);
            }

            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, 1);

            gDPPipeSync(POLY_XLU_DISP++);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5052),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06009468);
        }
    }

    { s32 someBullshit; }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_GROWTH) {
            refActor = ptr->unk_54;
            if (!flag) {
                func_80093D18(globalCtx->state.gfxCtx);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, ptr->envColor[3]);
                gSPDisplayList(POLY_OPA_DISP++, D_060128B8);
                flag++;
            }

            if ((ptr->mode != 1) || ((Math_Vec3f_DistXZ(&camera->eye, &ptr->pos) -
                                        Math_Vec3f_DistXZ(&camera->eye, &refActor->actor.posRot.pos)) < 10.0f)) {
                Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
                Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, 1);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5080),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, D_06012948);
            }
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_GORE) {
            if (!flag) {
                func_80093D18(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_OPA_DISP++, D_06012BA0);
                flag++;
            }

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, ptr->primColor[3]);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, ptr->primColor[0], ptr->primColor[1], ptr->primColor[2], ptr->primColor[3]);

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_RotateRPY(ptr->rot.x, ptr->rot.y, 0, 1);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, 1);
            Matrix_RotateX(ptr->unk_48.x * 0.115f, 1);
            Matrix_RotateY(ptr->unk_48.x * 0.13f, 1);
            Matrix_RotateZ(ptr->unk_48.x * 0.1f, 1);
            Matrix_Scale(1.0f - ptr->unk_44, ptr->unk_44 + 1.0f, 1.0f - ptr->unk_44, 1);
            Matrix_RotateZ(-(ptr->unk_48.x * 0.1f), 1);
            Matrix_RotateY(-(ptr->unk_48.x * 0.13f), 1);
            Matrix_RotateX(-(ptr->unk_48.x * 0.115f), 1);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5124),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, D_06012C50);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_ZAP_CHARGE) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gSPDisplayList(POLY_XLU_DISP++, D_060135B0);
                flag++;
            }

            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 50, ptr->primColor[3]);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, ptr->primColor[3]);

            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            Matrix_RotateRPY(ptr->rot.x, ptr->rot.y, 0, 1);
            Matrix_Scale(ptr->scale, ptr->scale, ptr->scale, 1);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5152),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06013638);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_EFFECT_2) {
            if (!flag) {
                func_80093C14(globalCtx->state.gfxCtx);
                gDPSetEnvColor(POLY_XLU_DISP++, 130, 130, 30, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_060156A0);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 230, 230, 230, ptr->primColor[3]);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            // Not M_PI
            Matrix_RotateZ((ptr->rot.z / (f32)0x8000) * 3.1416f, 1);
            Matrix_Scale(ptr->scale * 0.02f, ptr->scale * 0.02f, 1.0f, 1);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5180),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06015710);
        }
    }

    ptr = ptrHead;
    for (i = 0, flag = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_EFFECT_3) {
            if (!flag) {
                func_80093D84(globalCtx->state.gfxCtx);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 100, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_06008F08);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, ptr->primColor[3]);
            Matrix_Translate(ptr->pos.x, ptr->pos.y, ptr->pos.z, 0);
            // Not M_PI
            Matrix_RotateZ((ptr->rot.z / (f32)0x8000) * 3.1416f, 1);
            Matrix_RotateY((ptr->rot.y / (f32)0x8000) * 3.1416f, 1);
            Matrix_Scale(ptr->scale, ptr->scale, 1.0f, 1);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(localGfx, "../z_boss_va.c", 5208),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06008F70);
        }
    }

    CLOSE_DISPS(localGfx, "../z_boss_va.c", 5215);
}

void BossVa_SpawnLightning(GlobalContext* globalCtx, BossVaEffect* ptr, BossVa* this, Vec3f* arg3, s16 scale, u8 mode) {
    Player* player = PLAYER;
    s16 sp52;
    Vec3f sp44 = { 0.0f, -1000.0f, 0.0f };
    Vec3f sp38;
    s16 i;

    for (i = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_NULL) {
            ptr->type = VA_EFFECT_1;
            ptr->unk_54 = this;
            ptr->pos = sp44;
            ptr->timer = (s16)(Math_Rand_ZeroOne() * 10.0f) + 111;
            ptr->velocity = ptr->accel = sZeroVec;
            ptr->mode = mode;

            switch (mode) {
                case 4:
                    ptr->type = VA_EFFECT_3;

                case 1:
                    sp38 = *arg3;
                    sp38.x += this->actor.posRot.pos.x;
                    sp38.z += this->actor.posRot.pos.z;
                    ptr->unk_48.x = Math_Vec3f_DistXZ(&this->actor.posRot.pos, &sp38);
                    ptr->rot.x = Math_Vec3f_Pitch(&this->actor.posRot.pos, &BODY->unk_1D8);
                    break;

                case 5:
                    ptr->type = VA_EFFECT_3;

                case 2:
                    ptr->unk_48.x = arg3->x;
                    ptr->unk_48.z = arg3->z;
                    break;

                case 3:
                    ptr->type = VA_EFFECT_2;
                    ptr->pos.x = arg3->x + this->actor.posRot.pos.x;
                    ptr->pos.y = arg3->y + this->actor.posRot.pos.y;
                    ptr->pos.z = arg3->z + this->actor.posRot.pos.z;
                    ptr->timer = 111;
                    break;

                case 6:
                    ptr->type = VA_EFFECT_3;
                    sp52 = Math_Rand_ZeroFloat(17.9f);
                    ptr->pos.x = player->bodyPartsPos[sp52].x + Math_Rand_CenteredFloat(10.0f);
                    ptr->pos.y = player->bodyPartsPos[sp52].y + Math_Rand_CenteredFloat(15.0f);
                    ptr->pos.z = player->bodyPartsPos[sp52].z + Math_Rand_CenteredFloat(10.0f);
            }

            ptr->unk_48.y = arg3->y;
            ptr->scale = (Math_Rand_ZeroFloat(scale) + scale) * 0.01f;
            ptr->primColor[3] = 255;
            break;
        }
    }
}

void BossVa_SpawnLightningBall(GlobalContext* globalCtx, BossVaEffect* ptr, BossVa* this, Vec3f* arg3, s16 scale, u8 mode) {
    Vec3f sp34 = { 0.0f, -1000.0f, 0.0f };
    s16 i;
    Vec3f sp24;

    for (i = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_NULL) {
            ptr->type = VA_LIGHT_BALL;
            ptr->unk_54 = this;

            ptr->pos = sp34;

            sp24 = sZeroVec;
            ptr->accel = sp24;
            ptr->velocity = sp24;

            ptr->mode = 0;
            ptr->unk_48.x = arg3->x;
            ptr->unk_48.z = arg3->z;
            ptr->unk_48.y = arg3->y;
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

void BossVa_SpawnBloodDroplets(GlobalContext* globalCtx, BossVaEffect* ptr, Vec3f* pos, s16 scale, s16 phase, s16 yaw) {
    s32 i;
    Vec3f sp38 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp2C = { 0.0f, 0.0f, 0.0f };
    f32 sp28;
    f32 sp24;

    for (i = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_NULL) {
            ptr->type = VA_BLOOD;
            ptr->pos = *pos;
            ptr->mode = 0;

            sp28 = Math_Sins(phase) * 6.0f;
            sp24 = Math_Rand_CenteredFloat(1.0f);
            sp2C.x = (-Math_Sins(yaw) * sp28) + sp24;
            sp24 = Math_Rand_CenteredFloat(1.0f);
            sp2C.z = (-Math_Coss(yaw) * sp28) + sp24;

            ptr->velocity = sp2C;

            sp38.y = Math_Rand_CenteredFloat(0.3f) - 1.0f;
            ptr->accel = sp38;

            ptr->timer = 20;
            ptr->envColor[3] = 100;
            ptr->primColor[3] = 200;
            ptr->scale = (Math_Rand_ZeroFloat(scale) + scale) * 0.01f;
            break;
        }
    }
}

void BossVa_SpawnBloodSplatter(GlobalContext* globalCtx, BossVaEffect* ptr, Vec3f* pos, s16 yaw, s16 scale) {
    s32 i;
    f32 sp38;
    Vec3f sp2C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp20;

    for (i = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_NULL) {
            ptr->type = VA_BLOOD;
            ptr->pos = *pos;

            ptr->mode = 1;

            sp38 = Math_Rand_ZeroOne() * 7.0f;
            sp20.x = Math_Sins(yaw) * sp38;
            sp20.y = Math_Rand_CenteredFloat(4.0f) + 4.0f;
            sp20.z = Math_Coss(yaw) * sp38;
            ptr->velocity = sp20;

            sp2C.y = Math_Rand_CenteredFloat(0.3f) - 1.0f;
            ptr->accel = sp2C;

            if (sCsState < 20) {
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

void BossVa_SpawnGrowth(GlobalContext* globalCtx, BossVaEffect* ptr, BossVa* this, Vec3f* arg3, s16 arg4, u8 mode) {
    Vec3f sp34 = { 0.0f, -1000.0f, 0.0f };
    s16 i;
    Vec3f sp24;

    for (i = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_NULL) {
            ptr->type = VA_GROWTH;
            ptr->unk_54 = this;
            ptr->pos = sp34;

            sp24 = sZeroVec;
            ptr->accel = sp24;
            ptr->velocity = sp24;

            ptr->mode = mode;
            ptr->rot.z = 0;

            ptr->unk_48.x = arg3->x;
            ptr->unk_48.z = arg3->z;
            ptr->unk_48.y = arg3->y;

            ptr->timer = (s16)(Math_Rand_ZeroOne() * 10.0f) + 10;
            ptr->envColor[3] = 100;
            ptr->unk_44 = arg4 * 0.01f;
            ptr->scale = 0.0f;

            if (((i & 3) == 0) || (mode == 2)) {
                Audio_PlaySoundGeneral(NA_SE_EN_BALINADE_BREAK, &ptr->pos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            break;
        }
    }
}

void BossVa_SpawnGore(GlobalContext* globalCtx, BossVaEffect* ptr, Vec3f* pos, s16 yaw, s16 scale) {
    s32 i;
    f32 sp48;
    Vec3f sp3C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp30;

    for (i = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_NULL) {
            ptr->type = VA_GORE;
            ptr->pos = *pos;
            ptr->unk_44 = 0.0f;

            sp48 = (Math_Rand_ZeroOne() * 4.0f) + 4.0f;
            sp30.x = Math_Sins(yaw) * sp48;
            sp30.y = Math_Rand_CenteredFloat(8.0f);
            sp30.z = Math_Coss(yaw) * sp48;
            ptr->velocity = sp30;

            sp3C.y = Math_Rand_CenteredFloat(0.3f) - 1.0f;
            ptr->accel = sp3C;

            ptr->timer = 20;
            if (sCsState < 20) {
                ptr->mode = 2;
            } else {
                ptr->mode = 0;
            }

            ptr->primColor[3] = ptr->envColor[0] = ptr->envColor[1] = ptr->envColor[2] = ptr->envColor[3] = 255;

            ptr->primColor[0] = 155;
            ptr->primColor[1] = ptr->primColor[2] = 55;

            ptr->rot.x = Math_Rand_CenteredFloat(65536.0f);
            ptr->rot.y = Math_Rand_CenteredFloat(65536.0f);
            ptr->scale = (Math_Rand_ZeroFloat(scale) + scale) * 0.01f;
            ptr->unk_48.y = (Math_Rand_ZeroOne() * 0.25f) + 0.9f;
            break;
        }
    }
}

void BossVa_SpawnZapperCharge(GlobalContext* globalCtx, BossVaEffect* ptr, BossVa* this, Vec3f* pos, Vec3s* rot, s16 scale,
                   u8 arg6) {
    Vec3f sp2C = { 0.0f, -1000.0f, 0.0f };
    s16 i;
    Vec3f sp1C;

    for (i = 0; i < 400; i++, ptr++) {
        if (ptr->type == VA_NULL) {
            ptr->type = VA_ZAP_CHARGE;
            ptr->unk_54 = this;
            ptr->pos = *pos;

            sp1C = sZeroVec;
            ptr->accel = sp1C;
            ptr->velocity = sp1C;

            ptr->mode = arg6;
            ptr->rot.x = rot->x + 0x4000;
            ptr->rot.y = rot->y;
            ptr->timer = (s16)(Math_Rand_ZeroOne() * 10.0f) + 10;
            ptr->primColor[3] = 0xF0;
            ptr->scale = scale * 0.01f;
            break;
        }
    }
}

void BossVa_DrawDoor(GlobalContext* globalCtx, s16 arg1) {
    static Gfx* D_8095C380[] = {
        0x0601A3E8, 0x0601AEE8, 0x0601B9E8, 0x0601C4E8, 0x0601CFE8, 0x0601DAE8, 0x0601E5E8, 0x0601F0E8,
    };
    static s16 D_8095C3A0[] = {
        0x0344, 0x0384, 0x0344, 0x03F8, 0x0320, 0x03F8, 0x0344, 0x0384,
    };

    MtxF sp98;
    f32 tmpf1;
    f32 tmpf2 = 0.0f;
    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 5600);

    Matrix_Translate(0.0f, 80.0f, 400.0f, 0);
    Matrix_RotateY(M_PI, 1);
    tmpf1 = (arg1 * 0.01f) * 0.1f;
    Matrix_Scale(0.1f, tmpf1, 0.1f, 1);

    if (tmpf1 != 0.0f) {
        tmpf1 = 0.1f / tmpf1;
    } else {
        tmpf1 = 0.0f;
    }

    Matrix_Get(&sp98);

    for (i = 0; i < 8; i++, tmpf2 -= M_PI / 4) {
        Matrix_Put(&sp98);
        Matrix_RotateZ(tmpf2, 1);
        Matrix_Translate(0.0f, D_8095C3A0[i] * tmpf1, 0.0f, 1);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_va.c", 5621),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_8095C380[i]);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_va.c", 5629);
}
