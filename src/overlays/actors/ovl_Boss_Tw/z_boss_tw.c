#include "z_boss_tw.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_tw/object_tw.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"

#define FLAGS                                                                                 \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_DRAW_CULLING_DISABLED)

typedef enum TwEffType {
    /*  0 */ TWEFF_NONE,
    /*  1 */ TWEFF_DOT,
    /*  2 */ TWEFF_2,
    /*  3 */ TWEFF_3,
    /*  4 */ TWEFF_RING,
    /*  5 */ TWEFF_PLYR_FRZ,
    /*  6 */ TWEFF_FLAME,
    /*  7 */ TWEFF_MERGEFLAME,
    /*  8 */ TWEFF_SHLD_BLST,
    /*  9 */ TWEFF_SHLD_DEFL,
    /* 10 */ TWEFF_SHLD_HIT
} TwEffType;

typedef enum EffectWork {
    /* 0 */ EFF_ARGS,
    /* 1 */ EFF_UNKS1,
    /* 2 */ EFF_WORK_MAX
} EffectWork;

typedef enum EffectFWork {
    /* 0 */ EFF_SCALE,
    /* 1 */ EFF_DIST,
    /* 2 */ EFF_ROLL,
    /* 3 */ EFF_YAW,
    /* 4 */ EFF_FWORK_MAX
} EffectFWork;

typedef enum TwinrovaType {
    /* 0x00 */ TW_KOTAKE,
    /* 0x01 */ TW_KOUME,
    /* 0x02 */ TW_TWINROVA,
    /* 0x64 */ TW_FIRE_BLAST = 0x64,
    /* 0x65 */ TW_FIRE_BLAST_GROUND,
    /* 0x66 */ TW_ICE_BLAST,
    /* 0x67 */ TW_ICE_BLAST_GROUND,
    /* 0x68 */ TW_DEATHBALL_KOTAKE,
    /* 0x69 */ TW_DEATHBALL_KOUME
} TwinrovaType;

#define BOSS_TW_EFFECT_COUNT 150

typedef struct BossTwEffect {
    /* 0x0000 */ u8 type;
    /* 0x0001 */ u8 frame;
    /* 0x0004 */ Vec3f pos;
    /* 0x0010 */ Vec3f curSpeed;
    /* 0x001C */ Vec3f accel;
    /* 0x0028 */ Color_RGB8 color;
    /* 0x002C */ s16 alpha;
    /* 0x002E */ s16 work[EFF_WORK_MAX];
    /* 0x0034 */ f32 workf[EFF_FWORK_MAX];
    /* 0x0044 */ Actor* target;
} BossTwEffect;

void BossTw_Init(Actor* thisx, PlayState* play2);
void BossTw_Destroy(Actor* thisx, PlayState* play);
void BossTw_Update(Actor* thisx, PlayState* play);
void BossTw_Draw(Actor* thisx, PlayState* play2);

void BossTw_TwinrovaDamage(BossTw* this, PlayState* play, u8 damage);
void BossTw_TwinrovaSetupFly(BossTw* this, PlayState* play);
void BossTw_DrawEffects(PlayState* play);
void BossTw_TwinrovaLaugh(BossTw* this, PlayState* play);
void BossTw_TwinrovaFly(BossTw* this, PlayState* play);
void BossTw_TwinrovaGetUp(BossTw* this, PlayState* play);
void BossTw_TwinrovaSetupGetUp(BossTw* this, PlayState* play);
void BossTw_TwinrovaSetupLaugh(BossTw* this, PlayState* play);
void BossTw_TwinrovaDoneBlastShoot(BossTw* this, PlayState* play);
void BossTw_TwinrovaSetupDoneBlastShoot(BossTw* this, PlayState* play);
void BossTw_TwinrovaSetupShootBlast(BossTw* this, PlayState* play);
void BossTw_TwinrovaSetupChargeBlast(BossTw* this, PlayState* play);
void BossTw_TwinrovaArriveAtTarget(BossTw* this, PlayState* play);
void BossTw_TwinrovaDeathCS(BossTw* this, PlayState* play);
void BossTw_TwinrovaIntroCS(BossTw* this, PlayState* play);
void BossTw_CSWait(BossTw* this, PlayState* play);
void BossTw_DeathCS(BossTw* this, PlayState* play);
void BossTw_TwinrovaMergeCS(BossTw* this, PlayState* play);
void BossTw_TwinrovaSetupMergeCS(BossTw* this, PlayState* play);
void BossTw_MergeCS(BossTw* this, PlayState* play);
void BossTw_Spin(BossTw* this, PlayState* play);
void BossTw_Laugh(BossTw* this, PlayState* play);
void BossTw_SetupLaugh(BossTw* this, PlayState* play);
void BossTw_FinishBeamShoot(BossTw* this, PlayState* play);
void BossTw_SetupFinishBeamShoot(BossTw* this, PlayState* play);
void BossTw_SetupHitByBeam(BossTw* this, PlayState* play);
void BossTw_HitByBeam(BossTw* this, PlayState* play);
void BossTw_Wait(BossTw* this, PlayState* play);
void BossTw_ShootBeam(BossTw* this, PlayState* play);
void BossTw_FlyTo(BossTw* this, PlayState* play);
void BossTw_SetupShootBeam(BossTw* this, PlayState* play);
void BossTw_TurnToPlayer(BossTw* this, PlayState* play);
void BossTw_TwinrovaUpdate(Actor* thisx, PlayState* play2);
void BossTw_TwinrovaDraw(Actor* thisx, PlayState* play2);
void BossTw_SetupWait(BossTw* this, PlayState* play);
void BossTw_TwinrovaSetupIntroCS(BossTw* this, PlayState* play);
void BossTw_SetupFlyTo(BossTw* this, PlayState* play);
void BossTw_SetupCSWait(BossTw* this, PlayState* play);
void BossTw_BlastUpdate(Actor* thisx, PlayState* play);
void BossTw_BlastDraw(Actor* thisx, PlayState* play2);
void BossTw_BlastFire(BossTw* this, PlayState* play);
void BossTw_BlastIce(BossTw* this, PlayState* play);
void BossTw_DeathBall(BossTw* this, PlayState* play);
void BossTw_DrawDeathBall(Actor* thisx, PlayState* play2);
void BossTw_TwinrovaStun(BossTw* this, PlayState* play);
void BossTw_TwinrovaSpin(BossTw* this, PlayState* play);
void BossTw_TwinrovaShootBlast(BossTw* this, PlayState* play);
void BossTw_TwinrovaChargeBlast(BossTw* this, PlayState* play);
void BossTw_TwinrovaSetupSpin(BossTw* this, PlayState* play);
void BossTw_UpdateEffects(PlayState* play);

ActorProfile Boss_Tw_Profile = {
    /**/ ACTOR_BOSS_TW,
    /**/ ACTORCAT_BOSS,
    /**/ FLAGS,
    /**/ OBJECT_TW,
    /**/ sizeof(BossTw),
    /**/ BossTw_Init,
    /**/ BossTw_Destroy,
    /**/ BossTw_Update,
    /**/ BossTw_Draw,
};

static Vec3f D_8094A7D0 = { 0.0f, 0.0f, 1000.0f };
static Vec3f sZeroVector = { 0.0f, 0.0f, 0.0f };

static ColliderCylinderInit sCylinderInitBlasts = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ALL,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x00, 0x30 },
        { 0x00100000, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 25, 35, -17, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInitKoumeKotake = {
    {
        COL_MATERIAL_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x00, 0x20 },
        { 0xFFCDFFFE, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 45, 120, -30, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInitTwinrova = {
    {
        COL_MATERIAL_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x00, 0x20 },
        { 0xFFCDFFFE, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON | ACELEM_HOOKABLE,
        OCELEM_ON,
    },
    { 45, 120, -30, { 0, 0, 0 } },
};

static Vec3f sTwinrovaPillarPos[] = {
    { 580.0f, 380.0f, 0.0f },
    { 0.0f, 380.0f, 580.0f },
    { -580.0f, 380.0f, 0.0f },
    { 0.0f, 380.0f, -580.0f },
};

static u8 sTwInitialized = false;

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_5, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 0, ICHAIN_STOP),
};

static s8 sEnvType;
static u8 sGroundBlastType;
static BossTw* sKotakePtr;
static BossTw* sKoumePtr;
static BossTw* sTwinrovaPtr;
static u8 sShieldFireCharge;
static u8 sShieldIceCharge;
static f32 D_8094C854;
static f32 D_8094C858;
static u8 sTwinrovaBlastType;
static u8 sFixedBlastType;
static u8 sFixedBlatSeq;
static u8 sFreezeState;
static Vec3f sShieldHitPos;
static s16 sShieldHitYaw;
static u8 sBeamDivertTimer;
static u8 D_8094C86F;
static u8 D_8094C870;
static s16 D_8094C872;
static s16 D_8094C874;
static s16 D_8094C876;
static u8 D_8094C878;
static s16 D_8094C87A;
static s16 D_8094C87C;
static u8 D_8094C87E;
static BossTwEffect sEffects[BOSS_TW_EFFECT_COUNT];

void BossTw_AddDotEffect(PlayState* play, Vec3f* initialPos, Vec3f* initialSpeed, Vec3f* accel, f32 scale, s16 args,
                         s16 countLimit) {
    s16 i;
    BossTwEffect* eff;

    for (i = 0, eff = play->specialEffects; i < countLimit; i++, eff++) {
        if (eff->type == TWEFF_NONE) {
            eff->type = TWEFF_DOT;
            eff->pos = *initialPos;
            eff->curSpeed = *initialSpeed;
            eff->accel = *accel;
            eff->workf[EFF_SCALE] = scale / 1000.0f;
            eff->alpha = 255;
            eff->frame = (s16)Rand_ZeroFloat(10.0f);
            eff->work[EFF_ARGS] = args;
            break;
        }
    }
}

void BossTw_AddDmgCloud(PlayState* play, s16 type, Vec3f* initialPos, Vec3f* initialSpeed, Vec3f* accel, f32 scale,
                        s16 alpha, s16 args, s16 countLimit) {
    s16 i;
    BossTwEffect* eff;

    for (i = 0, eff = play->specialEffects; i < countLimit; i++, eff++) {
        if (eff->type == TWEFF_NONE) {
            eff->type = type;
            eff->pos = *initialPos;
            eff->curSpeed = *initialSpeed;
            eff->accel = *accel;
            eff->workf[EFF_SCALE] = scale / 1000.0f;
            eff->work[EFF_ARGS] = args;
            eff->alpha = alpha;
            eff->frame = (s16)Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossTw_AddRingEffect(PlayState* play, Vec3f* initialPos, f32 scale, f32 arg3, s16 alpha, s16 args, s16 arg6,
                          s16 countLimit) {
    s16 i;
    BossTwEffect* eff;

    for (i = 0, eff = play->specialEffects; i < countLimit; i++, eff++) {
        if (eff->type == TWEFF_NONE) {
            eff->type = TWEFF_RING;
            eff->pos = *initialPos;
            eff->curSpeed = sZeroVector;
            eff->accel = sZeroVector;
            eff->workf[EFF_SCALE] = scale * 0.0025f;
            eff->workf[EFF_DIST] = arg3 * 0.0025f;
            eff->work[EFF_ARGS] = args;
            eff->work[EFF_UNKS1] = arg6;
            eff->alpha = alpha;
            eff->workf[EFF_ROLL] = Rand_ZeroFloat(M_PI);
            eff->frame = 0;
            break;
        }
    }
}

void BossTw_AddPlayerFreezeEffect(PlayState* play, Actor* target) {
    BossTwEffect* eff;
    s16 i;

    for (eff = play->specialEffects, i = 0; i < BOSS_TW_EFFECT_COUNT; i++, eff++) {
        if (eff->type == TWEFF_NONE) {
            eff->type = TWEFF_PLYR_FRZ;
            eff->curSpeed = sZeroVector;
            eff->accel = sZeroVector;
            eff->frame = 0;
            eff->target = target;
            eff->workf[EFF_DIST] = 0.0f;
            eff->workf[EFF_SCALE] = 0.0f;
            eff->workf[EFF_ROLL] = 0.0f;
            if (target == NULL) {
                eff->work[EFF_ARGS] = 100;
            } else {
                eff->work[EFF_ARGS] = 20;
            }
            break;
        }
    }
}

void BossTw_AddFlameEffect(PlayState* play, Vec3f* initialPos, Vec3f* initialSpeed, Vec3f* accel, f32 scale, s16 args) {
    s16 i;
    BossTwEffect* eff;

    for (i = 0, eff = play->specialEffects; i < BOSS_TW_EFFECT_COUNT; i++, eff++) {
        if (eff->type == TWEFF_NONE) {
            eff->type = TWEFF_FLAME;
            eff->pos = *initialPos;
            eff->curSpeed = *initialSpeed;
            eff->accel = *accel;
            eff->workf[EFF_SCALE] = scale / 1000.0f;
            eff->work[EFF_ARGS] = args;
            eff->work[EFF_UNKS1] = 0;
            eff->alpha = 0;
            eff->frame = (s16)Rand_ZeroFloat(1000.0f);
            break;
        }
    }
}

void BossTw_AddMergeFlameEffect(PlayState* play, Vec3f* initialPos, f32 scale, f32 dist, s16 args) {
    s16 i;
    BossTwEffect* eff;

    for (i = 0, eff = play->specialEffects; i < BOSS_TW_EFFECT_COUNT; i++, eff++) {
        if (eff->type == TWEFF_NONE) {
            eff->type = TWEFF_MERGEFLAME;
            eff->pos = *initialPos;
            eff->curSpeed = sZeroVector;
            eff->accel = sZeroVector;
            eff->workf[EFF_SCALE] = scale / 1000.0f;
            eff->work[EFF_ARGS] = args;
            eff->work[EFF_UNKS1] = 0;
            eff->workf[EFF_DIST] = dist;
            eff->workf[EFF_ROLL] = Rand_ZeroFloat(2.0f * M_PI);
            eff->alpha = 0;
            eff->frame = (s16)Rand_ZeroFloat(1000.0f);
            break;
        }
    }
}

void BossTw_AddShieldBlastEffect(PlayState* play, Vec3f* initialPos, Vec3f* initialSpeed, Vec3f* accel, f32 scale,
                                 f32 arg5, s16 alpha, s16 args) {
    s16 i;
    BossTwEffect* eff;

    for (i = 0, eff = play->specialEffects; i < BOSS_TW_EFFECT_COUNT; i++, eff++) {
        if (eff->type == TWEFF_NONE) {
            eff->type = TWEFF_SHLD_BLST;
            eff->pos = *initialPos;
            eff->curSpeed = *initialSpeed;
            eff->accel = *accel;
            eff->workf[EFF_SCALE] = scale / 1000.0f;
            eff->workf[EFF_DIST] = arg5 / 1000.0f;
            eff->work[EFF_ARGS] = args;
            eff->work[EFF_UNKS1] = 0;
            eff->alpha = alpha;
            eff->frame = (s16)Rand_ZeroFloat(1000.0f);
            break;
        }
    }
}

void BossTw_AddShieldDeflectEffect(PlayState* play, f32 arg1, s16 arg2) {
    s16 i;
    s16 j;
    BossTwEffect* eff;
    Player* player = GET_PLAYER(play);

    sShieldHitPos = player->bodyPartsPos[PLAYER_BODYPART_R_HAND];
    sShieldHitYaw = player->actor.shape.rot.y;

    for (i = 0; i < 8; i++) {
        for (eff = play->specialEffects, j = 0; j < BOSS_TW_EFFECT_COUNT; j++, eff++) {
            if (eff->type == TWEFF_NONE) {
                eff->type = TWEFF_SHLD_DEFL;
                eff->pos = sShieldHitPos;
                eff->curSpeed = sZeroVector;
                eff->accel = sZeroVector;
                eff->workf[EFF_ROLL] = i * (M_PI / 4.0f);
                eff->workf[EFF_YAW] = M_PI / 2.0f;
                eff->workf[EFF_DIST] = 0.0f;
                eff->workf[EFF_SCALE] = arg1 / 1000.0f;
                eff->work[EFF_ARGS] = arg2;
                eff->work[EFF_UNKS1] = 0;
                eff->alpha = 255;
                eff->frame = (s16)Rand_ZeroFloat(1000.0f);
                break;
            }
        }
    }
}

void BossTw_AddShieldHitEffect(PlayState* play, f32 arg1, s16 arg2) {
    s16 i;
    s16 j;
    BossTwEffect* eff;
    Player* player = GET_PLAYER(play);

    sShieldHitPos = player->bodyPartsPos[PLAYER_BODYPART_R_HAND];
    sShieldHitYaw = player->actor.shape.rot.y;

    for (i = 0; i < 8; i++) {
        for (eff = play->specialEffects, j = 0; j < BOSS_TW_EFFECT_COUNT; j++, eff++) {
            if (eff->type == TWEFF_NONE) {
                eff->type = TWEFF_SHLD_HIT;
                eff->pos = sShieldHitPos;
                eff->curSpeed = sZeroVector;
                eff->accel = sZeroVector;
                eff->workf[EFF_ROLL] = i * (M_PI / 4.0f);
                eff->workf[EFF_YAW] = M_PI / 2.0f;
                eff->workf[EFF_DIST] = 0.0f;
                eff->workf[EFF_SCALE] = arg1 / 1000.0f;
                eff->work[EFF_ARGS] = arg2;
                eff->work[EFF_UNKS1] = 0;
                eff->alpha = 255;
                eff->frame = (s16)Rand_ZeroFloat(1000.0f);
                break;
            }
        }
    }
}

void BossTw_Init(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BossTw* this = (BossTw*)thisx;
    s16 i;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);

    if (this->actor.params >= TW_FIRE_BLAST) {
        // Blasts
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.update = BossTw_BlastUpdate;
        this->actor.draw = BossTw_BlastDraw;
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;

        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInitBlasts);

        if (this->actor.params == TW_FIRE_BLAST || this->actor.params == TW_FIRE_BLAST_GROUND) {
            this->actionFunc = BossTw_BlastFire;
            this->collider.elem.atDmgInfo.effect = 1;
        } else if (this->actor.params == TW_ICE_BLAST || this->actor.params == TW_ICE_BLAST_GROUND) {
            this->actionFunc = BossTw_BlastIce;
        } else if (this->actor.params >= TW_DEATHBALL_KOTAKE) {
            this->actionFunc = BossTw_DeathBall;
            this->actor.draw = BossTw_DrawDeathBall;
            this->workf[TAIL_ALPHA] = 128.0f;

            if (thisx->params == TW_DEATHBALL_KOTAKE) {
                thisx->world.rot.y = sTwinrovaPtr->actor.world.rot.y + 0x4000;
            } else {
                thisx->world.rot.y = sTwinrovaPtr->actor.world.rot.y - 0x4000;
            }
        }

        this->timers[1] = 150;
        return;
    }

    Actor_SetScale(&this->actor, 2.5 * 0.01f);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->actor.colChkInfo.health = 0;
    Collider_InitCylinder(play, &this->collider);

    if (!sTwInitialized) {
        sTwInitialized = true;
        play->envCtx.lightSettingOverride = 1;
        play->envCtx.prevLightSetting = 1;
        play->envCtx.lightSetting = 1;
        play->envCtx.lightBlend = 0.0f;

        D_8094C874 = D_8094C876 = D_8094C878 = D_8094C87A = D_8094C87C = D_8094C87E = D_8094C870 = D_8094C86F =
            D_8094C872 = sBeamDivertTimer = sEnvType = sGroundBlastType = sFreezeState = sTwinrovaBlastType =
                sFixedBlatSeq = sShieldFireCharge = sShieldIceCharge = 0;

        D_8094C858 = D_8094C854 = 0.0f;
        sFixedBlastType = Rand_ZeroFloat(1.99f);
        play->specialEffects = sEffects;

        for (i = 0; i < BOSS_TW_EFFECT_COUNT; i++) {
            sEffects[i].type = TWEFF_NONE;
        }
    }

    if (this->actor.params == TW_KOTAKE) {
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInitKoumeKotake);
        this->actor.naviEnemyId = NAVI_ENEMY_TWINROVA_KOTAKE;
        SkelAnime_InitFlex(play, &this->skelAnime, &gTwinrovaKotakeSkel, &gTwinrovaKotakeKoumeFlyAnim, NULL, NULL, 0);

        if (GET_EVENTCHKINF(EVENTCHKINF_BEGAN_TWINROVA_BATTLE)) {
            // began twinrova battle
            BossTw_SetupFlyTo(this, play);
            this->actor.world.pos.x = -600.0f;
            this->actor.world.pos.y = 400.0f;
            this->actor.world.pos.z = 0.0f;
            SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_BOSS);
        } else {
            BossTw_SetupCSWait(this, play);
        }

        Animation_MorphToLoop(&this->skelAnime, &gTwinrovaKotakeKoumeFlyAnim, -3.0f);
        this->visible = true;
    } else if (this->actor.params == TW_KOUME) {
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInitKoumeKotake);
        this->actor.naviEnemyId = NAVI_ENEMY_TWINROVA_KOUME;
        SkelAnime_InitFlex(play, &this->skelAnime, &gTwinrovaKoumeSkel, &gTwinrovaKotakeKoumeFlyAnim, NULL, NULL, 0);

        if (GET_EVENTCHKINF(EVENTCHKINF_BEGAN_TWINROVA_BATTLE)) {
            // began twinrova battle
            BossTw_SetupFlyTo(this, play);
            this->actor.world.pos.x = 600.0f;
            this->actor.world.pos.y = 400.0f;
            this->actor.world.pos.z = 0.0f;
        } else {
            BossTw_SetupCSWait(this, play);
        }

        Animation_MorphToLoop(&this->skelAnime, &gTwinrovaKotakeKoumeFlyAnim, -3.0f);
        this->visible = true;
    } else {
        // Twinrova
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInitTwinrova);
        this->actor.naviEnemyId = NAVI_ENEMY_TWINROVA;
        this->actor.colChkInfo.health = 24;
        this->actor.update = BossTw_TwinrovaUpdate;
        this->actor.draw = BossTw_TwinrovaDraw;
        SkelAnime_InitFlex(play, &this->skelAnime, &gTwinrovaSkel, &gTwinrovaTPoseAnim, NULL, NULL, 0);
        Animation_MorphToLoop(&this->skelAnime, &gTwinrovaTPoseAnim, -3.0f);

        if (GET_EVENTCHKINF(EVENTCHKINF_BEGAN_TWINROVA_BATTLE)) {
            // began twinrova battle
            BossTw_SetupWait(this, play);
        } else {
            BossTw_TwinrovaSetupIntroCS(this, play);
            this->actor.world.pos.x = 0.0f;
            this->actor.world.pos.y = 1000.0f;
            this->actor.world.pos.z = 0.0f;
        }

        this->actor.params = TW_TWINROVA;
        sTwinrovaPtr = this;

        if (Flags_GetClear(play, play->roomCtx.curRoom.num)) {
            // twinrova has been defeated.
            Actor_Kill(&this->actor);
            Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_WARP1, 600.0f, 230.0f, 0.0f, 0, 0, 0,
                               WARP_DUNGEON_ADULT);
            Actor_Spawn(&play->actorCtx, play, ACTOR_ITEM_B_HEART, -600.0f, 230.0f, 0.0f, 0, 0, 0, 0);
        } else {
            sKotakePtr =
                (BossTw*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_BOSS_TW, this->actor.world.pos.x,
                                            this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, TW_KOTAKE);
            sKoumePtr =
                (BossTw*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_BOSS_TW, this->actor.world.pos.x,
                                            this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, TW_KOUME);
            sKotakePtr->actor.parent = &sKoumePtr->actor;
            sKoumePtr->actor.parent = &sKotakePtr->actor;
        }
    }

    this->fogR = play->lightCtx.fogColor[0];
    this->fogG = play->lightCtx.fogColor[1];
    this->fogB = play->lightCtx.fogColor[2];
    this->fogNear = play->lightCtx.fogNear;
    this->fogFar = 1000.0f;
}

void BossTw_Destroy(Actor* thisx, PlayState* play) {
    BossTw* this = (BossTw*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
    if (thisx->params < TW_FIRE_BLAST) {
        SkelAnime_Free(&this->skelAnime, play);
    }

    if (thisx->params == TW_TWINROVA) {
        sTwInitialized = false;
    }
}

void BossTw_SetupTurnToPlayer(BossTw* this, PlayState* play) {
    BossTw* otherTw = (BossTw*)this->actor.parent;

    this->actionFunc = BossTw_TurnToPlayer;

    if ((otherTw != NULL) && (otherTw->actionFunc == BossTw_ShootBeam)) {
        this->timers[0] = 40;
    } else {
        this->timers[0] = 60;
    }

    this->rotateSpeed = 0.0f;
}

void BossTw_TurnToPlayer(BossTw* this, PlayState* play) {
    BossTw* otherTw = (BossTw*)this->actor.parent;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.speed, 0.0f, 1.0f, 1.0f);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, this->rotateSpeed);
    Math_ApproachS(&this->actor.shape.rot.x, 0, 5, this->rotateSpeed);
    Math_ApproachF(&this->rotateSpeed, 4096.0f, 1.0f, 200.0f);
    Actor_UpdateVelocityXYZ(&this->actor);
    Actor_UpdatePos(&this->actor);
    if (this->timers[0] == 0) {
        if ((otherTw->actionFunc != BossTw_ShootBeam) && this->work[CAN_SHOOT]) {
            this->work[CAN_SHOOT] = false;
            BossTw_SetupShootBeam(this, play);
            this->actor.speed = 0.0f;
        } else {
            BossTw_SetupFlyTo(this, play);
        }
    }
}

void BossTw_SetupFlyTo(BossTw* this, PlayState* play) {
    static Vec3f sPillarPositions[] = {
        { 600.0f, 400.0f, 0.0f }, { 0.0f, 400.0f, 600.0f }, { -600.0f, 400.0f, 0.0f }, { 0.0f, 400.0f, -600.0f }
    };
    BossTw* otherTw = (BossTw*)this->actor.parent;

    this->unk_5F8 = 1;
    this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    this->actionFunc = BossTw_FlyTo;
    this->rotateSpeed = 0.0f;
    Animation_MorphToLoop(&this->skelAnime, &gTwinrovaKotakeKoumeFlyAnim, -10.0f);
    if ((Rand_ZeroOne() < 0.5f) && (otherTw != NULL && otherTw->actionFunc == BossTw_ShootBeam)) {
        // Other Sister is shooting a beam, go near them.
        this->targetPos.x = otherTw->actor.world.pos.x + Rand_CenteredFloat(200.0f);
        this->targetPos.y = Rand_ZeroFloat(200.0f) + 340.0f;
        this->targetPos.z = otherTw->actor.world.pos.z + Rand_CenteredFloat(200.0f);
        this->timers[0] = (s16)Rand_ZeroFloat(50.0f) + 50;
    } else if (Rand_ZeroOne() < 0.5f) {
        // Fly to a random spot.
        this->targetPos.x = Rand_CenteredFloat(800.0f);
        this->targetPos.y = Rand_ZeroFloat(200.0f) + 340.0f;
        this->targetPos.z = Rand_CenteredFloat(800.0f);
        this->timers[0] = (s16)Rand_ZeroFloat(50.0f) + 50;
    } else {
        // fly to a random pillar.
        s16 idx = Rand_ZeroFloat(ARRAY_COUNT(sPillarPositions) - 0.01f);

        this->targetPos = sPillarPositions[idx];
        this->timers[0] = 200;
        this->work[CAN_SHOOT] = true;
    }
}

