/*
 * File: z_en_tk.c
 * Overlay: ovl_En_Tk
 * Description: Dampe NPC from "Dampe's Heart-Pounding Gravedigging Tour"
 */

#include "z_en_tk.h"

#define FLAGS 0x00000009

#define THIS ((EnTk*)thisx)

void EnTk_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTk_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTk_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 EnTk_CheckNextSpot(EnTk* this, GlobalContext* globalCtx);
void EnTk_Rest(EnTk* this, GlobalContext* globalCtx);
void EnTk_Walk(EnTk* this, GlobalContext* globalCtx);
void EnTk_Dig(EnTk* this, GlobalContext* globalCtx);

extern UNK_TYPE D_04051DB0;
extern UNK_TYPE D_040521B0;
extern UNK_TYPE D_040525B0;
extern UNK_TYPE D_040529B0;
extern UNK_TYPE D_04052DB0;
extern UNK_TYPE D_040531B0;
extern UNK_TYPE D_040535B0;
extern UNK_TYPE D_040539B0;
extern AnimationHeader D_06001144;
extern AnimationHeader D_06001FA8;
extern AnimationHeader D_06002F84;
extern UNK_TYPE D_06003B40;
extern UNK_TYPE D_06004340;
extern UNK_TYPE D_06004B40;
extern Gfx D_0600ACE0[];
extern Gfx D_0600BC90[];
extern Gfx D_0600BCA0[];
extern SkeletonHeader D_0600BE40;

const ActorInit En_Tk_InitVars = {
    ACTOR_EN_TK,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_TK,
    sizeof(EnTk),
    (ActorFunc)EnTk_Init,
    (ActorFunc)EnTk_Destroy,
    (ActorFunc)EnTk_Update,
    (ActorFunc)EnTk_Draw,
};

void EnTkEff_Create(EnTk* this, Vec3f* pos, Vec3f* speed, Vec3f* accel, u8 duration, f32 size, f32 growth) {
    s16 i;
    EnTkEff* eff = this->eff;

    for (i = 0; i < ARRAY_COUNT(this->eff); i++) {
        if (eff->active != 1) {
            eff->size = size;
            eff->growth = growth;
            eff->timeTotal = eff->timeLeft = duration;
            eff->active = 1;
            eff->pos = *pos;
            eff->accel = *accel;
            eff->speed = *speed;
            break;
        }
        eff++;
    }
}

void EnTkEff_Update(EnTk* this) {
    s16 i;
    EnTkEff* eff;

    eff = this->eff;
    for (i = 0; i < ARRAY_COUNT(this->eff); i++) {
        if (eff->active != 0) {
            eff->timeLeft--;
            if (eff->timeLeft == 0) {
                eff->active = 0;
            }
            eff->accel.x = Math_Rand_ZeroOne() * 0.4f - 0.2f;
            eff->accel.z = Math_Rand_ZeroOne() * 0.4f - 0.2f;
            eff->pos.x += eff->speed.x;
            eff->pos.y += eff->speed.y;
            eff->pos.z += eff->speed.z;
            eff->speed.x += eff->accel.x;
            eff->speed.y += eff->accel.y;
            eff->speed.z += eff->accel.z;
            eff->size += eff->growth;
        }
        eff++;
    }
}

