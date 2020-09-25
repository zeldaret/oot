#include "z_en_rd.h"

#define FLAGS 0x00000415

#define THIS ((EnRd*)thisx)

void EnRd_Init(Actor* thisx, GlobalContext* globalCtx);
void EnRd_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnRd_Update(Actor* thisx, GlobalContext* globalCtx);
void EnRd_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AE269C(EnRd* this);
void func_80AE2744(EnRd* this, GlobalContext* globalCtx);
void func_80AE2970(EnRd* this);
void func_80AE2A10(EnRd* this, GlobalContext* globalCtx);
void func_80AE2C1C(EnRd* this, GlobalContext* globalCtx);
void func_80AE2F50(EnRd* this, GlobalContext* globalCtx);
void func_80AE2FD0(EnRd* this, GlobalContext* globalCtx);
void func_80AE31DC(EnRd* this);
void func_80AE3260(EnRd* this, GlobalContext* globalCtx);
void func_80AE33F0(EnRd* this);
void func_80AE392C(EnRd* this);
void func_80AE39D4(EnRd* this);
void func_80AE3454(EnRd* this, GlobalContext* globalCtx);
void func_80AE37BC(EnRd* this);
void func_80AE3834(EnRd* this, GlobalContext* globalCtx);
void func_80AE3978(EnRd* this, GlobalContext* globalCtx);
void func_80AE3A54(EnRd* this, GlobalContext* globalCtx);
void func_80AE3B18(EnRd* this, GlobalContext* globalCtx);
void func_80AE3C98(EnRd* this, GlobalContext* globalCtx);
void func_80AE3ECC(EnRd* this, GlobalContext* globalCtx);

const ActorInit En_Rd_InitVars = {
    ACTOR_EN_RD,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_RD,
    sizeof(EnRd),
    (ActorFunc)EnRd_Init,
    (ActorFunc)EnRd_Destroy,
    (ActorFunc)EnRd_Update,
    (ActorFunc)EnRd_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x09, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

static DamageTable sDamageTable = {
    0x00, 0xF2, 0x00, 0x00, 0x00, 0x00, 0xF2, 0x10, 0xF1, 0xF2, 0xF4, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0xE4, 0x60, 0xD3, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0x00, 0x00, 0xF4, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
};

static Vec3f D_80AE4918 = { 0.0f, 0.0f, 0.0f };

// I'm guessing these are primitive and environment colors that go unused
static Color_RGBA8_n D_80AE4924 = { 200, 200, 255, 255 };
static Color_RGBA8_n D_80AE4928 = { 0, 0, 255, 0 };

static Vec3f D_80AE492C = { 0.0f, 0.0f, 0.0f };
static Color_RGBA8_n D_80AE4938 = { 200, 200, 255, 255 };
static Color_RGBA8_n D_80AE493C = { 0, 0, 255, 0 };

static Vec3f D_80AE4940 = { 300.0f, 0.0f, 0.0f };
static Vec3f D_80AE494C = { 300.0f, 0.0f, 0.0f };
static Vec3f D_80AE4958 = { 0.25f, 0.25f, 0.25f };

extern SkeletonHeader D_06003DD8;
extern AnimationHeader D_06004268;
extern AnimationHeader D_060046F8;
extern AnimationHeader D_06004ADC;
extern AnimationHeader D_06004F94;
extern AnimationHeader D_060057AC;
extern AnimationHeader D_06005D98;
extern AnimationHeader D_06006E88;
extern AnimationHeader D_060074F0;
extern AnimationHeader D_06008040;
extern AnimationHeader D_060087D0;
extern SkeletonHeader D_0600E778;
extern AnimationHeader D_0600EFDC;

void EnRd_SetupAction(EnRd* this, EnRdActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnRd_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnRd* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    thisx->unk_1F = 0;
    thisx->colChkInfo.damageTable = &sDamageTable;
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    this->unk_310 = this->unk_30E = 0;
    thisx->posRot2.pos = thisx->posRot.pos;
    thisx->posRot2.pos.y += 50.0f;
    thisx->colChkInfo.mass = 0xFE;
    thisx->colChkInfo.health = 8;
    this->unk_314 = this->unk_31D = 0xFF;
    this->unk_312 = (thisx->params & 0xFF00) >> 8;

    if (thisx->params & 0x80) {
        thisx->params |= 0xFF00;
    } else {
        thisx->params &= 0xFF;
    }

    if (thisx->params >= -1) {
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600E778, &D_060087D0, this->limbDrawTable,
                         this->transitionDrawTable, 26);
        thisx->naviEnemyId = 42;
    } else {
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06003DD8, &D_060087D0, this->limbDrawTable,
                         this->transitionDrawTable, 26);
        thisx->naviEnemyId = 45;
    }

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);

    if (thisx->params >= -2) {
        func_80AE269C(this);
    } else {
        func_80AE2970(this);
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (thisx->params == 3) {
        thisx->flags |= 0x80;
    }
}