void BossTw_FlyTo(BossTw* this, PlayState* play) {
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    f32 pitchTarget;
    f32 yawTarget;
    f32 xzDist;

    Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
    Math_ApproachF(&this->scepterAlpha, 0.0f, 1.0f, 10.0f);
    SkelAnime_Update(&this->skelAnime);

    xDiff = this->targetPos.x - this->actor.world.pos.x;
    yDiff = this->targetPos.y - this->actor.world.pos.y;
    zDiff = this->targetPos.z - this->actor.world.pos.z;

    yawTarget = RAD_TO_BINANG(Math_FAtan2F(xDiff, zDiff));
    xzDist = sqrtf(SQ(xDiff) + SQ(zDiff));
    pitchTarget = RAD_TO_BINANG(Math_FAtan2F(yDiff, xzDist));

    Math_ApproachS(&this->actor.world.rot.x, pitchTarget, 0xA, this->rotateSpeed);
    Math_ApproachS(&this->actor.world.rot.y, yawTarget, 0xA, this->rotateSpeed);
    Math_ApproachS(&this->actor.shape.rot.y, yawTarget, 0xA, this->rotateSpeed);
    Math_ApproachS(&this->actor.shape.rot.x, pitchTarget, 0xA, this->rotateSpeed);
    Math_ApproachF(&this->rotateSpeed, 4096.0f, 1.0f, 100.0f);
    Math_ApproachF(&this->actor.speed, 10.0f, 1.0f, 1.0f);
    Actor_UpdateVelocityXYZ(&this->actor);
    Actor_UpdatePos(&this->actor);

    if ((this->timers[0] == 0) || (xzDist < 70.0f)) {
        BossTw_SetupTurnToPlayer(this, play);
    }
}

void BossTw_SetupShootBeam(BossTw* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->actionFunc = BossTw_ShootBeam;
    Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaKotakeKoumeChargeUpAttackStartAnim, -5.0f);
    this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeChargeUpAttackStartAnim);
    this->timers[1] = 70;
    this->targetPos = player->actor.world.pos;
    this->csState1 = 0;
    this->beamDist = 0.0f;
    this->beamReflectionDist = 0.0f;
    this->beamShootState = -1;
    this->beamScale = 0.01f;
    this->beamReflectionOrigin = this->beamOrigin;
    this->flameAlpha = 0.0f;
    this->spawnPortalAlpha = 0.0f;
    this->spawnPortalScale = 2000.0f;
    this->updateRate1 = 0.0f;
    this->portalRotation = 0.0f;
    this->updateRate2 = 0.0f;
}

void BossTw_SpawnGroundBlast(BossTw* this, PlayState* play, s16 blastType) {
    BossTw* groundBlast;
    s16 i;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    for (i = 0; i < BOSS_TW_EFFECT_COUNT; i++) {
        velocity.x = Rand_CenteredFloat(20.0f);
        velocity.y = Rand_ZeroFloat(10.0f);
        velocity.z = Rand_CenteredFloat(20.0f);
        accel.y = 0.2f;
        accel.x = Rand_CenteredFloat(0.25f);
        accel.z = Rand_CenteredFloat(0.25f);
        pos = this->groundBlastPos;
        BossTw_AddDotEffect(play, &pos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 8, blastType, 75);
    }

    if (blastType == 1) {
        sGroundBlastType = 1;
        groundBlast =
            (BossTw*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_BOSS_TW, this->groundBlastPos.x,
                                        this->groundBlastPos.y, this->groundBlastPos.z, 0, 0, 0, TW_FIRE_BLAST_GROUND);
        if (groundBlast != NULL) {
            if (sTwinrovaPtr->actionFunc == BossTw_Wait) {
                groundBlast->timers[0] = 100;
            } else {
                groundBlast->timers[0] = 50;
            }
            sKoumePtr->workf[KM_GD_FLM_A] = sKoumePtr->workf[KM_GD_SMOKE_A] = sKoumePtr->workf[KM_GRND_CRTR_A] = 255.0f;
            sKoumePtr->workf[KM_GD_FLM_SCL] = 1.0f;
            sKoumePtr->workf[KM_GD_CRTR_SCL] = 0.005f;
            sKoumePtr->groundBlastPos2 = groundBlast->actor.world.pos;
            sEnvType = 4;
        }
    } else {
        sGroundBlastType = 2;
        groundBlast =
            (BossTw*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_BOSS_TW, this->groundBlastPos.x,
                                        this->groundBlastPos.y, this->groundBlastPos.z, 0, 0, 0, TW_ICE_BLAST_GROUND);
        if (groundBlast != NULL) {
            if (sTwinrovaPtr->actionFunc == BossTw_Wait) {
                groundBlast->timers[0] = 100;
            } else {
                groundBlast->timers[0] = 50;
            }

            sKotakePtr->workf[UNK_F11] = 50.0f;
            sKotakePtr->workf[UNK_F9] = 250.0f;
            sKotakePtr->workf[UNK_F12] = 0.005f;
            sKotakePtr->workf[UNK_F14] = 1.0f;
            sKotakePtr->workf[UNK_F16] = 70.0f;
            sKotakePtr->groundBlastPos2 = groundBlast->actor.world.pos;
            sEnvType = 3;
        }
    }
}

s32 BossTw_BeamHitPlayerCheck(BossTw* this, PlayState* play) {
    Vec3f offset;
    Vec3f beamDistFromPlayer;
    Player* player = GET_PLAYER(play);

    offset.x = player->actor.world.pos.x - this->beamOrigin.x;
    offset.y = player->actor.world.pos.y - this->beamOrigin.y;
    offset.z = player->actor.world.pos.z - this->beamOrigin.z;

    Matrix_RotateX(-this->beamPitch, MTXMODE_NEW);
    Matrix_RotateY(-this->beamYaw, MTXMODE_APPLY);
    Matrix_MultVec3f(&offset, &beamDistFromPlayer);

    if (fabsf(beamDistFromPlayer.x) < 20.0f && fabsf(beamDistFromPlayer.y) < 50.0f && beamDistFromPlayer.z > 100.0f &&
        beamDistFromPlayer.z <= this->beamDist) {
        if (sTwinrovaPtr->timers[2] == 0) {
            sTwinrovaPtr->timers[2] = 150;
            this->beamDist = sqrtf(SQ(offset.x) + SQ(offset.y) + SQ(offset.z));
            Actor_SetPlayerKnockbackLarge(play, &this->actor, 3.0f, this->actor.shape.rot.y, 0.0f, 0x20);

            if (this->actor.params == TW_KOTAKE) {
                if (sFreezeState == 0) {
                    sFreezeState = 1;
                }
            } else if (!player->bodyIsBurning) {
                s16 i;

                for (i = 0; i < PLAYER_BODYPART_MAX; i++) {
                    player->bodyFlameTimers[i] = Rand_S16Offset(0, 200);
                }

                player->bodyIsBurning = true;
                Player_PlaySfx(player, player->ageProperties->unk_92 + NA_SE_VO_LI_DEMO_DAMAGE);
            }
        }

        return true;
    }
    return false;
}

/**
 * Checks if the beam shot by `this` will be reflected
 * returns 0 if the beam will not be reflected,
 * returns 1 if the beam will be reflected,
 * and returns 2 if the beam will be diverted backwards
 */
s32 BossTw_CheckBeamReflection(BossTw* this, PlayState* play) {
    Vec3f offset;
    Vec3f vec;
    Player* player = GET_PLAYER(play);

    if (player->stateFlags1 & PLAYER_STATE1_SHIELDING &&
        (s16)(player->actor.shape.rot.y - this->actor.shape.rot.y + 0x8000) < 0x2000 &&
        (s16)(player->actor.shape.rot.y - this->actor.shape.rot.y + 0x8000) > -0x2000) {
        // player is shielding and facing angles are less than 45 degrees in either direction
        offset.x = 0.0f;
        offset.y = 0.0f;
        offset.z = 10.0f;

        // set beam check point to 10 units in front of link.
        Matrix_RotateY(player->actor.shape.rot.y / (f32)0x8000 * M_PI, MTXMODE_NEW);
        Matrix_MultVec3f(&offset, &vec);

        // calculates a vector where the origin is at the beams origin,
        // and the positive z axis is pointing in the direction the beam
        // is shooting
        offset.x = player->actor.world.pos.x + vec.x - this->beamOrigin.x;
        offset.y = player->actor.world.pos.y + vec.y - this->beamOrigin.y;
        offset.z = player->actor.world.pos.z + vec.z - this->beamOrigin.z;

        Matrix_RotateX(-this->beamPitch, MTXMODE_NEW);
        Matrix_RotateY(-this->beamYaw, MTXMODE_APPLY);
        Matrix_MultVec3f(&offset, &vec);

        if (fabsf(vec.x) < 30.0f && fabsf(vec.y) < 70.0f && vec.z > 100.0f && vec.z <= this->beamDist) {
            // if the beam's origin is within 30 x units, 70 y units, is farther than 100 units
            // and the distance from the beams origin to 10 units in front of link is less than the beams
            // current distance (the distance of the beam is equal to or longer than the distance to 10 units
            // in front of link)
            if (Player_HasMirrorShieldEquipped(play)) {
                // player has mirror shield equipped
                this->beamDist = sqrtf(SQ(offset.x) + SQ(offset.y) + SQ(offset.z));
                return 1;
            }

            if (sBeamDivertTimer > 10) {
                return 0;
            }

            if (sBeamDivertTimer == 0) {
                // beam hit the shield, normal shield equipped,
                // divert the beam backwards from link's Y rotation
                BossTw_AddShieldDeflectEffect(play, 10.0f, this->actor.params);
                play->envCtx.lightBlend = 1.0f;
                this->timers[0] = 10;
                Sfx_PlaySfxCentered(NA_SE_IT_SHIELD_REFLECT_MG2);
            }

            sBeamDivertTimer++;
            this->beamDist = sqrtf(SQ(offset.x) + SQ(offset.y) + SQ(offset.z));
            return 2;
        }
    }

    return 0;
}

s32 BossTw_BeamReflHitCheck(BossTw* this, Vec3f* pos) {
    Vec3f offset;
    Vec3f beamDistFromTarget;

    offset.x = pos->x - this->beamReflectionOrigin.x;
    offset.y = pos->y - this->beamReflectionOrigin.y;
    offset.z = pos->z - this->beamReflectionOrigin.z;

    Matrix_RotateX(-this->beamReflectionPitch, MTXMODE_NEW);
    Matrix_RotateY(-this->beamReflectionYaw, MTXMODE_APPLY);
    Matrix_MultVec3f(&offset, &beamDistFromTarget);

    if (fabsf(beamDistFromTarget.x) < 50.0f && fabsf(beamDistFromTarget.y) < 50.0f && beamDistFromTarget.z > 100.0f &&
        beamDistFromTarget.z <= this->beamReflectionDist) {
        this->beamReflectionDist = sqrtf(SQ(offset.x) + SQ(offset.y) + SQ(offset.z)) * 1.1f;
        return true;
    } else {
        return false;
    }
}

f32 BossTw_GetFloorY(Vec3f* pos) {
    Vec3f posRotated;

    if (fabsf(pos->x) < 350.0f && fabsf(pos->z) < 350.0f && pos->y < 240.0f) {
        if (pos->y > 200.0f) {
            return 240.0f;
        }
        return 35.0f;
    }

    if (fabsf(pos->x) < 110.0f && ((fabsf(pos->z - 600.0f) < 110.0f) || (fabsf(pos->z + 600.0f) < 110.0f)) &&
        (pos->y < 230.0f)) {
        if (pos->y > 190.0f) {
            return 230.0f;
        }
        return 35.0f;
    }

    if (fabsf(pos->z) < 110.0f && ((fabsf(pos->x - 600.0f) < 110.0f) || (fabsf(pos->x + 600.0f) < 110.0f)) &&
        (pos->y < 230.0f)) {
        if (pos->y > 190.0f) {
            return 230.0f;
        }
        return 35.0f;
    }

    if (pos->y < -20.0f) {
        return 0.0f;
    }

    if (fabsf(pos->x) > 1140.0f || fabsf(pos->z) > 1140.0f) {
        return 35.0f;
    }

    Matrix_Push();
    Matrix_RotateY(M_PI / 4, MTXMODE_NEW);
    Matrix_MultVec3f(pos, &posRotated);
    Matrix_Pop();

    if (fabsf(posRotated.x) > 920.0f || fabsf(posRotated.z) > 920.0f) {
        return 35.0f;
    }

    return -100.0f;
}

void BossTw_ShootBeam(BossTw* this, PlayState* play) {
    s16 i;
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    f32 floorY;
    Vec3f sp130;
    Vec3s sp128;
    Player* player = GET_PLAYER(play);
    BossTw* otherTw = (BossTw*)this->actor.parent;
    Input* input = &play->state.input[0];

    Math_ApproachF(&this->actor.world.pos.y, 400.0f, 0.05f, this->actor.speed);
    Math_ApproachF(&this->actor.speed, 5.0f, 1.0f, 0.25f);
    SkelAnime_Update(&this->skelAnime);
    this->beamRoll += -0.3f;

    if (this->timers[1] != 0) {
        Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, this->rotateSpeed);
        if ((player->stateFlags1 & PLAYER_STATE1_SHIELDING) &&
            ((s16)((player->actor.shape.rot.y - this->actor.shape.rot.y) + 0x8000) < 0x2000) &&
            ((s16)((player->actor.shape.rot.y - this->actor.shape.rot.y) + 0x8000) > -0x2000)) {
            Math_ApproachF(&this->targetPos.x, player->bodyPartsPos[PLAYER_BODYPART_R_HAND].x, 1.0f, 400.0f);
            Math_ApproachF(&this->targetPos.y, player->bodyPartsPos[PLAYER_BODYPART_R_HAND].y, 1.0f, 400.0f);
            Math_ApproachF(&this->targetPos.z, player->bodyPartsPos[PLAYER_BODYPART_R_HAND].z, 1.0f, 400.0f);
        } else {
            Math_ApproachF(&this->targetPos.x, player->actor.world.pos.x, 1.0f, 400.0f);
            Math_ApproachF(&this->targetPos.y, player->actor.world.pos.y + 30.0f, 1.0f, 400.0f);
            Math_ApproachF(&this->targetPos.z, player->actor.world.pos.z, 1.0f, 400.0f);
        }

        this->timers[0] = 70;
        this->groundBlastPos.x = this->groundBlastPos.y = this->groundBlastPos.z = 0.0f;
        this->portalRotation += this->updateRate2 * 0.0025f;
        Math_ApproachF(&this->spawnPortalAlpha, 255.0f, 1.0f, 10.0f);
        Math_ApproachF(&this->updateRate2, 50.0f, 1.0f, 2.0f);

        if (this->timers[1] < 50) {
            if (this->timers[1] < 10) {
                if (this->timers[1] == 9) {
                    play->envCtx.lightBlend = 0.5f;
                    play->envCtx.lightSetting = 3 - this->actor.params;
                    Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_MASIC_SET);
                }

                if (this->timers[1] == 5) {
                    this->scepterAlpha = 255;
                }

                if (this->timers[1] > 4) {
                    s16 j;
                    for (j = 0; j < 2; j++) {
                        for (i = 0; i < ARRAY_COUNT(this->scepterFlamePos); i++) {
                            Vec3f pos;
                            Vec3f velocity;
                            Vec3f accel;

                            pos.x = this->scepterFlamePos[i].x;
                            pos.y = this->scepterFlamePos[i].y;
                            pos.z = this->scepterFlamePos[i].z;
                            velocity.x = Rand_CenteredFloat(10.0f);
                            velocity.y = Rand_CenteredFloat(10.0f);
                            velocity.z = Rand_CenteredFloat(10.0f);
                            accel.x = 0.0f;
                            accel.y = 0.0f;
                            accel.z = 0.0f;
                            BossTw_AddFlameEffect(play, &pos, &velocity, &accel, Rand_ZeroFloat(10.0f) + 25.0f,
                                                  this->actor.params);
                        }
                    }
                }
            }

            if (this->timers[1] < 20) {
                Math_ApproachF(&this->flameAlpha, 0, 1.0f, 20.0f);
                Math_ApproachF(&this->spawnPortalAlpha, 0, 1.0f, 30.0f);
            } else {
                Math_ApproachF(&this->flameAlpha, 255.0f, 1.0f, 10.0f);
                if (this->actor.params == TW_KOUME) {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_MS_FIRE - SFX_FLAG);
                } else {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_MS_FREEZE - SFX_FLAG);
                }
            }

            this->flameRotation += this->updateRate1 * 0.0025f;
            Math_ApproachF(&this->spawnPortalScale, 0.0f, 0.1f, this->updateRate1);
            Math_ApproachF(&this->updateRate1, 50.0f, 1.0f, 2.0f);
        }

        if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
            Animation_MorphToLoop(&this->skelAnime, &gTwinrovaKotakeKoumeChargeUpAttackLoopAnim, 0.0f);
            this->workf[ANIM_SW_TGT] = 10000.0f;
        }

        if (this->timers[1] == 1) {
            Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaKotakeKoumeAttackStartAnim, 0.0f);
            this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeAttackStartAnim);
            this->unk_4DC = 0.0f;
            this->spawnPortalAlpha = 0.0f;
            this->flameAlpha = 0.0f;
            sBeamDivertTimer = 0;
        }
    } else {
        if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
            Animation_MorphToLoop(&this->skelAnime, &gTwinrovaKotakeKoumeAttackLoopAnim, 0.0f);
            this->workf[ANIM_SW_TGT] = 10000.0f;
        }

        if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT] - 5.0f)) {
            this->beamShootState = 0;
            sEnvType = this->actor.params + 1;
        }

        if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT] - 13.0f)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_THROW_MASIC);
            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_SHOOT_VOICE);
        }

        xDiff = this->targetPos.x - this->beamOrigin.x;
        yDiff = this->targetPos.y - this->beamOrigin.y;
        zDiff = this->targetPos.z - this->beamOrigin.z;

        this->beamYaw = Math_FAtan2F(xDiff, zDiff);
        this->beamPitch = -Math_FAtan2F(yDiff, sqrtf(SQ(xDiff) + SQ(zDiff)));

        switch (this->beamShootState) {
            case -1:
                break;
            case 0:
                if (this->timers[0] != 0) {
                    s32 beamReflection = BossTw_CheckBeamReflection(this, play);

                    if (beamReflection == 1) {
                        Vec3f pos;
                        Vec3f velocity;
                        Vec3f accel = { 0.0f, 0.0f, 0.0f };

                        for (i = 0; i < 150; i++) {
                            velocity.x = Rand_CenteredFloat(15.0f);
                            velocity.y = Rand_CenteredFloat(15.0f);
                            velocity.z = Rand_CenteredFloat(15.0f);
                            pos = player->bodyPartsPos[PLAYER_BODYPART_R_HAND];
                            BossTw_AddDotEffect(play, &pos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 5,
                                                this->actor.params, 150);
                        }

                        this->beamShootState = 1;
                        Sfx_PlaySfxAtPos(&player->actor.projectedPos, NA_SE_IT_SHIELD_REFLECT_MG);
                        Matrix_MtxFToYXZRotS(&player->shieldMf, &sp128, 0);
                        sp128.y += 0x8000;
                        sp128.x = -sp128.x;
                        this->magicDir.x = sp128.x;
                        this->magicDir.y = sp128.y;
                        this->groundBlastPos.x = 0.0f;
                        this->groundBlastPos.y = 0.0f;
                        this->groundBlastPos.z = 0.0f;
                        play->envCtx.lightBlend = 1.0f;
                        Rumble_Request(0.0f, 100, 5, 4);
                    } else if (beamReflection == 0) {
                        BossTw_BeamHitPlayerCheck(this, play);

                        if (this->csState1 == 0) {
                            Math_ApproachF(&this->beamDist, 2.0f * sqrtf(SQ(xDiff) + SQ(yDiff) + SQ(zDiff)), 1.0f,
                                           40.0f);
                        }
                    }
                }

                SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &this->beamReflectionOrigin, &this->unk_54C,
                                             &this->actor.projectedW);

                if (this->actor.params == TW_KOUME) {
                    Audio_PlaySfxGeneral(NA_SE_EN_TWINROBA_SHOOT_FIRE - SFX_FLAG, &this->unk_54C, 4,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                } else {
                    Audio_PlaySfxGeneral(NA_SE_EN_TWINROBA_SHOOT_FREEZE - SFX_FLAG, &this->unk_54C, 4,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                break;

            case 1:
                if (CHECK_BTN_ALL(input->cur.button, BTN_R)) {
                    Player* player = GET_PLAYER(play);

                    this->beamDist = sqrtf(SQ(xDiff) + SQ(yDiff) + SQ(zDiff));
                    Math_ApproachF(&this->beamReflectionDist, 2000.0f, 1.0f, 40.0f);
                    Math_ApproachF(&this->targetPos.x, player->bodyPartsPos[PLAYER_BODYPART_R_HAND].x, 1.0f, 400.0f);
                    Math_ApproachF(&this->targetPos.y, player->bodyPartsPos[PLAYER_BODYPART_R_HAND].y, 1.0f, 400.0f);
                    Math_ApproachF(&this->targetPos.z, player->bodyPartsPos[PLAYER_BODYPART_R_HAND].z, 1.0f, 400.0f);
                    if ((this->work[CS_TIMER_1] % 4) == 0) {
                        BossTw_AddRingEffect(play, &player->bodyPartsPos[PLAYER_BODYPART_R_HAND], 0.5f, 3.0f, 0xFF,
                                             this->actor.params, 1, BOSS_TW_EFFECT_COUNT);
                    }
                } else {
                    this->beamShootState = 0;
                    this->beamReflectionDist = 0.0f;
                }

                SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &this->unk_530, &this->unk_558,
                                             &this->actor.projectedW);

                if (this->actor.params == TW_KOUME) {
                    Audio_PlaySfxGeneral(NA_SE_EN_TWINROBA_SHOOT_FIRE - SFX_FLAG, &this->unk_558, 4U,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    Audio_PlaySfxGeneral(NA_SE_EN_TWINROBA_REFL_FIRE - SFX_FLAG, &this->unk_558, 4,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                } else {
                    Audio_PlaySfxGeneral(NA_SE_EN_TWINROBA_SHOOT_FREEZE - SFX_FLAG, &this->unk_558, 4,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    Audio_PlaySfxGeneral(NA_SE_EN_TWINROBA_REFL_FREEZE - SFX_FLAG, &this->unk_558, 4,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                break;
        }

        if (this->timers[0] == 0 && (sEnvType == 1 || sEnvType == 2)) {
            sEnvType = 0;
        }

        if (this->timers[0] == 0) {
            Math_ApproachF(&this->beamScale, 0.0f, 1.0f, 0.0005f);

            if (this->beamScale == 0.0f) {
                BossTw_SetupFinishBeamShoot(this, play);
                this->beamReflectionDist = 0.0f;
                this->beamDist = 0.0f;
            }
        }
    }

    Matrix_Translate(this->beamOrigin.x, this->beamOrigin.y, this->beamOrigin.z, MTXMODE_NEW);
    Matrix_RotateY(this->beamYaw, MTXMODE_APPLY);
    Matrix_RotateX(this->beamPitch, MTXMODE_APPLY);

    sp130.x = 0.0f;
    sp130.y = 0.0f;
    sp130.z = this->beamDist + -5.0f;

    Matrix_MultVec3f(&sp130, &this->beamReflectionOrigin);

    if ((this->csState1 == 0) && (this->beamShootState == 0) && (this->timers[0] != 0)) {
        this->groundBlastPos.y = BossTw_GetFloorY(&this->beamReflectionOrigin);

        if (this->groundBlastPos.y >= 0.0f) {
            this->csState1 = 1;
            this->groundBlastPos.x = this->beamReflectionOrigin.x;
            this->groundBlastPos.z = this->beamReflectionOrigin.z;
            BossTw_SpawnGroundBlast(this, play, this->actor.params);
            this->timers[0] = 20;
        }
    }

    if (this->beamShootState == 1) {
        if (this->csState1 == 0) {
            Matrix_MtxFToYXZRotS(&player->shieldMf, &sp128, 0);
            sp128.y += 0x8000;
            sp128.x = -sp128.x;
            Math_ApproachS(&this->magicDir.x, sp128.x, 5, 0x2000);
            Math_ApproachS(&this->magicDir.y, sp128.y, 5, 0x2000);
            this->beamReflectionPitch = BINANG_TO_RAD_ALT(this->magicDir.x);
            this->beamReflectionYaw = BINANG_TO_RAD_ALT(this->magicDir.y);
        }

        Matrix_Translate(this->beamReflectionOrigin.x, this->beamReflectionOrigin.y, this->beamReflectionOrigin.z,
                         MTXMODE_NEW);
        Matrix_RotateY(this->beamReflectionYaw, MTXMODE_APPLY);
        Matrix_RotateX(this->beamReflectionPitch, MTXMODE_APPLY);

        sp130.x = 0.0f;
        sp130.y = 0.0f;
        sp130.z = this->beamReflectionDist + -170.0f;

        Matrix_MultVec3f(&sp130, &this->unk_530);

        if (this->csState1 == 0) {
            sp130.z = 0.0f;

            for (i = 0; i < 200; i++) {
                Vec3f spBC;

                Matrix_MultVec3f(&sp130, &spBC);
                floorY = BossTw_GetFloorY(&spBC);
                this->groundBlastPos.y = floorY;

                if (floorY >= 0.0f) {
                    if ((this->groundBlastPos.y != 35.0f) && (0.0f < this->beamReflectionPitch) &&
                        (this->timers[0] != 0)) {
                        this->csState1 = 1;
                        this->groundBlastPos.x = spBC.x;
                        this->groundBlastPos.z = spBC.z;
                        BossTw_SpawnGroundBlast(this, play, this->actor.params);
                        this->timers[0] = 20;
                    } else {
                        for (i = 0; i < 5; i++) {
                            Vec3f velocity;
                            Vec3f accel;

                            velocity.x = Rand_CenteredFloat(20.0f);
                            velocity.y = Rand_CenteredFloat(20.0f);
                            velocity.z = Rand_CenteredFloat(20.0f);

                            accel.x = 0.0f;
                            accel.y = 0.0f;
                            accel.z = 0.0f;

                            BossTw_AddFlameEffect(play, &this->unk_530, &velocity, &accel,
                                                  Rand_ZeroFloat(10.0f) + 25.0f, this->actor.params);
                        }

                        this->beamReflectionDist = sp130.z;
                        Math_ApproachF(&play->envCtx.lightBlend, 0.8f, 1.0f, 0.2f);
                    }
                    break;
                }

                sp130.z += 20.0f;

                if (this->beamReflectionDist < sp130.z) {
                    break;
                }
            }
        }

        if (BossTw_BeamReflHitCheck(this, &this->actor.world.pos) && (this->work[CS_TIMER_1] % 4) == 0) {
            BossTw_AddRingEffect(play, &this->unk_530, 0.5f, 3.0f, 255, this->actor.params, 1, BOSS_TW_EFFECT_COUNT);
        }

        if (BossTw_BeamReflHitCheck(this, &otherTw->actor.world.pos) && otherTw->actionFunc != BossTw_HitByBeam) {
            for (i = 0; i < 50; i++) {
                Vec3f pos;
                Vec3f velocity;
                Vec3f accel;

                pos.x = otherTw->actor.world.pos.x + Rand_CenteredFloat(50.0f);
                pos.y = otherTw->actor.world.pos.y + Rand_CenteredFloat(50.0f);
                pos.z = otherTw->actor.world.pos.z + Rand_CenteredFloat(50.0f);

                velocity.x = Rand_CenteredFloat(20.0f);
                velocity.y = Rand_CenteredFloat(20.0f);
                velocity.z = Rand_CenteredFloat(20.0f);

                accel.x = 0.0f;
                accel.y = 0.0f;
                accel.z = 0.0f;

                BossTw_AddFlameEffect(play, &pos, &velocity, &accel, Rand_ZeroFloat(10.0f) + 25.0f, this->actor.params);
            }

            BossTw_SetupHitByBeam(otherTw, play);
            Actor_PlaySfx(&otherTw->actor, NA_SE_EN_TWINROBA_DAMAGE_VOICE);
            play->envCtx.lightBlend = 1.0f;
            otherTw->actor.colChkInfo.health++;
        }
    }
}

void BossTw_SetupFinishBeamShoot(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_FinishBeamShoot;
    Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaKotakeKoumeAttackEndAnim, 0.0f);
    this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeAttackEndAnim);
}

void BossTw_FinishBeamShoot(BossTw* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->scepterAlpha, 0.0f, 1.0f, 10.0f);

    if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
        if (sTwinrovaPtr->timers[2] == 0) {
            BossTw_SetupFlyTo(this, play);
        } else {
            BossTw_SetupLaugh(this, play);
        }

        this->scepterAlpha = 0.0f;
    }
}