void EnTkEff_Draw(EnTk* this, GlobalContext* globalCtx) {
    static UNK_PTR images[] = {
        &D_040539B0, &D_040535B0, &D_040531B0, &D_04052DB0, &D_040529B0, &D_040525B0, &D_040521B0, &D_04051DB0,
    };

    EnTkEff* eff = this->eff;
    GraphicsContext* gfxCtx;
    s16 gfxSetup;
    s16 i;
    s16 alpha;
    s16 imageIdx;
    Gfx* dispRefs[4];

    /*
     *  This assignment always occurs before a call to Graph_OpenDisps which
     *  makes me suspect that they're inside a macro where the function call
     *  is present only for debug builds. Same for Graph_CloseDisps most likely.
     */
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_tk_eff.c", 114);

    gfxSetup = 0;

    /*
     *  Same code is generated without the if,
     *  but that would make the do...while redundant so there's probably an if.
     */
    do {
        if (1) {
            func_80093D84(globalCtx->state.gfxCtx);
        }
    } while (0);

    for (i = 0; i < ARRAY_COUNT(this->eff); i++) {
        if (eff->active != 0) {
            if (gfxSetup == 0) {
                gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600BC90);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 100, 60, 20, 0);
                gfxSetup = 1;
            }

            alpha = eff->timeLeft * (255.f / eff->timeTotal);
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 170, 130, 90, alpha);

            gDPPipeSync(gfxCtx->polyXlu.p++);
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(eff->size, eff->size, 1.f, MTXMODE_APPLY);
            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_tk_eff.c", 140),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            imageIdx = eff->timeLeft * ((f32)ARRAY_COUNT(images) / eff->timeTotal);
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(images[imageIdx]));

            gSPDisplayList(gfxCtx->polyXlu.p++, D_0600BCA0);
        }
        eff++;
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_tk_eff.c", 154);
}

s32 EnTkEff_CreateDflt(EnTk* this, Vec3f* pos, u8 duration, f32 size, f32 growth, f32 yAccelMax) {
    Vec3f speed = { 0.f, 0.f, 0.f };
    Vec3f accel = { 0.f, 0.3f, 0.f };

    accel.y += Math_Rand_ZeroOne() * yAccelMax;

    EnTkEff_Create(this, pos, &speed, &accel, duration, size, growth);

    return 0;
}

/** z_en_tk_eff.c ends here probably **/

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 30, 52, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
};

void EnTk_RestAnim(EnTk* this, GlobalContext* globalCtx) {
    AnimationHeader* anim = &D_06002F84;

    SkelAnime_ChangeAnim(&this->skelAnim, anim, 1.f, 0.f, SkelAnime_GetFrameCount(&D_06002F84.genericHeader), 0, -10.f);

    this->actionCountdown = Math_Rand_S16Offset(60, 60);
    this->actor.speedXZ = 0.f;
}

void EnTk_WalkAnim(EnTk* this, GlobalContext* globalCtx) {
    AnimationHeader* anim = &D_06001FA8;

    SkelAnime_ChangeAnim(&this->skelAnim, anim, 1.f, 0.f, SkelAnime_GetFrameCount(&D_06002F84.genericHeader), 0, -10.f);

    this->actionCountdown = Math_Rand_S16Offset(240, 240);
}

void EnTk_DigAnim(EnTk* this, GlobalContext* globalCtx) {
    AnimationHeader* anim = &D_06001144;

    SkelAnime_ChangeAnim(&this->skelAnim, anim, 1.f, 0.f, SkelAnime_GetFrameCount(&D_06001144.genericHeader), 0, -10.f);

    if (EnTk_CheckNextSpot(this, globalCtx) >= 0) {
        this->validDigHere = 1;
    }
}

void EnTk_UpdateEyes(EnTk* this) {
    if (DECR(this->blinkCountdown) == 0) {
        this->eyeImageIdx++;
        if (this->eyeImageIdx > 2) {
            this->blinkCycles--;
            if (this->blinkCycles < 0) {
                this->blinkCountdown = Math_Rand_S16Offset(30, 30);
                this->blinkCycles = 2;
                if (Math_Rand_ZeroOne() > 0.5f) {
                    this->blinkCycles++;
                }
            }
            this->eyeImageIdx = 0;
        }
    }
}

s32 EnTk_CheckFacingPlayer(EnTk* this) {
    s16 v0;
    s16 v1;

    if (this->actor.xyzDistFromLinkSq > 10000.f) {
        return 0;
    }

    v0 = this->actor.shape.rot.y;
    v0 -= this->h_21E;
    v0 -= this->headRot;

    v1 = this->actor.yawTowardsLink - v0;
    if (ABS(v1) < 0x1554) {
        return 1;
    } else {
        return 0;
    }
}