void EnRd_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnRd* this = THIS;

    if (gSaveContext.unk_1422 != 0) {
        gSaveContext.unk_1422 = 0;
    }
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AE2630(GlobalContext* globalCtx, Actor* thisx, s32 arg2) {
    Actor* enemyIt = globalCtx->actorCtx.actorList[ACTORTYPE_ENEMY].first;

    while (enemyIt != NULL) {
        if ((enemyIt->id != ACTOR_EN_RD) || (enemyIt == thisx) || (enemyIt->params < 0)) {
            enemyIt = enemyIt->next;
            continue;
        }

        if (arg2 != 0) {
            enemyIt->parent = thisx;
        } else if (enemyIt->parent == thisx) {
            enemyIt->parent = NULL;
        }
        enemyIt = enemyIt->next;
    }
}

void func_80AE269C(EnRd* this) {
    if (this->actor.params != 2) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060087D0, -6.0f);
    } else {
        SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06005D98);
    }

    this->unk_31B = 0;
    this->unk_30C = (Math_Rand_ZeroOne() * 10.0f) + 5.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    EnRd_SetupAction(this, func_80AE2744);
}

void func_80AE2744(EnRd* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxMinS(&this->unk_30E, 0, 1, 0x64, 0);
    Math_SmoothScaleMaxMinS(&this->unk_310, 0, 1, 0x64, 0);

    if ((this->actor.params == 2) && (0.0f == this->skelAnime.animCurrentFrame)) {
        if (Math_Rand_ZeroOne() >= 0.5f) {
            SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06005D98);
        } else {
            SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_060057AC);
        }
    } else {
        this->unk_30C--;
        if (this->unk_30C == 0) {
            this->unk_30C = (Math_Rand_ZeroOne() * 10.0f) + 10.0f;
            this->skelAnime.animCurrentFrame = 0.0f;
        }
    }

    if (this->actor.parent != NULL) {
        if (this->unk_305 == 0) {
            if (this->actor.params != 2) {
                func_80AE31DC(this);
            } else {
                func_80AE392C(this);
            }
        }
    } else {
        if (this->unk_305 != 0) {
            if (this->actor.params != 2) {
                func_80AE37BC(this);
            } else {
                func_80AE392C(this);
            }
        }

        this->unk_305 = 0;
        if ((this->actor.xzDistFromLink <= 150.0f) && func_8002DDE4(globalCtx)) {
            if ((this->actor.params != 2) && (this->unk_305 == 0)) {
                func_80AE37BC(this);
            } else {
                func_80AE392C(this);
            }
        }
    }

    if ((globalCtx->gameplayFrames & 95) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_CRY);
    }
}

void func_80AE2970(EnRd* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060087D0, 0, 0, SkelAnime_GetFrameCount(&D_060087D0.genericHeader), 0,
                         -6.0f);
    this->unk_31B = 0xB;
    this->unk_30C = 6;
    this->actor.shape.rot.x = -0x4000;
    this->actor.gravity = 0.0f;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.speedXZ = 0.0f;
    EnRd_SetupAction(this, func_80AE2A10);
}

// Rising out of coffin
void func_80AE2A10(EnRd* this, GlobalContext* globalCtx) {
    if (this->actor.shape.rot.x != -0x4000) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, 0, 1, 0x7D0, 0);
        if (Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.3f, 2.0f, 0.3f) ==
            0.0f) {
            this->actor.gravity = -3.5f;
            func_80AE269C(this);
        }
    } else {
        if (this->actor.posRot.pos.y == this->actor.initPosRot.pos.y) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_CRY);
        }
        if (Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y + 50.0f, 0.3f, 2.0f,
                                    0.3f) == 0.0f) {
            if (this->unk_30C != 0) {
                this->unk_30C--;
                Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 6.0f, 0.3f, 1.0f, 0.3f);
            } else if (Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.3f, 1.0f, 0.3f) == 0.0f) {
                Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, 0, 1, 0x7D0, 0);
            }
        }
    }
}