void BossTw_SetupHitByBeam(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_HitByBeam;
    Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaKotakeKoumeDamageStartAnim, 0.0f);
    this->timers[0] = 53;
    this->actor.speed = 0.0f;

    if (this->actor.params == TW_KOTAKE) {
        this->work[FOG_TIMER] = 20;
    }
}

void BossTw_HitByBeam(BossTw* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    if ((this->work[CS_TIMER_1] % 4) == 0) {
        Vec3f pos;
        Vec3f velocity;
        Vec3f accel;

        pos.x = this->actor.world.pos.x + Rand_CenteredFloat(80.0f);
        pos.y = this->actor.world.pos.y + Rand_CenteredFloat(80.0f);
        pos.z = this->actor.world.pos.z + Rand_CenteredFloat(80.0f);

        velocity.x = 0.0f;
        velocity.y = 0.0f;
        velocity.z = 0.0f;

        accel.x = 0.0f;
        accel.y = 0.1f;
        accel.z = 0.0f;

        BossTw_AddDmgCloud(play, this->actor.params + TWEFF_2, &pos, &velocity, &accel, Rand_ZeroFloat(10.0f) + 15.0f,
                           0, 0, 150);
    }

    if (this->actor.params == TW_KOUME) {
        Math_ApproachF(&this->fogR, 255.0f, 1.0f, 30.0f);
        Math_ApproachF(&this->fogG, 255.0f, 1.0f, 30.0f);
        Math_ApproachF(&this->fogB, 255.0f, 1.0f, 30.0f);
        Math_ApproachF(&this->fogNear, 900.0f, 1.0f, 30.0f);
        Math_ApproachF(&this->fogFar, 1099.0f, 1.0f, 30.0f);
    }

    Math_ApproachF(&this->actor.world.pos.y, ((Math_SinS(this->work[CS_TIMER_1] * 1500) * 20.0f) + 350.0f) + 50.0f,
                   0.1f, this->actor.speed);
    Math_ApproachF(&this->actor.speed, 5.0f, 1.0f, 1.0f);

    this->actor.world.pos.y -= 50.0f;
    Actor_UpdateBgCheckInfo(play, &this->actor, 50.0f, 50.0f, 100.0f, UPDBGCHECKINFO_FLAG_2);
    this->actor.world.pos.y += 50.0f;

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.speed = 0.0f;
    }

    if (this->timers[0] == 1) {
        Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaKotakeKoumeDamageEndAnim, 0.0f);
        this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeDamageEndAnim);
    }

    if ((this->timers[0] == 0) && Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
        BossTw_SetupFlyTo(this, play);
    }
}

void BossTw_SetupLaugh(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_Laugh;
    Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaKotakeKoumeLaughAnim, 0.0f);
    this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeLaughAnim);
    this->actor.speed = 0.0f;
}

void BossTw_Laugh(BossTw* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    if (Animation_OnFrame(&this->skelAnime, 10.0f)) {
        if (this->actor.params == TW_KOUME) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_LAUGH);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_LAUGH2);
        }
    }

    if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
        BossTw_SetupFlyTo(this, play);
    }
}

void BossTw_SetupSpin(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_Spin;
    Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaKotakeKoumeSpinAnim, -3.0f);
    this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeSpinAnim);
    this->actor.speed = 0.0f;
    SkelAnime_Update(&this->skelAnime);
    this->timers[0] = 20;
}

void BossTw_Spin(BossTw* this, PlayState* play) {
    if (this->timers[0] != 0) {
        this->collider.base.colMaterial = COL_MATERIAL_METAL;
        this->actor.shape.rot.y -= 0x3000;

        if ((this->timers[0] % 4) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_ROLL);
        }
    } else {
        SkelAnime_Update(&this->skelAnime);
        Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 3, 0x2000);

        if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
            BossTw_SetupFlyTo(this, play);
        }
    }
}

void BossTw_SetupMergeCS(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_MergeCS;
    this->rotateSpeed = 0.0f;
    this->actor.speed = 0.0f;
    Animation_MorphToLoop(&this->skelAnime, &gTwinrovaKotakeKoumeFlyAnim, -10.0f);
}

void BossTw_MergeCS(BossTw* this, PlayState* play) {
    Math_ApproachF(&this->scepterAlpha, 0.0f, 1.0f, 10.0f);
    SkelAnime_Update(&this->skelAnime);
}

void BossTw_SetupWait(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_Wait;
    this->visible = false;
    this->actor.world.pos.y = -2000.0f;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
}

void BossTw_Wait(BossTw* this, PlayState* play) {
    if ((this->actor.params == TW_TWINROVA) && (sKoumePtr->actionFunc == BossTw_FlyTo) &&
        (sKotakePtr->actionFunc == BossTw_FlyTo) &&
        ((sKoumePtr->actor.colChkInfo.health + sKotakePtr->actor.colChkInfo.health) >= 4)) {

        BossTw_TwinrovaSetupMergeCS(this, play);
        BossTw_SetupMergeCS(sKotakePtr, play);
        BossTw_SetupMergeCS(sKoumePtr, play);
    }
}

void BossTw_TwinrovaSetupMergeCS(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_TwinrovaMergeCS;
    this->csState2 = 0;
    this->csState1 = 0;
}

void BossTw_TwinrovaMergeCS(BossTw* this, PlayState* play) {
    s16 i;
    Vec3f spB0;
    Vec3f spA4;
    Player* player = GET_PLAYER(play);

    switch (this->csState2) {
        case 0:
            this->csState2 = 1;
            Cutscene_StartManual(play, &play->csCtx);
            Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_57);
            this->subCamId = Play_CreateSubCamera(play);
            Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
            Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
            this->subCamDist = 800.0f;
            this->subCamYaw = M_PI;
            sKoumePtr->actor.world.rot.x = 0;
            sKoumePtr->actor.shape.rot.x = 0;
            sKotakePtr->actor.world.rot.x = 0;
            sKotakePtr->actor.shape.rot.x = 0;
            this->workf[UNK_F9] = 0.0f;
            this->workf[UNK_F10] = 0.0f;
            this->workf[UNK_F11] = 600.0f;
            SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 200);
            this->work[CS_TIMER_2] = 0;
            FALLTHROUGH;
        case 1:
            if (this->work[CS_TIMER_2] == 20) {
                Message_StartTextbox(play, 0x6059, NULL);
            }

            if (this->work[CS_TIMER_2] == 80) {
                Message_StartTextbox(play, 0x605A, NULL);
            }

            this->subCamAt.x = 0.0f;
            this->subCamAt.y = 440.0f;
            this->subCamAt.z = 0.0f;

            spB0.x = 0.0f;
            spB0.y = 0.0f;
            spB0.z = this->subCamDist;

            Matrix_RotateY(this->subCamYaw, MTXMODE_NEW);
            Matrix_MultVec3f(&spB0, &spA4);

            this->subCamEye.x = spA4.x;
            this->subCamEye.y = 300.0f;
            this->subCamEye.z = spA4.z;

            Math_ApproachF(&this->subCamYaw, 0.3f, 0.02f, 0.03f);
            Math_ApproachF(&this->subCamDist, 200.0f, 0.1f, 5.0f);
            break;

        case 2:
            spB0.x = 0.0f;
            spB0.y = 0.0f;
            spB0.z = this->subCamDist;
            Matrix_RotateY(this->subCamYaw, MTXMODE_NEW);
            Matrix_MultVec3f(&spB0, &spA4);
            this->subCamEye.x = spA4.x;
            this->subCamEye.z = spA4.z;
            Math_ApproachF(&this->subCamEye.y, 420.0f, 0.1f, this->subCamUpdateRate * 20.0f);
            Math_ApproachF(&this->subCamAt.y, 470.0f, 0.1f, this->subCamUpdateRate * 6.0f);
            Math_ApproachF(&this->subCamYaw, 0.3f, 0.02f, 0.03f);
            Math_ApproachF(&this->subCamDist, 60.0f, 0.1f, this->subCamUpdateRate * 32.0f);
            Math_ApproachF(&this->subCamUpdateRate, 1, 1, 0.1f);
            break;
    }

    if (this->subCamId != SUB_CAM_ID_DONE) {
        if (this->unk_5F9 == 0) {
            Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
        } else {
            Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt2, &this->subCamEye2);
        }
    }

    switch (this->csState1) {
        case 0:
            Actor_PlaySfx(&sKotakePtr->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
            Actor_PlaySfx(&sKoumePtr->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
            spB0.x = this->workf[UNK_F11];
            spB0.y = 400.0f;
            spB0.z = 0.0f;
            Matrix_RotateY(this->workf[UNK_F9], MTXMODE_NEW);
            Matrix_MultVec3f(&spB0, &spA4);
            sKoumePtr->actor.world.pos.x = spA4.x;
            sKoumePtr->actor.world.pos.y = spA4.y;
            sKoumePtr->actor.world.pos.z = spA4.z;
            sKoumePtr->actor.shape.rot.y = (this->workf[UNK_F9] / M_PI) * (f32)0x8000;
            sKotakePtr->actor.world.pos.x = -spA4.x;
            sKotakePtr->actor.world.pos.y = spA4.y;
            sKotakePtr->actor.world.pos.z = -spA4.z;
            sKotakePtr->actor.shape.rot.y = ((this->workf[UNK_F9] / M_PI) * (f32)0x8000) + (f32)0x8000;
            Math_ApproachF(&this->workf[UNK_F11], 0.0f, 0.1f, 7.0f);
            this->workf[UNK_F9] -= this->workf[UNK_F10];
            Math_ApproachF(&this->workf[UNK_F10], 0.5f, 1, 0.0039999997f);
            if (this->workf[UNK_F11] < 10.0f) {
                if (!this->work[PLAYED_CHRG_SFX]) {
                    Actor_PlaySfx(&sKoumePtr->actor, NA_SE_EN_TWINROBA_POWERUP);
                    this->work[PLAYED_CHRG_SFX] = true;
                }

                Math_ApproachF(&sKoumePtr->actor.scale.x, 0.005000001f, 1, 0.0003750001f);

                for (i = 0; i < 4; i++) {
                    Vec3f pos;
                    f32 yOffset;
                    f32 xScale;

                    xScale = sKoumePtr->actor.scale.x * 3000.0f;
                    yOffset = Rand_CenteredFloat(xScale * 2.0f);
                    pos.x = 3000.0f;
                    pos.y = 400.0f + yOffset;
                    pos.z = 0.0f;
                    BossTw_AddMergeFlameEffect(play, &pos, Rand_ZeroFloat(5.0f) + 10.0f,
                                               sqrtf(SQ(xScale) - SQ(yOffset)), Rand_ZeroFloat(1.99f));
                }

                if (sKoumePtr->actor.scale.x <= 0.0051f) {
                    Vec3f pos;
                    Vec3f velocity;
                    Vec3f accel;

                    this->actor.world.pos.y = 400.0f;

                    for (i = 0; i < 50; i++) {
                        pos = this->actor.world.pos;
                        velocity.x = Rand_CenteredFloat(20.0f);
                        velocity.y = Rand_CenteredFloat(20.0f);
                        velocity.z = Rand_CenteredFloat(20.0f);
                        pos.x += velocity.x;
                        pos.y += velocity.y;
                        pos.z += velocity.z;
                        accel.z = accel.y = accel.x = 0.0f;
                        BossTw_AddFlameEffect(play, &pos, &velocity, &accel, Rand_ZeroFloat(10.0f) + 25.0f,
                                              velocity.x < 0.0f);
                    }

                    this->csState1 = 1;
                    this->visible = true;
                    this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
                    this->actor.shape.rot.y = 0;
                    BossTw_SetupWait(sKotakePtr, play);
                    BossTw_SetupWait(sKoumePtr, play);
                    Actor_SetScale(&this->actor, 0.0f);
                    Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaIntroAnim, 0.0f);
                    this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaIntroAnim);
                    this->timers[0] = 50;
                    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_2);
                    Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_TRANSFORM);
                    SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_BOSS);
                }
            }

            sKotakePtr->actor.scale.x = sKotakePtr->actor.scale.y = sKotakePtr->actor.scale.z =
                sKoumePtr->actor.scale.y = sKoumePtr->actor.scale.z = sKoumePtr->actor.scale.x;
            break;

        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
                Animation_MorphToLoop(&this->skelAnime, &gTwinrovaHoverAnim, -15.0f);
            }

            sEnvType = -1;
            play->envCtx.lightSetting = 4;
            Math_ApproachF(&play->envCtx.lightBlend, 1, 1, 0.1f);
            FALLTHROUGH;
        case 2:
            SkelAnime_Update(&this->skelAnime);
            Math_ApproachF(&this->actor.scale.x, 0.0069999993f, 1, 0.0006999999f);
            this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;

            if (this->timers[0] == 1) {
                this->csState2 = 2;
                this->subCamUpdateRate = 0.0f;
                this->timers[1] = 65;
                this->timers[2] = 90;
                this->timers[3] = 50;
                player->actor.world.pos.x = 0.0f;
                player->actor.world.pos.y = 240.0f;
                player->actor.world.pos.z = 270.0f;
                player->actor.world.rot.y = player->actor.shape.rot.y = -0x8000;
                this->subCamEye2.x = 0.0f;
                this->subCamEye2.y = 290.0f;
                this->subCamEye2.z = 222.0f;
                this->subCamAt2.x = player->actor.world.pos.x;
                this->subCamAt2.y = player->actor.world.pos.y + 54.0f;
                this->subCamAt2.z = player->actor.world.pos.z;
            }

            if (this->timers[3] == 19) {
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_5);
            }

            if (this->timers[3] == 16) {
                Player_PlaySfx(player, player->ageProperties->unk_92 + NA_SE_VO_LI_SURPRISE);
            }

            if ((this->timers[3] != 0) && (this->timers[3] < 20)) {
                this->unk_5F9 = 1;
                Math_ApproachF(&this->subCamEye2.z, 242.0f, 0.2f, 100.0f);
            } else {
                this->unk_5F9 = 0;
            }

            if (this->timers[1] == 8) {
                this->work[TW_BLINK_IDX] = 8;
                Sfx_PlaySfxCentered(NA_SE_EN_TWINROBA_YOUNG_WINK);
            }
            if (this->timers[2] == 4) {
                sEnvType = 0;
                play->envCtx.prevLightSetting = 5;
            }

            if (this->timers[2] == 1) {
                Camera* mainCam = Play_GetCamera(play, CAM_ID_MAIN);

                mainCam->eye = this->subCamEye;
                mainCam->eyeNext = this->subCamEye;
                mainCam->at = this->subCamAt;
                Play_ReturnToMainCam(play, this->subCamId, 0);
                this->subCamId = SUB_CAM_ID_DONE;
                this->csState2 = this->subCamId;
                Cutscene_StopManual(play, &play->csCtx);
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
                this->work[TW_PLLR_IDX] = 0;
                this->targetPos = sTwinrovaPillarPos[0];
                BossTw_TwinrovaSetupFly(this, play);
            }
            break;
    }
}

void BossTw_SetupDeathCS(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_DeathCS;
    Animation_MorphToLoop(&this->skelAnime, &gTwinrovaKotakeKoumeIdleLoopAnim, -3.0f);
    this->unk_5F8 = 0;
    this->work[CS_TIMER_2] = Rand_ZeroFloat(20.0f);
}

void BossTw_DeathCS(BossTw* this, PlayState* play) {
    if (this->timers[0] == 0) {
        SkelAnime_Update(&this->skelAnime);
    }

    Math_ApproachS(&this->actor.shape.rot.y, this->work[YAW_TGT], 5, this->rotateSpeed);
    Math_ApproachF(&this->rotateSpeed, 20480.0f, 1.0f, 1000.0f);

    if (sTwinrovaPtr->work[CS_TIMER_2] > 140) {
        Math_ApproachF(&this->fogR, 100.0f, 1.0f, 15.0f);
        Math_ApproachF(&this->fogG, 255.0f, 1.0f, 15.0f);
        Math_ApproachF(&this->fogB, 255.0f, 1.0f, 15.0f);
        Math_ApproachF(&this->fogNear, 850.0f, 1.0f, 15.0f);
        Math_ApproachF(&this->fogFar, 1099.0f, 1.0f, 15.0f);
    }
}

void BossTw_SetupCSWait(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_CSWait;
    this->visible = false;
    this->actor.world.pos.y = -2000.0f;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
}

/**
 * Do nothing while waiting for the initial cutscene to start
 */
void BossTw_CSWait(BossTw* this, PlayState* play) {
}

void BossTw_TwinrovaSetupIntroCS(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_TwinrovaIntroCS;
    this->visible = false;
    this->actor.world.pos.y = -2000.0f;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
}