s32 EnTk_CheckNextSpot(EnTk* this, GlobalContext* globalCtx) {
    Actor* prop;
    f32 dxz;
    f32 dy;

    prop = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;

    while (prop != NULL) {
        if (prop->id != ACTOR_EN_IT) {
            prop = prop->next;
            continue;
        }

        if (prop == this->currentSpot) {
            prop = prop->next;
            continue;
        }

        dy = prop->posRot.pos.y - this->actor.groundY;
        dxz = func_8002DB8C(&this->actor, prop);
        if (dxz > 40.f || dy > 10.f) {
            prop = prop->next;
            continue;
        }

        this->currentSpot = prop;
        return prop->params;
    }

    return -1;
}

void EnTk_CheckCurrentSpot(EnTk* this) {
    f32 dxz;
    f32 dy;

    if (this->currentSpot != NULL) {
        dy = this->currentSpot->posRot.pos.y - this->actor.groundY;
        dxz = func_8002DB8C(&this->actor, this->currentSpot);
        if (dxz > 40.f || dy > 10.f) {
            this->currentSpot = NULL;
        }
    }
}

f32 EnTk_Step(EnTk* this, GlobalContext* globalCtx) {
    f32 stepFrames[] = { 36.f, 10.f };
    f32 a1_;
    s32 i;

    if (this->skelAnim.animCurrentFrame == 0.f || this->skelAnim.animCurrentFrame == 25.f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
    }

    if (this->skelAnim.animCurrentSeg != &D_06001FA8) {
        return 0.f;
    }

    a1_ = this->skelAnim.animCurrentFrame;
    for (i = 0; i < ARRAY_COUNT(stepFrames); i++) {
        if (a1_ < stepFrames[i] + 12.f && a1_ >= stepFrames[i]) {
            break;
        }
    }
    if (i >= ARRAY_COUNT(stepFrames)) {
        return 0.f;
    } else {
        a1_ = (0x8000 / 12.f) * (a1_ - stepFrames[i]);
        return Math_Sins(a1_) * 2.f;
    }
}

s32 EnTk_Orient(EnTk* this, GlobalContext* globalCtx) {
    Path* path;
    Vec3s* point;
    f32 dx;
    f32 dz;

    if (this->actor.params < 0) {
        return 1;
    }

    path = &globalCtx->setupPathList[0];
    point = SEGMENTED_TO_VIRTUAL(path->points);
    point += this->currentWaypoint;

    dx = point->x - this->actor.posRot.pos.x;
    dz = point->z - this->actor.posRot.pos.z;

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, Math_atan2f(dx, dz) * (0x8000 / M_PI), 10, 1000, 1);
    this->actor.posRot.rot = this->actor.shape.rot;

    if (SQ(dx) + SQ(dz) < 10.f) {
        this->currentWaypoint++;
        if (this->currentWaypoint >= path->count) {
            this->currentWaypoint = 0;
        }

        return 0;
    } else {
        return 1;
    }
}

u16 func_80B1C54C(GlobalContext* globalCtx, Actor* thisx) {
    u16 ret;

    ret = Text_GetFaceReaction(globalCtx, 14);
    if (ret != 0) {
        return ret;
    }

    if (gSaveContext.infTable[13] & 0x0200) {
        /* "Do you want me to dig here? ..." */
        return 0x5019;
    } else {
        /* "Hey kid! ..." */
        return 0x5018;
    }
}