void func_80AE2B90(EnRd* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600EFDC, 1.0f, 4.0f, SkelAnime_GetFrameCount(&D_0600EFDC.genericHeader),
                         1, -4.0f);
    this->actor.speedXZ = 0.4f;
    this->unk_31B = 4;
    EnRd_SetupAction(this, func_80AE2C1C);
}

void func_80AE2C1C(EnRd* this, GlobalContext* globalCtx) {
    Vec3f sp44 = D_80AE4918;
    Color_RGBA8_n sp40 = D_80AE4924;
    Color_RGBA8_n sp3C = D_80AE4928;
    Player* player = PLAYER;
    s32 pad;
    s16 sp32 = this->actor.yawTowardsLink - this->actor.shape.rot.y - this->unk_30E - this->unk_310;

    this->skelAnime.animPlaybackSpeed = this->actor.speedXZ;
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA, 0);
    Math_SmoothScaleMaxMinS(&this->unk_30E, 0, 1, 0x64, 0);
    Math_SmoothScaleMaxMinS(&this->unk_310, 0, 1, 0x64, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (func_8002DB6C(&player->actor, &this->actor.initPosRot.pos) >= 150.0f) {
        func_80AE2F50(this, globalCtx);
    }

    if ((ABS(sp32) < 0x1554) && (func_8002DB48(&this->actor, &player->actor) <= 150.0f)) {
        if (!(player->stateFlags1 & 0x2C6080) && !(player->stateFlags2 & 0x80)) {
            if (this->unk_306 == 0) {
                if (!(this->unk_312 & 0x80)) {
                    player->actor.freezeTimer = 40;
                    func_8008EEAC(globalCtx, &this->actor);
                    PLAYER->unk_684 = &this->actor;
                    func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
                }
                this->unk_306 = 0x3C;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_AIM);
            }
        } else {
            func_80AE2F50(this, globalCtx);
        }
    }

    DECR(this->unk_307);

    if ((this->unk_307 == 0) && (func_8002DB48(&this->actor, &player->actor) <= 45.0f) &&
        (func_8002E084(&this->actor, 0x38E3))) {
        player->actor.freezeTimer = 0;
        if (globalCtx->grabPlayer(globalCtx, &player->actor) != 0) {
            this->actor.flags &= ~1;
            func_80AE33F0(this);
        }
    } else if (this->actor.params > 0) {
        if (this->actor.parent != NULL) {
            func_80AE31DC(this);
        } else {
            this->unk_305 = 0;
        }
    }

    if ((this->skelAnime.animCurrentFrame == 10.0f) || (this->skelAnime.animCurrentFrame == 22.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_WALK);
    } else if ((globalCtx->gameplayFrames & 95) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_CRY);
    }
}

void func_80AE2F50(EnRd* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600EFDC, 0.5f, 0, SkelAnime_GetFrameCount(&D_0600EFDC.genericHeader), 1,
                         -4.0f);
    this->unk_31B = 2;
    EnRd_SetupAction(this, func_80AE2FD0);
}

void func_80AE2FD0(EnRd* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    s16 targetY = func_8002DAC0(&this->actor, &this->actor.initPosRot.pos);

    if (func_8002DB6C(&this->actor, &this->actor.initPosRot.pos) >= 5.0f) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, targetY, 1, 0x1C2, 0);
    } else {
        this->actor.speedXZ = 0.0f;
        if (Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, 1, 0x1C2, 0) == 0) {
            if (this->actor.params != 2) {
                func_80AE269C(this);
            } else {
                func_80AE39D4(this);
            }
        }
    }

    Math_SmoothScaleMaxMinS(&this->unk_30E, 0, 1, 0x64, 0);
    Math_SmoothScaleMaxMinS(&this->unk_310, 0, 1, 0x64, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (!(player->stateFlags1 & 0x2C6080) && !(player->stateFlags2 & 0x80) &&
        (func_8002DB6C(&player->actor, &this->actor.initPosRot.pos) < 150.0f)) {
        this->actor.unk_1F = 0;
        func_80AE2B90(this, globalCtx);
    } else if (this->actor.params > 0) {
        if (this->actor.parent != NULL) {
            func_80AE31DC(this);
        } else {
            this->unk_305 = 0;
        }
    }

    if (this->skelAnime.animCurrentFrame == 10.0f || this->skelAnime.animCurrentFrame == 22.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_WALK);
    } else if ((globalCtx->gameplayFrames & 95) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_CRY);
    }
}