void BossTw_TwinrovaIntroCS(BossTw* this, PlayState* play) {
    u8 updateCam = false;
    s16 i;
    Vec3f sp90;
    Vec3f sp84;
    Player* player = GET_PLAYER(play);

    if (this->csSfxTimer > 220 && this->csSfxTimer < 630) {
        Sfx_PlaySfxCentered(NA_SE_EN_TWINROBA_UNARI - SFX_FLAG);
    }

    if (this->csSfxTimer == 180) {
        Sfx_PlaySfxAtPos(&D_8094A7D0, NA_SE_EN_TWINROBA_LAUGH);
        Sfx_PlaySfxAtPos(&D_8094A7D0, NA_SE_EN_TWINROBA_LAUGH2);
        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_KOTAKE_KOUME);
    }

    this->csSfxTimer++;

    switch (this->csState2) {
        case 0:
            this->csSfxTimer = 0;

            if (SQ(player->actor.world.pos.x) + SQ(player->actor.world.pos.z) < SQ(150.0f)) {
                player->actor.world.pos.x = player->actor.world.pos.z = .0f;
                this->csState2 = 1;
                Cutscene_StartManual(play, &play->csCtx);
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_57);
                this->subCamId = Play_CreateSubCamera(play);
                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
                this->subCamEye.x = 0.0f;
                this->subCamEye.y = 350;
                this->subCamEye.z = 200;

                this->subCamEyeNext.x = 450;
                this->subCamEyeNext.y = 900;

                this->subCamAt.x = 0;
                this->subCamAt.y = 270;
                this->subCamAt.z = 0;

                this->subCamAtNext.x = 0;
                this->subCamAtNext.y = 240;
                this->subCamAtNext.z = 140;

                this->subCamEyeNext.z = 530;
                this->subCamEyeVel.x = fabsf(this->subCamEyeNext.x - this->subCamEye.x);
                this->subCamEyeVel.y = fabsf(this->subCamEyeNext.y - this->subCamEye.y);
                this->subCamEyeVel.z = fabsf(this->subCamEyeNext.z - this->subCamEye.z);
                this->subCamAtVel.x = fabsf(this->subCamAtNext.x - this->subCamAt.x);
                this->subCamAtVel.y = fabsf(this->subCamAtNext.y - this->subCamAt.y);
                this->subCamAtVel.z = fabsf(this->subCamAtNext.z - this->subCamAt.z);

                this->subCamDistStep = 0.05f;
                this->work[CS_TIMER_1] = 0;
            }
            break;

        case 1:
            updateCam = true;

            if (this->work[CS_TIMER_1] == 30) {
                Message_StartTextbox(play, 0x6048, NULL);
            }

            Math_ApproachF(&this->subCamUpdateRate, 0.01f, 1.0f, 0.0001f);

            if (this->work[CS_TIMER_1] > 100) {
                play->envCtx.lightSetting = 0;
                Math_ApproachF(&play->envCtx.lightBlend, 1.0f, 1.0f, 0.03f);
            }

            if (this->work[CS_TIMER_1] == 180) {
                Sfx_PlaySfxCentered(NA_SE_EN_TWINROBA_APPEAR_MS);
            }

            if (this->work[CS_TIMER_1] > 180) {
                this->spawnPortalScale = 0.05f;
                Math_ApproachF(&this->spawnPortalAlpha, 255.0f, 1.0f, 5.f);

                if (this->work[CS_TIMER_1] >= 236) {
                    this->csState2 = 2;
                    sKoumePtr->visible = 1;
                    Animation_MorphToLoop(&sKoumePtr->skelAnime, &gTwinrovaKotakeKoumeIdleLoopAnim, 0.0f);
                    sKoumePtr->actor.world.pos.x = 0.0f;
                    sKoumePtr->actor.world.pos.y = 80.0f;
                    sKoumePtr->actor.world.pos.z = 600.0f;
                    sKoumePtr->actor.shape.rot.y = sKoumePtr->actor.world.rot.y = -0x8000;

                    this->subCamEye.x = -30;
                    this->subCamEye.y = 260;
                    this->subCamEye.z = 470;

                    this->subCamAt.x = 0.0F;
                    this->subCamAt.y = 270;
                    this->subCamAt.z = 600.0F;

                    this->work[CS_TIMER_1] = 0;

                    Actor_SetScale(&sKoumePtr->actor, 0.014999999f);
                }
            }
            break;

        case 2:
            SkelAnime_Update(&sKoumePtr->skelAnime);
            Math_ApproachF(&sKoumePtr->actor.world.pos.y, 240.0f, 0.05f, 5.0f);
            this->subCamEye.x -= 0.2f;
            this->subCamEye.z += 0.2f;

            if (this->work[CS_TIMER_1] > 50) {
                this->csState2 = 3;

                this->subCamEyeNext.x = -30;
                this->subCamEyeNext.y = 260;
                this->subCamEyeNext.z = 530;

                this->subCamAtNext.x = 0.0f;
                this->subCamAtNext.y = 265;
                this->subCamAtNext.z = 580;

                this->subCamEyeVel.x = fabsf(this->subCamEyeNext.x - this->subCamEye.x);
                this->subCamEyeVel.y = fabsf(this->subCamEyeNext.y - this->subCamEye.y);
                this->subCamEyeVel.z = fabsf(this->subCamEyeNext.z - this->subCamEye.z);
                this->subCamAtVel.x = fabsf(this->subCamAtNext.x - this->subCamAt.x);
                this->subCamAtVel.y = fabsf(this->subCamAtNext.y - this->subCamAt.y);
                this->subCamAtVel.z = fabsf(this->subCamAtNext.z - this->subCamAt.z);
                this->subCamUpdateRate = 0;
                this->subCamDistStep = 0.1f;
                this->work[CS_TIMER_1] = 0;
            }
            break;

        case 3:
            SkelAnime_Update(&sKoumePtr->skelAnime);
            updateCam = true;
            Math_ApproachF(&sKoumePtr->actor.world.pos.y, 240.0f, 0.05f, 5.0f);
            Math_ApproachF(&this->subCamUpdateRate, 1.0f, 1.0f, 0.02f);

            if (this->work[CS_TIMER_1] == 30) {
                Message_StartTextbox(play, 0x6049, NULL);
            }

            if (this->work[CS_TIMER_1] > 80) {
                this->csState2 = 4;
                this->actor.speed = 0;

                this->subCamEyeNext.x = -80.0f;
                this->subCamEyeNext.y = 260.0f;
                this->subCamEyeNext.z = 430.0f;

                this->subCamAtNext.x = sKoumePtr->actor.world.pos.x;
                this->subCamAtNext.y = sKoumePtr->actor.world.pos.y + 20.0f;
                this->subCamAtNext.z = sKoumePtr->actor.world.pos.z;

                this->subCamEyeVel.x = fabsf(this->subCamEyeNext.x - this->subCamEye.x);
                this->subCamEyeVel.y = fabsf(this->subCamEyeNext.y - this->subCamEye.y);
                this->subCamEyeVel.z = fabsf(this->subCamEyeNext.z - this->subCamEye.z);
                this->subCamAtVel.x = fabsf(this->subCamAtNext.x - this->subCamAt.x);
                this->subCamAtVel.y = fabsf(this->subCamAtNext.y - this->subCamAt.y);
                this->subCamAtVel.z = fabsf(this->subCamAtNext.z - this->subCamAt.z);
                this->subCamUpdateRate = 0.0f;
                this->subCamDistStep = 0.05f;
                Animation_MorphToPlayOnce(&sKoumePtr->skelAnime, &gTwinrovaKotakeKoumeIdleEndAnim, 0.0f);
                this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeIdleEndAnim);
                this->work[CS_TIMER_1] = 0;
            }
            break;

        case 4:
            updateCam = true;
            SkelAnime_Update(&sKoumePtr->skelAnime);
            this->subCamAtNext.y = 20.0f + sKoumePtr->actor.world.pos.y;
            Math_ApproachF(&sKoumePtr->actor.world.pos.y, 350, 0.1f, this->actor.speed);
            Math_ApproachF(&this->actor.speed, 9.0f, 1.0f, 0.9f);
            Math_ApproachF(&this->subCamUpdateRate, 1.0f, 1.0f, 0.02f);

            if (this->work[CS_TIMER_1] >= 30) {
                if (this->work[CS_TIMER_1] < 45) {
                    play->envCtx.prevLightSetting = 0;
                    play->envCtx.lightSetting = 2;
                    play->envCtx.lightBlend = 1.0f;
                } else {
                    Math_ApproachZeroF(&play->envCtx.lightBlend, 1.0f, 0.1f);
                }

                if (this->work[CS_TIMER_1] == 30) {
                    for (i = 0; i < 50; i++) {
                        Vec3f pos;
                        Vec3f velocity;

                        pos.x = sKoumePtr->actor.world.pos.x + Rand_CenteredFloat(50.0f);
                        pos.y = sKoumePtr->actor.world.pos.y + Rand_CenteredFloat(50.0f);
                        pos.z = sKoumePtr->actor.world.pos.z + Rand_CenteredFloat(50.0f);
                        velocity.x = Rand_CenteredFloat(20.0f);
                        velocity.y = Rand_CenteredFloat(20.0f);
                        velocity.z = Rand_CenteredFloat(20.0f);
                        BossTw_AddFlameEffect(play, &pos, &velocity, &sZeroVector, Rand_ZeroFloat(10.0f) + 25.0f, 1);
                    }

                    Actor_PlaySfx(&sKoumePtr->actor, NA_SE_EN_TWINROBA_TRANSFORM);
                    play->envCtx.lightBlend = 0;
                }

                if (this->work[CS_TIMER_1] >= 35) {
                    if (this->work[CS_TIMER_1] < 50) {
                        Math_ApproachF(&sKoumePtr->actor.scale.x,
                                       ((Math_SinS(this->work[CS_TIMER_1] * 0x4200) * 20.0f) / 10000.0f) + 0.024999999f,
                                       1.0f, 0.005f);
                    } else {
                        if (this->work[CS_TIMER_1] == 50) {
                            Animation_MorphToPlayOnce(&sKoumePtr->skelAnime, &gTwinrovaKotakeKoumeLaughAnim, -5);
                            this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeLaughAnim);
                        }

                        if (this->work[CS_TIMER_1] == 60) {
                            Actor_PlaySfx(&sKoumePtr->actor, NA_SE_EN_TWINROBA_LAUGH);
                        }

                        if (Animation_OnFrame(&sKoumePtr->skelAnime, this->workf[ANIM_SW_TGT])) {
                            Animation_MorphToLoop(&sKoumePtr->skelAnime, &gTwinrovaKotakeKoumeFlyAnim, 0.f);
                            this->workf[ANIM_SW_TGT] = 1000.0f;
                        }

                        Math_ApproachF(&sKoumePtr->actor.scale.x, 0.024999999f, 0.1f, 0.005f);
                    }

                    Actor_SetScale(&sKoumePtr->actor, sKoumePtr->actor.scale.x);
                    sKoumePtr->actor.shape.rot.y = -0x8000;
                    sKoumePtr->unk_5F8 = 1;

                    if (this->work[CS_TIMER_1] == 0x64) {
                        this->csState2 = 10;
                        this->work[CS_TIMER_1] = 0;
                        this->subCamYawStep = 0.0f;
                        sKotakePtr->visible = 1;
                        Animation_MorphToLoop(&sKotakePtr->skelAnime, &gTwinrovaKotakeKoumeIdleLoopAnim, 0.0f);
                        sKotakePtr->actor.world.pos.x = 0.0f;
                        sKotakePtr->actor.world.pos.y = 80.0f;
                        sKotakePtr->actor.world.pos.z = -600.0f;
                        sKotakePtr->actor.shape.rot.y = sKotakePtr->actor.world.rot.y = 0;
                        this->work[CS_TIMER_1] = 0;

                        this->subCamEye.x = -30.0f;
                        this->subCamEye.y = 260.0f;
                        this->subCamEye.z = -470.0f;

                        this->subCamAt.x = 0;
                        this->subCamAt.y = 270.0f;
                        this->subCamAt.z = -600.0f;
                        Actor_SetScale(&sKotakePtr->actor, 0.014999999f);
                    }
                } else {
                    sKoumePtr->actor.shape.rot.y += (s16)this->subCamYawStep;
                }
            } else {
                if ((this->work[CS_TIMER_1] % 8) == 0) {
                    Actor_PlaySfx(&sKoumePtr->actor, NA_SE_EN_TWINROBA_ROLL);
                }

                sKoumePtr->actor.shape.rot.y += (s16)this->subCamYawStep;
                Math_ApproachF(&this->subCamYawStep, 12288.0f, 1.0f, 384.0f);

                if (Animation_OnFrame(&sKoumePtr->skelAnime, this->workf[ANIM_SW_TGT])) {
                    Animation_MorphToLoop(&sKoumePtr->skelAnime, &gTwinrovaKotakeKoumeFlyAnim, 0.0f);
                    this->workf[ANIM_SW_TGT] = 1000.0f;
                }
            }
            break;

        case 10:
            SkelAnime_Update(&sKotakePtr->skelAnime);
            Math_ApproachF(&sKotakePtr->actor.world.pos.y, 240.0f, 0.05f, 5.0f);
            this->subCamEye.x -= 0.2f;
            this->subCamEye.z -= 0.2f;

            if (this->work[CS_TIMER_1] >= 0x33) {
                this->csState2 = 11;
                this->subCamEyeNext.x = -30;
                this->subCamEyeNext.y = 260;
                this->subCamEyeNext.z = -530;
                this->subCamAtNext.x = 0;
                this->subCamAtNext.y = 265;
                this->subCamAtNext.z = -580;
                this->subCamEyeVel.x = fabsf(this->subCamEyeNext.x - this->subCamEye.x);
                this->subCamEyeVel.y = fabsf(this->subCamEyeNext.y - this->subCamEye.y);
                this->subCamEyeVel.z = fabsf(this->subCamEyeNext.z - this->subCamEye.z);
                this->subCamAtVel.x = fabsf(this->subCamAtNext.x - this->subCamAt.x);
                this->subCamAtVel.y = fabsf(this->subCamAtNext.y - this->subCamAt.y);
                this->subCamAtVel.z = fabsf(this->subCamAtNext.z - this->subCamAt.z);
                this->subCamUpdateRate = 0;
                this->subCamDistStep = 0.1f;
                this->work[CS_TIMER_1] = 0;
            }
            break;

        case 11:
            SkelAnime_Update(&sKotakePtr->skelAnime);
            updateCam = true;
            Math_ApproachF(&sKotakePtr->actor.world.pos.y, 240.0f, 0.05f, 5.0f);
            Math_ApproachF(&this->subCamUpdateRate, 1.0f, 1.0f, 0.02f);

            if (this->work[CS_TIMER_1] == 30) {
                Message_StartTextbox(play, 0x604A, NULL);
            }

            if (this->work[CS_TIMER_1] > 80) {
                this->csState2 = 12;
                this->actor.speed = 0;

                this->subCamEyeNext.y = 260.0f;
                this->subCamEyeNext.x = -80.0f;
                this->subCamEyeNext.z = -430.0f;

                this->subCamAtNext.x = sKotakePtr->actor.world.pos.x;
                this->subCamAtNext.y = sKotakePtr->actor.world.pos.y + 20.0f;
                this->subCamAtNext.z = sKotakePtr->actor.world.pos.z;

                this->subCamEyeVel.x = fabsf(this->subCamEyeNext.x - this->subCamEye.x);
                this->subCamEyeVel.y = fabsf(this->subCamEyeNext.y - this->subCamEye.y);
                this->subCamEyeVel.z = fabsf(this->subCamEyeNext.z - this->subCamEye.z);
                this->subCamAtVel.x = fabsf(this->subCamAtNext.x - this->subCamAt.x);
                this->subCamAtVel.y = fabsf(this->subCamAtNext.y - this->subCamAt.y);
                this->subCamAtVel.z = fabsf(this->subCamAtNext.z - this->subCamAt.z);
                this->subCamUpdateRate = 0;
                this->subCamDistStep = 0.05f;
                Animation_MorphToPlayOnce(&sKotakePtr->skelAnime, &gTwinrovaKotakeKoumeIdleEndAnim, 0);
                this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeIdleEndAnim);
                this->work[CS_TIMER_1] = 0;
            }
            break;

        case 12:
            updateCam = true;
            SkelAnime_Update(&sKotakePtr->skelAnime);
            this->subCamAtNext.y = sKotakePtr->actor.world.pos.y + 20.0f;
            Math_ApproachF(&sKotakePtr->actor.world.pos.y, 350, 0.1f, this->actor.speed);
            Math_ApproachF(&this->actor.speed, 9.0f, 1.0f, 0.9f);
            Math_ApproachF(&this->subCamUpdateRate, 1.0f, 1.0f, 0.02f);

            if (this->work[CS_TIMER_1] >= 30) {
                if (this->work[CS_TIMER_1] < 45) {
                    play->envCtx.lightSetting = 3;
                    play->envCtx.lightBlend = 1.0f;
                } else {
                    Math_ApproachZeroF(&play->envCtx.lightBlend, 1.0f, 0.1f);
                }

                if (this->work[CS_TIMER_1] == 30) {
                    for (i = 0; i < 50; i++) {
                        Vec3f pos;
                        Vec3f velocity;
                        pos.x = sKotakePtr->actor.world.pos.x + Rand_CenteredFloat(50.0f);
                        pos.y = sKotakePtr->actor.world.pos.y + Rand_CenteredFloat(50.0f);
                        pos.z = sKotakePtr->actor.world.pos.z + Rand_CenteredFloat(50.0f);
                        velocity.x = Rand_CenteredFloat(20.0f);
                        velocity.y = Rand_CenteredFloat(20.0f);
                        velocity.z = Rand_CenteredFloat(20.0f);
                        BossTw_AddFlameEffect(play, &pos, &velocity, &sZeroVector, Rand_ZeroFloat(10.f) + 25.0f, 0);
                    }

                    Actor_PlaySfx(&sKotakePtr->actor, NA_SE_EN_TWINROBA_TRANSFORM);
                    play->envCtx.lightBlend = 0.0f;
                }

                if (this->work[CS_TIMER_1] >= 35) {
                    if (this->work[CS_TIMER_1] < 50) {
                        Math_ApproachF(&sKotakePtr->actor.scale.x,
                                       ((Math_SinS(this->work[CS_TIMER_1] * 0x4200) * 20.0f) / 10000.0f) + 0.024999999f,
                                       1.0f, 0.005f);
                    } else {
                        if (this->work[CS_TIMER_1] == 50) {
                            Animation_MorphToPlayOnce(&sKotakePtr->skelAnime, &gTwinrovaKotakeKoumeLaughAnim, -5.0f);
                            this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaKotakeKoumeLaughAnim);
                        }

                        if (this->work[CS_TIMER_1] == 60) {
                            Actor_PlaySfx(&sKotakePtr->actor, NA_SE_EN_TWINROBA_LAUGH2);
                        }

                        if (Animation_OnFrame(&sKotakePtr->skelAnime, this->workf[ANIM_SW_TGT])) {
                            Animation_MorphToLoop(&sKotakePtr->skelAnime, &gTwinrovaKotakeKoumeFlyAnim, 0.0f);
                            this->workf[ANIM_SW_TGT] = 1000.0f;
                        }

                        Math_ApproachF(&sKotakePtr->actor.scale.x, 0.024999999f, 0.1f, 0.005f);
                    }

                    Actor_SetScale(&sKotakePtr->actor, sKotakePtr->actor.scale.x);
                    sKotakePtr->actor.shape.rot.y = 0;
                    sKotakePtr->unk_5F8 = 1;

                    if (this->work[CS_TIMER_1] == 100) {
                        this->csState2 = 20;
                        this->work[CS_TIMER_1] = 0;

                        this->workf[UNK_F11] = 600.0f;

                        this->subCamEye.x = 800.0f;
                        this->subCamEye.y = 300.0f;
                        this->subCamEye.z = 0;

                        this->subCamAt.x = 0.0f;
                        this->subCamAt.y = 400.0f;
                        this->subCamAt.z = 0;

                        this->workf[UNK_F9] = -M_PI / 2.0f;
                        this->workf[UNK_F10] = 0.0f;

                        this->subCamEyeVel.x = 0.0f;
                        this->spawnPortalAlpha = 0.0f;
                    }
                } else {
                    sKotakePtr->actor.shape.rot.y += (s16)this->subCamYawStep;
                }
            } else {
                if ((this->work[CS_TIMER_1] % 8) == 0) {
                    Actor_PlaySfx(&sKotakePtr->actor, NA_SE_EN_TWINROBA_ROLL);
                }

                sKotakePtr->actor.shape.rot.y += (s16)this->subCamYawStep;
                Math_ApproachF(&this->subCamYawStep, 12288.0f, 1.0f, 384.0f);

                if (Animation_OnFrame(&sKotakePtr->skelAnime, this->workf[ANIM_SW_TGT])) {
                    Animation_MorphToLoop(&sKotakePtr->skelAnime, &gTwinrovaKotakeKoumeFlyAnim, 0.0f);
                    this->workf[ANIM_SW_TGT] = 1000.0f;
                }
            }
            break;

        case 20:
            if (this->work[CS_TIMER_1] > 20 && this->work[CS_TIMER_1] < 120) {
                play->envCtx.lightSetting = 1;
                Math_ApproachF(&play->envCtx.lightBlend, 1.0f, 1.0f, 0.015f);
            }

            if (this->work[CS_TIMER_1] == 90) {
                SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 90);
            }

            if (this->work[CS_TIMER_1] == 120) {
                sEnvType = 0;
                play->envCtx.prevLightSetting = 1;
                play->envCtx.lightSetting = 1;
                play->envCtx.lightBlend = 0.0f;
                TitleCard_InitBossName(play, &play->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(gTwinrovaTitleCardTex), 160,
                                       180, 128, 40);
                SET_EVENTCHKINF(EVENTCHKINF_BEGAN_TWINROVA_BATTLE);
                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_BOSS);
            }

            if (this->work[CS_TIMER_1] >= 160) {
                if (this->work[CS_TIMER_1] == 160) {
                    this->subCamEyeVel.x = 0.0f;
                }
                Math_ApproachF(&this->subCamEye.x, 0.0f, 0.05f, this->subCamEyeVel.x * 0.5f);
                Math_ApproachF(&this->subCamEye.z, 1000.0f, 0.05f, this->subCamEyeVel.x);
                Math_ApproachF(&this->subCamEyeVel.x, 40.0f, 1.0f, 1);
            } else {
                Math_ApproachF(&this->subCamEye.x, 300.0f, 0.05f, this->subCamEyeVel.x);
                Math_ApproachF(&this->subCamEyeVel.x, 5.0f, 1.0f, 0.5f);
            }

            if (this->work[CS_TIMER_1] < 200) {
                Actor_PlaySfx(&sKoumePtr->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
                Actor_PlaySfx(&sKotakePtr->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
                sp90.x = this->workf[UNK_F11];
                sp90.y = 400.0f;
                sp90.z = 0.0f;
                Matrix_RotateY(this->workf[UNK_F9], MTXMODE_NEW);
                Matrix_MultVec3f(&sp90, &sp84);
                sKoumePtr->actor.world.pos.x = sp84.x;
                sKoumePtr->actor.world.pos.y = sp84.y;
                sKoumePtr->actor.world.pos.z = sp84.z;
                sKoumePtr->actor.world.rot.y = sKoumePtr->actor.shape.rot.y =
                    (this->workf[UNK_F9] / M_PI) * (f32)0x8000;
                sKotakePtr->actor.world.pos.x = -sp84.x;
                sKotakePtr->actor.world.pos.y = sp84.y;
                sKotakePtr->actor.world.pos.z = -sp84.z;
                sKotakePtr->actor.shape.rot.y = sKotakePtr->actor.world.rot.y =
                    ((this->workf[UNK_F9] / M_PI) * (f32)0x8000) + (f32)0x8000;
                Math_ApproachF(&this->workf[UNK_F11], 80.0f, 0.1f, 5.0f);
                this->workf[UNK_F9] -= this->workf[UNK_F10];
                Math_ApproachF(&this->workf[UNK_F10], 0.19999999f, 1.0f, 0.0019999994f);
            }

            if (this->work[CS_TIMER_1] == 200) {
                sKoumePtr->actionFunc = BossTw_FlyTo;
                sKotakePtr->actionFunc = BossTw_FlyTo;
                sKoumePtr->targetPos.x = 600.0f;
                sKoumePtr->targetPos.y = 400.0f;
                sKoumePtr->targetPos.z = 0.0f;
                sKoumePtr->timers[0] = 100;
                sKotakePtr->targetPos.x = -600.0f;
                sKotakePtr->targetPos.y = 400.0f;
                sKotakePtr->targetPos.z = 0.0f;
                sKotakePtr->timers[0] = 100;
            }

            if (this->work[CS_TIMER_1] == 260) {
                Camera* mainCam = Play_GetCamera(play, CAM_ID_MAIN);

                mainCam->eye = this->subCamEye;
                mainCam->eyeNext = this->subCamEye;
                mainCam->at = this->subCamAt;
                Play_ReturnToMainCam(play, this->subCamId, 0);
                this->subCamId = SUB_CAM_ID_DONE;
                this->csState2 = this->subCamId;
                Cutscene_StopManual(play, &play->csCtx);
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
                BossTw_SetupWait(this, play);
            }
            break;
    }

    if (this->subCamId != SUB_CAM_ID_DONE) {
        if (updateCam) {
            Math_ApproachF(&this->subCamEye.x, this->subCamEyeNext.x, this->subCamDistStep,
                           this->subCamEyeVel.x * this->subCamUpdateRate);
            Math_ApproachF(&this->subCamEye.y, this->subCamEyeNext.y, this->subCamDistStep,
                           this->subCamEyeVel.y * this->subCamUpdateRate);
            Math_ApproachF(&this->subCamEye.z, this->subCamEyeNext.z, this->subCamDistStep,
                           this->subCamEyeVel.z * this->subCamUpdateRate);
            Math_ApproachF(&this->subCamAt.x, this->subCamAtNext.x, this->subCamDistStep,
                           this->subCamAtVel.x * this->subCamUpdateRate);
            Math_ApproachF(&this->subCamAt.y, this->subCamAtNext.y, this->subCamDistStep,
                           this->subCamAtVel.y * this->subCamUpdateRate);
            Math_ApproachF(&this->subCamAt.z, this->subCamAtNext.z, this->subCamDistStep,
                           this->subCamAtVel.z * this->subCamUpdateRate);
        }

        Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
    }
}

void BossTw_DeathBall(BossTw* this, PlayState* play) {
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    s32 pad;
    s16 i;
    s16 yaw;

    if ((this->work[CS_TIMER_1] % 16) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_FB_FLY);
    }

    if (sTwinrovaPtr->csState2 < 2) {
        if (this->timers[0] == 0) {
            this->timers[0] = 20;
            this->targetPos.x = Rand_CenteredFloat(100.0f) + sTwinrovaPtr->actor.world.pos.x;
            this->targetPos.y = Rand_CenteredFloat(50.0f) + 400.0f;
            this->targetPos.z = Rand_CenteredFloat(100.0f) + sTwinrovaPtr->actor.world.pos.z;
        }

        this->timers[1] = 10;
        this->rotateSpeed = 8192.0f;
        this->actor.speed = 5.0f;
    } else {
        if (this->timers[1] == 9) {
            this->targetPos.y = 413.0f;
            this->actor.world.pos.z = 0.0f;
            this->actor.world.pos.x = 0.0f;
            for (i = 0; i < ARRAY_COUNT(this->blastTailPos); i++) {
                this->blastTailPos[i] = this->actor.world.pos;
            }
        }

        if (this->actor.params == TW_DEATHBALL_KOUME) {
            this->targetPos.x = sKoumePtr->actor.world.pos.x;
            this->targetPos.z = sKoumePtr->actor.world.pos.z;
        } else {
            this->targetPos.x = sKotakePtr->actor.world.pos.x;
            this->targetPos.z = sKotakePtr->actor.world.pos.z;
        }

        Math_ApproachF(&this->targetPos.y, 263.0f, 1.0f, 2.0f);

        if (this->targetPos.y == 263.0f) {
            Math_ApproachF(&this->actor.speed, 0.0f, 1.0f, 0.2f);
            if (sTwinrovaPtr->csState2 == 3) {
                Actor_Kill(&this->actor);
            }
        }
    }

    xDiff = this->targetPos.x - this->actor.world.pos.x;
    yDiff = this->targetPos.y - this->actor.world.pos.y;
    zDiff = this->targetPos.z - this->actor.world.pos.z;

    yaw = RAD_TO_BINANG(Math_FAtan2F(xDiff, zDiff));
    Math_ApproachS(&this->actor.world.rot.x, RAD_TO_BINANG(Math_FAtan2F(yDiff, sqrtf(SQ(xDiff) + SQ(zDiff)))), 5,
                   this->rotateSpeed);
    Math_ApproachS(&this->actor.world.rot.y, yaw, 5, this->rotateSpeed);
    Actor_UpdateVelocityXYZ(&this->actor);
    Actor_UpdatePos(&this->actor);
}

void BossTw_TwinrovaSetupDeathCS(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_TwinrovaDeathCS;
    Animation_MorphToLoop(&this->skelAnime, &gTwinrovaDamageAnim, -3.0f);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->csState2 = this->csState1 = 0;
    this->work[CS_TIMER_1] = this->work[CS_TIMER_2] = 0;
    this->work[INVINC_TIMER] = 10000;
    BossTw_SetupDeathCS(sKoumePtr, play);
    BossTw_SetupDeathCS(sKotakePtr, play);
    sKotakePtr->timers[0] = 8;
    this->workf[UNK_F19] = 1.0f;
}

void BossTw_DeathCSMsgSfx(BossTw* this, PlayState* play) {
    s32 pad;
    s32 pad2;
    s32 pad3;
    s16 msgId2;
    s16 msgId1;
    u8 kotakeAnim;
    u8 koumeAnim;
    u8 sp35;

    msgId2 = 0;
    msgId1 = 0;
    kotakeAnim = 0;
    koumeAnim = 0;
    sp35 = 0;

    if (this->work[CS_TIMER_2] == 80) {
        koumeAnim = 1;
    }

    if (this->work[CS_TIMER_2] == 80) {
        msgId2 = 0x604B;
        sp35 = 50;
    }

    if (this->work[CS_TIMER_2] == 140) {
        kotakeAnim = koumeAnim = 2;
    }

    if (this->work[CS_TIMER_2] == 170) {
        kotakeAnim = 3;
        sKotakePtr->work[YAW_TGT] = -0x4000;
        sKotakePtr->rotateSpeed = 0.0f;
        Actor_PlaySfx(&sKotakePtr->actor, NA_SE_EN_TWINROBA_SENSE);
        msgId2 = 0x604C;
    }

    if (this->work[CS_TIMER_2] == 210) {
        D_8094C874 = 30;
    }

    if (this->work[CS_TIMER_2] == 270) {
        koumeAnim = 3;
        sKoumePtr->work[YAW_TGT] = 0x4000;
        sKoumePtr->rotateSpeed = 0.0f;
        Actor_PlaySfx(&sKoumePtr->actor, NA_SE_EN_TWINROBA_SENSE);
    }

    if (this->work[CS_TIMER_2] == 290) {
        msgId2 = 0x604D;
        sp35 = 35;
    }

    if (this->work[CS_TIMER_2] == 350) {
        koumeAnim = kotakeAnim = 2;
        sKoumePtr->work[YAW_TGT] = sKotakePtr->work[YAW_TGT] = 0;
        sKoumePtr->rotateSpeed = sKotakePtr->rotateSpeed = 0.0f;
    }

    if (this->work[CS_TIMER_2] == 380) {
        koumeAnim = kotakeAnim = 3;
    }

    if (this->work[CS_TIMER_2] == 400) {
        koumeAnim = kotakeAnim = 2;
    }

    if (this->work[CS_TIMER_2] == 430) {
        koumeAnim = 4;
        D_8094C874 = 435;
        D_8094C878 = 1;
    }

    if (this->work[CS_TIMER_2] > 440 && this->work[CS_TIMER_2] < 860) {
        Sfx_PlaySfxCentered(NA_SE_EN_TWINROBA_FIGHT - SFX_FLAG);
    }

    if (this->work[CS_TIMER_2] == 430) {
        msgId2 = 0x604E;
    }

    if (this->work[CS_TIMER_2] == 480) {
        kotakeAnim = 4;
        sKotakePtr->work[YAW_TGT] = -0x4000;
    }

    if (this->work[CS_TIMER_2] == 500) {
        koumeAnim = 2;
    }

    if (this->work[CS_TIMER_2] == 480) {
        msgId1 = 0x604F;
    }

    if (this->work[CS_TIMER_2] == 530) {
        koumeAnim = 4;
        sKoumePtr->work[YAW_TGT] = 0x4000;
        D_8094C87A = 335;
        D_8094C87E = 1;
    }

    if (this->work[CS_TIMER_2] == 530) {
        msgId2 = 0x6050;
    }

    if (this->work[CS_TIMER_2] == 580) {
        msgId1 = 0x6051;
    }

    if (this->work[CS_TIMER_2] == 620) {
        msgId2 = 0x6052;
    }

    if (this->work[CS_TIMER_2] == 660) {
        msgId1 = 0x6053;
    }

    if (this->work[CS_TIMER_2] == 700) {
        msgId2 = 0x6054;
    }

    if (this->work[CS_TIMER_2] == 740) {
        msgId1 = 0x6055;
    }

    if (this->work[CS_TIMER_2] == 780) {
        msgId2 = 0x6056;
    }

    if (this->work[CS_TIMER_2] == 820) {
        msgId1 = 0x6057;
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 80);
    }

    if (this->work[CS_TIMER_2] == 860) {
        koumeAnim = kotakeAnim = 3;
    }

    if (this->work[CS_TIMER_2] == 900) {
        Actor_PlaySfx(&sKoumePtr->actor, NA_SE_EN_TWINROBA_DIE);
        Actor_PlaySfx(&sKotakePtr->actor, NA_SE_EN_TWINROBA_DIE);
    }

    if (this->work[CS_TIMER_2] == 930) {
        msgId2 = 0x6058;
    }

    if (msgId2 != 0) {
        Message_StartTextbox(play, msgId2, NULL);

        if (sp35) {
            D_8094C876 = 10;
            D_8094C874 = sp35;
            D_8094C878 = 0;
        }
    }

    if (msgId1 != 0) {
        Message_StartTextbox(play, msgId1, NULL);
    }

    switch (kotakeAnim) {
        case 1:
            Animation_MorphToLoop(&sKotakePtr->skelAnime, &gTwinrovaKotakeKoumeShakeHandAnim, -5.0f);
            break;
        case 2:
            Animation_MorphToLoop(&sKotakePtr->skelAnime, &gTwinrovaKotakeKoumeFloatLookForwardAnim, -5.0f);
            break;
        case 3:
            Animation_MorphToLoop(&sKotakePtr->skelAnime, &gTwinrovaKotakeKoumeFloatLookUpAnim, -5.0f);
            break;
        case 4:
            Animation_MorphToLoop(&sKotakePtr->skelAnime, &gTwinrovaKotakeKoumeBickerAnim, -5.0f);
            break;
    }

    switch (koumeAnim) {
        case 1:
            Animation_MorphToLoop(&sKoumePtr->skelAnime, &gTwinrovaKotakeKoumeShakeHandAnim, -5.0f);
            break;
        case 2:
            Animation_MorphToLoop(&sKoumePtr->skelAnime, &gTwinrovaKotakeKoumeFloatLookForwardAnim, -5.0f);
            break;
        case 3:
            Animation_MorphToLoop(&sKoumePtr->skelAnime, &gTwinrovaKotakeKoumeFloatLookUpAnim, -5.0f);
            break;
        case 4:
            Animation_MorphToLoop(&sKoumePtr->skelAnime, &gTwinrovaKotakeKoumeBickerAnim, -5.0f);
            break;
    }

    if (this->work[CS_TIMER_2] >= 120 && this->work[CS_TIMER_2] < 500) {
        Math_ApproachF(&this->workf[UNK_F18], 255.0f, 0.1f, 5.0f);
    }

    if (this->work[CS_TIMER_2] >= 150) {
        Math_ApproachF(&sKoumePtr->workf[UNK_F17], (Math_SinS(this->work[CS_TIMER_1] * 2000) * 0.05f) + 0.4f, 0.1f,
                       0.01f);
        Math_ApproachF(&sKotakePtr->workf[UNK_F17], (Math_CosS(this->work[CS_TIMER_1] * 1700) * 0.05f) + 0.4f, 0.1f,
                       0.01f);

        if (this->work[CS_TIMER_2] >= 880) {
            Math_ApproachF(&sKotakePtr->actor.world.pos.y, 2000.0f, 1.0f, this->actor.speed);
            Math_ApproachF(&sKoumePtr->actor.world.pos.y, 2000.0f, 1.0f, this->actor.speed);
            Math_ApproachF(&this->actor.speed, 10.0f, 1.0f, 0.25f);

            if (this->work[CS_TIMER_2] >= 930) {
                Math_ApproachF(&this->workf[UNK_F19], 5.0f, 1.0f, 0.05f);
                Math_ApproachF(&this->workf[UNK_F18], 0.0f, 1.0f, 3.0f);
            }

            Actor_PlaySfx(&this->actor, NA_SE_EV_GOTO_HEAVEN - SFX_FLAG);
        } else {
            f32 yTarget = Math_CosS(this->work[CS_TIMER_2] * 1700) * 4.0f;
            Math_ApproachF(&sKotakePtr->actor.world.pos.y, 20.0f + (263.0f + yTarget), 0.1f, this->actor.speed);
            yTarget = Math_SinS(this->work[CS_TIMER_2] * 1500) * 4.0f;
            Math_ApproachF(&sKoumePtr->actor.world.pos.y, 20.0f + (263.0f + yTarget), 0.1f, this->actor.speed);
            Math_ApproachF(&this->actor.speed, 1.0f, 1.0f, 0.05f);
        }
    }
}