s16 func_80B1C5A0(GlobalContext* globalCtx, Actor* thisx) {
    s32 ret = 1;

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 0:
        case 1:
            break;
        case 2:
            /* "I am the boss of the carpenters ..." (wtf?) */
            if (thisx->textId == 0x5028) {
                gSaveContext.infTable[13] |= 0x0100;
            }
            ret = 0;
            break;
        case 3:
            break;
        case 4:
            if (func_80106BC8(globalCtx) != 0 && (thisx->textId == 0x5018 || thisx->textId == 0x5019)) {
                if (globalCtx->msgCtx.choiceIndex == 1) {
                    /* "Thanks a lot!" */
                    thisx->textId = 0x0084;
                } else if (gSaveContext.rupees < 10) {
                    /* "You don't have enough Rupees!" */
                    thisx->textId = 0x0085;
                } else {
                    globalCtx->msgCtx.msgMode = 0x37;
                    Rupees_ChangeBy(-10);
                    gSaveContext.infTable[13] |= 0x0200;
                    return 2;
                }
                func_8010B720(globalCtx, thisx->textId);
                gSaveContext.infTable[13] |= 0x0200;
            }
            break;
        case 5:
            if (func_80106BC8(globalCtx) != 0 && (thisx->textId == 0x0084 || thisx->textId == 0x0085)) {
                func_80106CCC(globalCtx);
                ret = 0;
            }
            break;
        case 6:
        case 7:
        case 8:
        case 9:
            break;
    }

    return ret;
}

s32 EnTk_ChooseReward(EnTk* this) {
    f32 luck;
    s32 reward;

    luck = Math_Rand_ZeroOne();

    if (luck < 0.4f) {
        reward = 0;
    } else if (luck < 0.7) {
        reward = 1;
    } else if (luck < 0.9) {
        reward = 2;
    } else {
        reward = 3;
    }

    switch (reward) {
        case 0:
            if (this->rewardCount[0] < 8) {
                this->rewardCount[0] += 1;
                return reward;
            }
            break;
        case 1:
            if (this->rewardCount[1] < 4) {
                this->rewardCount[1] += 1;
                return reward;
            }
            break;
        case 2:
            if (this->rewardCount[2] < 2) {
                this->rewardCount[2] += 1;
                return reward;
            }
            break;
        case 3:
            if (this->rewardCount[3] < 1) {
                this->rewardCount[3] += 1;
                return reward;
            }
            break;
    }

    if (this->rewardCount[0] < 8) {
        this->rewardCount[0] += 1;
        reward = 0;
    } else if (this->rewardCount[1] < 4) {
        this->rewardCount[1] += 1;
        reward = 1;
    } else if (this->rewardCount[2] < 2) {
        this->rewardCount[2] += 1;
        reward = 2;
    } else if (this->rewardCount[3] < 1) {
        this->rewardCount[3] += 1;
        reward = 3;
    } else {
        reward = 0;
        this->rewardCount[0] = 1;
        this->rewardCount[1] = 0;
        this->rewardCount[2] = 0;
        this->rewardCount[3] = 0;
    }

    return reward;
}

void EnTk_DigEff(EnTk* this) {
    Vec3f pos = { 0.f, 0.f, 0.f };
    Vec3f speed = { 0.f, 0.f, 0.f };
    Vec3f accel = { 0.f, 0.3f, 0.f };

    if (this->skelAnim.animCurrentFrame >= 32.f && this->skelAnim.animCurrentFrame < 40.f) {
        pos.x = (Math_Rand_ZeroOne() - 0.5f) * 12.f + this->v3f_304.x;
        pos.y = (Math_Rand_ZeroOne() - 0.5f) * 8.f + this->v3f_304.y;
        pos.z = (Math_Rand_ZeroOne() - 0.5f) * 12.f + this->v3f_304.z;
        EnTkEff_CreateDflt(this, &pos, 12, 0.2f, 0.1f, 0.f);
    }
}

void EnTk_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnTk* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0, ActorShadow_DrawFunc_Circle, 24.f);

    SkelAnime_InitSV(globalCtx, &this->skelAnim, &D_0600BE40, NULL, this->hz_22A, this->hz_296, 18);
    SkelAnime_ChangeAnim(&this->skelAnim, &D_06002F84, 1.f, 0.f, SkelAnime_GetFrameCount(&D_06002F84.genericHeader), 0,
                         0.f);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);

    func_80061EFC(&this->actor.colChkInfo, NULL, &sColChkInfoInit);

    if (gSaveContext.dayTime <= 0xC000 || gSaveContext.dayTime >= 0xE000 || !LINK_IS_CHILD ||
        globalCtx->sceneNum != SCENE_SPOT02) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_SetScale(&this->actor, 0.01f);

    this->actor.unk_1F = 6;
    this->actor.gravity = -0.1f;
    this->currentReward = -1;
    this->currentSpot = NULL;
    this->actionFunc = EnTk_Rest;
}

