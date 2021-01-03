/*
 * File: z_en_butte.c
 * Overlay: ovl_En_Butte
 * Description: Butterfly
 */

#include "z_en_butte.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000000

#define THIS ((EnButte*)thisx)

void EnButte_Init(Actor* thisx, GlobalContext* globalCtx);
void EnButte_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnButte_Update(Actor* thisx, GlobalContext* globalCtx);
void EnButte_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnButte_SetupFlyAround(EnButte* this);
void EnButte_FlyAround(EnButte* this, GlobalContext* globalCtx);
void EnButte_SetupFollowLink(EnButte* this);
void EnButte_FollowLink(EnButte* this, GlobalContext* globalCtx);
void EnButte_SetupTransformIntoFairy(EnButte* this);
void EnButte_TransformIntoFairy(EnButte* this, GlobalContext* globalCtx);
void EnButte_SetupWaitToDie(EnButte* this);
void EnButte_WaitToDie(EnButte* this, GlobalContext* globalCtx);

static ColliderJntSphItemInit sColliderItemInit[] = {
    { { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x000, 0x00 }, 0x00, 0x00, 0x01 },
      { 0, { { 0, 0, 0 }, 5 }, 100 } }
};
static ColliderJntSphInit sColliderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x19, 0x10, COLSHAPE_JNTSPH },
    1,
    sColliderItemInit,
};

const ActorInit En_Butte_InitVars = {
    ACTOR_EN_BUTTE,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(EnButte),
    (ActorFunc)EnButte_Init,
    (ActorFunc)EnButte_Destroy,
    (ActorFunc)EnButte_Update,
    (ActorFunc)EnButte_Draw,
};

typedef struct {
    /* 0x00 */ s16 minTime;
    /* 0x02 */ s16 maxTime;
    /* 0x04 */ f32 speedXZTarget;
    /* 0x08 */ f32 speedXZScale;
    /* 0x0C */ f32 speedXZStep;
    /* 0x10 */ s16 rotYStep;
} EnButteFlightParams; // size = 0x14

static EnButteFlightParams sFlyAroundParams[] = {
    { 5, 35, 0.0f, 0.1f, 0.5f, 0 },
    { 10, 45, 1.1f, 0.1f, 0.25f, 1000 },
    { 10, 40, 1.5f, 0.1f, 0.3f, 2000 },
};
static EnButteFlightParams sFollowLinkParams[] = {
    { 3, 3, 0.8f, 0.1f, 0.2f, 0 },
    { 10, 20, 2.0f, 0.3f, 1.0f, 0 },
    { 10, 20, 2.4f, 0.3f, 1.0f, 0 },
};

extern AnimationHeader D_05002470;
extern SkeletonHeader D_050036F0;

void EnButte_SelectFlightParams(EnButte* this, EnButteFlightParams* flightParams) {
    if (this->flightParamsIdx == 0) {
        if (Rand_ZeroOne() < 0.6f) {
            this->flightParamsIdx = 1;
        } else {
            this->flightParamsIdx = 2;
        }
    } else {
        this->flightParamsIdx = 0;
    }

    this->timer = Rand_S16Offset(flightParams->minTime, flightParams->maxTime);
}

static f32 sTransformationEffectScale = 0.0f;
static s16 sTransformationEffectAlpha = 0;

void EnButte_ResetTransformationEffect(void) {
    sTransformationEffectScale = 0.0f;
    sTransformationEffectAlpha = 0;
}

void EnButte_UpdateTransformationEffect(void) {
    sTransformationEffectScale += 0.003f;
    sTransformationEffectAlpha += 4000;
}

void EnButte_DrawTransformationEffect(EnButte* this, GlobalContext* globalCtx) {
    static Vec3f D_809CE3C4 = { 0.0f, 0.0f, -3.0f };
    Vec3f sp5C;
    s32 alpha;
    Vec3s camDir;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_choo.c", 295);

    func_80093C14(globalCtx->state.gfxCtx);

    alpha = Math_SinS(sTransformationEffectAlpha) * 250;
    alpha = CLAMP(alpha, 0, 255);

    Camera_GetCamDir(&camDir, ACTIVE_CAM);
    Matrix_RotateY(camDir.y * (M_PI / 0x8000), MTXMODE_NEW);
    Matrix_RotateX(camDir.x * (M_PI / 0x8000), MTXMODE_APPLY);
    Matrix_RotateZ(camDir.z * (M_PI / 0x8000), MTXMODE_APPLY);
    Matrix_MultVec3f(&D_809CE3C4, &sp5C);
    func_800D1694(this->actor.posRot2.pos.x + sp5C.x, this->actor.posRot2.pos.y + sp5C.y,
                  this->actor.posRot2.pos.z + sp5C.z, &camDir);
    Matrix_Scale(sTransformationEffectScale, sTransformationEffectScale, sTransformationEffectScale, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_choo.c", 317),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 200, 200, 180, alpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 200, 200, 210, 255);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(&gGameKeepMoteDL0));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_choo.c", 326);
}

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 700, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 20, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 600, ICHAIN_STOP),
};