void BossTw_TwinrovaDeathCS(BossTw* this, PlayState* play) {
    s16 i;
    Vec3f spD0;
    Player* player = GET_PLAYER(play);
    Camera* mainCam = Play_GetCamera(play, CAM_ID_MAIN);

    SkelAnime_Update(&this->skelAnime);
    this->work[UNK_S8] += 20;

    if (this->work[UNK_S8] > 255) {
        this->work[UNK_S8] = 255;
    }

    Math_ApproachF(&this->workf[UNK_F12], 0.0f, 1.0f, 0.05f);
    this->unk_5F8 = 1;

    switch (this->csState1) {
        case 0:
            if (this->work[CS_TIMER_1] == 15) {
                Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaDeathAnim, -3.0f);
            }

            if (this->work[CS_TIMER_1] >= 15) {
                Math_ApproachF(&this->actor.world.pos.y, 400.0f, 0.05f, 10.0f);
            }

            if (this->work[CS_TIMER_1] >= 55) {
                if (this->work[CS_TIMER_1] == 55) {
                    play->envCtx.lightBlend = 0;
                }

                sEnvType = -1;
                play->envCtx.prevLightSetting = 5;
                play->envCtx.lightSetting = 0;
                Math_ApproachF(&play->envCtx.lightBlend, 1.0f, 1.0f, 0.015f);
                Math_ApproachF(&this->actor.scale.x, 0.00024999998f, 0.1f, 0.00005f);
                this->actor.shape.rot.y += (s16)this->actor.speed;
                this->workf[UNK_F13] += this->actor.speed;
                if (this->workf[UNK_F13] > 65536.0f) {
                    this->workf[UNK_F13] -= 65536.0f;
                    Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_ROLL);
                }
                Math_ApproachF(&this->actor.speed, 12288.0f, 1.0f, 256.0f);
                if (this->work[CS_TIMER_1] == 135) {
                    Vec3f spBC;
                    Vec3f spB0;
                    Vec3f spA4 = { 0.0f, 0.0f, 0.0f };
                    Sfx_PlaySfxCentered(NA_SE_EN_TWINROBA_TRANSFORM);
                    for (i = 0; i < 100; i++) {
                        spB0.x = Rand_CenteredFloat(5.0f);
                        spB0.y = Rand_CenteredFloat(5.0f);
                        spB0.z = Rand_CenteredFloat(5.0f);
                        spBC = this->actor.world.pos;
                        spBC.x += spB0.x;
                        spBC.y += spB0.y;
                        spBC.z += spB0.z;
                        BossTw_AddFlameEffect(play, &spBC, &spB0, &spA4, Rand_ZeroFloat(2.0f) + 5,
                                              Rand_ZeroFloat(1.99f));
                    }
                    this->csState1 = 1;
                    this->visible = false;
                    this->actor.scale.x = 0.0f;
                    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_BOSS_TW, this->actor.world.pos.x,
                                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, TW_DEATHBALL_KOUME);
                    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_BOSS_TW, this->actor.world.pos.x,
                                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, TW_DEATHBALL_KOTAKE);
                    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                }
            }
            Actor_SetScale(&this->actor, this->actor.scale.x);
            break;
        case 1:
            break;
    }

    switch (this->csState2) {
        case 0:
            this->csState2 = 1;
            Cutscene_StartManual(play, &play->csCtx);
            Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_8);
            this->subCamId = Play_CreateSubCamera(play);
            Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
            Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
            this->subCamEye = mainCam->eye;
            this->subCamAt = mainCam->at;
            SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 1);
            break;
        case 1:
            spD0.x = Math_SinS(this->actor.world.rot.y) * 200.0f;
            spD0.z = Math_CosS(this->actor.world.rot.y) * 200.0f;
            Math_ApproachF(&this->subCamEye.x, spD0.x + this->actor.world.pos.x, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamEye.y, 300.0f, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamEye.z, spD0.z + this->actor.world.pos.z, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamAt.x, this->actor.world.pos.x, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamAt.y, this->actor.world.pos.y, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamAt.z, this->actor.world.pos.z, 0.1f, 50.0f);
            if (this->work[CS_TIMER_1] == 170) {
                this->csState2 = 2;
                this->work[CS_TIMER_2] = 0;
                this->subCamEye.z = 170.0f;
                this->subCamDist = 170.0f;
                this->subCamEye.x = 0.0f;
                this->subCamAt.x = 0.0f;
                this->subCamAt.z = 0.0f;
                this->subCamEye.y = 260.0f;
                player->actor.shape.rot.y = -0x8000;
                player->actor.world.pos.x = -40.0f;
                player->actor.world.pos.y = 240.0f;
                player->actor.world.pos.z = 90.0f;
                sKoumePtr->actor.world.pos.x = -37.0f;
                sKotakePtr->actor.world.pos.x = 37.0f;
                sKotakePtr->actor.world.pos.y = 263.0f;
                sKoumePtr->actor.world.pos.y = sKotakePtr->actor.world.pos.y;
                this->subCamAt.y = sKoumePtr->actor.world.pos.y + 17.0f;
                sKotakePtr->actor.world.pos.z = 0.0f;
                sKoumePtr->actor.world.pos.z = sKotakePtr->actor.world.pos.z;
                sKoumePtr->work[YAW_TGT] = sKotakePtr->work[YAW_TGT] = sKoumePtr->actor.shape.rot.x =
                    sKotakePtr->actor.shape.rot.x = sKoumePtr->actor.shape.rot.y = sKotakePtr->actor.shape.rot.y = 0;
                Player_SetCsActionWithHaltedActors(play, &sKoumePtr->actor, PLAYER_CSACTION_1);
                sKoumePtr->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            }
            break;
        case 2:
            if (this->work[CS_TIMER_2] == 100) {
                Vec3f pos;
                Vec3f velocity;
                Vec3f accel = { 0.0f, 0.0f, 0.0f };
                s32 zero = 0;

                for (i = 0; i < 50; i++) {
                    velocity.x = Rand_CenteredFloat(3.0f);
                    velocity.y = Rand_CenteredFloat(3.0f);
                    velocity.z = Rand_CenteredFloat(3.0f);
                    pos = sKoumePtr->actor.world.pos;
                    pos.x += velocity.x * 2.0f;
                    pos.y += velocity.y * 2.0f;
                    pos.z += velocity.z * 2.0f;
                    BossTw_AddFlameEffect(play, &pos, &velocity, &accel, Rand_ZeroFloat(2.0f) + 5, 1);

                    // fake code needed to match, tricks the compiler into allocating more stack
                    if (1) {}
                    if (zero) {
                        accel.x *= 2.0;
                    }

                    velocity.x = Rand_CenteredFloat(3.0f);
                    velocity.y = Rand_CenteredFloat(3.0f);
                    velocity.z = Rand_CenteredFloat(3.0f);
                    pos = sKotakePtr->actor.world.pos;
                    pos.x += velocity.x * 2.0f;
                    pos.y += velocity.y * 2.0f;
                    pos.z += velocity.z * 2.0f;
                    BossTw_AddFlameEffect(play, &pos, &velocity, &accel, Rand_ZeroFloat(2.0f) + 5, 0);
                }

                Actor_SetScale(&sKoumePtr->actor, 0.0f);
                Actor_SetScale(&sKotakePtr->actor, 0.0f);
                sKoumePtr->visible = 1;
                sKotakePtr->visible = 1;
                Sfx_PlaySfxCentered(NA_SE_EN_TWINROBA_TRANSFORM);
                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_KOTAKE_KOUME);
                this->csState2 = 3;
                this->work[CS_TIMER_2] = 0;
                this->subCamYaw = this->subCamYawStep = this->actor.speed = this->subCamDistStep = 0.0f;
            }
            break;
        case 3:
            BossTw_DeathCSMsgSfx(this, play);
            if (this->work[CS_TIMER_2] < 150) {
                play->envCtx.prevLightSetting = 1;
                play->envCtx.lightSetting = 0;
                Math_ApproachZeroF(&play->envCtx.lightBlend, 1.0f, 0.1f);
            } else {
                play->envCtx.prevLightSetting = 1;
                play->envCtx.lightSetting = 6;
                Math_ApproachF(&play->envCtx.lightBlend, (Math_SinS(this->work[CS_TIMER_2] * 4096) / 4.0f) + 0.75f,
                               1.0f, 0.1f);
            }

            Math_ApproachF(&this->subCamAt.y, sKoumePtr->actor.world.pos.y + 17.0f, 0.05f, 10.0f);

            if (this->work[CS_TIMER_2] >= 50) {
                Math_ApproachF(&this->subCamDist, 110.0f, 0.05f, this->subCamDistStep);
                Math_ApproachF(&this->subCamDistStep, 1.0f, 1.0f, 0.025f);
                this->subCamEye.x = this->subCamDist * sinf(this->subCamYaw);
                this->subCamEye.z = this->subCamDist * cosf(this->subCamYaw);
                if (this->work[CS_TIMER_2] >= 151) {
                    this->subCamYaw += this->subCamYawStep;
                    if (this->work[CS_TIMER_2] >= 800) {
                        Math_ApproachF(&this->subCamYawStep, 0.0f, 1.0f, 0.0001f);
                    } else {
                        Math_ApproachF(&this->subCamYawStep, 0.015f, 1.0f, 0.0001f);
                    }
                }
            }
            Math_ApproachF(&sKoumePtr->actor.scale.x, 0.009999999f, 0.1f, 0.001f);
            Actor_SetScale(&sKoumePtr->actor, sKoumePtr->actor.scale.x);
            Actor_SetScale(&sKotakePtr->actor, sKoumePtr->actor.scale.x);
            if (this->work[CS_TIMER_2] >= 1020) {
                mainCam = Play_GetCamera(play, CAM_ID_MAIN);
                mainCam->eye = this->subCamEye;
                mainCam->eyeNext = this->subCamEye;
                mainCam->at = this->subCamAt;
                Play_ReturnToMainCam(play, this->subCamId, 0);
                this->csState2 = 4;
                this->subCamId = SUB_CAM_ID_DONE;
                Cutscene_StopManual(play, &play->csCtx);
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_BOSS_CLEAR);
                Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_WARP1, 600.0f, 230.0f, 0.0f, 0, 0, 0,
                                   WARP_DUNGEON_ADULT);
                Actor_Spawn(&play->actorCtx, play, ACTOR_ITEM_B_HEART, -600.0f, 230.f, 0.0f, 0, 0, 0, 0);
                this->actor.world.pos.y = -2000.0f;
                this->workf[UNK_F18] = 0.0f;
                sKoumePtr->visible = sKotakePtr->visible = false;
                if (&this->subCamEye) {} // fixes regalloc, may be fake
                Flags_SetClear(play, play->roomCtx.curRoom.num);
            }
            break;
        case 4:
            sEnvType = 0;
            break;
    }

    if (this->subCamId != SUB_CAM_ID_DONE) {
        if (1) {}
        Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
    }
}

static s16 D_8094A900[] = {
    0, 1, 2, 2, 1,
};

static s16 D_8094A90C[] = {
    0, 1, 2, 2, 2, 2, 2, 2, 1,
};

void BossTw_Update(Actor* thisx, PlayState* play) {
    BossTw* this = (BossTw*)thisx;
    Player* player = GET_PLAYER(play);
    s16 i;
    s32 pad;

    this->collider.base.colMaterial = COL_MATERIAL_HIT3;
    Math_ApproachF(&this->fogR, play->lightCtx.fogColor[0], 1.0f, 10.0f);
    Math_ApproachF(&this->fogG, play->lightCtx.fogColor[1], 1.0f, 10.0f);
    Math_ApproachF(&this->fogB, play->lightCtx.fogColor[2], 1.0f, 10.0f);
    Math_ApproachF(&this->fogNear, play->lightCtx.fogNear, 1.0f, 10.0f);
    Math_ApproachF(&this->fogFar, 1000.0f, 1.0f, 10.0f);
    this->work[CS_TIMER_1]++;
    this->work[CS_TIMER_2]++;
    this->work[TAIL_IDX]++;

    if (this->work[TAIL_IDX] >= ARRAY_COUNT(this->blastTailPos)) {
        this->work[TAIL_IDX] = 0;
    }

    this->blastTailPos[this->work[TAIL_IDX]] = this->actor.world.pos;

    for (i = 0; i < 5; i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }

    if (this->work[INVINC_TIMER] != 0) {
        this->work[INVINC_TIMER]--;
    }

    if (this->work[FOG_TIMER] != 0) {
        this->work[FOG_TIMER]--;
    }

    if (this->actionFunc == BossTw_FlyTo || this->actionFunc == BossTw_Spin ||
        this->actionFunc == BossTw_TurnToPlayer) {
        if ((s16)(player->actor.shape.rot.y - this->actor.yawTowardsPlayer + 0x8000) < 0x1000 &&
            (s16)(player->actor.shape.rot.y - this->actor.yawTowardsPlayer + 0x8000) > -0x1000 && player->unk_A73) {
            BossTw_SetupSpin(this, play);
        }
    }

    this->actionFunc(this, play);

    if (this->actionFunc == BossTw_Wait) {
        return;
    }

    this->collider.dim.radius = 45;

    if (this->actionFunc == BossTw_Spin) {
        this->collider.dim.radius *= 2;
    }

    this->collider.dim.height = 120;
    this->collider.dim.yShift = -30;

    if (this->work[INVINC_TIMER] == 0) {
        if (this->collider.base.acFlags & AC_HIT) {
            this->collider.base.acFlags &= ~AC_HIT;
        }

        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }

    if (this->actor.params == TW_KOTAKE) {
        this->workf[OUTR_CRWN_TX_X2] += 1.0f;
        this->workf[OUTR_CRWN_TX_Y2] -= 7.0f;
        this->workf[INNR_CRWN_TX_Y1] += 1.0f;
    } else {
        this->workf[OUTR_CRWN_TX_X2] += 0.0f;
        this->workf[INNR_CRWN_TX_X2] += 0.0f;
        this->workf[OUTR_CRWN_TX_Y2] += -15.0f;
        this->workf[INNR_CRWN_TX_Y2] += -10.0f;
    }

    if (((this->work[CS_TIMER_2] % 32) == 0) && (Rand_ZeroOne() < 0.3f)) {
        this->work[BLINK_IDX] = 4;
    }

    this->eyeTexIdx = D_8094A900[this->work[BLINK_IDX]];

    if (this->work[BLINK_IDX] != 0) {
        this->work[BLINK_IDX]--;
    }

    if ((this->actionFunc == BossTw_MergeCS) || (this->unk_5F8 == 0)) {
        return;
    }

    {
        Vec3f pos;
        Vec3f velocity = { 0.0f, 0.0f, 0.0f };
        Vec3f accel = { 0.0f, 0.0f, 0.0f };

        if (this->scepterAlpha > 0.0f) {
            for (i = 0; i <= 0; i++) {
                pos = this->scepterFlamePos[0];
                pos.x += Rand_CenteredFloat(70.0f);
                pos.y += Rand_CenteredFloat(70.0f);
                pos.z += Rand_CenteredFloat(70.0f);
                accel.y = 0.4f;
                accel.x = Rand_CenteredFloat(0.5f);
                accel.z = Rand_CenteredFloat(0.5f);
                BossTw_AddDotEffect(play, &pos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 8, this->actor.params,
                                    37);
            }
        }

        for (i = 0; i <= 0; i++) {
            pos = this->crownPos;
            pos.x += Rand_CenteredFloat(70.0f);
            pos.y += Rand_CenteredFloat(70.0f);
            pos.z += Rand_CenteredFloat(70.0f);
            accel.y = 0.4f;
            accel.x = Rand_CenteredFloat(0.5f);
            accel.z = Rand_CenteredFloat(0.5f);
            BossTw_AddDotEffect(play, &pos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 8, this->actor.params, 37);
        }
    }
}

void BossTw_TwinrovaUpdate(Actor* thisx, PlayState* play2) {
    s16 i;
    PlayState* play = play2;
    BossTw* this = (BossTw*)thisx;
    Player* player = GET_PLAYER(play);

    this->actor.flags &= ~ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER;
    this->unk_5F8 = 0;
    this->collider.base.colMaterial = COL_MATERIAL_HIT3;

    Math_ApproachF(&this->fogR, play->lightCtx.fogColor[0], 1.0f, 10.0f);
    Math_ApproachF(&this->fogG, play->lightCtx.fogColor[1], 1.0f, 10.0f);
    Math_ApproachF(&this->fogB, play->lightCtx.fogColor[2], 1.0f, 10.0f);
    Math_ApproachF(&this->fogNear, play->lightCtx.fogNear, 1.0f, 10.0f);
    Math_ApproachF(&this->fogFar, 1000.0f, 1.0f, 10.0f);

    this->work[CS_TIMER_1]++;
    this->work[CS_TIMER_2]++;

    for (i = 0; i < 5; i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }

    if (this->work[INVINC_TIMER] != 0) {
        this->work[INVINC_TIMER]--;
    }

    if (this->work[FOG_TIMER] != 0) {
        this->work[FOG_TIMER]--;
    }

    this->actionFunc(this, play);

    if (this->actionFunc != BossTw_TwinrovaShootBlast && this->actionFunc != BossTw_TwinrovaChargeBlast &&
        this->visible && this->unk_5F8 == 0 &&
        (s16)(player->actor.shape.rot.y - this->actor.yawTowardsPlayer + 0x8000) < 0x1000 &&
        (s16)(player->actor.shape.rot.y - this->actor.yawTowardsPlayer + 0x8000) > -0x1000 && player->unk_A73 != 0) {
        BossTw_TwinrovaSetupSpin(this, play);
    }

    this->eyeTexIdx = D_8094A900[this->work[BLINK_IDX]];
    if (this->work[BLINK_IDX] != 0) {
        this->work[BLINK_IDX]--;
    }

    if ((this->work[CS_TIMER_2] % 32) == 0) {
        if (this->actionFunc != BossTw_TwinrovaMergeCS) {
            if (Rand_ZeroOne() < 0.3f) {
                this->work[BLINK_IDX] = 4;
            }
        }
    }

    if (this->actionFunc == BossTw_TwinrovaMergeCS) {
        this->leftEyeTexIdx = D_8094A90C[this->work[TW_BLINK_IDX]];
        if (this->work[TW_BLINK_IDX] != 0) {
            this->work[TW_BLINK_IDX]--;
        }
    } else {
        if (this->actionFunc == BossTw_TwinrovaStun) {
            this->eyeTexIdx = 1;
        }

        if (this->actionFunc == BossTw_TwinrovaDeathCS) {
            this->eyeTexIdx = 2;
        }

        this->leftEyeTexIdx = this->eyeTexIdx;
    }

    if (this->visible && this->unk_5F8 == 0) {
        Vec3f pos;
        Vec3f velocity = { 0.0f, 0.0f, 0.0f };
        Vec3f accel;

        if (this->work[UNK_S8] != 0) {
            this->work[UNK_S8] -= 20;
            if (this->work[UNK_S8] < 0) {
                this->work[UNK_S8] = 0;
            }
        }

        Math_ApproachF(&this->workf[UNK_F12], 1.0f, 1.0f, 0.05f);
        accel.y = 0.4f;

        for (i = 0; i < 2; i++) {
            pos = this->leftScepterPos;
            pos.x += Rand_CenteredFloat(30.0f);
            pos.y += Rand_CenteredFloat(30.0f);
            pos.z += Rand_CenteredFloat(30.0f);
            accel.x = Rand_CenteredFloat(0.5f);
            accel.z = Rand_CenteredFloat(0.5f);
            BossTw_AddDotEffect(play, &pos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 7, 0, 75);
        }

        for (i = 0; i < 2; i++) {
            pos = this->rightScepterPos;
            pos.x += Rand_CenteredFloat(30.0f);
            pos.y += Rand_CenteredFloat(30.0f);
            pos.z += Rand_CenteredFloat(30.0f);
            accel.x = Rand_CenteredFloat(0.5f);
            accel.z = Rand_CenteredFloat(0.5f);
            BossTw_AddDotEffect(play, &pos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 7, 1, 75);
        }
    }

    this->collider.dim.radius = 35;

    if (this->actionFunc == BossTw_TwinrovaSpin) {
        this->collider.dim.radius *= 2;
    }

    this->collider.dim.height = 150;
    this->collider.dim.yShift = -60;
    Collider_UpdateCylinder(&this->actor, &this->collider);

    if (this->work[INVINC_TIMER] == 0) {
        if (this->actionFunc != BossTw_TwinrovaStun) {
            if (this->twinrovaStun != 0) {
                this->twinrovaStun = 0;
                this->work[FOG_TIMER] = 10;
                BossTw_TwinrovaDamage(this, play, 0);
                Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_YOUNG_DAMAGE);
            } else if (this->collider.base.acFlags & AC_HIT) {
                ColliderElement* acHitElem = this->collider.elem.acHitElem;

                this->collider.base.acFlags &= ~AC_HIT;
                if (acHitElem->atDmgInfo.dmgFlags & (DMG_SLINGSHOT | DMG_ARROW)) {}
            }
        } else if (this->collider.base.acFlags & AC_HIT) {
            u8 damage;
            u8 swordDamage;
            ColliderElement* acHitElem = this->collider.elem.acHitElem;

            this->collider.base.acFlags &= ~AC_HIT;
            swordDamage = false;
            damage = CollisionCheck_GetSwordDamage(acHitElem->atDmgInfo.dmgFlags);

            if (damage == 0) {
                damage = 2;
            } else {
                swordDamage = true;
            }

            if (!(acHitElem->atDmgInfo.dmgFlags & DMG_HOOKSHOT)) {
                if (((s8)this->actor.colChkInfo.health < 3) && !swordDamage) {
                    damage = 0;
                }

                BossTw_TwinrovaDamage(this, play, damage);
            }
        }
    }

    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    PRINTF("OooooooooooooooooooooooooooooooooCC\n");
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);

    play->envCtx.lightBlendOverride = LIGHT_BLEND_OVERRIDE_FULL_CONTROL;

    switch (sEnvType) {
        case 0:
            Math_ApproachZeroF(&play->envCtx.lightBlend, 1.0f, 0.02f);
            break;
        case 1:
            play->envCtx.lightSetting = 3;
            Math_ApproachF(&play->envCtx.lightBlend, 0.5f, 1.0f, 0.05f);
            break;
        case 2:
            play->envCtx.lightSetting = 2;
            Math_ApproachF(&play->envCtx.lightBlend, (Math_SinS(this->work[CS_TIMER_1] * 0x3000) * 0.03f) + 0.5f, 1.0f,
                           0.05f);
            break;
        case 3:
            play->envCtx.lightSetting = 3;
            Math_ApproachF(&play->envCtx.lightBlend, 1.0f, 1.0f, 0.1f);
            break;
        case 4:
            play->envCtx.lightSetting = 2;
            Math_ApproachF(&play->envCtx.lightBlend, (Math_SinS(this->work[CS_TIMER_1] * 0x3E00) * 0.05f) + 0.95f, 1.0f,
                           0.1f);
            break;
        case 5:
            play->envCtx.lightSetting = 0;
            Math_ApproachF(&play->envCtx.lightBlend, 1.0f, 1.0f, 0.05f);
            break;
        case -1:
            break;
    }

    BossTw_UpdateEffects(play);

    if (sFreezeState == 1) {
        sFreezeState = 2;
        BossTw_AddPlayerFreezeEffect(play, NULL);
        Sfx_PlaySfxAtPos(&player->actor.projectedPos, NA_SE_VO_LI_FREEZE);
        Sfx_PlaySfxAtPos(&player->actor.projectedPos, NA_SE_PL_FREEZE);

        if (sShieldFireCharge != 0) {
            sShieldFireCharge = 4;
        }
    }

    if (player->bodyIsBurning && sShieldIceCharge != 0) {
        sShieldIceCharge = 4;
    }
}

s32 BossTw_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BossTw* this = (BossTw*)thisx;

    if (limbIndex == TWINROVA_KOTAKE_KOUME_LIMB_HEAD) {
        if (this->unk_5F8 == 0) {
            if (this->actor.params == TW_KOTAKE) {
                *dList = gTwinrovaKotakeHeadDL;
            } else {
                *dList = gTwinrovaKoumeHeadDL;
            }
        }
    }

    if (limbIndex == TWINROVA_KOTAKE_KOUME_LIMB_BROOM) {
        if (this->actionFunc == BossTw_DeathCS) {
            *dList = NULL;
        } else if (this->scepterAlpha == 0.0f) {
            if (this->actor.params == TW_KOTAKE) {
                *dList = gTwinrovaKotakeBroomDL;
            } else {
                *dList = gTwinrovaKoumeBroomDL;
            }
        }
    }

    return false;
}

void BossTw_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f D_8094A944 = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_8094A950 = { 0.0f, 2000.0f, -2000.0f };
    static Vec3f D_8094A95C[] = {
        { 0.0f, 0.0f, -10000.0f }, { 0.0f, 0.0f, -8000.0f },  { 0.0f, 0.0f, -9000.0f },
        { 0.0f, 0.0f, -11000.0f }, { 0.0f, 0.0f, -12000.0f },
    };
    BossTw* this = (BossTw*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6168);

    switch (limbIndex) {
        case TWINROVA_KOTAKE_KOUME_LIMB_HEAD:
            Matrix_MultVec3f(&D_8094A944, &this->actor.focus.pos);
            Matrix_MultVec3f(&D_8094A950, &this->crownPos);

            if (this->unk_5F8 != 0) {
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6190);
                if (this->actor.params == TW_KOTAKE) {
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKotakeIceHairDL));
                } else {
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKoumeFireHairDL));
                }
            }
            break;

        case TWINROVA_KOTAKE_KOUME_LIMB_BROOM:
            Matrix_MultVec3f(&D_8094A95C[0], &this->scepterFlamePos[0]);
            Matrix_MultVec3f(&D_8094A95C[1], &this->scepterFlamePos[1]);
            Matrix_MultVec3f(&D_8094A95C[2], &this->scepterFlamePos[2]);
            Matrix_MultVec3f(&D_8094A95C[3], &this->scepterFlamePos[3]);
            Matrix_MultVec3f(&D_8094A95C[4], &this->scepterFlamePos[4]);

            if (this->scepterAlpha > 0.0f) {
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6221);
                if (this->actor.params == TW_KOTAKE) {
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 225, 255, (s16)this->scepterAlpha);
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKotakeIceBroomHeadDL));
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s16)this->scepterAlpha);
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKotakeIceBroomHeadOuterDL));
                } else {
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 100, 20, 0, (s16)this->scepterAlpha);
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKotakeFireBroomHeadDL));
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 70, 0, (s16)this->scepterAlpha);
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKotakeFireBroomHeadOuterDL));
                }
            }
            break;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6236);
}

void func_80941BC0(BossTw* this, PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6341);

    Matrix_Push();
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    Matrix_Translate(this->groundBlastPos2.x, this->groundBlastPos2.y, this->groundBlastPos2.z, MTXMODE_NEW);
    Matrix_Scale(this->workf[UNK_F12], this->workf[UNK_F12], this->workf[UNK_F12], MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6358);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s16)this->workf[UNK_F11]);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 40, 30, 80);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIcePoolDL));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 215, 215, 215, (s16)this->workf[UNK_F11] * this->workf[UNK_F14]);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 0x20, 0x40, 1,
                                (u32)this->workf[UNK_F16] & 0x3F, (this->work[CS_TIMER_2] * 4) & 0x3F, 0x10, 0x10));
    Matrix_Push();
    Matrix_RotateY(this->workf[UNK_F15], MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6423);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIcePoolShineDL));
    Matrix_Pop();
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6427);
    gSPSegment(POLY_XLU_DISP++, 0xD,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, this->work[CS_TIMER_2] & 0x7F,
                                (this->work[CS_TIMER_2] * 8) & 0xFF, 0x20, 0x40, 1,
                                (-this->work[CS_TIMER_2] * 2) & 0x3F, 0, 0x10, 0x10));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s16)this->workf[UNK_F9]);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);
    gDPSetRenderMode(POLY_XLU_DISP++, G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2);
    gSPSetGeometryMode(POLY_XLU_DISP++, G_CULL_BACK | G_FOG);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaEffectHaloDL));
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6461);
}

