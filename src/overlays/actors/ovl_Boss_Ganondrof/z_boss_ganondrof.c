/*
 * File: z_boss_ganondrof.c
 * Overlay: ovl_Boss_Ganondrof
 * Description: Phantom Ganon
 */

#include "z_boss_ganondrof.h"
#include "overlays/actors/ovl_En_fHG/z_en_fhg.h"
#include "overlays/actors/ovl_En_Fhg_Fire/z_en_fhg_fire.h"
#include "overlays/effects/ovl_Effect_Ss_Fhg_Flash/z_eff_ss_fhg_flash.h"
#include "overlays/effects/ovl_Effect_Ss_Hahen/z_eff_ss_hahen.h"

#define FLAGS 0x00000035

#define THIS ((BossGanondrof*)thisx)

typedef enum {
    /* 0 */ NOT_DEAD,
    /* 1 */ DEATH_START,
    /* 2 */ DEATH_THROE,
    /* 3 */ DEATH_WARP,
    /* 4 */ DEATH_SCREAM,
    /* 5 */ DEATH_DISINTEGRATE,
    /* 6 */ DEATH_FINISH
} BossGanondrofDeathStates;

typedef enum {
    /* 0 */ THROW_NORMAL,
    /* 1 */ THROW_SLOW
} BossGanondrofThrowActions;

typedef enum {
    /* 0 */ STUNNED_FALL,
    /* 1 */ STUNNED_GROUND
} BossGanondrofStunnedActions;

typedef enum {
    /* 0 */ CHARGE_WINDUP,
    /* 1 */ CHARGE_START,
    /* 2 */ CHARGE_ATTACK,
    /* 3 */ CHARGE_FINISH
} BossGanondrofChargeActions;

typedef enum {
    /* 0 */ DEATH_SPASM,
    /* 1 */ DEATH_LIMP,
    /* 2 */ DEATH_HUNCHED
} BossGanondrofDeathActions;