void EnButte_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnButte* this = THIS;

    if (this->actor.params == -1) {
        this->actor.params = 0;
    }

    Actor_ProcessInitChain(&this->actor, sInitChain);

    if ((this->actor.params & 1) == 1) {
        this->actor.uncullZoneScale = 200.0f;
    }

    SkelAnime_Init(globalCtx, &this->skelAnime, &D_050036F0, &D_05002470, this->jointTable, this->morphTable, 8);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sColliderInit, this->colliderItems);
    this->actor.colChkInfo.mass = 0;
    this->unk_25C = Rand_ZeroOne() * 0xFFFF;
    this->unk_25E = Rand_ZeroOne() * 0xFFFF;
    this->unk_260 = Rand_ZeroOne() * 0xFFFF;
    Animation_Change(&this->skelAnime, &D_05002470, 1.0f, 0.0f, 0.0f, 1, 0.0f);
    EnButte_SetupFlyAround(this);
    this->actor.shape.rot.x -= 0x2320;
    this->drawSkelAnime = true;
    // "field keep butterfly"
    osSyncPrintf("(field keep 蝶)(%x)(arg_data 0x%04x)\n", this, this->actor.params);
}

void EnButte_Destroy(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnButte* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void func_809CD56C(EnButte* this) {
    static f32 D_809CE3E0[] = { 50.0f, 80.0f, 100.0f };
    static f32 D_809CE3EC[] = { 30.0f, 40.0f, 50.0f };

    this->actor.shape.unk_08 += Math_SinS(this->unk_25C) * D_809CE3E0[this->flightParamsIdx] +
                                Math_SinS(this->unk_25E) * D_809CE3EC[this->flightParamsIdx];
    this->actor.shape.unk_08 = CLAMP(this->actor.shape.unk_08, -2000.0f, 2000.0f);
}

void func_809CD634(EnButte* this) {
    static f32 D_809CE3F8[] = { 15.0f, 20.0f, 25.0f };
    static f32 D_809CE404[] = { 7.5f, 10.0f, 12.5f };

    this->actor.shape.unk_08 += Math_SinS(this->unk_25C) * D_809CE3F8[this->flightParamsIdx] +
                                Math_SinS(this->unk_25E) * D_809CE404[this->flightParamsIdx];
    this->actor.shape.unk_08 = CLAMP(this->actor.shape.unk_08, -500.0f, 500.0f);
}

void EnButte_Turn(EnButte* this) {
    s16 target = this->actor.posRot.rot.y + 0x8000;
    s16 diff = target - this->actor.shape.rot.y;

    Math_ScaledStepToS(&this->actor.shape.rot.y, target, ABS(diff) >> 3);
    this->actor.shape.rot.x = (s16)(sinf(this->unk_260) * 600.0f) - 0x2320;
}

void EnButte_SetupFlyAround(EnButte* this) {
    EnButte_SelectFlightParams(this, &sFlyAroundParams[this->flightParamsIdx]);
    this->actionFunc = EnButte_FlyAround;
}

void EnButte_FlyAround(EnButte* this, GlobalContext* globalCtx) {
    EnButteFlightParams* flightParams = &sFlyAroundParams[this->flightParamsIdx];
    s16 yaw;
    Player* player = PLAYER;
    f32 distSqFromHome;
    f32 maxDistSqFromHome;
    f32 minAnimSpeed;
    f32 animSpeed;
    s16 rotStep;

    distSqFromHome = Math3D_Dist2DSq(this->actor.posRot.pos.x, this->actor.posRot.pos.z, this->actor.initPosRot.pos.x,
                                     this->actor.initPosRot.pos.z);
    func_809CD56C(this);
    Math_SmoothStepToF(&this->actor.speedXZ, flightParams->speedXZTarget, flightParams->speedXZScale,
                       flightParams->speedXZStep, 0.0f);

    if (this->unk_257 == 1) {
        maxDistSqFromHome = SQ(100.0f);
        rotStep = 1000;
    } else {
        maxDistSqFromHome = SQ(35.0f);
        rotStep = 600;
    }

    minAnimSpeed = 0.0f;
    this->posYTarget = this->actor.initPosRot.pos.y;

    if ((this->flightParamsIdx != 0) && ((distSqFromHome > maxDistSqFromHome) || (this->timer < 4))) {
        yaw = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
        if (Math_ScaledStepToS(&this->actor.posRot.rot.y, yaw, flightParams->rotYStep) == 0) {
            minAnimSpeed = 0.5f;
        }
    } else if ((this->unk_257 == 0) && (this->actor.child != NULL) && (this->actor.child != &this->actor)) {
        yaw = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.child->posRot.pos);
        if (Math_ScaledStepToS(&this->actor.posRot.rot.y, yaw, rotStep) == 0) {
            minAnimSpeed = 0.3f;
        }
    } else if (this->unk_257 == 1) {
        yaw = this->actor.yawTowardsLink + 0x8000 + (s16)((Rand_ZeroOne() - 0.5f) * 0x6000);
        if (Math_ScaledStepToS(&this->actor.posRot.rot.y, yaw, rotStep) == 0) {
            minAnimSpeed = 0.4f;
        }
    } else {
        this->actor.posRot.rot.y += (s16)(sinf(this->unk_25C) * 100.0f);
    }

    EnButte_Turn(this);

    animSpeed = this->actor.speedXZ / 2.0f + Rand_ZeroOne() * 0.2f + (1.0f - Math_SinS(this->unk_260)) * 0.15f +
                (1.0f - Math_SinS(this->unk_25E)) * 0.3f + minAnimSpeed;
    this->skelAnime.playSpeed = CLAMP(animSpeed, 0.2f, 1.5f);
    SkelAnime_Update(&this->skelAnime);

    if (this->timer <= 0) {
        EnButte_SelectFlightParams(this, &sFlyAroundParams[this->flightParamsIdx]);
    }

    if (((this->actor.params & 1) == 1) && (player->heldItemActionParam == 6) && (this->swordDownTimer <= 0) &&
        ((Math3D_Dist2DSq(player->actor.posRot.pos.x, player->actor.posRot.pos.z, this->actor.initPosRot.pos.x,
                          this->actor.initPosRot.pos.z) < SQ(120.0f)) ||
         (this->actor.xzDistToLink < 60.0f))) {
        EnButte_SetupFollowLink(this);
        this->unk_257 = 2;
    } else if (this->actor.xzDistToLink < 120.0) {
        this->unk_257 = 1;
    } else {
        this->unk_257 = 0;
    }
}