void func_80942180(BossTw* this, PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6468);

    Matrix_Push();

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    Matrix_Translate(this->groundBlastPos2.x, this->groundBlastPos2.y, this->groundBlastPos2.z, MTXMODE_NEW);
    Matrix_Scale(this->workf[KM_GD_CRTR_SCL], this->workf[KM_GD_CRTR_SCL], this->workf[KM_GD_CRTR_SCL], MTXMODE_APPLY);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (-this->work[CS_TIMER_1]) & 0x7F, 0, 0x20, 0x20, 1,
                                (this->work[CS_TIMER_1] * 2) & 0x7F, 0, 0x20, 0x20));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6497);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 100, 40, 00, (s16)this->workf[KM_GRND_CRTR_A]);
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 245, 255, 128);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaFirePoolDL));

    Matrix_ReplaceRotation(&play->billboardMtxF);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6514);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, this->work[CS_TIMER_1] & 0x7F,
                                (-this->work[CS_TIMER_1] * 6) & 0xFF, 0x20, 0x40, 1,
                                (this->work[CS_TIMER_1] * 2) & 0x7F, (-this->work[CS_TIMER_1] * 6) & 0xFF, 0x20, 0x40));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 80, 0, 0, (s16)this->workf[KM_GD_SMOKE_A]);
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 100);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaFireSmokeDL));

    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (-this->work[CS_TIMER_1] * 3) & 0x7F, 0, 0x20,
                                0x20, 1, 0, (-this->work[CS_TIMER_1] * 10) & 0xFF, 0x20, 0x40));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 100, 50, 0, (s16)(this->workf[KM_GD_FLM_A] * 0.7f));
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 200, 235, 240, 128);
    Matrix_Scale(this->workf[KM_GD_FLM_SCL], this->workf[KM_GD_FLM_SCL], this->workf[KM_GD_FLM_SCL], MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6575);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaBigFlameDL));

    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6579);
}

void func_809426F0(BossTw* this, PlayState* play) {
    s32 pad;
    s16 i;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6587);

    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (u8)(-this->work[CS_TIMER_2] * 15), 0x20, 0x40,
                                1, 0, 0, 0x40, 0x40));
    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 5000.0f, MTXMODE_APPLY);
    Matrix_Scale(this->spawnPortalScale / 2000.0f, this->spawnPortalScale / 2000.0f, this->spawnPortalScale / 2000.0f,
                 MTXMODE_APPLY);
    Matrix_RotateZ(this->portalRotation, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6614);

    if (this->actor.params == TW_KOTAKE) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 135, 175, 165, (s16)this->spawnPortalAlpha);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKotakeMagicSigilDL));
    } else {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 0, (s16)this->spawnPortalAlpha);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKoumeMagicSigilDL));
    }

    Matrix_Pop();

    if (this->actor.params == TW_KOTAKE) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s16)this->flameAlpha);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceMaterialDL));
    } else {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, (s16)this->flameAlpha);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
    }

    for (i = 0; i < 8; i++) {
        Matrix_Push();
        Matrix_Translate(0.0f, 0.0f, 5000.0f, MTXMODE_APPLY);
        Matrix_RotateZ(((i * M_PI) * 2.0f * 0.125f) + this->flameRotation, MTXMODE_APPLY);
        Matrix_Translate(0.0f, this->spawnPortalScale * 1.5f, 0.0f, MTXMODE_APPLY);
        gSPSegment(POLY_XLU_DISP++, 8,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE,
                                    ((this->work[CS_TIMER_2] * 3) + (i * 10)) & 0x7F,
                                    (u8)((-this->work[CS_TIMER_2] * 15) + (i * 50)), 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
        Matrix_Scale(0.4f, 0.4f, 0.4f, MTXMODE_APPLY);
        Matrix_ReplaceRotation(&play->billboardMtxF);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6751);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaFireDL));
        Matrix_Pop();
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6756);
}

void func_80942C70(Actor* thisx, PlayState* play) {
    BossTw* this = (BossTw*)thisx;
    s16 alpha;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6765);

    if (this->beamDist == 0.0f) {
        goto close_disps;
    }

    Matrix_Push();
    gSPSegment(POLY_XLU_DISP++, 0xC,
               Gfx_TexScroll(play->state.gfxCtx, 0, (u8)(this->work[CS_TIMER_1] * -0xF), 0x20, 0x40));
    alpha = this->beamScale * 100.0f * 255.0f;

    if (this->actor.params == TW_KOUME) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 60, alpha);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 128);
    } else {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, alpha);
        gDPSetEnvColor(POLY_XLU_DISP++, 100, 100, 255, 128);
    }

    Matrix_Translate(this->beamOrigin.x, this->beamOrigin.y, this->beamOrigin.z, MTXMODE_NEW);
    Matrix_RotateY(this->beamYaw, MTXMODE_APPLY);
    Matrix_RotateX(this->beamPitch, MTXMODE_APPLY);
    Matrix_RotateZ(this->beamRoll, MTXMODE_APPLY);
    Matrix_Scale(this->beamScale, this->beamScale, (this->beamDist * 0.01f * 98.0f) / 20000.0f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6846);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaBeamDL));

    if (this->beamReflectionDist > 10.0f) {
        Matrix_Translate(this->beamReflectionOrigin.x, this->beamReflectionOrigin.y, this->beamReflectionOrigin.z,
                         MTXMODE_NEW);
        Matrix_RotateY(this->beamReflectionYaw, MTXMODE_APPLY);
        Matrix_RotateX(this->beamReflectionPitch, MTXMODE_APPLY);
        Matrix_RotateZ(this->beamRoll, MTXMODE_APPLY);
        Matrix_Scale(this->beamScale, this->beamScale, (this->beamReflectionDist * 0.01f * 100.0f) / 20000.0f,
                     MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6870);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaBeamDL));
    }

    Matrix_Pop();

close_disps:
    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6878);
}

void func_80943028(Actor* thisx, PlayState* play) {
    BossTw* this = (BossTw*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6885);

    Matrix_Push();
    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y + 57.0f, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_Scale(this->workf[UNK_F17], this->workf[UNK_F17], this->workf[UNK_F17], MTXMODE_APPLY);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6908);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaHaloDL));
    Gfx_SetupDL_44Xlu(play->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, 200);
    Matrix_Translate(this->actor.world.pos.x, 240.0f, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_Scale((this->actor.scale.x * 4000.0f) / 100.0f, 1.0f, (this->actor.scale.x * 4000.0f) / 100.0f,
                 MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 6926);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gCircleShadowDL));
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6933);
}

static void* sEyeTextures[] = {
    gTwinrovaKotakeKoumeEyeOpenTex,
    gTwinrovaKotakeKoumeEyeHalfTex,
    gTwinrovaKotakeKoumeEyeClosedTex,
};

void BossTw_Draw(Actor* thisx, PlayState* play2) {
    static Vec3f D_8094A9A4 = { 0.0f, 200.0f, 2000.0f };
    PlayState* play = play2;
    BossTw* this = (BossTw*)thisx;
    Player* player = GET_PLAYER(play);

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 6947);

    if (this->visible) {
        gSPSegment(POLY_OPA_DISP++, 10, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIdx]));
        gSPSegment(POLY_XLU_DISP++, 10, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIdx]));
        gSPSegment(POLY_XLU_DISP++, 8,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (s16)this->workf[OUTR_CRWN_TX_X1] & 0x7F,
                                    (s16)this->workf[OUTR_CRWN_TX_Y1] & 0x7F, 0x20, 0x20, 1,
                                    (s16)this->workf[OUTR_CRWN_TX_X2] & 0x7F, (s16)this->workf[OUTR_CRWN_TX_Y2] & 0xFF,
                                    0x20, 0x40));

        if (this->actor.params == TW_KOTAKE) {
            gSPSegment(POLY_XLU_DISP++, 9,
                       Gfx_TexScroll(play->state.gfxCtx, (s16)this->workf[INNR_CRWN_TX_X1] & 0x7F,
                                     (s16)this->workf[INNR_CRWN_TX_Y1] & 0xFF, 0x20, 0x40));
        } else {
            gSPSegment(POLY_XLU_DISP++, 9,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (s16)this->workf[INNR_CRWN_TX_X1] & 0x7F,
                                        (s16)this->workf[INNR_CRWN_TX_Y1] & 0x7F, 0x20, 0x20, 1,
                                        (s16)this->workf[INNR_CRWN_TX_X2] & 0x7F,
                                        (s16)this->workf[INNR_CRWN_TX_Y2] & 0xFF, 0x20, 0x40));
        }

        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);

        if (this->work[FOG_TIMER] & 2) {
            POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 50, 0, 0, 900, 1099);
        } else {
            POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, (u32)this->fogR, (u32)this->fogG, (u32)this->fogB, 0,
                                       this->fogNear, this->fogFar);
        }

        Matrix_Push();
        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              BossTw_OverrideLimbDraw, BossTw_PostLimbDraw, this);
        Matrix_Pop();
        POLY_OPA_DISP = Play_SetFog(play, POLY_OPA_DISP);
    }

    if (this->actor.params == TW_KOTAKE) {
        Vec3f diff;

        if (this->workf[UNK_F9] > 0.0f) {
            if (this->workf[UNK_F11] > 0.0f) {
                diff.x = this->groundBlastPos2.x - player->actor.world.pos.x;
                diff.y = this->groundBlastPos2.y - player->actor.world.pos.y;
                diff.z = this->groundBlastPos2.z - player->actor.world.pos.z;

                if ((fabsf(diff.y) < 10.0f) && (player->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
                    (sqrtf(SQ(diff.x) + SQ(diff.z)) < (this->workf[UNK_F12] * 4600.0f)) && (sFreezeState == 0) &&
                    (this->workf[UNK_F11] > 200.0f)) {
                    sFreezeState = 1;
                    sTwinrovaPtr->timers[2] = 100;
                }
            }

            func_80941BC0(this, play);
        }
    } else {
        func_80942180(this, play);
    }

    if (this->visible) {
        if (this->actionFunc == BossTw_DeathCS) {
            func_80943028(&this->actor, play);
        } else {
            func_809426F0(this, play);
            Matrix_MultVec3f(&D_8094A9A4, &this->beamOrigin);
            func_80942C70(&this->actor, play);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7123);
}

void* sTwinrovaEyeTextures[] = {
    gTwinrovaEyeOpenTex,
    gTwinrovaEyeHalfTex,
    gTwinrovaEyeClosedTex,
};

s32 BossTw_TwinrovaOverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BossTw* this = (BossTw*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7139);

    switch (limbIndex) {
        case TWINROVA_LIMB_HEAD:
            gSPSegment(POLY_OPA_DISP++, 0xC,
                       Gfx_TexScroll(play->state.gfxCtx, 0, (s16)(f32)this->work[CS_TIMER_1], 8, 8));
            gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(sTwinrovaEyeTextures[this->eyeTexIdx]));
            gSPSegment(POLY_OPA_DISP++, 9, SEGMENTED_TO_VIRTUAL(sTwinrovaEyeTextures[this->leftEyeTexIdx]));
            gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, this->work[UNK_S8]);
            break;
        case TWINROVA_LIMB_HAIR_FIRE_JET:
        case TWINROVA_LIMB_BROOM_FIRE_JET:
            *dList = NULL;
            gSPSegment(POLY_XLU_DISP++, 0xA,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 0x20, 0x20, 1, 0,
                                        -this->work[CS_TIMER_1] * 0xF, 0x20, 0x40));
            break;
        case TWINROVA_LIMB_HAIR_FIRE_TRAIL:
        case TWINROVA_LIMB_BROOM_FIRE_TRAIL:
            *dList = NULL;
            gSPSegment(POLY_XLU_DISP++, 0xB,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 0x20, 0x20, 1, 0,
                                        -this->work[CS_TIMER_1] * 0xA, 0x20, 0x40));
            break;
        case TWINROVA_LIMB_HAIR_ICE_JET:
        case TWINROVA_LIMB_BROOM_ICE_JET:
            *dList = NULL;
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 0x20, 0x20, 1,
                                        this->work[CS_TIMER_1], -this->work[CS_TIMER_1] * 7, 0x20, 0x40));
            break;
        case TWINROVA_LIMB_HAIR_ICE_TRAIL:
        case TWINROVA_LIMB_BROOM_ICE_TRAIL:
            *dList = NULL;
            gSPSegment(POLY_XLU_DISP++, 9, Gfx_TexScroll(play->state.gfxCtx, 0, this->work[CS_TIMER_1], 0x20, 0x40));
            break;
        case TWINROVA_LIMB_LEFT_HAIR_BUN:
            if (this->unk_5F8 != 0) {
                *dList = gTwinrovaLeftHairBunDL;
            }
            break;

        case TWINROVA_LIMB_RIGHT_HAIR_BUN:
            if (this->unk_5F8 != 0) {
                *dList = gTwinrovaRightHairBunDL;
            }
            break;
    }

    if ((this->unk_5F8 != 0) && ((limbIndex == TWINROVA_LIMB_LEFT_BROOM) || (limbIndex == TWINROVA_LIMB_RIGHT_BROOM))) {
        *dList = NULL;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7251);

    return false;
}

void BossTw_TwinrovaPostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f D_8094A9BC = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_8094A9C8 = { 0.0f, 2000.0f, -2000.0f };
    static Vec3f D_8094A9D4 = { 13000.0f, 0.0f, 0.0f };
    static Vec3f D_8094A9E0 = { 13000.0f, 0.0f, 0.0f };

    BossTw* this = (BossTw*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7262);

    switch (limbIndex) {
        case TWINROVA_LIMB_LEFT_BROOM:
            Matrix_MultVec3f(&D_8094A9D4, &this->leftScepterPos);
            break;
        case TWINROVA_LIMB_RIGHT_BROOM:
            Matrix_MultVec3f(&D_8094A9E0, &this->rightScepterPos);
            break;
        case TWINROVA_LIMB_HEAD:
            Matrix_MultVec3f(&D_8094A9BC, &this->actor.focus.pos);
            Matrix_MultVec3f(&D_8094A9C8, &this->crownPos);
            break;
        case TWINROVA_LIMB_HAIR_ICE_TRAIL:
        case TWINROVA_LIMB_HAIR_ICE_JET:
        case TWINROVA_LIMB_HAIR_FIRE_JET:
        case TWINROVA_LIMB_HAIR_FIRE_TRAIL:
        case TWINROVA_LIMB_BROOM_ICE_TRAIL:
        case TWINROVA_LIMB_BROOM_ICE_JET:
        case TWINROVA_LIMB_BROOM_FIRE_JET:
        case TWINROVA_LIMB_BROOM_FIRE_TRAIL:
            Matrix_Push();
            Matrix_Scale(this->workf[UNK_F12], this->workf[UNK_F12], this->workf[UNK_F12], MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7295);
            Matrix_Pop();
            gSPDisplayList(POLY_XLU_DISP++, *dList);
            break;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7301);
}

void BossTw_ShieldChargeDraw(BossTw* this, PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);
    s16 temp_t0;
    s16 temp_a0;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7311);

    Matrix_Push();

    temp_t0 = sShieldFireCharge | sShieldIceCharge;

    if (temp_t0 == 1) {
        Sfx_PlaySfxCentered(NA_SE_IT_SHIELD_CHARGE_LV1 & ~SFX_FLAG);
    } else if (temp_t0 == 2) {
        Sfx_PlaySfxCentered(NA_SE_IT_SHIELD_CHARGE_LV2 & ~SFX_FLAG);
    } else if (temp_t0 == 3) {
        Sfx_PlaySfxCentered(NA_SE_IT_SHIELD_CHARGE_LV3 & ~SFX_FLAG);
    }

    if (temp_t0 != 0 && temp_t0 < 4) {
        Math_ApproachF(&D_8094C854, 255.0f, 1.0f, 20.0f);
        if (temp_t0 == 3) {
            temp_t0 *= 3;
        }
    } else if (temp_t0 == 0) {
        D_8094C854 = 0.0f;
    } else {
        Math_ApproachF(&D_8094C854, 0.0f, 1.0f, 10.0f);
        if (D_8094C854 == 0.0f) {
            sShieldIceCharge = 0;
            sShieldFireCharge = 0;
        }

        temp_t0 = 1;
    }

    if (Player_HasMirrorShieldEquipped(play)) {
        if (temp_t0 != 0) {
            Matrix_Mult(&player->shieldMf, MTXMODE_NEW);
            Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7362);
            temp_a0 = (Math_SinS(this->work[CS_TIMER_1] * 2730 * temp_t0) * D_8094C854 * 0.5f) + (D_8094C854 * 0.5f);
            if (sShieldFireCharge != 0) {
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 245, 255, temp_a0);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaMirrorShieldFireChargeSidesDL));
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (this->work[CS_TIMER_1] * 2) * temp_t0,
                                            0, 0x20, 0x20, 1, (-this->work[CS_TIMER_1] * 2) * temp_t0, 0, 0x20, 0x20));
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 100, 20, 0, (s16)D_8094C854);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaMirrorShieldFireChargeCenterDL));
            } else {
                gDPSetEnvColor(POLY_XLU_DISP++, 225, 255, 255, temp_a0);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaMirrorShieldIceChargeSidesDL));
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0,
                                            (-this->work[CS_TIMER_1] * 5) * temp_t0, 0x20, 0x40, 1,
                                            (this->work[CS_TIMER_1] * 4) * temp_t0, 0, 0x20, 0x20));
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 175, 205, 195, (s16)D_8094C854);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaMirrorShieldIceChargeCenterDL));
            }
        }
    }

    if (D_8094C86F != 0) {
        f32 step = D_8094C872 > 0 ? 100.0f : 60.0f;

        D_8094C86F--;
        Math_ApproachF(&D_8094C858, 255.0f, 1.0f, step);
    } else {
        f32 step = D_8094C872 > 0 ? 40.0f : 20.0f;

        Math_ApproachF(&D_8094C858, 0.0f, 1.0f, step);
    }

    if (Player_HasMirrorShieldEquipped(play) && D_8094C858 > 0.0f) {
        f32 scale = D_8094C872 > 0 ? 1.3f : 1.0f;

        Matrix_Mult(&player->shieldMf, MTXMODE_NEW);
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7486);
        if (sShieldFireCharge != 0) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 220, 20, (s16)D_8094C858);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 20, 110);
        } else {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s16)D_8094C858);
            gDPSetEnvColor(POLY_XLU_DISP++, 185, 225, 205, 150);
        }

        gSPSegment(POLY_XLU_DISP++, 8,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, this->work[CS_TIMER_1] * D_8094C872, 0x20,
                                    0x40, 1, 0, this->work[CS_TIMER_1] * D_8094C872, 0x20, 0x20));
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaShieldAbsorbAndReflectEffectDL));
    }

    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7531);
}

void BossTw_SpawnPortalDraw(BossTw* this, PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7546);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, -this->work[CS_TIMER_1] * 15, 0x20, 0x40, 1, 0,
                                0, 0x40, 0x40));

    Matrix_Push();

    Matrix_Translate(0.0f, 232.0f, -600.0f, MTXMODE_NEW);
    Matrix_Scale(this->spawnPortalScale, this->spawnPortalScale, this->spawnPortalScale, MTXMODE_APPLY);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, (s16)this->spawnPortalAlpha);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7582);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaSpawnPortalShadowDL));

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 135, 175, 165, (s16)this->spawnPortalAlpha);
    Matrix_Translate(0.0f, 2.0f, 0.0f, MTXMODE_APPLY);
    Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7596);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKotakeMagicSigilDL));

    Matrix_Translate(0.0f, 232.0f, 600.0f, MTXMODE_NEW);
    Matrix_Scale(this->spawnPortalScale, this->spawnPortalScale, this->spawnPortalScale, MTXMODE_APPLY);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, (s16)this->spawnPortalAlpha);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7617);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaSpawnPortalShadowDL));

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 0, (s16)this->spawnPortalAlpha);
    Matrix_Translate(0.0f, 2.0f, 0.0f, MTXMODE_APPLY);
    Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7631);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaKoumeMagicSigilDL));

    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7635);
}

void func_80944C50(BossTw* this, PlayState* play) {
    s32 pad;
    f32 scale;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7645);

    Matrix_Push();
    Matrix_Translate(0.0f, 750.0f, 0.0f, MTXMODE_NEW);
    Matrix_Scale(0.35f, 0.35f, 0.35f, MTXMODE_APPLY);
    Matrix_Push();
    Matrix_Scale(this->workf[UNK_F19], this->workf[UNK_F19], this->workf[UNK_F19], MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7671);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaLightCircleDL));

    Matrix_Pop();
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, -sKoumePtr->work[CS_TIMER_1] * 2, 0, 0x20, 0x20, 1,
                                -sKoumePtr->work[CS_TIMER_1] * 2, 0, 0x20, 0x40));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s16)this->workf[UNK_F18] / 2);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7694);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaLightRaysDL));

    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, -sKoumePtr->work[CS_TIMER_1] * 5,
                                -sKoumePtr->work[CS_TIMER_1] * 2, 0x20, 0x40, 1, 0, -sKoumePtr->work[CS_TIMER_1] * 2,
                                0x10, 0x10));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s16)(this->workf[UNK_F18] * 0.3f));

    scale = this->workf[UNK_F18] / 150.0f;
    scale = CLAMP_MAX(scale, 1.0f);

    Matrix_Scale(scale, 1.0f, scale, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 7728);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaLightPillarDL));
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7732);
}

void BossTw_TwinrovaDraw(Actor* thisx, PlayState* play2) {
    static Vec3f D_8094A9EC = { 0.0f, 200.0f, 2000.0f };
    PlayState* play = play2;
    BossTw* this = (BossTw*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7748);

    if (this->visible) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);

        POLY_OPA_DISP = (this->work[FOG_TIMER] & 2) ? Gfx_SetFog2(POLY_OPA_DISP, 255, 50, 0, 0, 900, 1099)
                                                    : Gfx_SetFog2(POLY_OPA_DISP, (u32)this->fogR, (u32)this->fogG,
                                                                  (u32)this->fogB, 0, this->fogNear, this->fogFar);

        Matrix_Push();
        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              BossTw_TwinrovaOverrideLimbDraw, BossTw_TwinrovaPostLimbDraw, thisx);
        Matrix_Pop();

        Matrix_MultVec3f(&D_8094A9EC, &this->beamOrigin);
        POLY_OPA_DISP = Gfx_SetFog2(POLY_OPA_DISP, play->lightCtx.fogColor[0], play->lightCtx.fogColor[1],
                                    play->lightCtx.fogColor[2], 0, play->lightCtx.fogNear, 1000);
    }

    BossTw_DrawEffects(play);
    BossTw_ShieldChargeDraw(this, play);

    if (this->spawnPortalAlpha > 0.0f) {
        BossTw_SpawnPortalDraw(this, play);
    }

    if (this->workf[UNK_F18] > 0.0f) {
        func_80944C50(this, play);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 7804);
}

void BossTw_BlastFire(BossTw* this, PlayState* play) {
    s16 i;
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    f32 distXZ;
    Player* player = GET_PLAYER(play);
    Player* player2 = player;

    switch (this->actor.params) {
        case TW_FIRE_BLAST:
            switch (this->csState1) {
                case 0:
                    Actor_SetScale(&this->actor, 0.03f);
                    this->csState1 = 1;
                    xDiff = player->actor.world.pos.x - this->actor.world.pos.x;
                    yDiff = (player->actor.world.pos.y + 30.0f) - this->actor.world.pos.y;
                    zDiff = player->actor.world.pos.z - this->actor.world.pos.z;
                    // yaw
                    this->actor.world.rot.y = RAD_TO_BINANG(Math_FAtan2F(xDiff, zDiff));
                    // pitch
                    distXZ = sqrtf(SQ(xDiff) + SQ(zDiff));
                    this->actor.world.rot.x = RAD_TO_BINANG(Math_FAtan2F(yDiff, distXZ));
                    this->actor.speed = 20.0f;

                    for (i = 0; i < 50; i++) {
                        this->blastTailPos[i] = this->actor.world.pos;
                    }
                    this->workf[TAIL_ALPHA] = 255.0f;
                    FALLTHROUGH;
                case 1:
                case 10:
                    this->blastActive = true;
                    if (this->timers[0] == 0) {
                        Actor_UpdateVelocityXYZ(&this->actor);
                        Actor_UpdatePos(&this->actor);
                        Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FIRE & ~SFX_FLAG);
                    } else {
                        Vec3f velocity;
                        Vec3f velDir;
                        Vec3s blastDir;
                        s16 alpha;

                        this->actor.world.pos = player2->bodyPartsPos[PLAYER_BODYPART_R_HAND];
                        this->actor.world.pos.y = -2000.0f;
                        Matrix_MtxFToYXZRotS(&player2->shieldMf, &blastDir, 0);
                        blastDir.x = -blastDir.x;
                        blastDir.y += 0x8000;
                        Math_ApproachS(&this->magicDir.x, blastDir.x, 0xA, 0x800);
                        Math_ApproachS(&this->magicDir.y, blastDir.y, 0xA, 0x800);

                        if (this->timers[0] == 50) {
                            D_8094C86F = 10;
                            D_8094C872 = 7;
                            play->envCtx.lightBlend = 1.0f;
                        }

                        if (this->timers[0] <= 50) {
                            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FIRE & ~SFX_FLAG);
                            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_REFL_FIRE & ~SFX_FLAG);
                            Matrix_RotateY((this->magicDir.y / 32678.0f) * M_PI, MTXMODE_NEW);
                            Matrix_RotateX((this->magicDir.x / 32678.0f) * M_PI, MTXMODE_APPLY);
                            velDir.x = 0.0f;
                            velDir.y = 0.0f;
                            velDir.z = 50.0f;
                            Matrix_MultVec3f(&velDir, &velocity);
                            alpha = this->timers[0] * 10;
                            alpha = CLAMP_MAX(alpha, 255);

                            BossTw_AddShieldBlastEffect(play, &player2->bodyPartsPos[PLAYER_BODYPART_R_HAND], &velocity,
                                                        &sZeroVector, 10.0f, 80.0f, alpha, 1);
                        }

                        if (this->timers[0] == 1) {
                            sEnvType = 0;
                            sShieldFireCharge++;
                            Actor_Kill(&this->actor);
                        }

                        return;
                    }

                    this->groundBlastPos.y = BossTw_GetFloorY(&this->actor.world.pos);

                    if (this->groundBlastPos.y >= 0.0f) {
                        if (this->groundBlastPos.y != 35.0f) {
                            this->groundBlastPos.x = this->actor.world.pos.x;
                            this->groundBlastPos.z = this->actor.world.pos.z;
                            BossTw_SpawnGroundBlast(this, play, 1);
                        } else {
                            Vec3f velocity;
                            Vec3f accel;

                            for (i = 0; i < 50; i++) {
                                velocity.x = Rand_CenteredFloat(20.0f);
                                velocity.y = Rand_CenteredFloat(20.0f);
                                velocity.z = Rand_CenteredFloat(20.0f);
                                accel.x = 0.0f;
                                accel.y = 0.0f;
                                accel.z = 0.0f;
                                BossTw_AddFlameEffect(play, &this->actor.world.pos, &velocity, &accel,
                                                      Rand_ZeroFloat(10.0f) + 25.0f, this->blastType);
                            }

                            play->envCtx.lightBlend = 0.5f;
                        }

                        this->csState1 = 2;
                        this->timers[0] = 20;
                    } else {
                        Vec3f pos;
                        Vec3f velocity = { 0.0f, 0.0f, 0.0f };
                        Vec3f accel = { 0.0f, 0.0f, 0.0f };

                        for (i = 0; i < 10; i++) {
                            pos = this->blastTailPos[(s16)Rand_ZeroFloat(29.9f)];
                            pos.x += Rand_CenteredFloat(40.0f);
                            pos.y += Rand_CenteredFloat(40.0f);
                            pos.z += Rand_CenteredFloat(40.0f);
                            accel.y = 0.4f;
                            accel.x = Rand_CenteredFloat(0.5f);
                            accel.z = Rand_CenteredFloat(0.5f);
                            BossTw_AddDotEffect(play, &pos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 8, 1, 75);
                        }
                    }
                    break;
                case 2:
                    Math_ApproachF(&this->workf[TAIL_ALPHA], 0.0f, 1.0f, 15.0f);
                    if (this->timers[0] == 0) {
                        Actor_Kill(&this->actor);
                    }
                    break;
            }
            break;

        case TW_FIRE_BLAST_GROUND:
            if (this->timers[0] != 0) {
                if (this->timers[0] == 1) {
                    sEnvType = 0;
                }

                if (sGroundBlastType == 2) {
                    this->timers[0] = 0;
                }

                Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_FIRE_EXP - SFX_FLAG);

                xDiff = sKoumePtr->groundBlastPos2.x - player->actor.world.pos.x;
                yDiff = sKoumePtr->groundBlastPos2.y - player->actor.world.pos.y;
                zDiff = sKoumePtr->groundBlastPos2.z - player->actor.world.pos.z;

                if (!player->bodyIsBurning && (player->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
                    (fabsf(yDiff) < 10.0f) && (sqrtf(SQ(xDiff) + SQ(zDiff)) < (sKoumePtr->workf[UNK_F13] * 4550.0f))) {
                    s16 j;

                    for (j = 0; j < 18; j++) {
                        player->bodyFlameTimers[j] = Rand_S16Offset(0, 200);
                    }

                    player->bodyIsBurning = true;

                    if (this->work[BURN_TMR] == 0) {
                        Player_PlaySfx(player, player->ageProperties->unk_92 + NA_SE_VO_LI_DEMO_DAMAGE);
                        this->work[BURN_TMR] = 40;
                    }

                    sTwinrovaPtr->timers[2] = 100;
                }

                Math_ApproachF(&sKoumePtr->workf[UNK_F13], 0.04f, 0.1f, 0.002f);
                break;
            }

            if (1) {
                f32 sp4C = sGroundBlastType == 2 ? 3.0f : 1.0f;

                Math_ApproachF(&sKoumePtr->workf[UNK_F9], 0.0f, 1.0f, 10.0f * sp4C);
                Math_ApproachF(&sKoumePtr->workf[UNK_F12], 0.0f, 1.0f, 0.03f * sp4C);
                Math_ApproachF(&sKoumePtr->workf[TAIL_ALPHA], 0.0f, 1.0f, 3.0f * sp4C);
                Math_ApproachF(&sKoumePtr->workf[UNK_F11], 0.0f, 1.0f, 6.0f * sp4C);
            }

            if (sKoumePtr->workf[TAIL_ALPHA] <= 0.0f) {
                Actor_Kill(&this->actor);
            }

            break;
    }
}