void BossGanondrof_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGanondrof_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossGanondrof_Update(Actor* thisx, GlobalContext* globalCtx);
void BossGanondrof_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossGanondrof_SetupIntro(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_Intro(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_SetupPaintings(BossGanondrof* this);
void BossGanondrof_Paintings(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_SetupNeutral(BossGanondrof* this, f32 arg1);
void BossGanondrof_Neutral(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_SetupThrow(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_Throw(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_SetupBlock(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_Block(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_SetupReturn(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_Return(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_SetupCharge(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_Charge(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_Stunned(BossGanondrof* this, GlobalContext* globalCtx);
void BossGanondrof_Death(BossGanondrof* this, GlobalContext* globalCtx);

extern Gfx D_06004EC0[];
extern SkeletonHeader D_0600C710;
extern AnimationHeader D_06003CA4;
extern AnimationHeader D_06001144;
extern AnimationHeader D_06002684;
extern AnimationHeader D_060019A4;
extern AnimationHeader D_0600D99C;
extern AnimationHeader D_0600DF80;
extern AnimationHeader D_0600189C;
extern AnimationHeader D_06001AB0;
extern AnimationHeader D_060108D8;
extern AnimationHeader D_06000D84;
extern AnimationHeader D_0600090C;
extern AnimationHeader D_0600FAC8;
extern AnimationHeader D_06011BCC;
extern AnimationHeader D_06010060;
extern AnimationHeader D_06011F44;
extern AnimationHeader D_0601267C;
extern AnimationHeader D_06003080;
extern AnimationHeader D_0600EC94;
extern AnimationHeader D_06010344;
extern AnimationHeader D_060129E0;
extern AnimationHeader D_0600F48C;

extern UNK_TYPE D_0600B380;
extern UNK_TYPE D_06003DB0;

const ActorInit Boss_Ganondrof_InitVars = {
    ACTOR_BOSS_GANONDROF,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GND,
    sizeof(BossGanondrof),
    (ActorFunc)BossGanondrof_Init,
    (ActorFunc)BossGanondrof_Destroy,
    (ActorFunc)BossGanondrof_Update,
    (ActorFunc)BossGanondrof_Draw,
};

static ColliderCylinderInit sCylinderInitBody = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFE, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 30, 90, -50, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInitSpear = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 20, 30, -20, { 0, 0, 0 } },
};

// clang-format off
static u8 sDecayMaskHigh[16 * 16] = {
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,
    1,0,1,1,0,0,0,0,1,1,1,1,1,1,0,1,
    1,0,1,1,1,0,0,0,0,1,1,1,1,1,0,1,
    1,0,0,1,1,1,1,0,0,0,1,1,1,0,0,1,
    1,0,0,1,1,1,1,1,0,0,0,1,1,0,0,1,
    1,0,1,1,1,1,0,0,0,0,0,1,0,0,0,1,
    1,1,1,1,1,1,1,1,0,0,0,0,1,1,0,1,
    1,0,1,1,1,1,1,0,0,0,0,1,1,1,0,1,
    1,0,0,1,1,1,0,0,0,1,1,1,1,1,0,1,
    1,0,0,0,0,0,0,0,0,0,1,1,1,1,0,1,
    1,0,0,0,1,1,0,0,0,1,1,1,1,1,1,1,
    1,0,0,1,1,1,1,0,1,1,1,1,1,1,1,1,
    1,0,1,1,1,1,1,0,0,1,1,1,1,1,0,1,
    1,1,1,1,1,1,1,0,0,1,1,1,0,0,0,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
};

static u8 sDecayMaskLow[16 * 16] = {
    1,1,1,0,1,0,0,1,0,0,1,1,1,1,1,1,
    0,0,0,0,0,0,0,0,1,1,1,0,0,1,1,0,
    1,0,1,1,0,0,0,0,0,1,1,0,0,1,0,0,
    1,0,0,1,1,0,0,0,0,0,1,1,1,0,0,0,
    0,0,0,1,1,1,0,0,0,0,0,1,1,0,0,1,
    0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,1,
    1,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
    1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,
    1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1,
    0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,
    0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,
    1,0,0,0,0,1,0,0,0,0,0,1,1,1,0,0,
    1,0,0,0,0,1,0,0,0,0,1,0,1,1,0,0,
    0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,
    1,0,0,0,1,0,1,0,0,0,1,1,0,0,0,1,
    1,0,0,1,1,1,0,0,0,1,1,1,0,0,0,1,
};

static u8 sDecayMaskTotal[16 * 16] = {
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
};
// clang-format on

// These appear to be Phantom Ganon's body textures, but I don't know which is which.
static UNK_PTR D_80915028[] = {
    0x0600A800, 0x0600AE80, 0x0600AF00, 0x0600C180, 0x0600C400,
};
static UNK_PTR D_8091503C[] = {
    0x0600B980, 0x0600C480, 0x0600BC80, 0x0600BD80, 0x0600C080,
};
static UNK_PTR D_80915050[] = {
    0x0600C200, 0x0600A000, 0x0600A200, 0x0600A400, 0x0600A600, 0x0600A880, 0x0600B780, 0x0600BA80, 0x0600BE80,
};
static UNK_PTR D_80915074[] = { 0x0600AA80, 0x0600AF80 };
static UNK_PTR D_8091507C[] = { 0x060040B0, 0x06003FB0 };

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 43, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

void BossGanondrof_ClearPixels8x8(s16* texture, u8* mask, s16 index) {
    if (mask[index]) {
        texture[index / 4] = 0;
    }
}

void BossGanondrof_ClearPixels16x8(s16* texture, u8* mask, s16 index) {
    if (mask[index]) {
        texture[index / 2] = 0;
    }
}

void BossGanondrof_ClearPixels16x16(s16* texture, u8* mask, s16 index) {
    if (mask[index]) {
        texture[index] = 0;
    }
}

void BossGanondrof_ClearPixels32x16(s16* texture, u8* mask, s16 index) {
    s16 tmp;

    if (mask[index]) {
        tmp = (index & 0xF) + ((index & 0xF0) << 1);
        texture[tmp + 0x10] = 0;
        texture[tmp] = 0;
    }
}

void BossGanondrof_ClearPixels16x32(s16* texture, u8* mask, s16 index) {
    s16 tmp;

    if (mask[index]) {
        tmp = ((index & 0xF) * 2) + ((index & 0xF0) * 2);
        texture[tmp + 1] = 0;
        texture[tmp] = 0;
    }
}

void BossGanondrof_ClearPixels(u8* mask, s16 index) {
    s16 i;

    for (i = 0; i < 5; i++) {
        BossGanondrof_ClearPixels8x8(SEGMENTED_TO_VIRTUAL(D_80915028[i]), mask, index);
        BossGanondrof_ClearPixels16x8(SEGMENTED_TO_VIRTUAL(D_8091503C[i]), mask, index);
    }

    for (i = 0; i < 9; i++) {
        BossGanondrof_ClearPixels16x16(SEGMENTED_TO_VIRTUAL(D_80915050[i]), mask, index);
    }

    for (i = 0; i < 2; i++) {
        BossGanondrof_ClearPixels16x32(SEGMENTED_TO_VIRTUAL(D_80915074[i]), mask, index);
    }

    BossGanondrof_ClearPixels32x16(SEGMENTED_TO_VIRTUAL(&D_0600B380), mask, index);
    BossGanondrof_ClearPixels16x32(SEGMENTED_TO_VIRTUAL(&D_06003DB0), mask, index);
    for (i = 0; i < 2; i++) {
        BossGanondrof_ClearPixels16x16(SEGMENTED_TO_VIRTUAL(D_8091507C[i]), mask, index);
    }
}

void BossGanondrof_SetColliderPos(Vec3f* pos, ColliderCylinder* collider) {
    collider->dim.pos.x = pos->x;
    collider->dim.pos.y = pos->y;
    collider->dim.pos.z = pos->z;
}

void BossGanondrof_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossGanondrof* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600C710, &D_06003CA4, NULL, NULL, 0);
    if (this->actor.params < 10) {
        this->actor.params = 1;
        this->actor.colChkInfo.health = 30;
        this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
        Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                  this->actor.posRot.pos.z, 255, 255, 255, 255);
        BossGanondrof_SetupIntro(this, globalCtx);
    } else {
        BossGanondrof_SetupPaintings(this);
    }

    Collider_InitCylinder(globalCtx, &this->colliderBody);
    Collider_InitCylinder(globalCtx, &this->colliderSpear);
    Collider_SetCylinder(globalCtx, &this->colliderBody, &this->actor, &sCylinderInitBody);
    Collider_SetCylinder(globalCtx, &this->colliderSpear, &this->actor, &sCylinderInitSpear);
    this->actor.flags &= ~1;
    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        Actor_Kill(&this->actor);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, 14.0f, -33.0f, -3315.0f, 0, 0, 0, -1);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 214.0f, -33.0f, -3315.0f, 0, 0, 0, 0);
    } else {
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG, this->actor.posRot.pos.x,
                           this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, this->actor.params);
    }
}

void BossGanondrof_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossGanondrof* this = THIS;

    osSyncPrintf("DT1\n");
    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->colliderBody);
    Collider_DestroyCylinder(globalCtx, &this->colliderSpear);
    if (this->actor.params == 1) {
        LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
    }

    osSyncPrintf("DT2\n");
}

void BossGanondrof_SetupIntro(BossGanondrof* this, GlobalContext* globalCtx) {
    Animation_PlayLoop(&this->skelAnime, &D_060019A4);
    this->actionFunc = BossGanondrof_Intro;
    this->maskOff = true;
}

static Vec3f sAudioVec = { 0.0f, 0.0f, 50.0f };

void BossGanondrof_Intro(BossGanondrof* this, GlobalContext* globalCtx) {
    s16 i;
    s32 pad;
    EnfHG* horse = (EnfHG*)this->actor.child;

    SkelAnime_Update(&this->skelAnime);
    this->actor.posRot.pos = horse->actor.posRot.pos;
    this->actor.shape.rot.y = this->actor.posRot.rot.y = horse->actor.posRot.rot.y;

    osSyncPrintf("SW %d------------------------------------------------\n", horse->bossFhgSignal);

    if ((this->timers[1] != 0) && (this->timers[1] < 25)) {
        Vec3f sp88;
        Vec3f sp7C = { 0.0f, 0.0f, 0.0f };
        Vec3f sp70 = { 0.0f, 0.0f, 0.0f };
        sp88.x = this->bodyPartsPos[14].x + Rand_CenteredFloat(10.0f);
        sp88.y = this->bodyPartsPos[14].y + Rand_ZeroFloat(-5.0f);
        sp88.z = this->bodyPartsPos[14].z + Rand_CenteredFloat(10.0f) + 5.0f;
        sp70.y = 0.03f;
        EffectSsKFire_Spawn(globalCtx, &sp88, &sp7C, &sp70, (s16)Rand_ZeroFloat(10.0f) + 5, 0);
    }

    if (this->timers[1] == 20) {
        this->maskOff = false;
    }

    if (this->timers[1] == 30) {
        func_80078914(&sAudioVec, NA_SE_EN_FANTOM_TRANSFORM);
    }

    if (horse->bossFhgSignal == FHG_LIGHTNING) {
        Animation_Change(&this->skelAnime, &D_06001144, 0.5f, 0.0f,
                             Animation_GetLastFrame(&D_06001144), 3, 0.0f);
        this->timers[1] = 40;
    }

    if (horse->bossFhgSignal == FHG_REAR) {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_06002684, -3.0f);
    }

    if (horse->bossFhgSignal == FHG_RIDE) {
        Animation_MorphToLoop(&this->skelAnime, &D_060019A4, -13.0f);
    }

    if (horse->bossFhgSignal == FHG_SPUR) {
        EnfHG* tempHorse;

        Animation_MorphToPlayOnce(&this->skelAnime, &D_0600D99C, -7.0f);
        tempHorse = (EnfHG*)this->actor.child;
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE, this->spearTip.x,
                           this->spearTip.y, this->spearTip.z, 50, FHGFIRE_LIGHT_GREEN, 0, FHGFIRE_SPEAR_LIGHT);
        this->actor.child = &tempHorse->actor;
    }

    if (horse->bossFhgSignal == FHG_FINISH) {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_0600DF80, -5.0f);
    }

    switch (this->eyeState) {
        case 1:
            this->eyeAlpha += 40.0f;
            if (this->eyeAlpha >= 255.0f) {
                this->eyeAlpha = 255.0f;
            }
            break;

        case 2:
            this->eyeBrightness += 20.0f;
            if (this->eyeBrightness > 255.0f) {
                this->eyeBrightness = 255.0f;
            }
            break;
    }

    this->armRotY = Math_SinS(this->varianceTimer * 0x6E8) * 0;
    this->armRotZ = Math_CosS(this->varianceTimer * 0x8DC) * 300.0f;
    for (i = 0; i < 30; i++) {
        this->rideRotY[i] = Math_SinS(this->varianceTimer * ((i * 50) + 0x7B0)) * 100.0f;
        this->rideRotZ[i] = Math_CosS(this->varianceTimer * ((i * 50) + 0x8DC)) * 100.0f;
    }

    if (horse->bossFhgSignal == FHG_START_FIGHT) {
        BossGanondrof_SetupPaintings(this);
        for (i = 0; i < 30; i++) {
            this->rideRotZ[i] = 0.0f;
            this->rideRotY[i] = 0.0f;
        }
    }

    horse->bossFhgSignal = FHG_NO_SIGNAL;
}

void BossGanondrof_SetupPaintings(BossGanondrof* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_06003CA4, -5.0f);
    this->actionFunc = BossGanondrof_Paintings;
}