void func_80AE31DC(EnRd* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600EFDC, 0.5f, 0, SkelAnime_GetFrameCount(&D_0600EFDC.genericHeader), 1,
                         -4.0f);
    this->unk_31B = 3;
    this->unk_305 = 1;
    EnRd_SetupAction(this, func_80AE3260);
}

void func_80AE3260(EnRd* this, GlobalContext* globalCtx) {
    if (this->actor.parent != NULL) {
        s32 pad;
        s16 targetY;
        Vec3f thisPos = this->actor.parent->posRot.pos;

        targetY = func_8002DAC0(&this->actor, &thisPos);

        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, targetY, 1, 0xFA, 0);

        if (func_8002DB6C(&this->actor, &thisPos) >= 45.0f) {
            this->actor.speedXZ = 0.4f;
        } else {
            this->actor.speedXZ = 0.0f;

            if (this->actor.params != 2) {
                func_80AE269C(this);
            } else {
                func_80AE39D4(this);
            }
        }

        Math_SmoothScaleMaxMinS(&this->unk_30E, 0, 1, 0x64, 0);
        Math_SmoothScaleMaxMinS(&this->unk_310, 0, 1, 0x64, 0);
    } else {
        func_80AE2B90(this, globalCtx);
    }

    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->skelAnime.animCurrentFrame == 10.0f || this->skelAnime.animCurrentFrame == 22.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_WALK);
    } else if ((globalCtx->gameplayFrames & 95) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_CRY);
    }
}

void func_80AE33F0(EnRd* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06004ADC);
    this->unk_30C = this->unk_304 = 0;
    this->unk_319 = 0xC8;
    this->unk_31B = 8;
    this->actor.speedXZ = 0.0f;
    EnRd_SetupAction(this, func_80AE3454);
}

void func_80AE3454(EnRd* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->unk_304++;
    }

    switch (this->unk_304) {
        case 1:
            SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06004268);
            this->unk_304++;
            globalCtx->damagePlayer(globalCtx, -8);
            func_800AA000(this->actor.xzDistFromLink, 0xFF, 1, 0xC);
            this->unk_319 = 0x14;
        case 0:
            Math_SmoothScaleMaxMinS(&this->unk_30E, 0, 1, 0x5DC, 0);
            Math_SmoothScaleMaxMinS(&this->unk_310, 0, 1, 0x5DC, 0);
        case 2:
            if (!(player->stateFlags2 & 0x80)) {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_060046F8, 0.5f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_060046F8.genericHeader), 3, 0.0f);
                this->unk_304++;
                this->unk_31B = 4;
                return;
            }

            if (LINK_IS_CHILD) {
                Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, -1500.0f, 1.0f, 150.0f, 0.0f);
            }

            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x,
                                    (Math_Sins(player->actor.shape.rot.y) * -25.0f) + player->actor.posRot.pos.x, 1.0f,
                                    10.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, player->actor.posRot.pos.y, 1.0f, 10.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z,
                                    (Math_Coss(player->actor.shape.rot.y) * -25.0f) + player->actor.posRot.pos.z, 1.0f,
                                    10.0f, 0.0f);
            Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, player->actor.shape.rot.y, 1, 0x1770, 0);

            if (this->skelAnime.animCurrentFrame == 0.0f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_ATTACK);
            }
            this->unk_319--;

            if (this->unk_319 == 0) {
                globalCtx->damagePlayer(globalCtx, -8);
                func_800AA000(this->actor.xzDistFromLink, 0xF0, 1, 0xC);
                this->unk_319 = 0x14;
                func_8002F7DC(&player->actor, NA_SE_VO_LI_DAMAGE_S + player->ageProperties->unk_92);
            }
            break;
        case 3:
            if (LINK_IS_CHILD) {
                Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 0, 1.0f, 400.0f, 0.0f);
            }
            break;
        case 4:
            if (LINK_IS_CHILD) {
                Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 0, 1.0f, 400.0f, 0.0f);
            }
            this->actor.unk_1F = 0;
            this->actor.flags |= 1;
            this->unk_306 = 0xA;
            this->unk_307 = 0xF;
            func_80AE2B90(this, globalCtx);
            break;
    }
}