void BossTw_BlastIce(BossTw* this, PlayState* play) {
    s16 i;
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    f32 xzDist;
    Player* player = GET_PLAYER(play);
    Player* player2 = player;

    switch (this->actor.params) {
        case TW_ICE_BLAST:
            switch (this->csState1) {
                case 0:
                    Actor_SetScale(&this->actor, 0.03f);
                    this->csState1 = 1;
                    xDiff = player->actor.world.pos.x - this->actor.world.pos.x;
                    yDiff = (player->actor.world.pos.y + 30.0f) - this->actor.world.pos.y;
                    zDiff = player->actor.world.pos.z - this->actor.world.pos.z;
                    this->actor.world.rot.y = RAD_TO_BINANG(Math_FAtan2F(xDiff, zDiff));
                    xzDist = sqrtf(SQ(xDiff) + SQ(zDiff));
                    this->actor.world.rot.x = RAD_TO_BINANG(Math_FAtan2F(yDiff, xzDist));
                    this->actor.speed = 20.0f;
                    for (i = 0; i < 50; i++) {
                        this->blastTailPos[i] = this->actor.world.pos;
                    }

                    this->workf[TAIL_ALPHA] = 255.0f;
                    FALLTHROUGH;
                case 1:
                case 10:
                    this->blastActive = true;

                    if (this->timers[0] == 0) {
                        Actor_UpdateVelocityXYZ(&this->actor);
                        Actor_UpdatePos(&this->actor);
                        Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FREEZE - SFX_FLAG);
                    } else {
                        Vec3f velocity;
                        Vec3f spF4;
                        Vec3s reflDir;
                        s16 alpha;

                        this->actor.world.pos = player2->bodyPartsPos[PLAYER_BODYPART_R_HAND];
                        this->actor.world.pos.y = -2000.0f;
                        Matrix_MtxFToYXZRotS(&player2->shieldMf, &reflDir, 0);
                        reflDir.x = -reflDir.x;
                        reflDir.y += 0x8000;
                        Math_ApproachS(&this->magicDir.x, reflDir.x, 0xA, 0x800);
                        Math_ApproachS(&this->magicDir.y, reflDir.y, 0xA, 0x800);

                        if (this->timers[0] == 50) {
                            D_8094C86F = 10;
                            D_8094C872 = 7;
                            play->envCtx.lightBlend = 1.0f;
                        }

                        if (this->timers[0] <= 50) {
                            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FREEZE - SFX_FLAG);
                            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_REFL_FREEZE - SFX_FLAG);
                            Matrix_RotateY((this->magicDir.y / 32678.0f) * M_PI, MTXMODE_NEW);
                            Matrix_RotateX((this->magicDir.x / 32678.0f) * M_PI, MTXMODE_APPLY);
                            spF4.x = 0.0f;
                            spF4.y = 0.0f;
                            spF4.z = 50.0f;
                            Matrix_MultVec3f(&spF4, &velocity);
                            alpha = this->timers[0] * 10;
                            alpha = CLAMP_MAX(alpha, 255);

                            BossTw_AddShieldBlastEffect(play, &player2->bodyPartsPos[PLAYER_BODYPART_R_HAND], &velocity,
                                                        &sZeroVector, 10.0f, 80.0f, alpha, 0);
                        }

                        if (this->timers[0] == 1) {
                            sEnvType = 0;
                            sShieldIceCharge++;
                            Actor_Kill(&this->actor);
                        }

                        break;
                    }

                    this->groundBlastPos.y = BossTw_GetFloorY(&this->actor.world.pos);

                    if (this->groundBlastPos.y >= 0.0f) {
                        if (this->groundBlastPos.y != 35.0f) {
                            this->groundBlastPos.x = this->actor.world.pos.x;
                            this->groundBlastPos.z = this->actor.world.pos.z;
                            BossTw_SpawnGroundBlast(this, play, 0);
                        } else {
                            for (i = 0; i < 50; i++) {
                                Vec3f velocity;
                                Vec3f accel;

                                velocity.x = Rand_CenteredFloat(20.0f);
                                velocity.y = Rand_CenteredFloat(20.0f);
                                velocity.z = Rand_CenteredFloat(20.0f);
                                accel.x = 0.0f;
                                accel.y = 0.0f;
                                accel.z = 0.0f;
                                BossTw_AddFlameEffect(play, &this->actor.world.pos, &velocity, &accel,
                                                      Rand_ZeroFloat(10.0f) + 25.0f, this->blastType);
                            }

                            play->envCtx.lightBlend = 0.5f;
                        }

                        this->csState1 = 2;
                        this->timers[0] = 20;
                    } else {
                        Vec3f pos;
                        Vec3f velocity = { 0.0f, 0.0f, 0.0f };
                        Vec3f accel = { 0.0f, 0.0f, 0.0f };

                        for (i = 0; i < 10; i++) {
                            pos = this->blastTailPos[(s16)Rand_ZeroFloat(29.9f)];
                            pos.x += Rand_CenteredFloat(40.0f);
                            pos.y += Rand_CenteredFloat(40.0f);
                            pos.z += Rand_CenteredFloat(40.0f);
                            accel.y = 0.4f;
                            accel.x = Rand_CenteredFloat(0.5f);
                            accel.z = Rand_CenteredFloat(0.5f);
                            BossTw_AddDotEffect(play, &pos, &velocity, &accel, ((s16)Rand_ZeroFloat(2.0f) + 8), 0, 75);
                        }
                    }
                    break;

                case 2:
                    Math_ApproachF(&this->workf[TAIL_ALPHA], 0.0f, 1.0f, 15.0f);
                    if (this->timers[0] == 0) {
                        Actor_Kill(&this->actor);
                    }
                    break;
            }
            break;

        case TW_ICE_BLAST_GROUND:
            if (this->timers[0] != 0) {
                s32 pad;

                if (this->timers[0] == 1) {
                    sEnvType = 0;
                }

                if (sGroundBlastType == 1) {
                    this->timers[0] = 0;
                }

                Actor_PlaySfx(&this->actor, NA_SE_EV_ICE_FREEZE - SFX_FLAG);

                if (this->timers[0] > (sTwinrovaPtr->actionFunc == BossTw_Wait ? 70 : 20)) {
                    Vec3f pos;
                    Vec3f velocity;
                    Vec3f accel;

                    pos.x = sKotakePtr->groundBlastPos2.x + Rand_CenteredFloat(320.0f);
                    pos.z = sKotakePtr->groundBlastPos2.z + Rand_CenteredFloat(320.0f);
                    pos.y = sKotakePtr->groundBlastPos2.y;
                    velocity.x = 0.0f;
                    velocity.y = 0.0f;
                    velocity.z = 0.0f;
                    accel.x = 0.0f;
                    accel.y = 0.13f;
                    accel.z = 0.0f;
                    BossTw_AddDmgCloud(play, TWEFF_3, &pos, &velocity, &accel, Rand_ZeroFloat(5.0f) + 20.0f, 0, 0, 80);
                    velocity.x = Rand_CenteredFloat(10.0f);
                    velocity.z = Rand_CenteredFloat(10.0f);
                    velocity.y = Rand_ZeroFloat(3.0f) + 3.0f;
                    pos.x = sKotakePtr->groundBlastPos2.x + (velocity.x * 0.5f);
                    pos.z = sKotakePtr->groundBlastPos2.z + (velocity.z * 0.5f);
                    BossTw_AddDmgCloud(play, TWEFF_3, &pos, &velocity, &accel, Rand_ZeroFloat(5.0f) + 15.0f, 255, 2,
                                       130);
                }

                Math_ApproachF(&sKotakePtr->workf[UNK_F9], 80.0f, 1.0f, 3.0f);
                Math_ApproachF(&sKotakePtr->workf[UNK_F11], 255.0f, 1.0f, 10.0f);
                Math_ApproachF(&sKotakePtr->workf[UNK_F12], 0.04f, 0.1f, 0.002f);
                Math_ApproachF(&sKotakePtr->workf[UNK_F16], 70.0f, 1.0f, 5.0f);

                if ((this->timers[0] == 70) || (this->timers[0] == 30)) {
                    sKotakePtr->workf[UNK_F16] = 10.0f;
                }

                if ((this->timers[0] % 4) == 0) {
                    sKotakePtr->workf[UNK_F15] = (2.0f * (s16)Rand_ZeroFloat(9.9f) * M_PI) / 10.0f;
                }
            } else {
                f32 sp80;

                if (sGroundBlastType == 1) {
                    if (sKotakePtr->workf[UNK_F11] > 1.0f) {
                        for (i = 0; i < 3; i++) {
                            Vec3f pos;
                            Vec3f velocity;
                            Vec3f accel;
                            pos.x = Rand_CenteredFloat(280.0f) + sKotakePtr->groundBlastPos2.x;
                            pos.z = Rand_CenteredFloat(280.0f) + sKotakePtr->groundBlastPos2.z;
                            pos.y = sKotakePtr->groundBlastPos2.y + 30.0f;
                            velocity.x = 0.0f;
                            velocity.y = 0.0f;
                            velocity.z = 0.0f;
                            accel.x = 0.0f;
                            accel.y = 0.13f;
                            accel.z = 0.0f;
                            BossTw_AddDmgCloud(play, TWEFF_3, &pos, &velocity, &accel, Rand_ZeroFloat(5.0f) + 20, 0, 0,
                                               80);
                        }
                    }
                    sp80 = 3.0f;
                } else {
                    sp80 = 1.0f;
                }

                Math_ApproachF(&sKotakePtr->workf[UNK_F14], 0.0f, 1.0f, 0.2f * sp80);
                Math_ApproachF(&sKotakePtr->workf[UNK_F11], 0.0f, 1.0f, 5.0f * sp80);
                Math_ApproachF(&sKotakePtr->workf[UNK_F9], 0.0f, 1.0f, sp80);

                if (sKotakePtr->workf[UNK_F9] <= 0.0f) {
                    Actor_Kill(&this->actor);
                }
            }
            break;
    }
}

s32 BossTw_BlastShieldCheck(BossTw* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 ret = false;

    if (1) {}

    if (this->csState1 == 1) {
        if (this->collider.base.acFlags & AC_HIT) {
            ColliderElement* acHitElem;

            this->collider.base.acFlags &= ~AC_HIT;
            this->collider.base.atFlags &= ~AT_HIT;
            acHitElem = this->collider.elem.acHitElem;

            if (acHitElem->atDmgInfo.dmgFlags & DMG_SHIELD) {
                this->work[INVINC_TIMER] = 7;
                play->envCtx.lightBlend = 1.0f;
                Rumble_Request(0.0f, 100, 5, 4);

                if (Player_HasMirrorShieldEquipped(play)) {
                    if (this->blastType == 1) {
                        if (sShieldIceCharge != 0) {
                            sShieldIceCharge = 0;
                            BossTw_AddShieldDeflectEffect(play, 10.0f, 1);
                        } else {
                            BossTw_AddShieldHitEffect(play, 10.0f, 1);
                            sShieldFireCharge++;
                            D_8094C86F = (sShieldFireCharge * 2) + 8;
                            D_8094C872 = -7;
                        }
                    } else {
                        if (sShieldFireCharge != 0) {
                            sShieldFireCharge = 0;
                            if (1) {}
                            BossTw_AddShieldDeflectEffect(play, 10.0f, 0);
                        } else {
                            BossTw_AddShieldHitEffect(play, 10.0f, 0);
                            sShieldIceCharge++;
                            D_8094C86F = (sShieldIceCharge * 2) + 8;
                            D_8094C872 = -7;
                        }
                    }

                    if ((sShieldIceCharge >= 3) || (sShieldFireCharge >= 3)) {
                        this->timers[0] = 80;
                        this->csState1 = 10;
                        Matrix_MtxFToYXZRotS(&player->shieldMf, &this->magicDir, 0);
                        this->magicDir.y += 0x8000;
                        this->magicDir.x = -this->magicDir.x;
                        D_8094C86F = 8;
                    } else {
                        this->csState1 = 2;
                        this->timers[0] = 20;
                        sEnvType = 0;
                    }
                } else {
                    BossTw_AddShieldDeflectEffect(play, 10.0f, this->blastType);
                    this->csState1 = 2;
                    this->timers[0] = 20;
                    sEnvType = 0;
                    sShieldIceCharge = 0;
                    sShieldFireCharge = 0;
                    Sfx_PlaySfxCentered(NA_SE_IT_SHIELD_REFLECT_MG2);
                }

                ret = true;
            }
        }
    }

    return ret;
}

void BossTw_BlastUpdate(Actor* thisx, PlayState* play) {
    BossTw* this = (BossTw*)thisx;
    ColliderCylinder* collider;
    s16 i;

    this->work[CS_TIMER_1]++;
    this->work[CS_TIMER_2]++;
    this->work[TAIL_IDX]++;

    if (this->work[TAIL_IDX] > 29) {
        this->work[TAIL_IDX] = 0;
    }

    this->blastTailPos[this->work[TAIL_IDX]] = this->actor.world.pos;

    this->actionFunc(this, play);

    for (i = 0; i < 5; i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }

    if (this->work[INVINC_TIMER] != 0) {
        this->work[INVINC_TIMER]--;
    }

    if (this->work[BURN_TMR] != 0) {
        this->work[BURN_TMR]--;
    }

    this->actor.focus.pos = this->actor.world.pos;
    collider = &this->collider;
    Collider_UpdateCylinder(&this->actor, collider);

    if (this->blastActive && this->work[INVINC_TIMER] == 0 && !BossTw_BlastShieldCheck(this, play)) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &collider->base);
        CollisionCheck_SetAT(play, &play->colChkCtx, &collider->base);
    }

    this->blastActive = false;
}

void BossTw_BlastDraw(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BossTw* this = (BossTw*)thisx;
    f32 scaleFactor;
    s16 tailIdx;
    s16 i;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 8818);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    switch (this->actor.params) {
        case TW_FIRE_BLAST:
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, (s8)this->workf[TAIL_ALPHA]);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
            for (i = 9; i >= 0; i--) {
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(
                               play->state.gfxCtx, G_TX_RENDERTILE, ((this->work[CS_TIMER_1] * 3) + (i * 10)) & 0x7F,
                               ((-this->work[CS_TIMER_1] * 15) + (i * 50)) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
                tailIdx = ((this->work[TAIL_IDX] - i) + 30) % 30;
                Matrix_Translate(this->blastTailPos[tailIdx].x, this->blastTailPos[tailIdx].y,
                                 this->blastTailPos[tailIdx].z, MTXMODE_NEW);
                scaleFactor = 1.0f - (i * 0.09f);
                Matrix_Scale(this->actor.scale.x * scaleFactor, this->actor.scale.y * scaleFactor,
                             this->actor.scale.z * scaleFactor, MTXMODE_APPLY);
                Matrix_ReplaceRotation(&play->billboardMtxF);
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 8865);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaFireDL));
            }
            break;

        case TW_FIRE_BLAST_GROUND:
            break;

        case TW_ICE_BLAST:
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s8)this->workf[TAIL_ALPHA]);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceMaterialDL));
            for (i = 9; i >= 0; i--) {
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(
                               play->state.gfxCtx, G_TX_RENDERTILE, ((this->work[CS_TIMER_1] * 3) + (i * 0xA)) & 0x7F,
                               (u8)((-this->work[CS_TIMER_1] * 0xF) + (i * 50)), 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
                tailIdx = ((this->work[TAIL_IDX] - i) + 30) % 30;
                Matrix_Translate(this->blastTailPos[tailIdx].x, this->blastTailPos[tailIdx].y,
                                 this->blastTailPos[tailIdx].z, MTXMODE_NEW);
                scaleFactor = 1.0f - (i * 0.09f);
                Matrix_Scale(this->actor.scale.x * scaleFactor, this->actor.scale.y * scaleFactor,
                             this->actor.scale.z * scaleFactor, MTXMODE_APPLY);
                Matrix_ReplaceRotation(&play->billboardMtxF);
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 9004);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceModelDL));
            }
            break;

        case TW_ICE_BLAST_GROUND:
            break;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 9013);
}