void BossGanondrof_Paintings(BossGanondrof* this, GlobalContext* globalCtx) {
    EnfHG* horse = (EnfHG*)this->actor.child; // sp48;

    osSyncPrintf("RUN 1\n");
    SkelAnime_Update(&this->skelAnime);
    osSyncPrintf("RUN 2\n");

    if (horse->bossFhgSignal == FHG_RAISE_SPEAR) {
        EnfHG* tmpHorse;

        Animation_MorphToPlayOnce(&this->skelAnime, &D_0600D99C, -2.0f);
        this->actor.flags |= 1;
        tmpHorse = (EnfHG*)this->actor.child;
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE, this->spearTip.x,
                           this->spearTip.y, this->spearTip.z, 30, FHGFIRE_LIGHT_GREEN, 0, FHGFIRE_SPEAR_LIGHT);
        this->actor.child = &tmpHorse->actor;
    } else if (horse->bossFhgSignal == FHG_LIGHTNING) {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_06003080, -2.0f);
    } else if (horse->bossFhgSignal == FHG_RESET) {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_0600DF80, -2.0f);
    } else if (horse->bossFhgSignal == FHG_RIDE) {
        Animation_MorphToLoop(&this->skelAnime, &D_06003CA4, -2.0f);
        this->actor.flags &= ~1;
    }

    osSyncPrintf("RUN 3\n");
    this->actor.posRot.pos = horse->actor.posRot.pos;
    this->actor.posRot.pos.y = horse->actor.posRot.pos.y;
    this->actor.shape.rot.y = this->actor.posRot.rot.y = horse->actor.posRot.rot.y;
    if (this->flyMode != FHG_FLY_PAINTING) {
        BossGanondrof_SetupNeutral(this, -20.0f);
        this->timers[0] = 100;
        this->colliderBody.dim.radius = 20;
        this->colliderBody.dim.height = 60;
        this->colliderBody.dim.yShift = -33;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_LAUGH);
        this->actor.naviEnemyId = 0x1A;
    } else {
        horse->bossFhgSignal = FHG_NO_SIGNAL;
        this->actor.scale.x = horse->actor.scale.x / 1.15f;
        this->actor.scale.y = horse->actor.scale.y / 1.15f;
        this->actor.scale.z = horse->actor.scale.z / 1.15f;
        osSyncPrintf("RUN 4\n");
    }
}

void BossGanondrof_SetupNeutral(BossGanondrof* this, f32 arg1) {
    Animation_MorphToLoop(&this->skelAnime, &D_06010060, arg1);
    this->actionFunc = BossGanondrof_Neutral;
    this->actor.flags |= 1;
    this->floatSpeed = 0.0f;
    this->timers[0] = (s16)(Rand_ZeroOne() * 64.0f) + 30;
}

void BossGanondrof_Neutral(BossGanondrof* this, GlobalContext* globalCtx) {
    f32 targetX;
    f32 targetY;
    f32 targetZ;
    Player* player = PLAYER;
    Actor* playerx = &player->actor;
    Actor* thisx = &this->actor;
    f32 rand01;
    s16 i;

    SkelAnime_Update(&this->skelAnime);
    switch (this->flyMode) {
        case FHG_FLY_NEUTRAL:
            if (this->timers[0] == 0) {
                this->timers[0] = (s16)(Rand_ZeroOne() * 64.0f) + 30;
                rand01 = Rand_ZeroOne();
                if (thisx->colChkInfo.health < 5) {
                    if (rand01 < 0.25f) {
                        BossGanondrof_SetupThrow(this, globalCtx);
                    } else if (rand01 >= 0.8f) {
                        this->flyMode = FHG_FLY_CHARGE;
                        this->timers[0] = 60;
                        this->floatSpeed = 0.0f;
                        Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_LAUGH);
                    } else {
                        this->flyMode = FHG_FLY_VOLLEY;
                        this->timers[0] = 60;
                        this->floatSpeed = 0.0f;
                        Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_LAUGH);
                    }
                } else if ((rand01 < 0.5f) || (this->throwCount < 5)) {
                    BossGanondrof_SetupThrow(this, globalCtx);
                } else {
                    this->flyMode = FHG_FLY_VOLLEY;
                    this->timers[0] = 60;
                    this->floatSpeed = 0.0f;
                    Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_LAUGH);
                }
            }

            if (this->timers[1] != 0) {
                targetX = 14.0f;
                targetZ = -3315.0f;
            } else {
                targetX = playerx->posRot.pos.x + (180.0f * Math_SinS(playerx->shape.rot.y));
                targetZ = playerx->posRot.pos.z + (180.0f * Math_CosS(playerx->shape.rot.y));
                if (sqrtf(SQ(targetX - 14.0f) + SQ(targetZ - -3315.0f)) > 280.0f) {
                    this->timers[1] = 50;
                    this->floatSpeed = 0.0f;
                }
            }

            targetY = playerx->posRot.pos.y + 100.0f + 0.0f;
            targetX += Math_SinS(this->varianceTimer * 0x500) * 100.0f;
            targetZ += Math_CosS(this->varianceTimer * 0x700) * 100.0f;
            break;
        case FHG_FLY_VOLLEY:
            targetX = 0.0f;
            targetZ = -3050.0f;

            targetY = playerx->posRot.pos.y + 100.0f + 100.0f;
            targetX += Math_SinS(this->varianceTimer * 0x500) * 100.0f;
            targetZ += Math_CosS(this->varianceTimer * 0x700) * 100.0f;
            if (this->timers[0] == 0) {
                this->flyMode = FHG_FLY_RETURN;
                this->returnSuccess = false;
                BossGanondrof_SetupThrow(this, globalCtx);
                this->timers[0] = 80;
            }
            break;
        case FHG_FLY_RETURN:
            targetX = 0.0f;
            targetZ = -3050.0f;

            targetY = playerx->posRot.pos.y + 100.0f + 100.0f;
            targetX += Math_SinS(this->varianceTimer * 0x500) * 50.0f;
            targetZ += Math_CosS(this->varianceTimer * 0x700) * 50.0f;
            if (this->returnSuccess) {
                this->returnSuccess = false;
                BossGanondrof_SetupReturn(this, globalCtx);
                this->timers[0] = 80;
            }

            if (this->timers[0] == 0) {
                this->flyMode = FHG_FLY_NEUTRAL;
            }
            break;
        case FHG_FLY_CHARGE:
            targetX = 0.0f;
            targetZ = -3100.0f;

            targetY = playerx->posRot.pos.y + 100.0f + 50.0f;
            targetX += Math_SinS(this->varianceTimer * 0x500) * 100.0f;
            targetZ += Math_CosS(this->varianceTimer * 0x700) * 100.0f;
            if (this->timers[0] == 0) {
                BossGanondrof_SetupCharge(this, globalCtx);
            }
            break;
    }

    Math_ApproachF(&thisx->posRot.pos.x, targetX, 0.05f, this->floatSpeed);
    if (this->timers[2] != 0) {
        Math_ApproachF(&thisx->posRot.pos.y, targetY + 100.0f, 0.1f, 50.0f);
    } else {
        Math_ApproachF(&thisx->posRot.pos.y, targetY, 0.05f, 10.0f);
    }

    Math_ApproachF(&thisx->posRot.pos.z, targetZ, 0.05f, this->floatSpeed);
    Math_ApproachF(&this->floatSpeed, 50.0f, 1.0f, 0.5f);
    thisx->velocity.x = thisx->posRot.pos.x - thisx->pos4.x;
    thisx->velocity.z = thisx->posRot.pos.z - thisx->pos4.z;
    thisx->posRot.pos.y += 2.0f * Math_SinS(this->varianceTimer * 1500);
    Math_ApproachS(&thisx->shape.rot.y, thisx->yawTowardsLink, 5, 0xBB8);
    if ((this->varianceTimer & 1) == 0) {
        Vec3f sp5C;
        Vec3f sp50 = { 0.0f, 0.0f, 0.0f };
        Vec3f sp44 = { 0.0f, 0.0f, 0.0f };

        for (i = 0; i < 3; i++) {
            sp5C.x = Rand_CenteredFloat(20.0f) + this->spearTip.x;
            sp5C.y = Rand_CenteredFloat(20.0f) + this->spearTip.y;
            sp5C.z = Rand_CenteredFloat(20.0f) + this->spearTip.z;
            sp44.y = -0.08f;
            EffectSsFhgFlash_SpawnLightBall(globalCtx, &sp5C, &sp50, &sp44, (s16)(Rand_ZeroOne() * 80.0f) + 150,
                                            FHGFLASH_LIGHTBALL_GREEN);
        }
    }

    if (player->unk_A73 != 0) {
        BossGanondrof_SetupBlock(this, globalCtx);
    }

    Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_FLOAT - SFX_FLAG);
}