void EnTk_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnTk* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnTk_Rest(EnTk* this, GlobalContext* globalCtx) {
    s16 v1;
    s16 a1_;

    if (this->h_1E0 != 0) {
        v1 = this->actor.shape.rot.y;
        v1 -= this->h_21E;
        v1 = this->actor.yawTowardsLink - v1;

        if (this->h_1E0 == 2) {
            EnTk_DigAnim(this, globalCtx);
            this->h_1E0 = 0;
            this->actionFunc = EnTk_Dig;
            return;
        }

        func_800343CC(globalCtx, &this->actor, &this->h_1E0, this->collider.dim.radius + 30.f, func_80B1C54C,
                      func_80B1C5A0);
    } else if (EnTk_CheckFacingPlayer(this) != 0) {
        v1 = this->actor.shape.rot.y;
        v1 -= this->h_21E;
        v1 = this->actor.yawTowardsLink - v1;

        this->actionCountdown = 0;
        func_800343CC(globalCtx, &this->actor, &this->h_1E0, this->collider.dim.radius + 30.f, func_80B1C54C,
                      func_80B1C5A0);
    } else if (func_8002F194(&this->actor, globalCtx) != 0) {
        v1 = this->actor.shape.rot.y;
        v1 -= this->h_21E;
        v1 = this->actor.yawTowardsLink - v1;

        this->actionCountdown = 0;
        this->h_1E0 = 1;
    } else if (DECR(this->actionCountdown) == 0) {
        EnTk_WalkAnim(this, globalCtx);
        this->actionFunc = EnTk_Walk;

        /*! @bug v1 is uninitialized past this branch */
    } else {
        v1 = 0;
    }

    a1_ = CLAMP(-v1, 1270, 10730);
    Math_SmoothScaleMaxMinS(&this->headRot, a1_, 6, 1000, 1);
}

void EnTk_Walk(EnTk* this, GlobalContext* globalCtx) {
    if (this->h_1E0 == 2) {
        EnTk_DigAnim(this, globalCtx);
        this->h_1E0 = 0;
        this->actionFunc = EnTk_Dig;
    } else {
        this->actor.speedXZ = EnTk_Step(this, globalCtx);
        EnTk_Orient(this, globalCtx);
        Math_SmoothScaleMaxMinS(&this->headRot, 0, 6, 1000, 1);
        EnTk_CheckCurrentSpot(this);

        DECR(this->actionCountdown);
        if (EnTk_CheckFacingPlayer(this) != 0 || this->actionCountdown == 0) {
            EnTk_RestAnim(this, globalCtx);
            this->actionFunc = EnTk_Rest;
        }
    }
}

