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
void func_80AE2FD0(EnRd* this, GlobalContext* globalCtx);
void func_80AE31DC(EnRd* this);
void func_80AE3260(EnRd* this, GlobalContext* globalCtx);
void func_80AE392C(EnRd* this);
void func_80AE3454(EnRd* this, GlobalContext* globalCtx);
void func_80AE37BC(EnRd* this);
void func_80AE3834(EnRd* this, GlobalContext* globalCtx);
void func_80AE3978(EnRd *this, GlobalContext *globalCtx);
void func_80AE3A54(EnRd *this, GlobalContext *globalCtx);
void func_80AE3B18(EnRd *this, GlobalContext *globalCtx);
void func_80AE3C98(EnRd *this, GlobalContext *globalCtx);
void func_80AE3ECC(EnRd *this, GlobalContext *globalCtx);

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

static ColliderCylinderInit sCylinderInit =
{
    { COLTYPE_UNK0, 0x00, 0x09, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

static DamageTable sDamageTable = { 
    0x00, 0xF2, 0x00, 0x00, 0x00, 0x00, 0xF2, 0x10, 
    0xF1, 0xF2, 0xF4, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0xE4, 0x60, 0xD3, 0x00, 0x00, 0xF1, 0xF4,
    0xF2, 0xF2, 0xF8, 0xF4, 0x00, 0x00, 0xF4, 0x00, 
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
};

u32 D_80AE4918[] = { 0x00000000, 0x00000000, 0x00000000, };
u32 D_80AE4924[] = { 0xC8C8FFFF, };
u32 D_80AE4928[] = { 0x0000FF00, };
u32 D_80AE492C[] = { 0x00000000, 0x00000000, 0x00000000, };
u32 D_80AE4938[] = { 0xC8C8FFFF, };
u32 D_80AE493C[] = { 0x0000FF00, };

Vec3f D_80AE4940 = { 300.0f, 0.0f, 0.0f };
Vec3f D_80AE494C = { 300.0f, 0.0f, 0.0f };
Vec3f D_80AE4958 = { 0.25f, 0.25f, 0.25f };

extern SkeletonHeader  D_06003DD8;
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
extern SkeletonHeader  D_0600E778;
extern AnimationHeader D_0600EFDC;

void EnRd_SetupAction(EnRd* this, EnRdActionFunc actionFunc){
    this->actionFunc = actionFunc;
}

void EnRd_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnRd* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.unk_1F = 0;
    this->actor.colChkInfo.damageTable = &sDamageTable;
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    this->unk_310 = this->unk_30E = 0;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 50.0f;
    this->actor.colChkInfo.mass = 0xFE;
    this->actor.colChkInfo.health = 8;
    this->unk_314 = this->unk_31D = 0xFF;
    this->unk_312 = (THIS->actor.params & 0xFF00) >> 8;

    if (this->actor.params & 0x80) {
        this->actor.params |= 0xFF00;
    } else {
        this->actor.params &= 0xFF;
    }

    if (this->actor.params >= -1) {
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600E778, &D_060087D0, this->limbDrawTable, this->transitionDrawTable, 26);
        this->actor.naviEnemyId = 0x2A;
    } else {
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06003DD8, &D_060087D0, this->limbDrawTable, this->transitionDrawTable, 26);
        this->actor.naviEnemyId = 0x2D;
    }

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);

    if (this->actor.params >= -2) {
        func_80AE269C(this);
    } else {
        func_80AE2970(this);
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->actor.params == 3) {
        this->actor.flags |= 0x80;
    }
}

void EnRd_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnRd* this = THIS;

    if (gSaveContext.unk_1422 != 0) {
        gSaveContext.unk_1422 = 0;
    }
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AE2630(GlobalContext *globalCtx, Actor *arg1, s32 arg2) {
    Actor* enemyIt = globalCtx->actorCtx.actorList[ACTORTYPE_ENEMY].first;

    while(enemyIt != NULL){
        if (((enemyIt->id != ACTOR_EN_RD) || (enemyIt == arg1)) || (enemyIt->params < 0)) {
            enemyIt = enemyIt->next;
            continue;
        }

        if (arg2 != 0) {
            enemyIt->parent = arg1;
        } else if (arg1 == enemyIt->parent) {
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
    Math_SmoothScaleMaxMinS(&this->unk_30E, 0 , 1, 0x64, 0);
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
        if (this->actor.xzDistFromLink <= 150.0f) {
            if (func_8002DDE4(globalCtx) != 0) {
                if ((this->actor.params != 2) && (this->unk_305 == 0)) {
                    func_80AE37BC(this);
                } else {
                    func_80AE392C(this);
                }
            }
        }
    }

    if ((globalCtx->gameplayFrames & 0x5F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_CRY);
    }
}

void func_80AE2970(EnRd* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060087D0, 0, 0, SkelAnime_GetFrameCount(&D_060087D0), 0, -6.0f);
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
        if (Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 0.3f, 2.0f, 0.3f) == 0.0f) {
            this->actor.gravity = -3.5f;
            func_80AE269C(this);
        }
    } else {
        if (this->actor.posRot.pos.y == this->actor.initPosRot.pos.y) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_CRY);
        }
        if (Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y + 50.0f, 0.3f, 2.0f, 0.3f) == 0.0f) {
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
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600EFDC, 1.0f, 4.0f, SkelAnime_GetFrameCount(&D_0600EFDC), 1, -4.0f);
    this->actor.speedXZ = 0.4f;
    this->unk_31B = 4;
    EnRd_SetupAction(this, func_80AE2C1C);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2C1C.s")