void EnButte_SetupFollowLink(EnButte* this) {
    EnButte_SelectFlightParams(this, &sFollowLinkParams[this->flightParamsIdx]);
    this->actionFunc = EnButte_FollowLink;
}

void EnButte_FollowLink(EnButte* this, GlobalContext* globalCtx) {
    static s32 D_809CE410 = 1500;
    EnButteFlightParams* flightParams = &sFollowLinkParams[this->flightParamsIdx];
    Player* player = PLAYER;
    f32 distSqFromHome;
    Vec3f swordTip;
    f32 animSpeed;
    f32 minAnimSpeed;
    f32 distSqFromSword;
    s16 yaw;

    func_809CD634(this);
    Math_SmoothStepToF(&this->actor.speedXZ, flightParams->speedXZTarget, flightParams->speedXZScale,
                       flightParams->speedXZStep, 0.0f);
    minAnimSpeed = 0.0f;

    if ((this->flightParamsIdx != 0) && (this->timer < 12)) {
        swordTip.x = player->swordInfo[0].tip.x + Math_SinS(player->actor.shape.rot.y) * 10.0f;
        swordTip.y = player->swordInfo[0].tip.y;
        swordTip.z = player->swordInfo[0].tip.z + Math_CosS(player->actor.shape.rot.y) * 10.0f;

        yaw = Math_Vec3f_Yaw(&this->actor.posRot.pos, &swordTip) + (s16)(Rand_ZeroOne() * D_809CE410);
        if (Math_ScaledStepToS(&this->actor.posRot.rot.y, yaw, 2000) != 0) {
            if (globalCtx->gameplayFrames % 2) {
                this->actor.posRot.rot.y += (s16)(sinf(this->unk_25C) * 60.0f);
            }
        } else {
            minAnimSpeed = 0.3f;
        }
    }

    this->posYTarget = MAX(player->actor.posRot.pos.y + 30.0f, player->swordInfo[0].tip.y);

    EnButte_Turn(this);

    animSpeed = this->actor.speedXZ / 2.0f + Rand_ZeroOne() * 0.2f + (1.0f - Math_SinS(this->unk_260)) * 0.15f +
                (1.0f - Math_SinS(this->unk_25E)) * 0.3f + minAnimSpeed;
    this->skelAnime.playSpeed = CLAMP(animSpeed, 0.2f, 1.5f);
    SkelAnime_Update(&this->skelAnime);

    if (this->timer <= 0) {
        EnButte_SelectFlightParams(this, &sFollowLinkParams[this->flightParamsIdx]);
        D_809CE410 = -D_809CE410;
    }

    distSqFromHome = Math3D_Dist2DSq(this->actor.posRot.pos.x, this->actor.posRot.pos.z, this->actor.initPosRot.pos.x,
                                     this->actor.initPosRot.pos.z);
    if (!((player->heldItemActionParam == 6) && (fabsf(player->actor.speedXZ) < 1.8f) && (this->swordDownTimer <= 0) &&
          (distSqFromHome < SQ(320.0f)))) {
        EnButte_SetupFlyAround(this);
    } else if (distSqFromHome > SQ(240.0f)) {
        distSqFromSword = Math3D_Dist2DSq(player->swordInfo[0].tip.x, player->swordInfo[0].tip.z,
                                          this->actor.posRot.pos.x, this->actor.posRot.pos.z);
        if (distSqFromSword < SQ(60.0f)) {
            EnButte_SetupTransformIntoFairy(this);
        }
    }
}