void BossGanondrof_SetupThrow(BossGanondrof* this, GlobalContext* globalCtx) {
    EnfHG* horse;
    s16 lightTime;

    this->endFrame = Animation_GetLastFrame(&D_0600EC94);
    Animation_MorphToPlayOnce(&this->skelAnime, &D_0600EC94, -5.0f);
    this->actionFunc = BossGanondrof_Throw;
    if ((Rand_ZeroOne() <= 0.1f) && (this->throwCount >= 10) && (this->flyMode == FHG_FLY_NEUTRAL)) {
        this->actionState = THROW_SLOW;
        this->throwFrame = 1000;
        lightTime = 32;
    } else {
        this->actionState = THROW_NORMAL;
        this->throwFrame = 25;
        lightTime = 25;
    }

    horse = (EnfHG*)this->actor.child;
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE, this->spearTip.x,
                       this->spearTip.y, this->spearTip.z, lightTime, FHGFIRE_LIGHT_GREEN, 0, FHGFIRE_SPEAR_LIGHT);
    this->actor.child = &horse->actor;
    this->throwCount++;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_STICK);
}

void BossGanondrof_Throw(BossGanondrof* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    osSyncPrintf("this->fwork[GND_END_FRAME] = %d\n", (s16)this->endFrame);
    osSyncPrintf("this->work[GND_SHOT_FRAME] = %d\n", this->throwFrame);
    if (Animation_OnFrame(&this->skelAnime, this->endFrame)) {
        BossGanondrof_SetupNeutral(this, -6.0f);
    }

    if ((this->actionState != THROW_NORMAL) && Animation_OnFrame(&this->skelAnime, 21.0f)) {
        this->endFrame = Animation_GetLastFrame(&D_0600F48C);
        Animation_MorphToPlayOnce(&this->skelAnime, &D_0600F48C, 0.0f);
        this->throwFrame = 10;
    }

    if (Animation_OnFrame(&this->skelAnime, this->throwFrame)) {
        if (this->flyMode <= FHG_FLY_NEUTRAL) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_MASIC2);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_MASIC1);
        }

        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_VOICE);
    }

    if (Animation_OnFrame(&this->skelAnime, this->throwFrame)) {
        EnfHG* horse = (EnfHG*)this->actor.child;
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE, this->spearTip.x,
                           this->spearTip.y, this->spearTip.z, this->actionState, 0, 0, FHGFIRE_ENERGY_BALL);
        this->actor.child = &horse->actor;
    }

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0x7D0);
    this->actor.posRot.pos.x += this->actor.velocity.x;
    this->actor.posRot.pos.z += this->actor.velocity.z;
    Math_ApproachZeroF(&this->actor.velocity.x, 1.0f, 0.5f);
    Math_ApproachZeroF(&this->actor.velocity.z, 1.0f, 0.5f);
    this->actor.posRot.pos.y += 2.0f * Math_SinS(this->varianceTimer * 1500);
}

void BossGanondrof_SetupReturn(BossGanondrof* this, GlobalContext* globalCtx) {
    static AnimationHeader* returnAnime[] = { 0x06010FD4, 0x06011800 };

    s16 rand = Rand_ZeroOne() * 1.99f;

    this->endFrame = Animation_GetLastFrame(returnAnime[rand]);
    Animation_MorphToPlayOnce(&this->skelAnime, returnAnime[rand], 0.0f);
    this->actionFunc = BossGanondrof_Return;
}

void BossGanondrof_Return(BossGanondrof* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_VOICE);
        osSyncPrintf("VOISE               2  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
        osSyncPrintf("VOISE               2  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
    }

    if (Animation_OnFrame(&this->skelAnime, this->endFrame)) {
        BossGanondrof_SetupNeutral(this, 0.0f);
    }

    this->actor.posRot.pos.x += this->actor.velocity.x;
    this->actor.posRot.pos.z += this->actor.velocity.z;
    Math_ApproachZeroF(&this->actor.velocity.x, 1.0f, 0.5f);
    Math_ApproachZeroF(&this->actor.velocity.z, 1.0f, 0.5f);
    this->actor.posRot.pos.y += 2.0f * Math_SinS(this->varianceTimer * 1500);
    if (this->returnSuccess) {
        this->returnSuccess = false;
        BossGanondrof_SetupReturn(this, globalCtx);
        this->timers[0] = 80;
    }
}

void BossGanondrof_SetupStunned(BossGanondrof* this, GlobalContext* globalCtx) {
    if (this->actionFunc != BossGanondrof_Stunned) {
        this->endFrame = Animation_GetLastFrame(&D_060108D8);
        Animation_MorphToLoop(&this->skelAnime, &D_060108D8, 0.0f);
        this->timers[0] = 50;
        this->shockTimer = 60;
    } else {
        this->endFrame = Animation_GetLastFrame(&D_0600FAC8);
        Animation_MorphToLoop(&this->skelAnime, &D_0600FAC8, 0.0f);
    }

    this->actionFunc = BossGanondrof_Stunned;
    this->actionState = STUNNED_FALL;
    this->actor.velocity.x = 0.0f;
    this->actor.velocity.z = 0.0f;
}

void BossGanondrof_Stunned(BossGanondrof* this, GlobalContext* globalCtx) {
    osSyncPrintf("DAMAGE   .................................\n");
    SkelAnime_Update(&this->skelAnime);
    this->actor.gravity = -0.2f;
    if (this->actor.posRot.pos.y <= 5.0f) {
        if (this->actionState == STUNNED_FALL) {
            this->endFrame = Animation_GetLastFrame(&D_06011BCC);
            Animation_MorphToLoop(&this->skelAnime, &D_06011BCC, -10.0f);
            this->actionState = STUNNED_GROUND;
        }

        this->actor.velocity.y = 0.0f;
        this->actor.gravity = 0.0f;
        if (Animation_OnFrame(&this->skelAnime, this->endFrame)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_DAMAGE2);
        }

        this->actor.flags |= 0x400;
    }

    osSyncPrintf("TIME0 %d ********************************************\n", this->timers[0]);
    if (this->timers[0] == 0) {
        BossGanondrof_SetupNeutral(this, -5.0f);
        this->timers[0] = 30;
        this->timers[2] = 30;
        this->flyMode = FHG_FLY_NEUTRAL;
        this->actor.velocity.y = 0.0f;
        this->actor.gravity = 0.0f;
    }

    Actor_MoveForward(&this->actor);
}

void BossGanondrof_SetupBlock(BossGanondrof* this, GlobalContext* globalCtx) {
    this->endFrame = Animation_GetLastFrame(&D_06010344);
    Animation_MorphToLoop(&this->skelAnime, &D_06010344, -3.0f);
    this->actionFunc = BossGanondrof_Block;
    this->timers[0] = 10;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_STICK);
}