void EnTk_Dig(EnTk* this, GlobalContext* globalCtx) {
    Vec3f rewardOrigin;
    Vec3f rewardPos;
    s32 sRewardParams[] = {
        0x0000, /* Green rupee */
        0x0001, /* Blue rupee */
        0x0002, /* Red rupee */
        0x0014, /* Purple rupee */
        0x0006, /* Heart piece */
    };

    EnTk_DigEff(this);

    if (this->skelAnim.animCurrentFrame == 32.f) {
        /* What's gonna come out? */
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_DIG_UP);

        this->rewardTimer = 0;

        if (this->validDigHere == 1) {
            rewardOrigin.x = 0.f;
            rewardOrigin.y = 0.f;
            rewardOrigin.z = -40.f;

            Matrix_RotateY(this->actor.shape.rot.y, MTXMODE_NEW);
            Matrix_MultVec3f(&rewardOrigin, &rewardPos);

            rewardPos.x += this->actor.posRot.pos.x;
            rewardPos.y += this->actor.posRot.pos.y;
            rewardPos.z += this->actor.posRot.pos.z;

            this->currentReward = EnTk_ChooseReward(this);
            if (this->currentReward == 3) {
                /*
                 * Upgrade the purple rupee reward to the heart piece if this
                 * is the first grand prize dig.
                 */
                if ((gSaveContext.itemGetInf[1] & 0x1000) == 0) {
                    gSaveContext.itemGetInf[1] |= 0x1000;
                    this->currentReward = 4;
                }
            }

            Item_DropCollectible(globalCtx, &rewardPos, sRewardParams[this->currentReward]);
        }
    }

    if (this->skelAnim.animCurrentFrame >= 32.f && this->rewardTimer == 10) {
        /* Play a reward sound shortly after digging */
        if (this->validDigHere == 0) {
            /* Bad dig spot */
            Audio_PlayActorSound2(&this->actor, NA_SE_SY_ERROR);
        } else if (this->currentReward == 4) {
            /* Heart piece */
            Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            /* Rupee */
            Audio_PlayActorSound2(&this->actor, NA_SE_SY_TRE_BOX_APPEAR);
        }
    }
    this->rewardTimer++;

    if (func_800A56C8(&this->skelAnim, this->skelAnim.animFrameCount) != 0) {
        if (this->currentReward < 0) {
            /* "Nope, nothing here!" */
            func_8010B680(globalCtx, 0x501A, NULL);
        } else {
            func_80106CCC(globalCtx);
        }

        EnTk_RestAnim(this, globalCtx);

        this->currentReward = -1;
        this->validDigHere = 0;
        this->actionFunc = EnTk_Rest;
    }
}

void EnTk_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnTk* this = THIS;
    s32 pad;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);

    SkelAnime_FrameUpdateMatrix(&this->skelAnim);

    Actor_MoveForward(&this->actor);

    func_8002E4B4(globalCtx, &this->actor, 40.f, 10.f, 0.f, 5);

    this->actionFunc(this, globalCtx);

    EnTkEff_Update(this);

    EnTk_UpdateEyes(this);
}

void func_80B1D200(GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_tk.c", 1188);

    gSPDisplayList(gfxCtx->polyOpa.p++, D_0600ACE0);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_tk.c", 1190);
}

s32 EnTk_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnTk* this = THIS;

    switch (limbIndex) {
        /* Limb 15 - Head */
        case 15:
            this->h_21E = rot->y;
            break;
        /* Limb 16 - Jaw */
        case 16:
            this->h_21E += rot->y;
            rot->y += this->headRot;
            break;
    }

    return 0;
}

void EnTk_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnTk* this = THIS;
    Vec3f sp28 = { 0.f, 0.f, 4600.f };
    Vec3f sp1C = { 0.f, 0.f, 0.f };

    /* Limb 16 - Jaw */
    if (limbIndex == 16) {
        Matrix_MultVec3f(&sp1C, &this->actor.posRot2.pos);
    }

    /* Limb 14 - Neck */
    if (limbIndex == 14) {
        Matrix_MultVec3f(&sp28, &this->v3f_304);
        func_80B1D200(globalCtx);
    }
}

void EnTk_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static UNK_PTR sEyesSegments[] = {
        0x06003B40,
        0x06004340,
        0x06004B40,
    };
    EnTk* this = THIS;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    Matrix_Push();
    EnTkEff_Draw(this, globalCtx);
    Matrix_Pull();

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_tk.c", 1294);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(sEyesSegments[this->eyeImageIdx]));

    SkelAnime_DrawSV(globalCtx, this->skelAnim.skeleton, this->skelAnim.limbDrawTbl, this->skelAnim.dListCount,
                     EnTk_OverrideLimbDraw, EnTk_PostLimbDraw, &this->actor);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_tk.c", 1312);
}