void func_80AE37BC(EnRd* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06004F94, 0.0f, 0.0f, SkelAnime_GetFrameCount(&D_06004F94.genericHeader),
                         2, 0.0f);
    this->unk_31B = 7;
    EnRd_SetupAction(this, func_80AE3834);
}

void func_80AE3834(EnRd* this, GlobalContext* globalCtx) {
    Vec3f sp34 = D_80AE492C;
    Color_RGBA8_n sp30 = D_80AE4938;
    Color_RGBA8_n sp2C = D_80AE493C;
    Player* player = PLAYER;
    s16 temp_v0 = this->actor.yawTowardsLink - this->actor.shape.rot.y - this->unk_30E - this->unk_310;

    if (ABS(temp_v0) < 0x2008) {
        if (!(this->unk_312 & 0x80)) {
            player->actor.freezeTimer = 60;
            func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
            func_8008EEAC(globalCtx, &this->actor);
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_AIM);
        func_80AE2B90(this, globalCtx);
    }
}

void func_80AE392C(EnRd* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06008040, -4.0f);
    this->unk_31B = 5;
    EnRd_SetupAction(this, func_80AE3978);
}

void func_80AE3978(EnRd* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->actor.parent != NULL) {
            func_80AE31DC(this);
        } else {
            func_80AE37BC(this);
        }
    }
}

void func_80AE39D4(EnRd* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06008040, -1.0f, SkelAnime_GetFrameCount(&D_06008040.genericHeader), 0.0f,
                         2, -4.0f);
    this->unk_31B = 6;
    EnRd_SetupAction(this, func_80AE3A54);
}

void func_80AE3A54(EnRd* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_80AE269C(this);
    }
}

void func_80AE3A8C(EnRd* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060074F0, -6.0f);

    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = -2.0f;
    }

    this->actor.flags |= 1;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_DAMAGE);
    this->unk_31B = 9;
    EnRd_SetupAction(this, func_80AE3B18);
}

void func_80AE3B18(EnRd* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->actor.speedXZ < 0.0f) {
        this->actor.speedXZ += 0.15f;
    }

    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    Math_SmoothScaleMaxMinS(&this->unk_30E, 0, 1, 0x12C, 0);
    Math_SmoothScaleMaxMinS(&this->unk_310, 0, 1, 0x12C, 0);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;

        if (this->actor.parent != NULL) {
            func_80AE31DC(this);
        } else if (func_8002DB6C(&player->actor, &this->actor.initPosRot.pos) >= 150.0f) {
            func_80AE2F50(this, globalCtx);
        } else {
            func_80AE2B90(this, globalCtx);
        }

        this->unk_31D = 0xFF;
    }
}

void func_80AE3C20(EnRd* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06006E88, -1.0f);
    this->unk_31B = 0xA;
    this->unk_30C = 0x12C;
    this->actor.flags &= ~1;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_DEAD);
    EnRd_SetupAction(this, func_80AE3C98);
}

void func_80AE3C98(EnRd* this, GlobalContext* globalCtx) {
    if (this->actor.type != ACTORTYPE_PROP) {
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
    }

    Math_SmoothScaleMaxMinS(&this->unk_30E, 0, 1, 0x7D0, 0);
    Math_SmoothScaleMaxMinS(&this->unk_310, 0, 1, 0x7D0, 0);

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->unk_30C == 0) {
            if (!Flags_GetSwitch(globalCtx, this->unk_312 & 0x7F)) {
                Flags_SetSwitch(globalCtx, this->unk_312 & 0x7F);
            }
            if (this->unk_314 != 0) {
                if (this->unk_314 == 0xB4) {
                    func_80AE2630(globalCtx, &this->actor, 0);
                }
                this->actor.scale.y -= 0.000075f;
                this->unk_314 -= 5;
            } else {
                Actor_Kill(&this->actor);
            }
        } else {
            this->unk_30C--;
        }
    } else if (((s32)this->skelAnime.animCurrentFrame == 33) || ((s32)this->skelAnime.animCurrentFrame == 40)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DOWN);
    }
}