void BossGanondrof_Block(BossGanondrof* this, GlobalContext* globalCtx) {
    this->colliderBody.base.type = 9;
    SkelAnime_Update(&this->skelAnime);
    this->actor.posRot.pos.x += this->actor.velocity.x;
    this->actor.posRot.pos.z += this->actor.velocity.z;
    Math_ApproachZeroF(&this->actor.velocity.x, 1.0f, 0.5f);
    Math_ApproachZeroF(&this->actor.velocity.z, 1.0f, 0.5f);
    this->actor.posRot.pos.y += 2.0f * Math_SinS(this->varianceTimer * 1500);
    if (this->timers[0] == 0) {
        BossGanondrof_SetupNeutral(this, -5.0f);
        this->timers[0] = 10;
        this->flyMode = FHG_FLY_NEUTRAL;
    }
}

void BossGanondrof_SetupCharge(BossGanondrof* this, GlobalContext* globalCtx) {
    this->endFrame = Animation_GetLastFrame(&D_060129E0);
    Animation_MorphToLoop(&this->skelAnime, &D_060129E0, -3.0f);
    this->actionFunc = BossGanondrof_Charge;
    this->timers[0] = 20;
    this->actionState = CHARGE_WINDUP;
}

void BossGanondrof_Charge(BossGanondrof* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* playerx = &player->actor;
    Actor* thisx = &this->actor;
    f32 dxCenter = thisx->posRot.pos.x - 14.0f;
    f32 dzCenter = thisx->posRot.pos.z - -3315.0f;

    this->colliderBody.base.type = 9;
    SkelAnime_Update(&this->skelAnime);
    switch (this->actionState) {
        case CHARGE_WINDUP:
            if (this->timers[0] == 218) {
                Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_STICK);
            }

            if (this->timers[0] == 19) {
                Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_ATTACK);
            }

            thisx->posRot.pos.x += thisx->velocity.x;
            thisx->posRot.pos.z += thisx->velocity.z;
            Math_ApproachZeroF(&thisx->velocity.x, 1.0f, 0.5f);
            Math_ApproachZeroF(&thisx->velocity.z, 1.0f, 0.5f);
            if (this->timers[0] == 0) {
                this->actionState = CHARGE_START;
                this->timers[0] = 10;
                thisx->speedXZ = 0.0f;
                this->endFrame = Animation_GetLastFrame(&D_06011F44);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06011F44, 0.0f);
            }

            Math_ApproachS(&thisx->shape.rot.y, thisx->yawTowardsLink, 5, 0x7D0);
            break;
        case CHARGE_START:
            if (Animation_OnFrame(&this->skelAnime, this->endFrame)) {
                this->endFrame = Animation_GetLastFrame(&D_0601267C);
                Animation_MorphToLoop(&this->skelAnime, &D_0601267C, 0.0f);
                this->actionState = CHARGE_ATTACK;
            }
        case CHARGE_ATTACK:
            if (this->timers[0] != 0) {
                Vec3f vecToLink;

                Math_ApproachS(&thisx->shape.rot.y, thisx->yawTowardsLink, 5, 0x7D0);
                vecToLink.x = playerx->posRot.pos.x - thisx->posRot.pos.x;
                vecToLink.y = playerx->posRot.pos.y + 40.0f - thisx->posRot.pos.y;
                vecToLink.z = playerx->posRot.pos.z - thisx->posRot.pos.z;
                thisx->posRot.rot.y = thisx->shape.rot.y;
                thisx->posRot.rot.x =
                    Math_FAtan2F(vecToLink.y, sqrtf(SQ(vecToLink.x) + SQ(vecToLink.z))) * (0x8000 / M_PI);
            }

            func_8002D908(thisx);
            func_8002D7EC(thisx);
            Math_ApproachF(&thisx->speedXZ, 10.0f, 1.0f, 0.5f);
            if ((sqrtf(SQ(dxCenter) + SQ(dzCenter)) > 280.0f) || (thisx->xyzDistFromLinkSq < SQ(100.0f))) {
                this->actionState = CHARGE_FINISH;
                this->timers[0] = 20;
            }
            break;
        case CHARGE_FINISH:
            thisx->gravity = 0.2f;
            Actor_MoveForward(thisx);
            osSyncPrintf("YP %f @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n", thisx->posRot.pos.y);
            if (thisx->posRot.pos.y < 5.0f) {
                thisx->posRot.pos.y = 5.0f;
                thisx->velocity.y = 0.0f;
            }

            if (sqrtf(SQ(dxCenter) + SQ(dzCenter)) > 280.0f) {
                Math_ApproachZeroF(&thisx->speedXZ, 1.0f, 2.0f);
                this->timers[0] = 0;
            }

            if (this->timers[0] == 0) {
                Math_ApproachZeroF(&thisx->speedXZ, 1.0f, 2.0f);
                Math_ApproachZeroF(&thisx->velocity.y, 1.0f, 2.0f);
                Math_ApproachS(&thisx->shape.rot.y, thisx->yawTowardsLink, 5, 0x7D0);
                if ((thisx->speedXZ <= 0.5f) && (fabsf(thisx->velocity.y) <= 0.1f)) {
                    BossGanondrof_SetupNeutral(this, -10.0f);
                    this->timers[0] = 30;
                    this->flyMode = FHG_FLY_NEUTRAL;
                }
            }
            break;
    }

    if (thisx->posRot.pos.y > 50.0f) {
        thisx->posRot.pos.y += 2.0f * Math_SinS(this->varianceTimer * 1500);
    }
    {
        s16 i;
        Vec3f spB0;
        Vec3f spA4 = { 0.0f, 0.0f, 0.0f };
        Vec3f sp98 = { 0.0f, 0.0f, 0.0f };
        Vec3f sp8C = { 0.0f, 50.0f, 0.0f };
        Vec3f sp80;

        sp8C.y = 10.0f;
        for (i = 0; i < 10; i++) {
            Matrix_Push();
            Matrix_RotateY((thisx->shape.rot.y / (f32)0x8000) * M_PI, MTXMODE_NEW);
            Matrix_RotateX((thisx->shape.rot.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
            Matrix_RotateZ((this->particleAngle / (f32)0x8000) * M_PI, MTXMODE_APPLY);
            Matrix_MultVec3f(&sp8C, &sp80);
            Matrix_Pull();
            spB0.x = this->spearTip.x + sp80.x;
            spB0.y = this->spearTip.y + sp80.y;
            spB0.z = this->spearTip.z + sp80.z;
            spA4.x = (sp80.x * 500.0f) / 1000.0f;
            spA4.y = (sp80.y * 500.0f) / 1000.0f;
            spA4.z = (sp80.z * 500.0f) / 1000.0f;
            sp98.x = (sp80.x * -50.0f) / 1000.0f;
            sp98.y = (sp80.y * -50.0f) / 1000.0f;
            sp98.z = (sp80.z * -50.0f) / 1000.0f;
            EffectSsFhgFlash_SpawnLightBall(globalCtx, &spB0, &spA4, &sp98, 150, i % 7);
            this->particleAngle += 0x1A5C;
        }
    }

    if (!(this->varianceTimer & 7)) {
        EnfHG* horse = (EnfHG*)thisx->child;

        Actor_SpawnAsChild(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_EN_FHG_FIRE, this->spearTip.x,
                           this->spearTip.y, this->spearTip.z, 8, FHGFIRE_LIGHT_BLUE, 0, FHGFIRE_SPEAR_LIGHT);
        thisx->child = &horse->actor;
    }
}

void BossGanondrof_SetupDeath(BossGanondrof* this, GlobalContext* globalCtx) {
    Animation_PlayOnce(&this->skelAnime, &D_0600090C);
    this->endFrame = Animation_GetLastFrame(&D_0600090C);
    this->actionFunc = BossGanondrof_Death;
    Audio_SetBGM(0x100100FF);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_DEAD);
    this->deathState = DEATH_START;
    this->actor.flags &= ~1;
    this->varianceTimer = 0;
    this->shockTimer = 50;
}