void EnButte_SetupTransformIntoFairy(EnButte* this) {
    this->timer = 9;
    this->actor.flags |= 0x10;
    this->skelAnime.playSpeed = 1.0f;
    EnButte_ResetTransformationEffect();
    this->actionFunc = EnButte_TransformIntoFairy;
}

void EnButte_TransformIntoFairy(EnButte* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    EnButte_UpdateTransformationEffect();

    if (this->timer == 5) {
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 60, NA_SE_EV_BUTTERFRY_TO_FAIRY);
    } else if (this->timer == 4) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, this->actor.posRot2.pos.x, this->actor.posRot2.pos.y,
                    this->actor.posRot2.pos.z, 0, this->actor.shape.rot.y, 0, FAIRY_HEAL_TIMED);
        this->drawSkelAnime = false;
    } else if (this->timer <= 0) {
        EnButte_SetupWaitToDie(this);
    }
}

void EnButte_SetupWaitToDie(EnButte* this) {
    this->timer = 64;
    this->actionFunc = EnButte_WaitToDie;
    this->actor.draw = NULL;
}

void EnButte_WaitToDie(EnButte* this, GlobalContext* globalCtx) {
    if (this->timer <= 0) {
        Actor_Kill(&this->actor);
    }
}

void EnButte_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnButte* this = THIS;

    if ((this->actor.child != NULL) && (this->actor.child->update == NULL) && (this->actor.child != &this->actor)) {
        this->actor.child = NULL;
    }

    if (this->timer > 0) {
        this->timer--;
    }

    this->unk_25C += 0x222;
    this->unk_25E += 0x1000;
    this->unk_260 += 0x600;

    if ((this->actor.params & 1) == 1) {
        if (PLAYER->swordState == 0) {
            if (this->swordDownTimer > 0) {
                this->swordDownTimer--;
            }
        } else {
            this->swordDownTimer = 80;
        }
    }

    this->actionFunc(this, globalCtx);

    if (this->actor.update != NULL) {
        Actor_MoveForward(&this->actor);
        Math_StepToF(&this->actor.posRot.pos.y, this->posYTarget, 0.6f);
        if (this->actor.xyzDistToLinkSq < 5000.0f) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        Actor_SetHeight(&this->actor, this->actor.shape.unk_08 * this->actor.scale.y);
    }
}

void EnButte_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnButte* this = THIS;

    if (this->drawSkelAnime) {
        func_80093D18(globalCtx->state.gfxCtx);
        SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, NULL);
        func_800628A4(0, &this->collider);
    }

    if (((this->actor.params & 1) == 1) && (this->actionFunc == EnButte_TransformIntoFairy)) {
        EnButte_DrawTransformationEffect(this, globalCtx);
    }
}