void func_80AE3DE4(EnRd* this) {
    this->unk_31B = 1;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if (gSaveContext.unk_1422 != 0) {
        this->unk_318 = 1;
        this->unk_316 = 0x258;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_LIGHT_ARROW_HIT);
        func_8003426C(&this->actor, -0x8000, -0x7F38, 0, 0xFF);
    } else if (this->unk_31C == 1) {
        func_8003426C(&this->actor, 0, 0xC8, 0, 0x50);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_LIGHT_ARROW_HIT);
        func_8003426C(&this->actor, -0x8000, 0xC8, 0, 0x50);
    }
    EnRd_SetupAction(this, func_80AE3ECC);
}

void func_80AE3ECC(EnRd* this, GlobalContext* globalCtx) {
    if ((this->unk_318 != 0) && (this->unk_316 != 0)) {
        this->unk_316--;
        if (this->unk_316 >= 0xFF) {
            func_8003426C(&this->actor, -0x8000, 0xC8, 0, 0xFF);
        }
        if (this->unk_316 == 0) {
            this->unk_318 = 0;
            gSaveContext.unk_1422 = 0;
        }
    }

    if (this->actor.dmgEffectTimer == 0) {
        if (this->actor.colChkInfo.health == 0) {
            func_80AE2630(globalCtx, &this->actor, 1);
            func_80AE3C20(this);
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x90);
        } else {
            func_80AE3A8C(this);
        }
    }
}

// Regalloc..I can get the score lower by using permuter suggestions, but they all seem silly
#ifdef NON_MATCHING
void func_80AE3F9C(EnRd* this, GlobalContext* globalCtx) {
    s16 unk_310;
    s16 shapeRotY;
    s16 yawTowardsLink;
    s16 new_var;
    s16 temp_v0;
    s16 phi_a3;
    s16 phi_v0;

    unk_310 = this->unk_310;
    shapeRotY = this->actor.shape.rot.y;
    yawTowardsLink = this->actor.yawTowardsLink;
    new_var = unk_310 + shapeRotY;

    temp_v0 = yawTowardsLink - new_var;
    phi_a3 = CLAMP(temp_v0, -500, 500);

    temp_v0 -= this->unk_30E;
    phi_v0 = CLAMP(temp_v0, -500, 500);

    if ((s16)(yawTowardsLink - shapeRotY) >= 0) {
        this->unk_310 += ABS(phi_a3);
        this->unk_30E += ABS(phi_v0);
    } else {
        this->unk_310 -= ABS(phi_a3);
        this->unk_30E -= ABS(phi_v0);
    }

    this->unk_310 = CLAMP(this->unk_310, -18783, 18783);
    this->unk_30E = CLAMP(this->unk_30E, -9583, 9583);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3F9C.s")
#endif

void func_80AE4114(EnRd* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;

    if ((gSaveContext.unk_1422 != 0) && (this->actor.shape.rot.x == 0) && (this->unk_318 == 0) &&
        (this->unk_31B != 9) && (this->unk_31B != 0xA) && (this->unk_31B != 1)) {
        func_80AE3DE4(this);
        return;
    }

    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        this->unk_31C = this->actor.colChkInfo.damageEffect;

        if (this->unk_31B != 11) {
            func_80035650(&this->actor, &this->collider.body, 1);
            if (player->unk_844 != 0) {
                this->unk_31D = player->unk_845;
            }

            if ((this->unk_31C != 0) && (this->unk_31C != 6)) {
                if (((this->unk_31C == 1) || (this->unk_31C == 13)) && (this->unk_31B != 1)) {
                    Actor_ApplyDamage(&this->actor);
                    func_80AE3DE4(this);
                    return;
                }

                this->unk_318 = 0;
                this->unk_316 = 0;

                if (this->unk_31C == 0xE) {
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x50);
                    this->unk_31A = 0x28;
                } else {
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);
                }

                Actor_ApplyDamage(&this->actor);
                if (this->actor.colChkInfo.health == 0) {
                    func_80AE2630(globalCtx, &this->actor, 1);
                    func_80AE3C20(this);
                    Item_DropCollectibleRandom(globalCtx, 0, &this->actor.posRot.pos, 0x90);
                } else {
                    func_80AE3A8C(this);
                }
            }
        }
    }
}