void BossGanondrof_Death(BossGanondrof* this, GlobalContext* globalCtx) {
    u8 holdCamera = false;
    u8 bodyDecayLevel = 0;
    f32 camX;
    f32 camZ;
    f32 pad;
    Player* player = PLAYER;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);

    osSyncPrintf("PYP %f\n", player->actor.groundY);
    SkelAnime_Update(&this->skelAnime);
    this->deathSfxTimer++;
    if (((60 < this->deathSfxTimer) && (this->deathSfxTimer < 500)) ||
        ((501 < this->deathSfxTimer) && (this->deathSfxTimer < 620))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_LAST - SFX_FLAG);
    }

    switch (this->deathState) {
        case DEATH_START:
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            this->deathCamera = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            osSyncPrintf("7\n");
            Gameplay_ChangeCameraStatus(globalCtx, this->deathCamera, 7);
            osSyncPrintf("8\n");
            this->deathState = DEATH_THROE;
            player->actor.speedXZ = 0.0f;
            this->timers[0] = 50;
            this->cameraEye = camera->eye;
            this->cameraAt = camera->at;
            this->cameraNextEye.x = this->targetPos.x;
            this->cameraNextEye.y = 50.0f;
            this->cameraNextEye.z = (this->targetPos.z + 100.0f) + 50.0f;
            this->cameraNextAt.x = this->targetPos.x;
            this->cameraNextAt.y = this->targetPos.y - 10.0f;
            this->cameraNextAt.z = this->targetPos.z;
            this->cameraEyeVel.x = fabsf(camera->eye.x - this->cameraNextEye.x);
            this->cameraEyeVel.y = fabsf(camera->eye.y - this->cameraNextEye.y);
            this->cameraEyeVel.z = fabsf(camera->eye.z - this->cameraNextEye.z);
            this->cameraAtVel.x = fabsf(camera->at.x - this->cameraNextAt.x);
            this->cameraAtVel.y = fabsf(camera->at.y - this->cameraNextAt.y);
            this->cameraAtVel.z = fabsf(camera->at.z - this->cameraNextAt.z);
            this->cameraAccel = 0.02f;
            this->cameraEyeMaxVel.x = this->cameraEyeMaxVel.y = this->cameraEyeMaxVel.z = 0.05f;
            this->actionState = DEATH_SPASM;
            this->timers[0] = 150;
            this->cameraAtMaxVel.x = 0.2f;
            this->cameraAtMaxVel.y = 0.2f;
            this->cameraAtMaxVel.z = 0.2f;
        case DEATH_THROE:
            switch (this->actionState) {
                case DEATH_SPASM:
                    if (Animation_OnFrame(&this->skelAnime, this->endFrame)) {
                        this->endFrame = Animation_GetLastFrame(&D_060108D8);
                        Animation_Change(&this->skelAnime, &D_060108D8, 0.5f, 0.0f, this->endFrame, 3, 0.0f);
                        this->actionState = DEATH_LIMP;
                    }
                    break;
                case DEATH_LIMP:
                    if (Animation_OnFrame(&this->skelAnime, this->endFrame)) {
                        this->endFrame = Animation_GetLastFrame(&D_06000D84);
                        Animation_MorphToLoop(&this->skelAnime, &D_06000D84, -20.0f);
                        this->actionState = DEATH_HUNCHED;
                    }
                case DEATH_HUNCHED:
                    bodyDecayLevel = 1;
                    break;
            }
            Math_ApproachS(&this->actor.shape.rot.y, this->varianceTimer * -100, 5, 0xBB8);
            Math_ApproachF(&this->cameraNextEye.z, this->targetPos.z + 60.0f, 0.02f, 0.5f);
            Math_ApproachF(&this->actor.posRot.pos.y, 100.0f, 0.05f, 100.0f);
            this->actor.posRot.pos.y += Math_SinS(this->varianceTimer * 1500);
            this->cameraNextAt.x = this->targetPos.x;
            this->cameraNextAt.y = this->targetPos.y - 10.0f;
            this->cameraNextAt.z = this->targetPos.z;
            if (this->timers[0] == 0) {
                this->deathState = DEATH_WARP;
                this->timers[0] = 350;
                this->timers[1] = 50;
                this->cameraZoom = 300.0f;
                this->cameraNextEye.y = 200.0f;
                player->actor.posRot.pos.x = -186.0f;
                player->actor.posRot.pos.z = -3315.0f;
                holdCamera = true;
                bodyDecayLevel = 1;
            }
            break;
        case DEATH_WARP:
            if (this->timers[1] == 1) {
                EnfHG* tmpHorse = (EnfHG*)this->actor.child;

                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE, 14.0f, -30.0f,
                                   -3315.0f, 0x4000, 0, 0, FHGFIRE_WARP_DEATH);
                this->actor.child = &tmpHorse->actor;
                func_8010B680(globalCtx, 0x108E, NULL);
            }

            this->actor.shape.rot.y -= 0xC8;
            this->actor.posRot.pos.y += Math_SinS(this->varianceTimer * 1500);
            this->cameraAngle += 120.0f;
            camX = Math_SinS(this->cameraAngle) * (*this).cameraZoom;
            camZ = Math_CosS(this->cameraAngle) * (*this).cameraZoom;
            this->cameraEye.x = 14.0f + camX;
            this->cameraEye.y = this->cameraNextEye.y;
            this->cameraEye.z = -3315.0f + camZ;
            this->cameraAt.x = 14.0f;
            this->cameraAt.y = -10.0f;
            this->cameraAt.z = -3315.0f;
            Math_ApproachF(&this->cameraNextEye.y, 0.0f, 0.05f, 0.5f);
            Math_ApproachF(&this->cameraZoom, 170.0f, 0.05f, 1.0f);
            Math_ApproachF(&this->actor.posRot.pos.x, 14.0f, 0.05f, 1.5f);
            Math_ApproachF(&this->actor.posRot.pos.y, 50.0f, 0.05f, 1.0f);
            Math_ApproachF(&this->actor.posRot.pos.z, -3315.0f, 0.05f, 1.5f);
            if (this->timers[0] == 0) {
                this->deathState = DEATH_SCREAM;
                this->timers[0] = 50;
                Animation_MorphToLoop(&this->skelAnime, &D_0600189C, -10.0f);
                this->actor.posRot.pos.x = 14.0f;
                this->actor.posRot.pos.y = 50.0f;
                this->actor.posRot.pos.z = -3315.0f;
                this->actor.shape.rot.y = 0;
                this->bodyDecayIndex = 0;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_LAST);
            }

            holdCamera = true;
            bodyDecayLevel = 1;
            break;
        case DEATH_SCREAM:
            holdCamera = true;
            bodyDecayLevel = 2;
            this->actor.posRot.pos.y = 50.0f;
            this->cameraEye.x = 14.0f;
            this->cameraEye.y = 50.0f;
            this->cameraEye.z = -3265.0f;
            this->cameraAt.x = 14.0f;
            this->cameraAt.y = 70.0f;
            this->cameraAt.z = -3315.0f;
            if (this->timers[0] == 0) {
                this->deathState = DEATH_DISINTEGRATE;
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06001AB0, -10.0f);
                this->bodyDecayIndex = 0;
                this->timers[0] = 40;
            }
            break;
        case DEATH_DISINTEGRATE:
            holdCamera = true;
            bodyDecayLevel = 3;
            Math_ApproachZeroF(&this->cameraEye.y, 0.05f, 1.0f);
            Math_ApproachF(&this->cameraEye.z, -3145.0f, 0.05f, 2.0f);
            Math_ApproachF(&this->cameraAt.y, 20.0f, 0.05f, 1.0f);
            if (this->timers[0] == 0) {
                this->timers[0] = 250;
                this->deathState = DEATH_FINISH;
            }
            break;
        case DEATH_FINISH:
            holdCamera = true;
            bodyDecayLevel = 10;
            if (this->timers[0] == 150) {
                Audio_SetBGM(0x21);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, 14.0f, -33.0f, -3315.0f, 0, 0, 0, -1);
            }

            Math_ApproachZeroF(&this->cameraEye.y, 0.05f, 1.0f);
            Math_ApproachF(&this->cameraEye.z, -3145.0f, 0.05f, 2.0f);
            Math_ApproachF(&this->cameraAt.y, 20.0f, 0.05f, 1.0f);
            if (this->timers[0] == 0) {
                EnfHG* horse = (EnfHG*)this->actor.child;

                camera->eye = this->cameraEye;
                camera->eyeNext = this->cameraEye;
                camera->at = this->cameraAt;
                func_800C08AC(globalCtx, this->deathCamera, 0);
                this->deathCamera = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 14.0f, -33.0f, -3115.0f, 0, 0, 0, 0);
                this->actor.child = &horse->actor;
                this->killActor = 1;
                horse->killActor = 1;
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
                Flags_SetSwitch(globalCtx, 0x22);
            }
            break;
    }

    if (bodyDecayLevel) {
        Vec3f sp94;
        Vec3f sp88 = { 0.0f, 0.0f, 0.0f };
        Vec3f sp7C = { 0.0f, 0.0f, 0.0f };
        Vec3f sp70 = { 0.0f, -0.5f, 0.0f };
        s16 limbDecayIndex;
        s16 i;

        sp88.x = this->actor.posRot.pos.x - this->actor.pos4.x;
        sp88.z = this->actor.posRot.pos.z - this->actor.pos4.z;
        if (bodyDecayLevel < 10) {
            if (this->deathEnvTimer == 0) {
                if (globalCtx->envCtx.unk_BF == 0) {
                    globalCtx->envCtx.unk_BF = 3;
                    this->deathEnvTimer = (s16)Rand_ZeroFloat(5.0f) + 4.0f;
                    globalCtx->envCtx.unk_D6 = 0x28;
                } else {
                    globalCtx->envCtx.unk_BF = 0;
                    this->deathEnvTimer = (s16)Rand_ZeroFloat(2.0f) + 2.0f;
                    globalCtx->envCtx.unk_D6 = 0x14;
                }
            } else {
                this->deathEnvTimer--;
            }

            for (i = 0; i <= 0; i++) {
                limbDecayIndex = this->limbDecayIndex;
                this->limbDecayIndex++;
                this->limbDecayIndex %= 25;
                sp94.x = this->bodyPartsPos[limbDecayIndex].x + Rand_CenteredFloat(5.0f);
                sp94.y = this->bodyPartsPos[limbDecayIndex].y + Rand_CenteredFloat(5.0f);
                sp94.z = this->bodyPartsPos[limbDecayIndex].z + Rand_CenteredFloat(5.0f);
                sp7C.y = 0.0f;

                if (bodyDecayLevel == 3) {
                    sp7C.y = -0.2f;
                    sp7C.x = (14.0f - sp94.x) * 0.002f;
                    sp7C.z = (-3315.0f - sp94.z) * 0.002f;
                    sp70.x = (14.0f - sp94.x) * 0.001f;
                    sp70.y = -1.0f;
                    sp70.z = (-3315.0f - sp94.z) * 0.001f;
                }

                EffectSsKFire_Spawn(globalCtx, &sp94, &sp88, &sp7C, (s16)Rand_ZeroFloat(20.0f) + 15,
                                    bodyDecayLevel);
                if ((Rand_ZeroOne() < 0.5f) || (bodyDecayLevel == 3)) {
                    EffectSsHahen_Spawn(globalCtx, &sp94, &sp88, &sp70, 0, (s16)Rand_ZeroFloat(4.0f) + 7,
                                        HAHEN_OBJECT_DEFAULT, 10, 0);
                }
            }
        } else {
            globalCtx->envCtx.unk_BF = 0;
            globalCtx->envCtx.unk_D6 = 0x14;
        }

        this->bodyDecayFlag = true;
        for (i = 0; i < 5; i++) {
            if (bodyDecayLevel == 1) {
                BossGanondrof_ClearPixels(sDecayMaskLow, this->bodyDecayIndex);
            } else if (bodyDecayLevel == 2) {
                BossGanondrof_ClearPixels(sDecayMaskHigh, this->bodyDecayIndex);
            } else {
                BossGanondrof_ClearPixels(sDecayMaskTotal, this->bodyDecayIndex);
            }

            if (this->bodyDecayIndex < 0x100) {
                this->bodyDecayIndex++;
            }
        }
    }

    if (this->deathCamera != 0) {
        if (!holdCamera) {
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
        }

        Gameplay_CameraSetAtEye(globalCtx, this->deathCamera, &this->cameraAt, &this->cameraEye);
    }
}