void BossTw_DrawDeathBall(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BossTw* this = (BossTw*)thisx;
    f32 scaleFactor;
    s16 tailIdx;
    s16 i;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 9028);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    if (this->actor.params == TW_DEATHBALL_KOUME) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, (s8)this->workf[TAIL_ALPHA]);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);

        for (i = 9; i >= 0; i--) {
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(
                           play->state.gfxCtx, G_TX_RENDERTILE, (((this->work[CS_TIMER_1] * 3) + (i * 0xA))) & 0x7F,
                           (u8)((-this->work[CS_TIMER_1] * 0xF) + (i * 50)), 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            tailIdx = ((this->work[TAIL_IDX] - i) + 30) % 30;
            Matrix_Translate(this->blastTailPos[tailIdx].x, this->blastTailPos[tailIdx].y,
                             this->blastTailPos[tailIdx].z, MTXMODE_NEW);
            scaleFactor = (1.0f - (i * 0.09f));
            Matrix_Scale(this->actor.scale.x * scaleFactor, this->actor.scale.y * scaleFactor,
                         this->actor.scale.z * scaleFactor, MTXMODE_APPLY);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 9071);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaFireDL));
        }
    } else {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s8)this->workf[TAIL_ALPHA]);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceMaterialDL));

        for (i = 9; i >= 0; i--) {
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(
                           play->state.gfxCtx, G_TX_RENDERTILE, (((this->work[CS_TIMER_1] * 3) + (i * 0xA))) & 0x7F,
                           (u8)((-this->work[CS_TIMER_1] * 0xF) + (i * 50)), 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            tailIdx = ((this->work[TAIL_IDX] - i) + 30) % 30;
            Matrix_Translate(this->blastTailPos[tailIdx].x, this->blastTailPos[tailIdx].y,
                             this->blastTailPos[tailIdx].z, MTXMODE_NEW);
            scaleFactor = (1.0f - (i * 0.09f));
            Matrix_Scale(this->actor.scale.x * scaleFactor, this->actor.scale.y * scaleFactor,
                         this->actor.scale.z * scaleFactor, MTXMODE_APPLY);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_tw.c", 9107);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceModelDL));
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_tw.c", 9111);
}

void BossTw_UpdateEffects(PlayState* play) {
    static Color_RGB8 sDotColors[] = {
        { 255, 128, 0 },   { 255, 0, 0 },     { 255, 255, 0 },   { 255, 0, 0 },
        { 100, 100, 100 }, { 255, 255, 255 }, { 150, 150, 150 }, { 255, 255, 255 },
    };
    Vec3f sp11C;
    BossTwEffect* eff = play->specialEffects;
    Player* player = GET_PLAYER(play);
    u8 sp113 = 0;
    s16 i;
    s16 j;
    s16 colorIdx;
    Vec3f off;

    for (i = 0; i < BOSS_TW_EFFECT_COUNT; i++) {
        if (eff->type != TWEFF_NONE) {
            eff->pos.x += eff->curSpeed.x;
            eff->pos.y += eff->curSpeed.y;
            eff->pos.z += eff->curSpeed.z;
            eff->frame++;
            eff->curSpeed.x += eff->accel.x;
            eff->curSpeed.y += eff->accel.y;
            eff->curSpeed.z += eff->accel.z;

            if (eff->type == TWEFF_DOT) {
                colorIdx = eff->frame % 4;

                if (eff->work[EFF_ARGS] == 0) {
                    colorIdx += 4;
                }

                eff->color.r = sDotColors[colorIdx].r;
                eff->color.g = sDotColors[colorIdx].g;
                eff->color.b = sDotColors[colorIdx].b;
                eff->alpha -= 20;

                if (eff->alpha <= 0) {
                    eff->alpha = 0;
                    eff->type = TWEFF_NONE;
                }

            } else if ((eff->type == TWEFF_3) || (eff->type == TWEFF_2)) {
                if (eff->work[EFF_ARGS] == 2) {
                    eff->alpha -= 20;
                    if (eff->alpha <= 0) {
                        eff->alpha = 0;
                        eff->type = TWEFF_NONE;
                    }
                } else if (eff->work[EFF_ARGS] == 0) {
                    eff->alpha += 10;
                    if (eff->alpha >= 100) {
                        eff->work[EFF_ARGS]++;
                    }
                } else {
                    eff->alpha -= 3;
                    if (eff->alpha <= 0) {
                        eff->alpha = 0;
                        eff->type = TWEFF_NONE;
                    }
                }
            } else if (eff->type == TWEFF_FLAME) {
                if (eff->work[EFF_UNKS1] != 0) {
                    eff->alpha = (eff->alpha - (i & 7)) - 0xD;
                    if (eff->alpha <= 0) {
                        eff->alpha = 0;
                        eff->type = TWEFF_NONE;
                    }
                } else {
                    eff->alpha += 300;
                    if (eff->alpha >= 255) {
                        eff->alpha = 255;
                        eff->work[EFF_UNKS1]++;
                    }
                }
            } else if (eff->type == TWEFF_SHLD_BLST) {
                D_8094C870 = 1;
                eff->work[EFF_UNKS1]++;
                if (eff->work[EFF_UNKS1] > 30) {
                    eff->alpha -= 10;
                    if (eff->alpha <= 0) {
                        eff->alpha = 0;
                        eff->type = TWEFF_NONE;
                    }
                }

                Math_ApproachF(&eff->workf[EFF_SCALE], eff->workf[EFF_DIST], 0.1f, 0.003f);
                off.x = sTwinrovaPtr->actor.world.pos.x - eff->pos.x;
                off.y = (sTwinrovaPtr->actor.world.pos.y - eff->pos.y) * 0.5f;
                off.z = sTwinrovaPtr->actor.world.pos.z - eff->pos.z;

                if (sTwinrovaPtr->actionFunc != BossTw_TwinrovaStun) {
                    Vec3f spF4;
                    Vec3f spE8;
                    Vec3f spDC;

                    if ((SQ(off.x) + SQ(off.y) + SQ(off.z)) < SQ(60.0f)) {
                        for (j = 0; j < 50; j++) {
                            spF4.x = sTwinrovaPtr->actor.world.pos.x + Rand_CenteredFloat(35.0f);
                            spF4.y = sTwinrovaPtr->actor.world.pos.y + Rand_CenteredFloat(70.0f);
                            spF4.z = sTwinrovaPtr->actor.world.pos.z + Rand_CenteredFloat(35.0f);
                            spE8.x = Rand_CenteredFloat(20.0f);
                            spE8.y = Rand_CenteredFloat(20.0f);
                            spE8.z = Rand_CenteredFloat(20.0f);
                            spDC.x = 0.0f;
                            spDC.y = 0.0f;
                            spDC.z = 0.0f;
                            BossTw_AddFlameEffect(play, &spF4, &spE8, &spDC, Rand_ZeroFloat(10.0f) + 25.0f,
                                                  eff->work[EFF_ARGS]);
                        }

                        sTwinrovaPtr->twinrovaStun = 1;
                        play->envCtx.lightBlend = 1.0f;
                        eff->type = TWEFF_NONE;
                    }
                }
            } else if (eff->type == TWEFF_MERGEFLAME) {
                sp11C.x = 0.0f;
                sp11C.y = eff->pos.y;
                sp11C.z = eff->workf[EFF_DIST];
                Matrix_RotateY(sTwinrovaPtr->workf[UNK_F9] + eff->workf[EFF_ROLL], MTXMODE_NEW);
                Matrix_MultVec3f(&sp11C, &eff->pos);

                if (eff->work[EFF_UNKS1] != 0) {
                    eff->alpha -= 60;
                    if (eff->alpha <= 0) {
                        eff->alpha = 0;
                        eff->type = TWEFF_NONE;
                    }
                } else {
                    eff->alpha += 60;
                    if (eff->alpha >= 255) {
                        eff->alpha = 255;
                        eff->work[EFF_UNKS1]++;
                    }
                }
            } else if (eff->type == TWEFF_SHLD_DEFL) {
                eff->work[EFF_UNKS1]++;
                sp11C.x = 0.0f;
                sp11C.y = 0.0f;
                sp11C.z = -eff->workf[EFF_DIST];
                Matrix_RotateY(BINANG_TO_RAD_ALT(sShieldHitYaw), MTXMODE_NEW);
                Matrix_RotateX(-0.2f, MTXMODE_APPLY);
                Matrix_RotateZ(eff->workf[EFF_ROLL], MTXMODE_APPLY);
                Matrix_RotateY(eff->workf[EFF_YAW], MTXMODE_APPLY);
                Matrix_MultVec3f(&sp11C, &eff->pos);
                eff->pos.x += sShieldHitPos.x;
                eff->pos.y += sShieldHitPos.y;
                eff->pos.z += sShieldHitPos.z;

                if (eff->work[EFF_UNKS1] < 10) {
                    Math_ApproachF(&eff->workf[EFF_DIST], 50.0f, 0.5f, 100.0f);
                } else {
                    Math_ApproachF(&eff->workf[EFF_YAW], 0.0f, 0.5f, 10.0f);
                    Math_ApproachF(&eff->workf[EFF_DIST], 1000.0f, 1.0f, 10.0f);
                    if (eff->work[EFF_UNKS1] >= 0x10) {
                        if ((eff->work[EFF_UNKS1] == 16) && (sp113 == 0)) {
                            Vec3f spD0;

                            sp113 = 1;
                            spD0 = eff->pos;
                            if (eff->pos.y > 40.0f) {
                                spD0.y = 220.0f;
                            } else {
                                spD0.y = -50.0f;
                            }
                            if ((sTwinrovaPtr->groundBlastPos.y = BossTw_GetFloorY(&spD0)) >= 0.0f) {
                                if (sTwinrovaPtr->groundBlastPos.y != 35.0f) {
                                    sTwinrovaPtr->groundBlastPos.x = eff->pos.x;
                                    sTwinrovaPtr->groundBlastPos.z = eff->pos.z;
                                    BossTw_SpawnGroundBlast(sTwinrovaPtr, play, eff->work[EFF_ARGS]);
                                }
                            }
                        }
                        eff->alpha -= 300;
                        if (eff->alpha <= 0) {
                            eff->alpha = 0;
                            eff->type = TWEFF_NONE;
                        }
                    }
                }

                BossTw_AddFlameEffect(play, &eff->pos, &sZeroVector, &sZeroVector, 10, eff->work[EFF_ARGS]);
            } else if (eff->type == TWEFF_SHLD_HIT) {
                eff->work[EFF_UNKS1]++;
                sp11C.x = 0.0f;
                sp11C.y = 0.0f;
                sp11C.z = -eff->workf[EFF_DIST];
                Matrix_RotateY(BINANG_TO_RAD_ALT(sShieldHitYaw), MTXMODE_NEW);
                Matrix_RotateX(-0.2f, MTXMODE_APPLY);
                Matrix_RotateZ(eff->workf[EFF_ROLL], MTXMODE_APPLY);
                Matrix_RotateY(eff->workf[EFF_YAW], MTXMODE_APPLY);
                Matrix_MultVec3f(&sp11C, &eff->pos);
                eff->pos.x += sShieldHitPos.x;
                eff->pos.y += sShieldHitPos.y;
                eff->pos.z += sShieldHitPos.z;

                if (eff->work[EFF_UNKS1] < 5) {
                    Math_ApproachF(&eff->workf[EFF_DIST], 40.0f, 0.5f, 100.0f);
                } else {
                    Math_ApproachF(&eff->workf[EFF_DIST], 0.0f, 0.2f, 5.0f);
                    if (eff->work[EFF_UNKS1] >= 11) {
                        eff->alpha -= 30;
                        if (eff->alpha <= 0) {
                            eff->alpha = 0;
                            eff->type = TWEFF_NONE;
                        }
                    }
                }

                BossTw_AddFlameEffect(play, &eff->pos, &sZeroVector, &sZeroVector, 10, eff->work[EFF_ARGS]);
            } else if (eff->type == TWEFF_RING) {
                if (eff->work[EFF_UNKS1] == 0) {
                    Math_ApproachF(&eff->workf[EFF_SCALE], eff->workf[EFF_DIST], 0.05f, 1.0f);

                    if (eff->frame >= 16) {
                        eff->alpha -= 10;
                        if (eff->alpha <= 0) {
                            eff->alpha = 0;
                            eff->type = TWEFF_NONE;
                        }
                    }
                } else {
                    Math_ApproachF(&eff->workf[EFF_SCALE], eff->workf[EFF_DIST], 0.1f, 2.0f);
                    eff->alpha -= 15;

                    if (eff->alpha <= 0) {
                        eff->alpha = 0;
                        eff->type = TWEFF_NONE;
                    }
                }
            } else if (eff->type == TWEFF_PLYR_FRZ) {
                if (eff->work[EFF_ARGS] < eff->frame) {
                    f32 phi_f0 = 1.0f;

                    if (eff->target != NULL || sGroundBlastType == 1) {
                        phi_f0 *= 3.0f;
                    }

                    Math_ApproachF(&eff->workf[EFF_SCALE], 0.0f, 1.0f, 0.0005f * phi_f0);

                    if (eff->workf[EFF_SCALE] == 0.0f) {
                        eff->type = TWEFF_NONE;
                        if (eff->target == NULL) {
                            player->stateFlags2 &= ~PLAYER_STATE2_15;
                            sFreezeState = 0;
                        }
                    }
                } else {
                    if (sGroundBlastType == 1) {
                        eff->frame = 100;
                    }
                    Math_ApproachF(&eff->workf[EFF_DIST], 0.8f, 0.2f, 0.04f);

                    if (eff->target == NULL) {
                        Math_ApproachF(&eff->workf[EFF_SCALE], 0.012f, 1.0f, 0.002f);
                        eff->workf[EFF_ROLL] += eff->workf[EFF_DIST];

                        if (eff->workf[EFF_ROLL] >= 0.8f) {
                            eff->workf[EFF_ROLL] -= 0.8f;
                            player->stateFlags2 |= PLAYER_STATE2_15;
                        } else {
                            player->stateFlags2 &= ~PLAYER_STATE2_15;
                        }

                        if ((sKotakePtr->workf[UNK_F11] > 10.0f) && (sKotakePtr->workf[UNK_F11] < 200.0f)) {
                            eff->frame = 100;
                        }

                        if (!(play->gameplayFrames & 1)) {
                            play->damagePlayer(play, -1);
                        }
                    } else {
                        Math_ApproachF(&eff->workf[EFF_SCALE], 0.042f, 1.0f, 0.002f);
                    }

                    if ((eff->workf[EFF_DIST] > 0.4f) && ((eff->frame & 7) == 0)) {
                        Vec3f spC0;
                        Vec3f spB4;
                        Vec3f spA8;
                        s16 spA6 = Rand_ZeroFloat(PLAYER_BODYPART_MAX - 0.1f);
                        f32 phi_f22;

                        if (eff->target == NULL) {
                            spC0.x = player->bodyPartsPos[spA6].x + Rand_CenteredFloat(5.0f);
                            spC0.y = player->bodyPartsPos[spA6].y + Rand_CenteredFloat(5.0f);
                            spC0.z = player->bodyPartsPos[spA6].z + Rand_CenteredFloat(5.0f);
                            phi_f22 = 10.0f;
                        } else {
                            Actor* unk44 = eff->target;

                            spC0.x = unk44->world.pos.x + Rand_CenteredFloat(40.0f);
                            spC0.y = unk44->world.pos.y + Rand_CenteredFloat(40.0f);
                            spC0.z = unk44->world.pos.z + Rand_CenteredFloat(40.0f);
                            phi_f22 = 20.0f;
                        }

                        spB4.x = 0.0f;
                        spB4.y = 0.0f;
                        spB4.z = 0.0f;
                        spA8.x = 0.0f;
                        spA8.y = 0.1f;
                        spA8.z = 0.0f;

                        BossTw_AddDmgCloud(play, TWEFF_3, &spC0, &spB4, &spA8, phi_f22 + Rand_ZeroFloat(phi_f22 * 0.5f),
                                           0, 0, 150);
                    }
                }
            }
        }
        eff++;
    }
}

static s32 sRandSeed0;
static s32 sRandSeed1;
static s32 sRandSeed2;

void BossTw_InitRand(s32 seed0, s32 seed1, s32 seed2) {
    sRandSeed0 = seed0;
    sRandSeed1 = seed1;
    sRandSeed2 = seed2;
}

f32 BossTw_RandZeroOne(void) {
    f32 rand;

    // Wichmann-Hill algorithm
    sRandSeed0 = (sRandSeed0 * 171) % 30269;
    sRandSeed1 = (sRandSeed1 * 172) % 30307;
    sRandSeed2 = (sRandSeed2 * 170) % 30323;

    rand = (sRandSeed0 / 30269.0f) + (sRandSeed1 / 30307.0f) + (sRandSeed2 / 30323.0f);
    while (rand >= 1.0f) {
        rand -= 1.0f;
    }

    return fabsf(rand);
}

void BossTw_DrawEffects(PlayState* play) {
    u8 materialFlag = 0;
    s16 i;
    s16 j;
    s32 pad;
    Player* player = GET_PLAYER(play);
    s16 phi_s4;
    BossTwEffect* currentEffect;
    BossTwEffect* effectHead;
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    currentEffect = play->specialEffects;
    effectHead = currentEffect;

    OPEN_DISPS(gfxCtx, "../z_boss_tw.c", 9592);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    for (i = 0; i < BOSS_TW_EFFECT_COUNT; i++) {
        if (currentEffect->type == TWEFF_DOT) {
            if (materialFlag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, gTwinrovaMagicParticleMaterialDL);
                materialFlag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, currentEffect->color.r, currentEffect->color.g,
                            currentEffect->color.b, currentEffect->alpha);
            Matrix_Translate(currentEffect->pos.x, currentEffect->pos.y, currentEffect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(currentEffect->workf[EFF_SCALE], currentEffect->workf[EFF_SCALE], 1.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_boss_tw.c", 9617);
            gSPDisplayList(POLY_XLU_DISP++, gTwinrovaMagicParticleModelDL);
        }

        currentEffect++;
    }

    materialFlag = 0;
    currentEffect = effectHead;

    for (i = 0; i < BOSS_TW_EFFECT_COUNT; i++) {
        if (currentEffect->type == TWEFF_3) {
            if (materialFlag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceMaterialDL));
                materialFlag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, currentEffect->alpha);
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (currentEffect->frame * 3) & 0x7F,
                                        (currentEffect->frame * 15) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            Matrix_Translate(currentEffect->pos.x, currentEffect->pos.y, currentEffect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(currentEffect->workf[EFF_SCALE], currentEffect->workf[EFF_SCALE], 1.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_boss_tw.c", 9660);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceModelDL));
        }
        currentEffect++;
    }

    materialFlag = 0;
    currentEffect = effectHead;

    for (i = 0; i < BOSS_TW_EFFECT_COUNT; i++) {
        if (currentEffect->type == TWEFF_2) {
            if (materialFlag == 0) {
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
                materialFlag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, currentEffect->alpha);
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (currentEffect->frame * 3) & 0x7F,
                                        (currentEffect->frame * 15) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            Matrix_Translate(currentEffect->pos.x, currentEffect->pos.y, currentEffect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(currentEffect->workf[EFF_SCALE], currentEffect->workf[EFF_SCALE], 1.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_boss_tw.c", 9709);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaFireDL));
        }

        currentEffect++;
    }

    materialFlag = 0;
    currentEffect = effectHead;

    for (i = 0; i < BOSS_TW_EFFECT_COUNT; i++) {
        if (currentEffect->type == TWEFF_RING) {
            if (materialFlag == 0) {
                materialFlag++;
            }

            gSPSegment(POLY_XLU_DISP++, 0xD,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, currentEffect->frame & 0x7F,
                                        (currentEffect->frame * 8) & 0xFF, 0x20, 0x40, 1,
                                        (currentEffect->frame * -2) & 0x7F, 0, 0x10, 0x10));

            if (currentEffect->work[EFF_ARGS] == 1) {
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 65, 0, currentEffect->alpha);
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 0, 128);
            } else {
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, currentEffect->alpha);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);
            }

            Matrix_Translate(currentEffect->pos.x, currentEffect->pos.y, currentEffect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);

            if (currentEffect->work[EFF_UNKS1] == 0) {
                Matrix_Translate(0.0f, 0.0f, 60.0f, MTXMODE_APPLY);
            } else {
                Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            }

            Matrix_RotateZ(currentEffect->workf[EFF_ROLL], MTXMODE_APPLY);
            Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
            Matrix_Scale(currentEffect->workf[EFF_SCALE], 1.0f, currentEffect->workf[EFF_SCALE], MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_boss_tw.c", 9775);
            gDPSetRenderMode(POLY_XLU_DISP++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
            gSPClearGeometryMode(POLY_XLU_DISP++, G_CULL_BACK | G_FOG);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaEffectHaloDL));
        }

        currentEffect++;
    }

    materialFlag = 0;
    currentEffect = effectHead;

    for (i = 0; i < BOSS_TW_EFFECT_COUNT; i++) {
        if (currentEffect->type == TWEFF_PLYR_FRZ) {
            Actor* actor;
            Vec3f off;

            if (materialFlag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceSurroundingPlayerMaterialDL));
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, 255);
                gSPSegment(
                    POLY_XLU_DISP++, 8,
                    Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
                materialFlag++;
                BossTw_InitRand(1, 0x71AC, 0x263A);
            }

            actor = currentEffect->target;
            phi_s4 = actor == NULL ? 70 : 20;

            for (j = 0; j < phi_s4; j++) {
                off.x = (BossTw_RandZeroOne() - 0.5f) * 30.0f;
                off.y = currentEffect->workf[EFF_DIST] * j;
                off.z = (BossTw_RandZeroOne() - 0.5f) * 30.0f;

                if (actor != NULL) {
                    Matrix_Translate(actor->world.pos.x + off.x, actor->world.pos.y + off.y, actor->world.pos.z + off.z,
                                     MTXMODE_NEW);
                } else {
                    Matrix_Translate(player->actor.world.pos.x + off.x, player->actor.world.pos.y + off.y,
                                     player->actor.world.pos.z + off.z, MTXMODE_NEW);
                }

                Matrix_Scale(currentEffect->workf[EFF_SCALE], currentEffect->workf[EFF_SCALE],
                             currentEffect->workf[EFF_SCALE], MTXMODE_APPLY);
                Matrix_RotateY(BossTw_RandZeroOne() * M_PI, MTXMODE_APPLY);
                Matrix_RotateX((BossTw_RandZeroOne() - 0.5f) * M_PI * 0.5f, MTXMODE_APPLY);
                MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_boss_tw.c", 9855);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceModelDL));
            }
        }

        currentEffect++;
    }

    materialFlag = 0;
    currentEffect = effectHead;

    for (i = 0; i < BOSS_TW_EFFECT_COUNT; i++) {
        if (currentEffect->type >= TWEFF_FLAME) {
            if (currentEffect->work[EFF_ARGS] == 0) {
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, currentEffect->alpha);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceMaterialDL));
            } else {
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, currentEffect->alpha);
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
            }

            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (currentEffect->frame * 3) & 0x7F,
                                        (-currentEffect->frame * 15) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            Matrix_Translate(currentEffect->pos.x, currentEffect->pos.y, currentEffect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(currentEffect->workf[EFF_SCALE], currentEffect->workf[EFF_SCALE], 1.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, gfxCtx, "../z_boss_tw.c", 9911);

            if (currentEffect->work[EFF_ARGS] == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaIceModelDL));
            } else {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gTwinrovaFireDL));
            }
        }

        currentEffect++;
    }

    CLOSE_DISPS(gfxCtx, "../z_boss_tw.c", 9920);
}

void BossTw_TwinrovaSetupArriveAtTarget(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_TwinrovaArriveAtTarget;
    Animation_MorphToLoop(&this->skelAnime, &gTwinrovaHoverAnim, -3.0f);
    this->work[CS_TIMER_1] = Rand_ZeroFloat(100.0f);
    this->timers[1] = 25;
    this->rotateSpeed = 0.0f;
}

void BossTw_TwinrovaArriveAtTarget(BossTw* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.world.pos.x, this->targetPos.x, 0.1f, fabsf(this->actor.velocity.x) * 1.5f);
    Math_ApproachF(&this->actor.world.pos.y, this->targetPos.y, 0.1f, fabsf(this->actor.velocity.y) * 1.5f);
    Math_ApproachF(&this->targetPos.y, 380.0f, 1.0f, 2.0f);
    Math_ApproachF(&this->actor.world.pos.z, this->targetPos.z, 0.1f, fabsf(this->actor.velocity.z) * 1.5f);

    if (this->timers[1] == 1) {
        BossTw_TwinrovaSetupChargeBlast(this, play);
    }

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, this->rotateSpeed);
    Math_ApproachF(&this->rotateSpeed, 4096.0f, 1.0f, 350.0f);
}

void BossTw_TwinrovaSetupChargeBlast(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_TwinrovaChargeBlast;
    Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaWindUpAnim, -5.0f);
    this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaWindUpAnim);
    this->csState1 = 0;
}

void BossTw_TwinrovaChargeBlast(BossTw* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    Math_ApproachF(&this->actor.world.pos.x, this->targetPos.x, 0.03f, fabsf(this->actor.velocity.x) * 1.5f);
    Math_ApproachF(&this->actor.world.pos.y, this->targetPos.y, 0.03f, fabsf(this->actor.velocity.y) * 1.5f);
    Math_ApproachF(&this->actor.world.pos.z, this->targetPos.z, 0.03f, fabsf(this->actor.velocity.z) * 1.5f);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x1000);

    if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
        if ((s8)this->actor.colChkInfo.health < 10) {
            sTwinrovaBlastType = Rand_ZeroFloat(1.99f);
        } else {
            if (++sFixedBlatSeq >= 4) {
                sFixedBlatSeq = 1;
                sFixedBlastType = !sFixedBlastType;
            }

            sTwinrovaBlastType = sFixedBlastType;
        }

        BossTw_TwinrovaSetupShootBlast(this, play);
    }
}

void BossTw_TwinrovaSetupShootBlast(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_TwinrovaShootBlast;

    if (sTwinrovaBlastType == 0) {
        Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaIceAttackAnim, 0.0f);
    } else {
        Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaFireAttackAnim, 0.0f);
    }

    this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaFireAttackAnim);
}

void BossTw_TwinrovaShootBlast(BossTw* this, PlayState* play) {
    BossTw* twMagic;
    Vec3f* magicSpawnPos;
    s32 magicParams;
    s16 i;

    SkelAnime_Update(&this->skelAnime);

    if (Animation_OnFrame(&this->skelAnime, 8.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_THROW_MASIC);
        Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_YOUNG_SHOOTVC);
    }

    if (Animation_OnFrame(&this->skelAnime, 12.0f)) {
        if (sTwinrovaBlastType != 0) {
            magicParams = TW_FIRE_BLAST;
            magicSpawnPos = &this->rightScepterPos;
        } else {
            magicParams = TW_ICE_BLAST;
            magicSpawnPos = &this->leftScepterPos;
        }

        twMagic = (BossTw*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_BOSS_TW, magicSpawnPos->x,
                                              magicSpawnPos->y, magicSpawnPos->z, 0, 0, 0, magicParams);

        if (twMagic != NULL) {
            twMagic->blastType = magicParams == TW_ICE_BLAST ? 0 : 1;
        }

        sEnvType = twMagic->blastType + 1;

        if (1) {
            Vec3f velocity = { 0.0f, 0.0f, 0.0f };
            Vec3f accel = { 0.0f, 0.0f, 0.0f };

            for (i = 0; i < 100; i++) {
                velocity.x = Rand_CenteredFloat(30.0f);
                velocity.y = Rand_CenteredFloat(30.0f);
                velocity.z = Rand_CenteredFloat(30.0f);
                BossTw_AddDotEffect(play, magicSpawnPos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 11,
                                    twMagic->blastType, 75);
            }
        }
    }

    if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
        BossTw_TwinrovaSetupDoneBlastShoot(this, play);
    }

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x1000);
}

void BossTw_TwinrovaSetupDoneBlastShoot(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_TwinrovaDoneBlastShoot;
    Animation_MorphToLoop(&this->skelAnime, &gTwinrovaHoverAnim, -10.0f);
    this->timers[1] = 60;
}

void BossTw_TwinrovaDoneBlastShoot(BossTw* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    if (this->timers[1] == 0 && D_8094C870 == 0) {
        if (sTwinrovaPtr->timers[2] == 0) {
            BossTw_TwinrovaSetupFly(this, play);
        } else {
            BossTw_TwinrovaSetupLaugh(this, play);
        }
    }

    D_8094C870 = 0;
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x1000);
}

void BossTw_TwinrovaDamage(BossTw* this, PlayState* play, u8 damage) {
    if (this->actionFunc != BossTw_TwinrovaStun) {
        Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaChargedAttackHitAnim, -15.0f);
        this->timers[0] = 150;
        this->timers[1] = 20;
        this->csState1 = 0;
        this->actor.velocity.y = 0.0f;
    } else {
        this->work[FOG_TIMER] = 10;
        this->work[INVINC_TIMER] = 20;
        Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaDamageAnim, -3.0f);
        this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaDamageAnim);
        this->csState1 = 1;

        if ((s8)(this->actor.colChkInfo.health -= damage) < 0) {
            this->actor.colChkInfo.health = 0;
        }

        if ((s8)this->actor.colChkInfo.health <= 0) {
            BossTw_TwinrovaSetupDeathCS(this, play);
            Enemy_StartFinishingBlow(play, &this->actor);
            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_YOUNG_DEAD);
            return;
        }

        Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_YOUNG_DAMAGE2);
        Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_CUTBODY);
    }

    this->actionFunc = BossTw_TwinrovaStun;
}

void BossTw_TwinrovaStun(BossTw* this, PlayState* play) {
    s16 cloudType;

    this->unk_5F8 = 1;
    this->actor.flags |= ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER;

    cloudType = sTwinrovaBlastType == 0 ? TWEFF_3 : TWEFF_2;

    if ((this->work[CS_TIMER_1] % 8) == 0) {
        Vec3f pos;
        Vec3f velocity;
        Vec3f accel;
        pos.x = this->actor.world.pos.x + Rand_CenteredFloat(20.0f);
        pos.y = this->actor.world.pos.y + Rand_CenteredFloat(40.0f) + 20;
        pos.z = this->actor.world.pos.z + Rand_CenteredFloat(20.0f);
        velocity.x = 0.0f;
        velocity.y = 0.0f;
        velocity.z = 0.0f;
        accel.x = 0.0f;
        accel.y = 0.1f;
        accel.z = 0.0f;
        BossTw_AddDmgCloud(play, cloudType, &pos, &velocity, &accel, Rand_ZeroFloat(5.0f) + 10.0f, 0, 0, 150);
    }

    SkelAnime_Update(&this->skelAnime);
    this->work[UNK_S8] += 20;

    if (this->work[UNK_S8] > 255) {
        this->work[UNK_S8] = 255;
    }

    Math_ApproachF(&this->workf[UNK_F12], 0.0f, 1.0f, 0.05f);
    this->actor.world.pos.y += this->actor.velocity.y;
    Math_ApproachF(&this->actor.velocity.y, -5.0f, 1.0f, 0.5f);
    this->actor.world.pos.y -= 30.0f;
    Actor_UpdateBgCheckInfo(play, &this->actor, 50.0f, 50.0f, 100.0f, UPDBGCHECKINFO_FLAG_2);
    this->actor.world.pos.y += 30.0f;

    if (this->csState1 == 0) {
        if (this->timers[1] == 0) {
            this->csState1 = 1;
            this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaStunStartAnim);
            Animation_Change(&this->skelAnime, &gTwinrovaStunStartAnim, 1.0f, 0.0f, this->workf[ANIM_SW_TGT], 3, 0.0f);
        }
    } else if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
        this->workf[ANIM_SW_TGT] = 1000.0f;
        Animation_MorphToLoop(&this->skelAnime, &gTwinrovaStunLoopAnim, 0.0f);
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->actor.velocity.y = 0.0f;
    }

    if (this->timers[0] == 0) {
        BossTw_TwinrovaSetupGetUp(this, play);
    }
}

void BossTw_TwinrovaSetupGetUp(BossTw* this, PlayState* play) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaStunEndAnim, 0.0f);
    this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaStunEndAnim);
    this->actionFunc = BossTw_TwinrovaGetUp;
    this->timers[0] = 50;
}

void BossTw_TwinrovaGetUp(BossTw* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.world.pos.y, this->targetPos.y, 0.05f, 5.0f);

    if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
        this->workf[ANIM_SW_TGT] = 1000.0f;
        Animation_MorphToLoop(&this->skelAnime, &gTwinrovaHoverAnim, 0.0f);
    }

    if (this->timers[0] == 0) {
        BossTw_TwinrovaSetupFly(this, play);
    }
}

void BossTw_TwinrovaSetupFly(BossTw* this, PlayState* play) {
    f32 xDiff;
    f32 zDiff;
    f32 yDiff;
    f32 xzDist;
    Player* player = GET_PLAYER(play);

    do {
        this->work[TW_PLLR_IDX] += (s16)(((s16)Rand_ZeroFloat(2.99f)) + 1);
        this->work[TW_PLLR_IDX] %= 4;
        this->targetPos = sTwinrovaPillarPos[this->work[TW_PLLR_IDX]];
        xDiff = this->targetPos.x - player->actor.world.pos.x;
        zDiff = this->targetPos.z - player->actor.world.pos.z;
        xzDist = SQ(xDiff) + SQ(zDiff);
    } while (!(xzDist > SQ(300.0f)));

    this->targetPos.y = 480.0f;
    xDiff = this->targetPos.x - this->actor.world.pos.x;
    yDiff = this->targetPos.y - this->actor.world.pos.y;
    zDiff = this->targetPos.z - this->actor.world.pos.z;
    this->actionFunc = BossTw_TwinrovaFly;
    this->rotateSpeed = 0.0f;
    this->actor.speed = 0.0f;
    this->actor.world.rot.y = RAD_TO_BINANG(Math_FAtan2F(xDiff, zDiff));
    xzDist = sqrtf(SQ(xDiff) + SQ(zDiff));
    this->actor.world.rot.x = RAD_TO_BINANG(Math_FAtan2F(yDiff, xzDist));
    Animation_MorphToLoop(&this->skelAnime, &gTwinrovaHoverAnim, -10.0f);
}

void BossTw_TwinrovaFly(BossTw* this, PlayState* play) {
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    s32 pad;
    f32 yaw;
    f32 xzDist;

    Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
    SkelAnime_Update(&this->skelAnime);
    xDiff = this->targetPos.x - this->actor.world.pos.x;
    yDiff = this->targetPos.y - this->actor.world.pos.y;
    zDiff = this->targetPos.z - this->actor.world.pos.z;
    yaw = RAD_TO_BINANG(Math_FAtan2F(xDiff, zDiff));
    xzDist = sqrtf(SQ(xDiff) + SQ(zDiff));
    Math_ApproachS(&this->actor.world.rot.x, (f32)RAD_TO_BINANG(Math_FAtan2F(yDiff, xzDist)), 0xA, this->rotateSpeed);
    Math_ApproachS(&this->actor.world.rot.y, yaw, 0xA, this->rotateSpeed);
    Math_ApproachS(&this->actor.shape.rot.y, yaw, 0xA, this->rotateSpeed);
    Math_ApproachF(&this->rotateSpeed, 2000.0f, 1.0f, 100.0f);
    Math_ApproachF(&this->actor.speed, 30.0f, 1.0f, 2.0f);
    Actor_UpdateVelocityXYZ(&this->actor);
    Math_ApproachF(&this->actor.world.pos.x, this->targetPos.x, 0.1f, fabsf(this->actor.velocity.x) * 1.5f);
    Math_ApproachF(&this->actor.world.pos.y, this->targetPos.y, 0.1f, fabsf(this->actor.velocity.y) * 1.5f);
    Math_ApproachF(&this->targetPos.y, 380.0f, 1.0f, 2.0f);
    Math_ApproachF(&this->actor.world.pos.z, this->targetPos.z, 0.1f, fabsf(this->actor.velocity.z) * 1.5f);

    if (xzDist < 200.0f) {
        BossTw_TwinrovaSetupArriveAtTarget(this, play);
    }
}

void BossTw_TwinrovaSetupSpin(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_TwinrovaSpin;
    Animation_MorphToLoop(&this->skelAnime, &gTwinrovaHoverAnim, 0.0f);
    this->timers[0] = 20;
    this->actor.speed = 0.0f;
}

void BossTw_TwinrovaSpin(BossTw* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timers[0] != 0) {
        this->collider.base.colMaterial = COL_MATERIAL_METAL;
        this->actor.shape.rot.y -= 0x3000;

        if ((this->timers[0] % 4) == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_ROLL);
        }
    } else {
        BossTw_TwinrovaSetupFly(this, play);
    }
}

void BossTw_TwinrovaSetupLaugh(BossTw* this, PlayState* play) {
    this->actionFunc = BossTw_TwinrovaLaugh;
    Animation_MorphToPlayOnce(&this->skelAnime, &gTwinrovaLaughAnim, 0.0f);
    this->workf[ANIM_SW_TGT] = Animation_GetLastFrame(&gTwinrovaLaughAnim);
    this->actor.speed = 0.0f;
}

void BossTw_TwinrovaLaugh(BossTw* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    if (Animation_OnFrame(&this->skelAnime, 10.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_TWINROBA_YOUNG_LAUGH);
    }

    if (Animation_OnFrame(&this->skelAnime, this->workf[ANIM_SW_TGT])) {
        BossTw_TwinrovaSetupFly(this, play);
    }
}