void EnRd_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnRd* this = THIS;
    CollisionCheckContext* colChkCtx = &globalCtx->colChkCtx;
    Player* player = PLAYER;
    ColliderCylinder* collider = &this->collider;

    func_80AE4114(this, globalCtx);

    if (gSaveContext.unk_1422 != 0 && this->unk_318 == 0) {
        gSaveContext.unk_1422 = 0;
    }

    if (this->unk_31C != 6 && ((this->unk_31B != 11) || (this->unk_31C != 14))) {
        if (this->unk_306 != 0) {
            this->unk_306--;
        }

        this->actionFunc(this, globalCtx);
        if (this->unk_31B != 8 && this->actor.speedXZ != 0.0f) {
            Actor_MoveForward(&this->actor);
        }

        if ((this->actor.shape.rot.x == 0) && (this->unk_31B != 8) && (this->actor.speedXZ != 0.0f)) {
            func_8002E4B4(globalCtx, &this->actor, 30.0f, 20.0f, 35.0f, 0x1D);
        }

        if (this->unk_31B == 7) {
            func_80AE3F9C(this, globalCtx);
        }
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 50.0f;

    if ((this->actor.colChkInfo.health > 0) && (this->unk_31B != 8)) {
        Collider_CylinderUpdate(&this->actor, collider);
        CollisionCheck_SetOC(globalCtx, colChkCtx, &collider->base);
        if ((this->unk_31B != 9) || ((player->unk_844 != 0) && (player->unk_845 != this->unk_31D))) {
            CollisionCheck_SetAC(globalCtx, colChkCtx, &collider->base);
        }
    }
}

s32 EnRd_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                          Gfx** gfx) {
    EnRd* this = THIS;

    if (limbIndex == 23) {
        rot->y += this->unk_30E;
    } else if (limbIndex == 12) {
        rot->y += this->unk_310;
    }
    return 0;
}

void EnRd_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    Vec3f sp2C = D_80AE4940;
    EnRd* this = THIS;
    s32 idx = -1;
    Vec3f destPos;

    if ((this->unk_31A != 0) || ((this->actor.dmgEffectTimer != 0) && (this->actor.dmgEffectParams & 0x4000))) {
        switch (limbIndex - 1) {
            case 23:
                idx = 0;
                break;
            case 0:
                idx = 1;
                break;
            case 21:
                idx = 2;
                break;
            case 17:
                idx = 3;
                break;
            case 13:
                idx = 4;
                break;
            case 24:
                idx = 5;
                break;
            case 8:
                idx = 6;
                break;
            case 3:
                idx = 7;
                break;
            case 10:
                idx = 8;
                break;
            case 5:
                idx = 9;
                break;
        }

        if (idx >= 0) {
            Matrix_MultVec3f(&sp2C, &destPos);
            this->unkFire[idx].x = destPos.x;
            this->unkFire[idx].y = destPos.y;
            this->unkFire[idx].z = destPos.z;
        }
    }
}

void EnRd_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnRd* this = THIS;
    s32 pad;
    Vec3f thisPos = this->actor.posRot.pos;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_rd.c", 1679);

    if (this->unk_314 == 0xFF) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 0, this->unk_314);
        gSPSegment(oGfxCtx->polyOpa.p++, 8, &D_80116280[2]);
        oGfxCtx->polyOpa.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                               this->skelAnime.dListCount, EnRd_OverrideLimbDraw, EnRd_PostLimbDraw,
                                               &this->actor, oGfxCtx->polyOpa.p);
        func_80033C30(&thisPos, &D_80AE4958, 255, globalCtx);
        if (this->unk_31A != 0) {
            this->actor.dmgEffectTimer++;
            THIS->unk_31A--;
            if (this->unk_31A % 4 == 0) {
                func_8002A54C(globalCtx, &this->actor, &this->unkFire[this->unk_31A >> 2], 0x4B, 0, 0,
                              (this->unk_31A >> 2));
            }
        }
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 0, 0, this->unk_314);
        gSPSegment(oGfxCtx->polyXlu.p++, 8, &D_80116280[0]);
        oGfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                               this->skelAnime.dListCount, EnRd_OverrideLimbDraw, NULL, &this->actor,
                                               oGfxCtx->polyXlu.p);

        func_80033C30(&thisPos, &D_80AE4958, this->unk_314, globalCtx);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_rd.c", 1735);
}