void BossGanondrof_CollisionCheck(BossGanondrof* this, GlobalContext* globalCtx) {
    s32 acFlagCheck;
    EnfHG* horse = (EnfHG*)this->actor.child;
    ColliderBody* hurtbox;

    if (this->invincibilityTimer != 0) {
        this->invincibilityTimer--;
        this->returnCount = 0;
        this->colliderBody.base.acFlags &= ~2;
    } else {
        acFlagCheck = this->colliderBody.base.acFlags & 2;
        if ((acFlagCheck && ((s8)this->actor.colChkInfo.health > 0)) || (this->returnCount != 0)) {
            if (acFlagCheck) {
                this->colliderBody.base.acFlags &= ~2;
                hurtbox = this->colliderBody.body.acHitItem;
            }
            if (this->flyMode != FHG_FLY_PAINTING) {
                if (acFlagCheck && (this->actionFunc != BossGanondrof_Stunned) &&
                    (hurtbox->toucher.flags & 0x0001F8A4)) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_PL_WALK_GROUND - SFX_FLAG);
                    osSyncPrintf("hit != 0 \n");
                } else if (this->actionFunc != BossGanondrof_Charge) {
                    if (this->returnCount == 0) {
                        u8 dmg;
                        u8 canKill = false;
                        s32 flags = hurtbox->toucher.flags;

                        if (flags & 0x80) {
                            return;
                        }
                        dmg = func_800635D0(flags);
                        (dmg == 0) ? (dmg = 2) : (canKill = true);
                        if (((s8)this->actor.colChkInfo.health > 2) || canKill) {
                            this->actor.colChkInfo.health -= dmg;
                        }

                        if ((s8)this->actor.colChkInfo.health <= 0) {
                            BossGanondrof_SetupDeath(this, globalCtx);
                            func_80032C7C(globalCtx, &this->actor);
                            return;
                        }
                    }
                    BossGanondrof_SetupStunned(this, globalCtx);
                    if (this->returnCount >= 2) {
                        this->timers[0] = 120;
                    }
                    this->invincibilityTimer = 10;
                    horse->hitTimer = 20;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_DAMAGE);
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_PL_WALK_GROUND - SFX_FLAG);
                }
            } else if (acFlagCheck && (hurtbox->toucher.flags & 0x1F8A4)) {
                this->invincibilityTimer = 10;
                this->actor.colChkInfo.health -= 2;
                horse->hitTimer = 20;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_DAMAGE);
            }
            this->returnCount = 0;
        }
    }
}