void func_80AE2F50(EnRd* this, GlobalContext* GlobalContext) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600EFDC, 0.5f, 0, SkelAnime_GetFrameCount(&D_0600EFDC), 1, -4.0f);
    this->unk_31B = 2;
    EnRd_SetupAction(this, func_80AE2FD0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE2FD0.s")

void func_80AE31DC(EnRd *this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600EFDC, 0.5f, 0, SkelAnime_GetFrameCount(&D_0600EFDC), 1, -4.0f);
    this->unk_31B = 3;
    this->unk_305 = 1;
    EnRd_SetupAction(this, func_80AE3260);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3260.s")

void func_80AE33F0(EnRd* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06004ADC);
    this->unk_30C = this->unk_304 = 0;
    this->unk_319 = 0xC8;
    this->unk_31B = 8;
    this->actor.speedXZ = 0.0f;
    EnRd_SetupAction(this, func_80AE3454);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3454.s")

void func_80AE37BC(EnRd *this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06004F94, 0.0f, 0.0f, SkelAnime_GetFrameCount(&D_06004F94), 2, 0.0f);
    this->unk_31B = 7;
    EnRd_SetupAction(this, func_80AE3834);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3834.s")

void func_80AE392C(EnRd *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06008040, -4.0f);
    this->unk_31B = 5;
    EnRd_SetupAction(this, func_80AE3978);
}

void func_80AE3978(EnRd *this, GlobalContext *globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->actor.parent != NULL) {
            func_80AE31DC(this);
        } else {
            func_80AE37BC(this);
        }
    }
}

void func_80AE39D4(EnRd *this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06008040, -1.0f, SkelAnime_GetFrameCount(&D_06008040), 0.0f, 2, -4.0f);
    this->unk_31B = 6;
    EnRd_SetupAction(this, func_80AE3A54);
}

void func_80AE3A54(EnRd *this, GlobalContext *globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_80AE269C(this);
    }
}

void func_80AE3A8C(EnRd *this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060074F0, -6.0f);

    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = -2.0f;
    }

    this->actor.flags |= 1;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_DAMAGE);
    this->unk_31B = 9;
    EnRd_SetupAction(this, func_80AE3B18);
}

void func_80AE3B18(EnRd *this, GlobalContext *globalCtx) {
    Player* sp2C = PLAYER;

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
        } else if (func_8002DB6C(sp2C, &this->actor.initPosRot) >= 150.0f) {
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

void func_80AE3C98(EnRd *this, GlobalContext *globalCtx) {
    if (this->actor.type != 6) {
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, this, 6);
    }
    Math_SmoothScaleMaxMinS(&this->unk_30E, 0, 1, 0x7D0, 0);
    Math_SmoothScaleMaxMinS(&this->unk_310, 0, 1, 0x7D0, 0);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->unk_30C == 0) {
            if (Flags_GetSwitch(globalCtx, this->unk_312 & 0x7F) == 0) {
                Flags_SetSwitch(globalCtx, this->unk_312 & 0x7F);
            }
            if (this->unk_314 != 0) {
                if (this->unk_314 == 0xB4) {
                    func_80AE2630(globalCtx, this, 0);
                }
                this->actor.scale.y -= 0.000075f;
                this->unk_314 -= 5;
            }else {
                Actor_Kill(&this->actor);
            }
        } else {
            this->unk_30C--;
        }
    }else if (((s32)this->skelAnime.animCurrentFrame == 0x21) || ((s32)this->skelAnime.animCurrentFrame == 0x28)) {
        Audio_PlayActorSound2(this, NA_SE_EN_RIZA_DOWN);
    }
}

void func_80AE3DE4(EnRd *this) {
    this->unk_31B = 1;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if (gSaveContext.unk_1422 != 0) {
        this->unk_318 = 1;
        this->unk_316 = 0x258;
        Audio_PlayActorSound2(this, NA_SE_EN_LIGHT_ARROW_HIT);
        func_8003426C(&this->actor, -0x8000, -0x7F38, 0, 0xFF);
    } else {
        if (this->unk_31C == 1) {
            func_8003426C(&this->actor, 0, 0xC8, 0, 0x50);
        } else {
            Audio_PlayActorSound2(this, NA_SE_EN_LIGHT_ARROW_HIT);
            func_8003426C(&this->actor, -0x8000, 0xC8, 0, 0x50);
        }
    }
    EnRd_SetupAction(this, func_80AE3ECC);
}

void func_80AE3ECC(EnRd *this, GlobalContext *globalCtx) {
    if (this->unk_318 != 0) {
        if (this->unk_316 != 0) {
            this->unk_316--;
            if (this->unk_316 >= 0xFF) {
                func_8003426C(this, -0x8000, 0xC8, 0, 0xFF);
            }
            if (this->unk_316 == 0) {
                this->unk_318 = 0;
                gSaveContext.unk_1422 = 0;
            }
        }
    }
    if (this->actor.dmgEffectTimer == 0) {
        if (this->actor.colChkInfo.health == 0) {
            func_80AE2630(globalCtx, this, 1);
            func_80AE3C20(this);
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot, 0x90);
        } else {
            func_80AE3A8C(this);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE3F9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE4114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/EnRd_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE44C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/func_80AE4520.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rd/EnRd_Draw.s")