void BossGanondrof_Update(Actor* thisx, GlobalContext* globalCtx) {
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    s32 pad;
    BossGanondrof* this = THIS;
    EnfHG* horse;
    s16 i;
    s16 j;
    s32 pad1;
    s32 pad2;

    osSyncPrintf("MOVE START %d\n", this->actor.params);
    this->actor.flags &= ~0x400;
    this->colliderBody.base.type = 3;
    if (this->killActor) {
        Actor_Kill(&this->actor);
        return;
    }
    this->varianceTimer++;
    horse = (EnfHG*)this->actor.child;
    osSyncPrintf("MOVE START EEEEEEEEEEEEEEEEEEEEEE%d\n", this->actor.params);

    this->actionFunc(this, globalCtx);

    for (i = 0; i < 5; i++) {
        DECR(this->timers[i]);
    }
    DECR(this->unkTimer1);
    DECR(this->unkTimer2);

    if (this->actionFunc != BossGanondrof_Death) {
        BossGanondrof_CollisionCheck(this, globalCtx);
    }

    osSyncPrintf("MOVE END\n");
    BossGanondrof_SetColliderPos(&this->targetPos, &this->colliderBody);
    BossGanondrof_SetColliderPos(&this->spearTip, &this->colliderSpear);
    if ((this->flyMode == FHG_FLY_PAINTING) && !horse->bossFhgInPainting) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    }
    if ((this->actionFunc == BossGanondrof_Stunned) && (this->timers[0] > 1)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    } else if (this->actionFunc == BossGanondrof_Block) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    } else if (this->actionFunc == BossGanondrof_Charge) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderSpear.base);
    }

    this->actor.posRot2.pos = this->targetPos;

    sp70 = Math_SinS(-this->actor.shape.rot.y);
    sp74 = Math_CosS(-this->actor.shape.rot.y);
    sp6C = ((sp70 * this->actor.velocity.z) + (sp74 * this->actor.velocity.x)) * 300.0f;
    sp68 = ((-sp70 * this->actor.velocity.x) + (sp74 * this->actor.velocity.z)) * 300.0f;
    Math_ApproachF(&this->legRotY, sp6C, 1.0f, 600.0f);
    Math_ApproachF(&this->legRotZ, sp68, 1.0f, 600.0f);
    if ((this->flyMode != FHG_FLY_PAINTING) && (this->actionFunc != BossGanondrof_Stunned) &&
        (this->deathState == NOT_DEAD)) {
        sp64 = (Math_SinS(this->varianceTimer * 0x8DC) * -500.0f) - 500.0f;
    } else {
        sp64 = 0.0f;
    }

    Math_ApproachF(&this->legSplitY, sp64, 1.0f, 100.0f);
    if (this->shockTimer != 0) {
        this->shockTimer--;
        osSyncPrintf("F 1\n");
        for (j = 0; j < 7; j++) {
            osSyncPrintf("F 15\n");
            EffectSsFhgFlash_SpawnShock(globalCtx, &this->actor, &this->actor.posRot.pos, 45, FHGFLASH_SHOCK_PG);
        }
        osSyncPrintf("F 2\n");
    }

    if (this->actor.params == 1) {
        Lights_PointNoGlowSetInfo(&this->lightInfo, this->spearTip.x, this->spearTip.y, this->spearTip.z, 255, 255, 255,
                                  200);
    }
}

s32 BossGanondrof_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                   void* thisx) {
    BossGanondrof* this = THIS;

    switch (limbIndex) {
        case 14 + 1:
            if ((this->actionFunc == BossGanondrof_Intro) && this->maskOff) {
                *dList = D_06004EC0;
            }
            rot->y += this->rideRotY[limbIndex];
            rot->z += this->rideRotZ[limbIndex];
            break;

        case 18 + 1:
            rot->y += this->legRotY + this->legSplitY;
            rot->z += this->legRotZ;
            break;

        case 19 + 1:
            rot->y += this->legRotY + this->legSplitY;
            rot->z += this->legRotZ;
            break;

        case 20 + 1:
            rot->y += this->legRotY + this->legSplitY;
            rot->z += this->legRotZ;
            break;

        case 22 + 1:
            rot->y += this->legRotY - this->legSplitY;
            rot->z += this->legRotZ;
            break;

        case 23 + 1:
            rot->y += this->legRotY - this->legSplitY;
            rot->z += this->legRotZ;
            break;

        case 24 + 1:
            rot->y += this->legRotY - this->legSplitY;
            rot->z += this->legRotZ;
            break;

        case 4 + 1:
        case 5 + 1:
        case 6 + 1:
            rot->y += this->armRotY;
            rot->z += this->armRotZ;
            break;

        case 7 + 1:
        case 8 + 1:
        case 9 + 1:
            rot->y += this->armRotY;
            rot->z += this->armRotZ;
            break;

        case 12 + 1:
            if (this->deathState != NOT_DEAD) {
                *dList = NULL;
            }
        default:
            rot->y += this->rideRotY[limbIndex];
            rot->z += this->rideRotZ[limbIndex];
            break;
    }

    return 0;
}

void BossGanondrof_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    static Vec3f spearVec = { 0.0f, 0.0f, 6000.0f };

    BossGanondrof* this = THIS;

    if (limbIndex == 13 + 1) {
        Matrix_MultVec3f(&zeroVec, &this->targetPos);
    } else if (limbIndex == 12 + 1) {
        Matrix_MultVec3f(&spearVec, &this->spearTip);
    }

    if (((this->flyMode != FHG_FLY_PAINTING) || (this->actionFunc == BossGanondrof_Intro)) && (limbIndex <= 25)) {
        Matrix_MultVec3f(&zeroVec, &this->bodyPartsPos[limbIndex - 1]);
    }
}

Gfx* BossGanondrof_GetClearPixelDList(GraphicsContext* gfxCtx) {
    Gfx* dListHead;
    Gfx* dList;

    dList = dListHead = (Gfx*)Graph_Alloc(gfxCtx, sizeof(Gfx) * 4);

    gDPPipeSync(dListHead++);
    gDPSetRenderMode(dListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2);
    if (0) {};
    gSPClearGeometryMode(dListHead++, G_CULL_BACK);
    gSPEndDisplayList(dListHead++);

    return dList;
}

Gfx* BossGanondrof_GetNullDList(GraphicsContext* gfxCtx) {
    Gfx* dListHead;
    Gfx* dList;

    dListHead = dList = (Gfx*)Graph_Alloc(gfxCtx, sizeof(Gfx) * 1);
    gSPEndDisplayList(dListHead++);
    return dList;
}

void BossGanondrof_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossGanondrof* this = THIS;
    EnfHG* horse;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganondrof.c", 3716);
    osSyncPrintf("MOVE P = %x\n", this->actor.update);
    osSyncPrintf("STOP TIMER = %d ==============\n", this->actor.freezeTimer);
    horse = (EnfHG*)this->actor.child;
    if (this->flyMode == FHG_FLY_PAINTING) {
        Matrix_RotateY((horse->turnRot * 3.1416f) / (f32)0x8000, 1);
    }

    osSyncPrintf("YP %f\n", this->actor.posRot.pos.y);
    func_80093D18(globalCtx->state.gfxCtx);
    if (this->invincibilityTimer & 4) {
        POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 50, 0, 0, 900, 1099);
    } else {
        POLY_OPA_DISP =
            Gfx_SetFog(POLY_OPA_DISP, (u32)horse->warpFogR, (u32)horse->warpFogG, (u32)horse->warpFogB, 0,
                       (s32)horse->warpFogUnk1 + 995, (s32)horse->warpFogUnk2 + 1000);
    }

    osSyncPrintf("DRAW 11\n");
    osSyncPrintf("EYE_COL %d\n", (s16)this->eyeBrightness);
    gDPSetEnvColor(POLY_OPA_DISP++, (s16)this->eyeBrightness, (s16)this->eyeBrightness, (s16)this->eyeBrightness,
                   (s16)(*this).eyeAlpha);
    if (this->bodyDecayFlag) {
        gSPSegment(POLY_OPA_DISP++, 0x08, BossGanondrof_GetClearPixelDList(globalCtx->state.gfxCtx));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08, BossGanondrof_GetNullDList(globalCtx->state.gfxCtx));
    }

    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, BossGanondrof_OverrideLimbDraw,
                   BossGanondrof_PostLimbDraw, this);
    osSyncPrintf("DRAW 22\n");
    POLY_OPA_DISP = func_800BC8A0(globalCtx, POLY_OPA_DISP);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganondrof.c", 3814);
    osSyncPrintf("DRAW END %d\n", this->actor.params);
}
