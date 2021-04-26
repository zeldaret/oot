/*
 * File: z_en_test.c
 * Overlay: ovl_En_Test
 * Description: Stalfos
 */

#include "z_en_test.h"

#define FLAGS 0x00000015

#define THIS ((EnTest*)thisx)

void EnTest_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTest_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTest_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTest_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnTest_ChooseBackupAction(EnTest* this, GlobalContext* globalCtx);
void EnTest_ChooseAction(EnTest* this, GlobalContext* globalCtx);
void EnTest_WaitGround(EnTest* this, GlobalContext* globalCtx);
void EnTest_WaitAbove(EnTest* this, GlobalContext* globalCtx);
void EnTest_Fall(EnTest* this, GlobalContext* globalCtx);
void EnTest_Land(EnTest* this, GlobalContext* globalCtx);
void EnTest_Rise(EnTest* this, GlobalContext* globalCtx);
void EnTest_Idle(EnTest* this, GlobalContext* globalCtx);
void EnTest_WalkAndBlock(EnTest* this, GlobalContext* globalCtx);
void EnTest_SidestepFromIdle(EnTest* this, GlobalContext* globalCtx);
void EnTest_SidestepInactive(EnTest* this, GlobalContext* globalCtx);
void EnTest_Slash1(EnTest* this, GlobalContext* globalCtx);
void EnTest_Slash1End(EnTest* this, GlobalContext* globalCtx);
void EnTest_Slash2(EnTest* this, GlobalContext* globalCtx);
void EnTest_JumpBack(EnTest* this, GlobalContext* globalCtx);
void EnTest_Jumpslash(EnTest* this, GlobalContext* globalCtx);
void EnTest_JumpUp(EnTest* this, GlobalContext* globalCtx);
void EnTest_StopAndBlock(EnTest* this, GlobalContext* globalCtx);
void EnTest_IdleFromBlock(EnTest* this, GlobalContext* globalCtx);
void func_808621D4(EnTest* this, GlobalContext* globalCtx);
void func_80862418(EnTest* this, GlobalContext* globalCtx);
void EnTest_Stunned(EnTest* this, GlobalContext* globalCtx);
void EnTest_SidestepAgro(EnTest* this, GlobalContext* globalCtx);
void func_80862E6C(EnTest* this, GlobalContext* globalCtx);
void func_80863044(EnTest* this, GlobalContext* globalCtx);
void func_8086318C(EnTest* this, GlobalContext* globalCtx);
void EnTest_Recoil(EnTest* this, GlobalContext* globalCtx);
void func_808633E8(EnTest* this, GlobalContext* globalCtx);
void func_80862FA8(EnTest* this, GlobalContext* globalCtx);

s32 EnTest_ReactToProjectile(GlobalContext* globalCtx, EnTest* this);

void EnTest_SetupWaitGround(EnTest* this);
void EnTest_SetupWaitAbove(EnTest* this);
void EnTest_SetupJumpBack(EnTest* this);
void EnTest_SetupSlash1End(EnTest* this);
void EnTest_SetupSlash2(EnTest* this);
void EnTest_SetupJumpslash(EnTest* this);
void EnTest_SetupWalkAndBlock(EnTest* this);
void EnTest_SetupSidestepInactive(EnTest* this);
void EnTest_SetupSlash1(EnTest* this);
void EnTest_SetupSidestepFromIdle(EnTest* this);
void EnTest_SetupIdleFromBlock(EnTest* this);
void EnTest_SetupRecoil(EnTest* this);
void func_80862398(EnTest* this);
void func_80862154(EnTest* this);
void EnTest_SetupStopAndBlock(EnTest* this);
void EnTest_SetupSidestepAgro(EnTest* this, GlobalContext* globalCtx);

extern SkeletonHeader D_06007C28;
extern AnimationHeader D_0600316C; // ready stance
extern AnimationHeader D_06001978; // jump back
extern AnimationHeader D_0600B00C; // slash 1
extern AnimationHeader D_0600B4E4; // slash 1 end
extern AnimationHeader D_0600BE4C; // slash 2
extern AnimationHeader D_0600A324; // jumpslash start
extern AnimationHeader D_0600A99C; // jumpslash
extern AnimationHeader D_0600E2B0; // sidestep
extern AnimationHeader D_060081B4; // walk forward?
extern AnimationHeader D_06001C20; // block
extern AnimationHeader D_060026D4; //?
extern AnimationHeader D_06000444;
extern AnimationHeader D_06001420;
extern AnimationHeader D_06008604;
extern AnimationHeader D_06009A90;
extern AnimationHeader D_0600C438;

// animation indexes?
static u8 D_80864510[] = {
    0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const ActorInit En_Test_InitVars = {
    ACTOR_EN_TEST,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_SK2,
    sizeof(EnTest),
    (ActorFunc)EnTest_Init,
    (ActorFunc)EnTest_Destroy,
    (ActorFunc)EnTest_Update,
    (ActorFunc)EnTest_Draw,
};

static ColliderCylinderInit D_80864570 = {
    {
        COLTYPE_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 25, 65, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit D_8086459C = {
    {
        COLTYPE_METAL,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFC1FFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 20, 70, -50, { 0, 0, 0 } },
};

static ColliderQuadInit D_808645C8 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x10 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL | TOUCH_UNK7,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0x0),
    /* Slingshot     */ DMG_ENTRY(1, 0xD),
    /* Explosive     */ DMG_ENTRY(2, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x1),
    /* Normal arrow  */ DMG_ENTRY(2, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x1),
    /* Kokiri sword  */ DMG_ENTRY(1, 0x0),
    /* Master sword  */ DMG_ENTRY(2, 0x0),
    /* Giant's Knife */ DMG_ENTRY(4, 0x0),
    /* Fire arrow    */ DMG_ENTRY(2, 0x0),
    /* Ice arrow     */ DMG_ENTRY(4, 0xF),
    /* Light arrow   */ DMG_ENTRY(2, 0xE),
    /* Unk arrow 1   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(2, 0x0),
    /* Fire magic    */ DMG_ENTRY(0, 0x6),
    /* Ice magic     */ DMG_ENTRY(3, 0xF),
    /* Light magic   */ DMG_ENTRY(0, 0xE),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1, 0x0),
    /* Giant spin    */ DMG_ENTRY(4, 0x0),
    /* Master spin   */ DMG_ENTRY(2, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(2, 0x0),
    /* Giant jump    */ DMG_ENTRY(8, 0x0),
    /* Master jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(4, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 27, ICHAIN_CONTINUE),      ICHAIN_F32(targetArrowOffset, 500, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE), ICHAIN_F32(scale.y, 0, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 64036, ICHAIN_STOP),
};

void EnTest_SetupAction(EnTest* this, EnTestActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnTest_Init(Actor* thisx, GlobalContext* globalCtx) {
    EffectBlureInit1 slashBlure;
    EnTest* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);

    SkelAnime_Init(globalCtx, &this->skelAnime_188, &D_06007C28, &D_0600316C, this->limbDrawTable_1CC,
                   this->transitionTbl_16E, 61);
    SkelAnime_Init(globalCtx, &this->skelAnime_4A8, &D_06007C28, &D_0600316C, this->limbDrawTable_4EC,
                   this->transitionTbl_65A, 61);

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFeet, 90.0f);

    this->actor.colChkInfo.cylRadius = 40;
    this->actor.colChkInfo.cylHeight = 100;
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 45.0f;
    this->actor.colChkInfo.damageTable = &sDamageTable;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80864570);

    Collider_InitCylinder(globalCtx, &this->shieldCollider);
    Collider_SetCylinder(globalCtx, &this->shieldCollider, &this->actor, &D_8086459C);

    Collider_InitQuad(globalCtx, &this->swordCollider);
    Collider_SetQuad(globalCtx, &this->swordCollider, &this->actor, &D_808645C8);

    this->actor.colChkInfo.mass = MASS_HEAVY;
    this->actor.colChkInfo.health = 10;

    slashBlure.p1StartColor[0] = slashBlure.p1StartColor[1] = slashBlure.p1StartColor[2] = slashBlure.p1StartColor[3] =
        slashBlure.p2StartColor[0] = slashBlure.p2StartColor[1] = slashBlure.p2StartColor[2] =
            slashBlure.p1EndColor[0] = slashBlure.p1EndColor[1] = slashBlure.p1EndColor[2] = slashBlure.p2EndColor[0] =
                slashBlure.p2EndColor[1] = slashBlure.p2EndColor[2] = 255;

    slashBlure.p1EndColor[3] = 0;
    slashBlure.p2EndColor[3] = 0;
    slashBlure.p2StartColor[3] = 64;

    slashBlure.elemDuration = 4;
    slashBlure.unkFlag = 0;
    slashBlure.calcMode = 2;

    Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE1, 0, 0, &slashBlure);

    if (this->actor.params != STALFOS_CEILING) {
        EnTest_SetupWaitGround(this);
    } else {
        EnTest_SetupWaitAbove(this);
    }

    if (this->actor.params == 0) {
        this->actor.flags |= 0x80;
    }
}

void EnTest_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnTest* this = THIS;

    if ((this->actor.params != 2) &&
        !Actor_FindNearby(globalCtx, &this->actor, ACTOR_EN_TEST, ACTORCAT_ENEMY, 8000.0f)) {
        func_800F5B58();
    }

    Effect_Delete(globalCtx, this->effectIndex);
    Collider_DestroyCylinder(globalCtx, &this->shieldCollider);
    Collider_DestroyCylinder(globalCtx, &this->collider);
    Collider_DestroyQuad(globalCtx, &this->swordCollider);
}

/**
 * If EnTest_ChooseAction failed to pick a new action, this function will unconditionally pick
 * a new action as a last resort
 */
void EnTest_ChooseBackupAction(EnTest* this, GlobalContext* globalCtx) {
    switch ((u32)(Rand_ZeroOne() * 10.0f)) {
        case 0:
        case 1:
        case 5:
        case 6:
            if ((this->actor.xzDistToPlayer < 220.0f) && (this->actor.xzDistToPlayer > 170.0f) &&
                func_8002E084(&this->actor, 0x71C) && func_80033A84(globalCtx, &this->actor)) {
                EnTest_SetupJumpslash(this);
                break;
            }
            // fallthrough
        case 8:
            EnTest_SetupWalkAndBlock(this);
            break;

        case 3:
        case 4:
        case 7:
            EnTest_SetupSidestepAgro(this, globalCtx);
            break;

        case 2:
        case 9:
        case 10:
            EnTest_SetupStopAndBlock(this);
            break;
    }
}

void EnTest_ChooseAction(EnTest* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    s16 yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;

    if (yawDiff < 0) {
        yawDiff = -yawDiff;
    }

    if (yawDiff >= 0x61A8) {
        switch ((u32)(Rand_ZeroOne() * 10.0f)) {
            case 0:
            case 3:
            case 7:
                EnTest_SetupStopAndBlock(this);
                break;

            case 1:
            case 5:
            case 6:
            case 8:
                EnTest_SetupSidestepAgro(this, globalCtx);
                break;

            case 2:
            case 4:
            case 9:
                if (this->actor.params != STALFOS_CEILING) {
                    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                    EnTest_SetupJumpBack(this);
                }
                break;
        }
    } else if (yawDiff <= 0x3E80) {
        if (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) > 0x3E80) {
            if (((globalCtx->gameplayFrames & 1) != 0) && (this->actor.params != STALFOS_CEILING)) {
                this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                EnTest_SetupJumpBack(this);
                return;
            }

            if ((this->actor.xzDistToPlayer < 220.0f) && (this->actor.xzDistToPlayer > 170.0f)) {
                if (func_8002E084(&this->actor, 0x71C) && !func_80033A84(globalCtx, &this->actor)) {
                    EnTest_SetupJumpslash(this);
                }
            } else {
                EnTest_SetupWalkAndBlock(this);
            }
        } else {
            if (this->actor.xzDistToPlayer < 110.0f) {
                if (Rand_ZeroOne() > 0.2f) {
                    if (player->stateFlags1 & 0x10) {
                        if (this->actor.isTargeted) {
                            EnTest_SetupSlash1(this);
                        } else {
                            EnTest_SetupSidestepAgro(this, globalCtx);
                        }
                    } else {
                        EnTest_SetupSlash1(this);
                    }
                }
            } else {
                EnTest_ChooseBackupAction(this, globalCtx);
            }
        }
    } else {
        EnTest_ChooseBackupAction(this, globalCtx);
    }
}

void EnTest_SetupWaitGround(EnTest* this) {
    Animation_PlayLoop(&this->skelAnime_188, &D_0600316C);
    this->unk_7C8 = 0;
    this->timer = 15;
    this->actor.scale.y = 0.0f;
    this->actor.world.pos.y = this->actor.home.pos.y - 3.5f;
    this->actor.flags &= ~1;
    EnTest_SetupAction(this, EnTest_WaitGround);
}

void EnTest_WaitGround(EnTest* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime_188);

    if ((this->timer == 0) && (ABS(this->actor.yDistToPlayer) < 150.0f)) {
        this->unk_7C8 = 3;
        EnTest_SetupAction(this, EnTest_Rise);
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        this->actor.shape.rot.y = this->actor.yawTowardsPlayer;

        if (this->actor.params != 2) {
            func_800F5ACC(0x38);
        }
    } else {
        if (this->timer != 0) {
            this->timer--;
        }

        this->actor.world.pos.y = this->actor.home.pos.y - 3.5f;
    }
}

void EnTest_SetupWaitAbove(EnTest* this) {
    Animation_PlayLoop(&this->skelAnime_188, &D_0600316C);
    this->unk_7C8 = 0;
    this->actor.world.pos.y = this->actor.home.pos.y + 150.0f;
    Actor_SetScale(&this->actor, 0.0f);
    this->actor.flags &= ~1;
    EnTest_SetupAction(this, EnTest_WaitAbove);
}

void EnTest_WaitAbove(EnTest* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime_188);
    this->actor.world.pos.y = this->actor.home.pos.y + 150.0f;

    if ((this->actor.xzDistToPlayer < 200.0f) && (ABS(this->actor.yDistToPlayer) < 450.0f)) {
        EnTest_SetupAction(this, EnTest_Fall);
        this->actor.flags |= 1;
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        Actor_SetScale(&this->actor, 0.015f);
    }
}

void EnTest_SetupIdle(EnTest* this) {
    Animation_PlayLoop(&this->skelAnime_188, &D_0600316C);
    this->unk_7C8 = 0xA;
    this->timer = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnTest_SetupAction(this, EnTest_Idle);
}

void EnTest_Idle(EnTest* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 yawDiff;

    SkelAnime_Update(&this->skelAnime_188);

    if (!EnTest_ReactToProjectile(globalCtx, this)) {
        yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;

        if (this->actor.xzDistToPlayer < 100.0f) {
            if ((player->swordState != 0) && (ABS(yawDiff) >= 0x1F40)) {
                this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;

                if (Rand_ZeroOne() > 0.7f && player->swordAnimation != 0x11) {
                    EnTest_SetupJumpBack(this);
                } else {
                    EnTest_SetupSidestepAgro(this, globalCtx);
                }
                return;
            }
        }

        if (this->timer != 0) {
            this->timer--;
        } else {
            if (func_8002E084(&this->actor, 0x1555)) {
                if ((this->actor.xzDistToPlayer < 220.0f) && (this->actor.xzDistToPlayer > 160.0f) &&
                    (Rand_ZeroOne() < 0.3f)) {
                    // player is targeting this stalfos
                    if (func_80033A84(globalCtx, &this->actor)) {
                        EnTest_SetupJumpslash(this);
                    } else {
                        EnTest_SetupSidestepAgro(this, globalCtx);
                    }
                } else {
                    if ((Rand_ZeroOne() > 0.3f)) {
                        EnTest_SetupWalkAndBlock(this);
                    } else {
                        EnTest_SetupSidestepAgro(this, globalCtx);
                    }
                }
            } else {
                if (Rand_ZeroOne() > 0.7f) {
                    EnTest_SetupSidestepFromIdle(this);
                } else {
                    EnTest_ChooseAction(this, globalCtx);
                }
            }
        }
    }
}

void EnTest_Fall(EnTest* this, GlobalContext* globalCtx) {
    Animation_PlayOnceSetSpeed(&this->skelAnime_188, &D_0600C438, 0.0f);
    SkelAnime_Update(&this->skelAnime_188);

    if (this->actor.world.pos.y <= this->actor.floorHeight) {
        this->skelAnime_188.playSpeed = 1.0f;
        this->unk_7C8 = 0xC;
        this->timer = this->unk_7E4 * 0.15f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DOWN);
        EnTest_SetupAction(this, EnTest_Land);
    }
}

void EnTest_Land(EnTest* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime_188)) {
        EnTest_SetupIdle(this);
        this->timer = (Rand_ZeroOne() * 10.0f) + 5.0f;
    }
}

void EnTest_SetupWalkAndBlock(EnTest* this) {
    Animation_Change(&this->skelAnime_4A8, &D_06001C20, 2.0f, 0.0f, Animation_GetLastFrame(&D_06001C20), 2, 2.0f);
    Animation_PlayLoop(&this->skelAnime_188, &D_060081B4);
    this->timer = (s16)(Rand_ZeroOne() * 5.0f);
    this->unk_7C8 = 0xD;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnTest_SetupAction(this, EnTest_WalkAndBlock);
}

void EnTest_WalkAndBlock(EnTest* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 checkDist = 0.0f;
    s32 pad1;
    s32 prevFrame;
    s32 temp_f16;
    f32 phi_f2_3;
    Player* player = PLAYER;
    f32 absPlaySpeed;
    s16 yawDiff;
    s32 temp_v0_2;

    if (!EnTest_ReactToProjectile(globalCtx, this)) {
        this->timer++;

        if (func_80033AB8(globalCtx, &this->actor)) {
            checkDist = 150.0f;
        }

        if (this->actor.xzDistToPlayer <= (80.0f + checkDist)) {
            Math_SmoothStepToF(&this->actor.speedXZ, -5.0f, 1.0f, 0.8f, 0.0f);
        } else if (this->actor.xzDistToPlayer > (110.0f + checkDist)) {
            Math_SmoothStepToF(&this->actor.speedXZ, 5.0f, 1.0f, 0.8f, 0.0f);
        }

        if (this->actor.speedXZ >= 5.0f) {
            this->actor.speedXZ = 5.0f;
        } else if (this->actor.speedXZ < -5.0f) {
            this->actor.speedXZ = -5.0f;
        }

        if ((this->actor.params == 3) &&
            !func_800339B8(&this->actor, globalCtx, this->actor.speedXZ, this->actor.world.rot.y)) {
            this->actor.speedXZ *= -1.0f;
        }

        if (ABS(this->actor.speedXZ) < 3.0f) {
            Animation_Change(&this->skelAnime_188, &D_060081B4, 0.0f, this->skelAnime_188.curFrame,
                             Animation_GetLastFrame(&D_060081B4), 0, -6.0f);
            phi_f2_3 = this->actor.speedXZ * 10.0f;
        } else {
            Animation_Change(&this->skelAnime_188, &D_060026D4, 0.0f, this->skelAnime_188.curFrame,
                             Animation_GetLastFrame(&D_060026D4), 0, -4.0f);
            phi_f2_3 = this->actor.speedXZ * 10.0f * 0.02f;
        }

        if (this->actor.speedXZ >= 0.0f) {
            if (this->unk_7DE == 0) {
                this->unk_7DE++;
            }

            if (phi_f2_3 > 2.5f) {
                phi_f2_3 = 2.5f;
            }

            this->skelAnime_188.playSpeed = phi_f2_3;
        } else {
            if (phi_f2_3 < -2.5f) {
                phi_f2_3 = -2.5f;
            }

            this->skelAnime_188.playSpeed = phi_f2_3;
        }

        yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;

        if ((this->actor.xzDistToPlayer < 100.0f) && (player->swordState != 0)) {
            if (ABS(yawDiff) >= 0x1F40) {
                this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;

                if ((Rand_ZeroOne() > 0.7f) && (player->swordAnimation != 0x11)) {
                    EnTest_SetupJumpBack(this);
                } else {
                    EnTest_SetupStopAndBlock(this);
                }

                return;
            }
        }

        prevFrame = this->skelAnime_188.curFrame;
        SkelAnime_Update(&this->skelAnime_188);

        temp_f16 = this->skelAnime_188.curFrame - ABS(this->skelAnime_188.playSpeed);
        absPlaySpeed = ABS(this->skelAnime_188.playSpeed);

        if ((s32)this->skelAnime_188.curFrame != prevFrame) {
            temp_v0_2 = (s32)absPlaySpeed + prevFrame;

            if (((temp_v0_2 > 1) && (temp_f16 <= 0)) || ((temp_f16 < 7) && (temp_v0_2 >= 8))) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_WALK);
            }
        }

        if ((this->timer & 0x1F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_WARAU);
            this->timer += (s16)(Rand_ZeroOne() * 5.0f);
        }

        if ((this->actor.xzDistToPlayer < 220.0f) && (this->actor.xzDistToPlayer > 160.0f) &&
            (func_8002E084(&this->actor, 0x71C))) {
            if (func_80033A84(globalCtx, &this->actor)) {
                if (Rand_ZeroOne() < 0.1f) {
                    EnTest_SetupJumpslash(this);
                    return;
                }
            } else if (player->heldItemActionParam != PLAYER_AP_NONE) {
                if (this->actor.isTargeted != 0) {
                    if ((globalCtx->gameplayFrames & 1) != 0) {
                        EnTest_SetupSidestepAgro(this, globalCtx);
                        return;
                    }

                    EnTest_ChooseAction(this, globalCtx);
                } else {
                    EnTest_SetupSidestepInactive(this);
                }
            }
        }

        if (Rand_ZeroOne() < 0.4f) {
            this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        }

        if (!func_8002E084(&this->actor, 0x11C7)) {
            EnTest_SetupIdle(this);
            this->timer = (Rand_ZeroOne() * 10.0f) + 10.0f;
            return;
        }

        if (this->actor.xzDistToPlayer < 110.0f) {
            if (Rand_ZeroOne() > 0.2f) {
                if (player->stateFlags1 & 0x10) {
                    if (this->actor.isTargeted != 0) {
                        EnTest_SetupSlash1(this);
                    } else {
                        EnTest_SetupSidestepAgro(this, globalCtx);
                    }
                } else {
                    EnTest_SetupSlash1(this);
                }
            } else {
                EnTest_SetupStopAndBlock(this);
            }
        } else if (Rand_ZeroOne() < 0.1f) {
            this->actor.speedXZ = 5.0f;
        }
    }
}

void EnTest_SetupSidestepFromIdle(EnTest* this) {
    Animation_PlayLoop(&this->skelAnime_188, &D_0600E2B0);
    this->unk_7C8 = 0xE;
    EnTest_SetupAction(this, EnTest_SidestepFromIdle);
}

void EnTest_SidestepFromIdle(EnTest* this, GlobalContext* globalCtx) {
    s16 yawDiff;
    s16 yawChange;
    f32 playSpeed;
    s32 prevFrame;
    s32 temp1;
    s32 temp2;
    f32 absPlaySpeed;

    if (!EnTest_ReactToProjectile(globalCtx, this)) {
        yawDiff = this->actor.yawTowardsPlayer;
        yawDiff -= this->actor.shape.rot.y;

        if (yawDiff > 0) {
            yawChange = (yawDiff / 42.0f) + 300.0f;
            this->actor.shape.rot.y += (yawChange * 2);
        } else {
            yawChange = (yawDiff / 42.0f) - 300.0f;
            this->actor.shape.rot.y += (yawChange * 2);
        }

        this->actor.world.rot.y = this->actor.shape.rot.y;

        if (yawDiff > 0) {
            playSpeed = yawChange * 0.02f;

            if (playSpeed > 1.0f) {
                playSpeed = 1.0f;
            }

            this->skelAnime_188.playSpeed = playSpeed;
        } else {
            playSpeed = yawChange * 0.02f;

            if (playSpeed < -1.0f) {
                playSpeed = -1.0f;
            }

            this->skelAnime_188.playSpeed = playSpeed;
        }

        prevFrame = this->skelAnime_188.curFrame;

        SkelAnime_Update(&this->skelAnime_188);

        temp1 = this->skelAnime_188.curFrame - ABS(this->skelAnime_188.playSpeed);
        absPlaySpeed = ABS(this->skelAnime_188.playSpeed);

        if (1) {}

        if ((s32)this->skelAnime_188.curFrame != prevFrame) {
            temp2 = (s32)absPlaySpeed + prevFrame;

            if (((temp2 > 2) && (temp1 <= 0)) || ((temp1 < 7) && (temp2 >= 9))) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_WALK);
            }
        }

        if (func_8002E084(&this->actor, 0x71C)) {
            if (Rand_ZeroOne() > 0.8f) {
                if ((Rand_ZeroOne() > 0.7f)) {
                    EnTest_SetupSidestepInactive(this);
                } else {
                    EnTest_ChooseAction(this, globalCtx);
                }
            } else {
                EnTest_SetupWalkAndBlock(this);
            }
        }
    }
}

void EnTest_SetupSidestepInactive(EnTest* this) {
    Animation_PlayLoop(&this->skelAnime_188, &D_0600E2B0);
    this->unk_7C8 = 0xF;
    this->actor.speedXZ = (Rand_ZeroOne() > 0.5f) ? -0.5f : 0.5f;
    this->timer = (s16)((Rand_ZeroOne() * 15.0f) + 25.0f);
    this->unk_7EC = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnTest_SetupAction(this, EnTest_SidestepInactive);
}

/**
 * Sidestep around the player while the other stalfos is agro
 */
void EnTest_SidestepInactive(EnTest* this, GlobalContext* globalCtx) {
    s16 playerYaw180;
    s32 pad;
    s32 prevFrame;
    s32 temp_f16;
    s16 yawDiff;
    Player* player = PLAYER;
    f32 checkDist = 0.0f;
    s16 newYaw;
    f32 absPlaySpeed;
    s32 temp_v0_2;

    if (!EnTest_ReactToProjectile(globalCtx, this)) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
        this->actor.world.rot.y = this->actor.shape.rot.y + 0x3E80;
        playerYaw180 = player->actor.shape.rot.y + 0x8000;

        if (this->actor.speedXZ >= 0.0f) {
            if (this->actor.speedXZ < 6.0f) {
                this->actor.speedXZ += 0.5f;
            } else {
                this->actor.speedXZ = 6.0f;
            }
        } else {
            if (this->actor.speedXZ > -6.0f) {
                this->actor.speedXZ -= 0.5f;
            } else {
                this->actor.speedXZ = -6.0f;
            }
        }

        if ((this->actor.bgCheckFlags & 8) ||
            ((this->actor.params == 3) &&
             !func_800339B8(&this->actor, globalCtx, this->actor.speedXZ, this->actor.world.rot.y))) {
            if (this->actor.bgCheckFlags & 8) {
                if (this->actor.speedXZ >= 0.0f) {
                    newYaw = (this->actor.shape.rot.y + 0x3FFF);
                } else {
                    newYaw = (this->actor.shape.rot.y - 0x3FFF);
                }

                newYaw = this->actor.wallYaw - newYaw;
            } else {
                this->actor.speedXZ *= -0.8f;
                newYaw = 0;
            }

            if (ABS(newYaw) > 0x4000) {
                this->actor.speedXZ *= -0.8f;

                if (this->actor.speedXZ < 0.0f) {
                    this->actor.speedXZ -= 0.5f;
                } else {
                    this->actor.speedXZ += 0.5f;
                }
            }
        }

        if (func_80033AB8(globalCtx, &this->actor)) {
            checkDist = 200.0f;
        }

        if (this->actor.xzDistToPlayer <= (80.0f + checkDist)) {
            Math_SmoothStepToF(&this->unk_7EC, -2.5f, 1.0f, 0.8f, 0.0f);
        } else if (this->actor.xzDistToPlayer > (110.0f + checkDist)) {
            Math_SmoothStepToF(&this->unk_7EC, 2.5f, 1.0f, 0.8f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->unk_7EC, 0.0f, 1.0f, 6.65f, 0.0f);
        }

        if (this->unk_7EC != 0.0f) {
            this->actor.world.pos.x += (Math_SinS(this->actor.shape.rot.y) * this->unk_7EC);
            this->actor.world.pos.z += (Math_CosS(this->actor.shape.rot.y) * this->unk_7EC);
        }

        this->skelAnime_188.playSpeed = this->actor.speedXZ * 0.5f;
        prevFrame = this->skelAnime_188.curFrame;
        SkelAnime_Update(&this->skelAnime_188);

        temp_f16 = this->skelAnime_188.curFrame - ABS(this->skelAnime_188.playSpeed);
        absPlaySpeed = ABS(this->skelAnime_188.playSpeed);

        if ((s32)this->skelAnime_188.curFrame != prevFrame) {
            temp_v0_2 = (s32)absPlaySpeed + prevFrame;

            if (((temp_v0_2 > 1) && (temp_f16 <= 0)) || ((temp_f16 < 7) && (temp_v0_2 >= 8))) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_WALK);
            }
        }

        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_WARAU);
        }

        yawDiff = playerYaw180 - this->actor.shape.rot.y;

        if (yawDiff < 0) {
            yawDiff = -yawDiff;
        }

        if ((yawDiff > 0x6800) || (this->timer == 0)) {
            EnTest_ChooseAction(this, globalCtx);
        } else if (this->timer != 0) {
            this->timer--;
        }
    }
}

void EnTest_SetupSlash1(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_0600B00C);
    func_800F8A44(&this->actor.projectedPos, NA_SE_EN_STAL_WARAU);
    this->swordCollider.base.atFlags &= ~4;
    this->unk_7C8 = 0x10;
    this->actor.speedXZ = 0.0f;
    EnTest_SetupAction(this, EnTest_Slash1);
    this->swordCollider.info.toucher.damage = 16;

    if (this->unk_7DE != 0) {
        this->unk_7DE = 3;
    }
}

void EnTest_Slash1(EnTest* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;

    if ((s32)this->skelAnime_188.curFrame < 4) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xBB8, 0);
    }

    if ((s32)this->skelAnime_188.curFrame == 7) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_SAKEBI);
    }

    if ((this->skelAnime_188.curFrame > 7.0f) && (this->skelAnime_188.curFrame < 11.0f)) {
        this->atOn = 1;
    } else {
        this->atOn = 0;
    }

    if (SkelAnime_Update(&this->skelAnime_188)) {
        if (globalCtx->gameplayFrames & 1) {
            EnTest_SetupSlash1End(this);
        } else {
            EnTest_SetupSlash2(this);
        }
    }
}

void EnTest_SetupSlash1End(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_0600B4E4);
    this->unk_7C8 = 0x12;
    this->actor.speedXZ = 0.0f;
    EnTest_SetupAction(this, EnTest_Slash1End);
}

void EnTest_Slash1End(EnTest* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 yawDiff;

    if (SkelAnime_Update(&this->skelAnime_188)) {
        if (this->swordCollider.base.atFlags & 2) {
            this->swordCollider.base.atFlags &= ~2;
            if (this->actor.params != STALFOS_CEILING) {
                EnTest_SetupJumpBack(this);
                return;
            }
        }

        if (Rand_ZeroOne() > 0.7f) {
            EnTest_SetupIdle(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
            return;
        }

        this->actor.world.rot.y = Actor_WorldYawTowardActor(&this->actor, &player->actor);

        if (Rand_ZeroOne() > 0.7f) {
            if (this->actor.params != STALFOS_CEILING) {
                EnTest_SetupJumpBack(this);
                return;
            }
        }

        yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;

        if (ABS(yawDiff) <= 0x2710) {
            yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

            if ((ABS(yawDiff) > 0x3E80) && (this->actor.params != STALFOS_CEILING)) {
                this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                EnTest_SetupJumpBack(this);
            } else {
                if (player->stateFlags1 & 0x10) {
                    if (this->actor.isTargeted) {
                        EnTest_SetupSlash1(this);
                    } else {
                        if (globalCtx->gameplayFrames & 1) {
                            EnTest_SetupSidestepAgro(this, globalCtx);
                        } else {
                            EnTest_SetupJumpBack(this);
                        }
                    }
                } else {
                    EnTest_SetupSlash1(this);
                }
            }
        } else {
            EnTest_SetupSidestepAgro(this, globalCtx);
        }
    }
}

void EnTest_SetupSlash2(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_0600BE4C);
    this->swordCollider.base.atFlags &= ~4;
    this->unk_7C8 = 0x11;
    this->swordCollider.info.toucher.damage = 16;
    this->actor.speedXZ = 0.0f;
    EnTest_SetupAction(this, EnTest_Slash2);

    if (this->unk_7DE != 0) {
        this->unk_7DE = 3;
    }
}

void EnTest_Slash2(EnTest* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;

    if ((s32)this->skelAnime_188.curFrame == 2) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_SAKEBI);
    }

    if ((this->skelAnime_188.curFrame > 1.0f) && (this->skelAnime_188.curFrame < 8.0f)) {
        this->atOn = 1;
    } else {
        this->atOn = 0;
    }

    if (SkelAnime_Update(&this->skelAnime_188)) {
        EnTest_SetupSlash1(this);
    }
}

void EnTest_SetupJumpBack(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_06001978);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->unk_7C8 = 0x14;
    this->timer = 5;
    EnTest_SetupAction(this, EnTest_JumpBack);

    if (this->unk_7DE != 0) {
        this->unk_7DE = 3;
    }

    if (this->actor.params != STALFOS_CEILING) {
        this->actor.speedXZ = -11.0f;
    } else {
        this->actor.speedXZ = -7.0f;
    }
}

void EnTest_JumpBack(EnTest* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xBB8, 1);

    if (this->timer == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_WARAU);
    } else {
        this->timer--;
    }

    if (SkelAnime_Update(&this->skelAnime_188)) {
        if (!EnTest_ReactToProjectile(globalCtx, this)) {
            if (this->actor.xzDistToPlayer <= 100.0f) {
                if (func_8002E084(&this->actor, 0x1555)) {
                    EnTest_SetupSlash1(this);
                } else {
                    EnTest_SetupIdle(this);
                    this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
                }
            } else {
                if ((this->actor.xzDistToPlayer <= 220.0f) && func_8002E084(&this->actor, 0xE38)) {
                    EnTest_SetupJumpslash(this);
                } else {
                    EnTest_SetupIdle(this);
                    this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
                }
            }
            this->actor.flags |= 1;
        }
    } else {
        if (this->skelAnime_188.curFrame == (this->skelAnime_188.endFrame - 4.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND); // landing on the ground
        }
    }
}

void EnTest_SetupJumpslash(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_0600A324);
    func_800F8A44(&this->actor.projectedPos, NA_SE_EN_STAL_WARAU);
    this->timer = 0;
    this->unk_7C8 = 0x17;
    this->actor.velocity.y = 10.0f;
    this->actor.speedXZ = 8.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->swordCollider.base.atFlags &= ~4;
    EnTest_SetupAction(this, EnTest_Jumpslash);
    this->swordCollider.info.toucher.damage = 32;

    if (this->unk_7DE != 0) {
        this->unk_7DE = 3;
    }
}

void EnTest_Jumpslash(EnTest* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime_188)) {
        if (this->timer == 0) {
            Animation_PlayOnce(&this->skelAnime_188, &D_0600A99C);
            this->timer = 1;
            this->atOn = 1;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_SAKEBI);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
        } else {
            this->actor.speedXZ = 0.0f;
            EnTest_SetupIdle(this);
        }
    }

    if ((this->timer != 0) && (this->skelAnime_188.curFrame >= 5.0f)) {
        this->atOn = 0;
    }

    if (this->actor.world.pos.y <= this->actor.floorHeight) {
        if (this->actor.speedXZ != 0.0f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        }

        this->actor.world.pos.y = this->actor.floorHeight;
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
    }
}

void EnTest_SetupJumpUp(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_0600A324);
    this->timer = 0;
    this->unk_7C8 = 4;
    this->actor.velocity.y = 14.0f;
    this->actor.speedXZ = 6.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnTest_SetupAction(this, EnTest_JumpUp);
}

void EnTest_JumpUp(EnTest* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    SkelAnime_Update(&this->skelAnime_188);

    if (this->actor.world.pos.y <= this->actor.floorHeight) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
        this->actor.world.pos.y = this->actor.floorHeight;
        this->unk_7E4 = -(s32)this->actor.velocity.y;

        if (this->unk_7E4 == 0) {
            this->unk_7E4 = 1;
        }

        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
        this->unk_7C8 = 0xC;
        this->timer = 4;
        Animation_Change(&this->skelAnime_188, &D_0600C438, 0.0f, 0.0f, 0.0f, 2, 0.0f);
        EnTest_SetupAction(this, EnTest_Land);
    }
}

void EnTest_SetupStopAndBlock(EnTest* this) {
    Animation_Change(&this->skelAnime_188, &D_06001C20, 2.0f, 0.0f, Animation_GetLastFrame(&D_06001C20), 2, 2.0f);
    this->unk_7C8 = 0x15;
    this->actor.speedXZ = 0.0f;
    this->timer = (Rand_ZeroOne() * 10.0f) + 11.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->unk_7DE = 5;
    EnTest_SetupAction(this, EnTest_StopAndBlock);
}

void EnTest_StopAndBlock(EnTest* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    SkelAnime_Update(&this->skelAnime_188);

    if ((ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) > 0x3E80) &&
        (this->actor.params != STALFOS_CEILING) && ((globalCtx->gameplayFrames & 1) != 0)) {
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        EnTest_SetupJumpBack(this);
    }

    if (this->timer == 0) {
        EnTest_SetupIdleFromBlock(this);
    } else {
        this->timer--;
    }
}

// todo: why is this idle animation different from the other?
// not sure what the morph stuff is for
void EnTest_SetupIdleFromBlock(EnTest* this) {
    Animation_MorphToLoop(&this->skelAnime_188, &D_0600316C, -4.0f);
    this->unk_7C8 = 0x16;
    EnTest_SetupAction(this, EnTest_IdleFromBlock);
}

void EnTest_IdleFromBlock(EnTest* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 1.5f, 0.0f);
    SkelAnime_Update(&this->skelAnime_188);

    if (this->skelAnime_188.morphWeight == 0.0f) {
        this->actor.speedXZ = 0.0f;
        this->unk_7DE = 0;

        if (!EnTest_ReactToProjectile(globalCtx, this)) {
            if (this->actor.xzDistToPlayer < 500.0f) {
                EnTest_ChooseAction(this, globalCtx);
            } else {
                EnTest_SetupSidestepAgro(this, globalCtx);
            }
        }
    }
}

// setup damaged
void func_80862154(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_06008604);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_DAMAGE);
    this->unk_7C8 = 8;
    this->actor.speedXZ = -2.0f;
    Actor_SetColorFilter(&this->actor, 0x4000, 0xFF, 0, 8);
    EnTest_SetupAction(this, func_808621D4);
}

// damage
void func_808621D4(EnTest* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.1f, 0.0f);

    if (SkelAnime_Update(&this->skelAnime_188)) {
        this->actor.speedXZ = 0.0f;

        if ((this->actor.bgCheckFlags & 8) && ((ABS((s16)(this->actor.wallYaw - this->actor.shape.rot.y)) < 0x38A4) &&
                                               (this->actor.xzDistToPlayer < 80.0f))) {
            EnTest_SetupJumpUp(this);
        } else {
            if (!EnTest_ReactToProjectile(globalCtx, this)) {
                EnTest_ChooseAction(this, globalCtx);
            } else {
                return;
            }
        }
    }

    if (player->swordState != 0) {
        if ((this->actor.bgCheckFlags & 8) && ((ABS((s16)(this->actor.wallYaw - this->actor.shape.rot.y)) < 0x38A4) &&
                                               (this->actor.xzDistToPlayer < 80.0f))) {
            EnTest_SetupJumpUp(this);
        } else {
            if ((Rand_ZeroOne() > 0.7f) && (this->actor.params != STALFOS_CEILING) &&
                (player->swordAnimation != 0x11)) {
                EnTest_SetupJumpBack(this);
            } else {
                EnTest_SetupStopAndBlock(this);
            }
        }

        this->unk_7C8 = 8;
    }
}

void func_80862398(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_06000444);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_DAMAGE);
    this->unk_7C8 = 9;
    this->actor.speedXZ = -2.0f;
    Actor_SetColorFilter(&this->actor, 0x4000, 0xFF, 0, 8);
    EnTest_SetupAction(this, func_80862418);
}

void func_80862418(EnTest* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.1f, 0.0f);

    if (SkelAnime_Update(&this->skelAnime_188)) {
        this->actor.speedXZ = 0.0f;

        if (!EnTest_ReactToProjectile(globalCtx, this)) {
            EnTest_ChooseAction(this, globalCtx);
        } else {
            return;
        }
    }

    if (player->swordState != 0) {
        if ((this->actor.bgCheckFlags & 8) && ((ABS((s16)(this->actor.wallYaw - this->actor.shape.rot.y)) < 0x38A4) &&
                                               (this->actor.xzDistToPlayer < 80.0f))) {
            EnTest_SetupJumpUp(this);
        } else {
            if ((Rand_ZeroOne() > 0.7f) && (this->actor.params != STALFOS_CEILING) &&
                (player->swordAnimation != 0x11)) {
                EnTest_SetupJumpBack(this);
            } else {
                EnTest_SetupStopAndBlock(this);
            }
        }

        this->unk_7C8 = 8;
    }
}

void EnTest_SetupStunned(EnTest* this) {
    this->unk_7C8 = 0xB;
    this->unk_7DE = 0;
    this->atOn = 0;
    this->skelAnime_188.playSpeed = 0.0f;
    this->actor.speedXZ = -4.0f;

    if (this->unk_7E2 == 0xE) {
        Actor_SetColorFilter(&this->actor, -0x8000, 0x78, 0, 0x50);
    } else {
        Actor_SetColorFilter(&this->actor, 0, 0x78, 0, 0x50);

        if (this->unk_7E2 == 0xF) {
            this->iceTimer = 36;
        } else {
            Animation_PlayOnceSetSpeed(&this->skelAnime_188, &D_06008604, 0.0f);
        }
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    EnTest_SetupAction(this, EnTest_Stunned);
}

void EnTest_Stunned(EnTest* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 1.0f, 0.0f);

    if (this->actor.colorFilterTimer == 0) {
        if (this->actor.colChkInfo.health == 0) {
            func_80862FA8(this, globalCtx);
            return;
        }

        if (player->swordState != 0) {
            if ((this->actor.bgCheckFlags & 8) &&
                ((ABS((s16)(this->actor.wallYaw - this->actor.shape.rot.y)) < 0x38A4) &&
                 (this->actor.xzDistToPlayer < 80.0f))) {
                EnTest_SetupJumpUp(this);
            } else {
                if ((Rand_ZeroOne() > 0.7f) && (player->swordAnimation != 0x11)) {
                    EnTest_SetupJumpBack(this);
                } else {
                    EnTest_SetupStopAndBlock(this);
                }
            }

            this->unk_7C8 = 8;

        } else {
            this->actor.speedXZ = 0.0f;
            if (!EnTest_ReactToProjectile(globalCtx, this)) {
                EnTest_ChooseAction(this, globalCtx);
            }
        }
    }
}

void EnTest_SetupSidestepAgro(EnTest* this, GlobalContext* globalCtx) {
    if (func_80033AB8(globalCtx, &this->actor)) {
        EnTest_SetupSidestepInactive(this);
        return;
    }

    Animation_MorphToLoop(&this->skelAnime_188, &D_0600E2B0, -2.0f);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    this->actor.speedXZ = (globalCtx->gameplayFrames & 1) ? -4.0f : 4.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
    this->timer = (Rand_ZeroOne() * 20.0f) + 20.0f;
    this->unk_7C8 = 0x18;
    EnTest_SetupAction(this, EnTest_SidestepAgro);
    this->unk_7EC = 0.0f;
}

void EnTest_SidestepAgro(EnTest* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    s32 pad1;
    s32 prevFrame;
    s32 temp_f16;
    s32 pad2;
    f32 checkDist = 0.0f;
    s16 newYaw;
    f32 absPlaySpeed;
    s32 temp_v0_2;

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);

    if (this->unk_7DE == 0) {
        this->unk_7DE++;
    }

    if (this->actor.speedXZ >= 0.0f) {
        if (this->actor.speedXZ < 6.0f) {
            this->actor.speedXZ += 0.125f;
        } else {
            this->actor.speedXZ = 6.0f;
        }
    } else {
        if (this->actor.speedXZ > -6.0f) {
            this->actor.speedXZ -= 0.125f;
        } else {
            this->actor.speedXZ = -6.0f;
        }
    }

    if ((this->actor.bgCheckFlags & 8) ||
        ((this->actor.params == 3) &&
         !func_800339B8(&this->actor, globalCtx, this->actor.speedXZ, this->actor.shape.rot.y + 0x3FFF))) {
        if (this->actor.bgCheckFlags & 8) {
            if (this->actor.speedXZ >= 0.0f) {
                newYaw = (this->actor.shape.rot.y + 0x3FFF);
            } else {
                newYaw = (this->actor.shape.rot.y - 0x3FFF);
            }

            newYaw = this->actor.wallYaw - newYaw;
        } else {
            this->actor.speedXZ *= -0.8f;
            newYaw = 0;
        }

        if (ABS(newYaw) > 0x4000) {
            this->actor.speedXZ *= -0.8f;

            if (this->actor.speedXZ < 0.0f) {
                this->actor.speedXZ -= 0.5f;
            } else {
                this->actor.speedXZ += 0.5f;
            }
        }
    }

    this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;

    if (func_80033AB8(globalCtx, &this->actor)) {
        checkDist = 200.0f;
    }

    if (this->actor.xzDistToPlayer <= (80.0f + checkDist)) {
        Math_SmoothStepToF(&this->unk_7EC, -2.5f, 1.0f, 0.8f, 0.0f);
    } else if (this->actor.xzDistToPlayer > (110.0f + checkDist)) {
        Math_SmoothStepToF(&this->unk_7EC, 2.5f, 1.0f, 0.8f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->unk_7EC, 0.0f, 1.0f, 6.65f, 0.0f);
    }

    if (this->unk_7EC != 0.0f) {
        this->actor.world.pos.x += (Math_SinS(this->actor.shape.rot.y) * this->unk_7EC);
        this->actor.world.pos.z += (Math_CosS(this->actor.shape.rot.y) * this->unk_7EC);
    }

    this->skelAnime_188.playSpeed = this->actor.speedXZ * 0.5f;
    prevFrame = this->skelAnime_188.curFrame;
    SkelAnime_Update(&this->skelAnime_188);

    temp_f16 = this->skelAnime_188.curFrame - ABS(this->skelAnime_188.playSpeed);
    absPlaySpeed = ABS(this->skelAnime_188.playSpeed);

    if ((this->timer & 0x1F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_WARAU);
    }
    if ((s32)this->skelAnime_188.curFrame != prevFrame) {
        temp_v0_2 = (s32)absPlaySpeed + prevFrame;

        if (((temp_v0_2 > 1) && (temp_f16 <= 0)) || ((temp_f16 < 7) && (temp_v0_2 >= 8))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_WALK);
        }
    }

    if (this->timer == 0) {
        if (func_80033AB8(globalCtx, &this->actor)) {
            EnTest_SetupIdle(this);
        } else if (func_80033A84(globalCtx, &this->actor)) {
            if (!EnTest_ReactToProjectile(globalCtx, this)) {
                EnTest_ChooseAction(this, globalCtx);
            }
        } else if (player->heldItemActionParam != PLAYER_AP_NONE) {
            if ((globalCtx->gameplayFrames & 1) != 0) {
                EnTest_SetupIdle(this);
            } else {
                EnTest_SetupWalkAndBlock(this);
            }
        } else {
            EnTest_SetupWalkAndBlock(this);
        }

    } else {
        this->timer--;
    }
}

void func_80862DBC(EnTest* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_DAMAGE);
    this->unk_7C8 = 2;
    func_80032E24(&this->unk_7F0, 0x3C, globalCtx);
    this->actor.home.rot.x = 0;

    if (this->atOn >= 0) {
        EffectBlure_AddSpace(Effect_GetByIndex(this->effectIndex));
        this->atOn = -1;
    }

    this->actor.flags &= ~1;

    if (this->actor.params == 5) {
        Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_PROP);
    }

    EnTest_SetupAction(this, func_80862E6C);
}

void func_80862E6C(EnTest* this, GlobalContext* globalCtx) {
    if (this->actor.child == NULL) {
        if (this->actor.home.rot.x == 0) {
            this->actor.home.rot.x = this->unk_7F0.unk_08;
        }

        if (func_8003305C(&this->actor, &this->unk_7F0, globalCtx, this->actor.params + 8) != 0) {
            this->actor.child = &this->actor;
        }
    } else {
        if (this->actor.home.rot.x == 0) {
            this->actor.colChkInfo.health = 10;

            if (this->actor.params == 4) {
                this->actor.params = -1;
            } else {
                Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_ENEMY);
            }

            this->actor.child = NULL;
            this->actor.flags |= 1;
            EnTest_SetupJumpBack(this);
        } else if ((this->actor.params == 5) &&
                   !Actor_FindNearby(globalCtx, &this->actor, ACTOR_EN_TEST, ACTORCAT_ENEMY, 8000.0f)) {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0xD0);

            if (this->actor.parent != NULL) {
                this->actor.parent->home.rot.z--;
            }

            Actor_Kill(&this->actor);
        }
    }
}

void func_80862FA8(EnTest* this, GlobalContext* globalCtx) {
    Animation_PlayOnce(&this->skelAnime_188, &D_06001420);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_DEAD);
    this->unk_7DE = 0;
    this->actor.flags &= ~1;
    this->actor.colorFilterTimer = 0;
    this->actor.speedXZ = 0.0f;

    if (this->actor.params < 4) {
        this->unk_7C8 = 5;
        EnTest_SetupAction(this, func_80863044);
    } else {
        func_80862DBC(this, globalCtx);
    }
}

void func_80863044(EnTest* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime_188)) {
        this->timer = (Rand_ZeroOne() * 10.0f) + 10.0f;
        this->unk_7C8 = 7;
        EnTest_SetupAction(this, func_808633E8);
        func_80032E24(&this->unk_7F0, 0x3C, globalCtx);
    }

    if ((s32)this->skelAnime_188.curFrame == 15) {
        Audio_PlayActorSound2(&this->actor, 0x387A);
    }
}

void func_808630F0(EnTest* this, GlobalContext* globalCtx) {
    Animation_PlayOnce(&this->skelAnime_188, &D_06009A90);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_DEAD);
    this->unk_7C8 = 6;
    this->actor.colorFilterTimer = 0;
    this->unk_7DE = 0;
    this->actor.speedXZ = 0.0f;

    if (this->actor.params < 4) {
        this->actor.flags &= ~1;
        EnTest_SetupAction(this, func_8086318C);
    } else {
        func_80862DBC(this, globalCtx);
    }
}

void func_8086318C(EnTest* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime_188)) {
        this->timer = (Rand_ZeroOne() * 10.0f) + 10.0f;
        this->unk_7C8 = 7;
        EnTest_SetupAction(this, func_808633E8);
        func_80032E24(&this->unk_7F0, 0x3C, globalCtx);
    }

    if (((s32)this->skelAnime_188.curFrame == 10) || ((s32)this->skelAnime_188.curFrame == 25)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DOWN);
    }
}

void EnTest_SetupRecoil(EnTest* this) {
    this->atOn = 0;
    this->skelAnime_188.moveFlags = 2;
    this->unk_7C8 = 0x13;
    this->skelAnime_188.playSpeed = -1.0f;
    this->skelAnime_188.startFrame = this->skelAnime_188.curFrame;
    this->skelAnime_188.endFrame = 0.0f;
    EnTest_SetupAction(this, EnTest_Recoil);
}

void EnTest_Recoil(EnTest* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime_188)) {
        if (Rand_ZeroOne() > 0.7f) {
            EnTest_SetupIdle(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
        } else if (((globalCtx->gameplayFrames & 1) != 0) && (this->actor.params != STALFOS_CEILING)) {
            EnTest_SetupJumpBack(this);
        } else {
            EnTest_SetupSidestepAgro(this, globalCtx);
        }
    }
}

void EnTest_Rise(EnTest* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime_188);

    if (this->actor.scale.y < 0.015f) {
        this->actor.scale.y += 0.002f;
        this->actor.world.pos.y = this->actor.home.pos.y - 3.5f;
    } else {
        this->actor.world.pos.y = this->actor.home.pos.y;
        EnTest_SetupJumpBack(this);
    }
}

void func_808633E8(EnTest* this, GlobalContext* globalCtx) {
    this->actor.params = 1;

    if (func_8003305C(&this->actor, &this->unk_7F0, globalCtx, this->actor.params)) {
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0xD0);

        if (this->actor.parent != NULL) {
            this->actor.parent->home.rot.z--;
        }

        Actor_Kill(&this->actor);
    }
}

void func_80863460(EnTest* this, GlobalContext* globalCtx) {
    s16 temp = this->actor.yawTowardsPlayer;

    temp -= (s16)(this->unk_7D2 + this->actor.shape.rot.y);

    this->unk_7D8 = CLAMP(temp, -0x7D0, 0x7D0);
    this->unk_7D2 += this->unk_7D8;
    this->unk_7D2 = CLAMP(this->unk_7D2, -0x382F, 0x382F);
}

void func_808634F8(EnTest* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->shieldCollider.base.acFlags & 0x80) {
        this->shieldCollider.base.acFlags &= 0xFF7F;
        this->collider.base.acFlags &= 0xFFFD;

        if (this->unk_7C8 >= 0xA) {
            this->actor.speedXZ = -4.0f;
            return;
        }
    } else if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= 0xFFFD;

        if ((this->actor.colChkInfo.damageEffect != 0xD) && (this->actor.colChkInfo.damageEffect != 6)) {
            this->unk_7E2 = this->actor.colChkInfo.damageEffect;
            if (this->atOn > 0) {
                this->atOn = 0;
            }
            this->unk_7DC = player->unk_845;
            this->actor.world.rot.y = this->actor.yawTowardsPlayer;
            func_80035650(&this->actor, &this->collider.info, 0);
            func_800F8A44(&this->actor.projectedPos, 0x3838);

            if ((this->actor.colChkInfo.damageEffect == 1) || (this->actor.colChkInfo.damageEffect == 0xF) ||
                (this->actor.colChkInfo.damageEffect == 0xE)) {
                if (this->unk_7C8 != 0xB) {
                    Actor_ApplyDamage(&this->actor);
                    EnTest_SetupStunned(this);
                }
            } else {
                if (func_8002E084(&this->actor, 0x4000)) {
                    if (Actor_ApplyDamage(&this->actor) == 0) {
                        func_80032C7C(globalCtx, &this->actor);
                        func_80862FA8(this, globalCtx);
                    } else {
                        func_80862154(this);
                    }
                } else if (Actor_ApplyDamage(&this->actor) == 0) {
                    func_808630F0(this, globalCtx);
                    func_80032C7C(globalCtx, &this->actor);
                } else {
                    func_80862398(this);
                }
            }
        }
    }
}

void EnTest_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnTest* this = THIS;
    f32 oldWeight;
    u32 floorProperty;
    s32 pad;

    func_808634F8(this, globalCtx);

    if (this->actor.colChkInfo.damageEffect != 6) {
        Actor_MoveForward(&this->actor);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 0x1D);

        if (this->actor.params == 1) {
            if (this->actor.world.pos.y <= this->actor.home.pos.y) {
                this->actor.world.pos.y = this->actor.home.pos.y;
                this->actor.velocity.y = 0.0f;
            }

            if (this->actor.floorHeight <= this->actor.home.pos.y) {
                this->actor.floorHeight = this->actor.home.pos.y;
            }
        } else if (this->actor.bgCheckFlags & 2) {
            floorProperty = func_80041EA4(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorBgId);

            if ((floorProperty == 5) || (floorProperty == 0xC) ||
                func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorBgId) == 9) {
                Actor_Kill(&this->actor);
                return;
            }
        }

        this->actionFunc(this, globalCtx);

        switch (this->unk_7DE) {
            case 0:
                break;

            case 1:
                Animation_Change(&this->skelAnime_4A8, &D_06001C20, 2.0f, 0.0f, Animation_GetLastFrame(&D_06001C20), 2,
                                 2.0f);
                AnimationContext_SetCopyTrue(globalCtx, this->skelAnime_188.limbCount, this->skelAnime_188.jointTable,
                                             this->skelAnime_4A8.jointTable, D_80864510);
                this->unk_7DE++;
                break;

            case 2:
                SkelAnime_Update(&this->skelAnime_4A8);
                SkelAnime_CopyFrameTableTrue(&this->skelAnime_188, this->skelAnime_188.jointTable,
                                             this->skelAnime_4A8.jointTable, D_80864510);
                break;

            case 3:
                this->unk_7DE++;
                this->skelAnime_4A8.morphWeight = 4.0f;
                // fallthrough
            case 4:
                oldWeight = this->skelAnime_4A8.morphWeight;
                this->skelAnime_4A8.morphWeight -= 1.0f;

                if (this->skelAnime_4A8.morphWeight <= 0.0f) {
                    this->unk_7DE = 0;
                }

                SkelAnime_InterpFrameTable(this->skelAnime_188.limbCount, this->skelAnime_4A8.jointTable,
                                           this->skelAnime_4A8.jointTable, this->skelAnime_188.jointTable,
                                           1.0f - (this->skelAnime_4A8.morphWeight / oldWeight));
                SkelAnime_CopyFrameTableTrue(&this->skelAnime_188, this->skelAnime_188.jointTable,
                                             this->skelAnime_4A8.jointTable, D_80864510);
                break;
        }

        if ((this->actor.colorFilterTimer == 0) && (this->actor.colChkInfo.health != 0)) {
            if ((this->unk_7C8 != 0x10) && (this->unk_7C8 != 0x17)) {
                func_80863460(this, globalCtx);
            } else {
                Math_SmoothStepToS(&this->unk_7D2, 0, 1, 0x3E8, 0);
            }
        }
    }

    Collider_UpdateCylinder(&this->actor, &this->collider);

    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 45.0f;

    if ((this->actor.colChkInfo.health > 0) || (this->actor.colorFilterTimer != 0)) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

        if ((this->unk_7C8 >= 0xA) &&
            ((this->actor.colorFilterTimer == 0) || (!(this->actor.colorFilterParams & 0x4000)))) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        if (this->unk_7DE != 0) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->shieldCollider.base);
        }
    }

    if (this->atOn > 0) {
        if (!(this->swordCollider.base.atFlags & 4)) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->swordCollider.base);
        } else {
            this->swordCollider.base.atFlags &= ~4;
            EnTest_SetupRecoil(this);
        }
    }

    if (this->actor.params == 0) {
        if (globalCtx->actorCtx.unk_03 != 0) {
            this->actor.flags |= 0x81;
            this->actor.shape.shadowDraw = ActorShadow_DrawFeet;
        } else {
            this->actor.flags &= ~0x81;
            this->actor.shape.shadowDraw = NULL;
        }
    }
}

s32 EnTest_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnTest* this = THIS;
    s32 pad;

    if (limbIndex == 6) {
        rot->x += this->unk_7D2;
        rot->y -= this->unk_7D0;
        rot->z += this->unk_7D4;
    } else if (limbIndex == 11) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_test.c", 3582);

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 80 + ABS((s16)(Math_SinS(globalCtx->gameplayFrames * 2000) * 175.0f)), 0, 0,
                       255);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_test.c", 3587);
    }

    if ((this->actor.params == 0) && ((this->actor.flags & 0x80) != 0x80)) {
        *dList = NULL;
    }

    return 0;
}

void func_80863CC4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f unused1 = { 1100.0f, -700.0f, 0.0f };
    static Vec3f D_80864658 = { 300.0f, 0.0f, 0.0f };
    static Vec3f D_80864664 = { 3400.0f, 0.0f, 0.0f };
    static Vec3f D_80864670 = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_8086467C = { 7000.0f, 1000.0f, 0.0f };
    static Vec3f D_80864688 = { 3000.0f, -2000.0f, -1000.0f };
    static Vec3f D_80864694 = { 3000.0f, -2000.0f, 1000.0f };
    static Vec3f D_808646A0 = { -1300.0f, 1100.0f, 0.0f };
    static Vec3f unused2 = { -3000.0f, 1900.0f, 800.0f };
    static Vec3f unused3 = { -3000.0f, -1100.0f, 800.0f };
    static Vec3f unused4 = { 1900.0f, 1900.0f, 800.0f };
    static Vec3f unused5 = { -3000.0f, -1100.0f, 800.0f };
    static Vec3f unused6 = { 1900.0f, -1100.0f, 800.0f };
    static Vec3f unused7 = { 1900.0f, 1900.0f, 800.0f };
    s32 bodyPart = -1;
    Vec3f sp70;
    Vec3f sp64;
    EnTest* this = THIS;
    s32 pad;
    Vec3f sp50;

    func_80032F54(&this->unk_7F0, limbIndex, 0, 0x3C, 0x3C, dList, -1);

    if (limbIndex == 34) {
        Matrix_MultVec3f(&D_8086467C, &this->swordCollider.dim.quad[1]);
        Matrix_MultVec3f(&D_80864688, &this->swordCollider.dim.quad[0]);
        Matrix_MultVec3f(&D_80864694, &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&D_808646A0, &this->swordCollider.dim.quad[2]);

        Collider_SetQuadVertices(&this->swordCollider, &this->swordCollider.dim.quad[0],
                                 &this->swordCollider.dim.quad[1], &this->swordCollider.dim.quad[2],
                                 &this->swordCollider.dim.quad[3]);

        Matrix_MultVec3f(&D_80864664, &sp70);
        Matrix_MultVec3f(&D_80864670, &sp64);

        if ((this->atOn > 0) && ((this->actor.params != 0) || (globalCtx->actorCtx.unk_03 != 0))) {
            EffectBlure_AddVertex(Effect_GetByIndex(this->effectIndex), &sp70, &sp64);
        } else if (this->atOn >= 0) {
            EffectBlure_AddSpace(Effect_GetByIndex(this->effectIndex));
            this->atOn = -1;
        }

    } else if ((limbIndex == 27) && (this->unk_7DE != 0)) {
        Matrix_MultVec3f(&D_80864670, &sp64);

        this->shieldCollider.dim.pos.x = sp64.x;
        this->shieldCollider.dim.pos.y = sp64.y;
        this->shieldCollider.dim.pos.z = sp64.z;
    } else {
        Actor_SetFeetPos(&this->actor, limbIndex, 48, &D_80864658, 55, &D_80864658);

        if ((limbIndex == 48) || (limbIndex == 55)) {
            if ((this->unk_7C8 == 0x15) || (this->unk_7C8 == 0x16)) {
                if (this->actor.speedXZ != 0.0f) {
                    Matrix_MultVec3f(&D_80864658, &sp64);
                    func_80033260(globalCtx, &this->actor, &sp64, 10.0f, 1, 8.0f, 0x64, 0xF, 0);
                }
            }
        }
    }

    if (this->iceTimer != 0) {
        switch (limbIndex) {
            case 11:
                bodyPart = 0;
                break;
            case 15:
                bodyPart = 1;
                break;
            case 34:
                bodyPart = 2;
                break;
            case 27:
                bodyPart = 3;
                break;
            case 37:
                bodyPart = 4;
                break;
            case 29:
                bodyPart = 5;
                break;
            case 60:
                bodyPart = 6;
                break;
            case 48:
                bodyPart = 7;
                break;
            case 57:
                bodyPart = 8;
        }

        if (bodyPart >= 0) {
            Matrix_MultVec3f(&D_80864670, &sp50);

            this->bodyPartsPos[bodyPart].x = sp50.x;
            this->bodyPartsPos[bodyPart].y = sp50.y;
            this->bodyPartsPos[bodyPart].z = sp50.z;
        }
    }
}

void EnTest_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnTest* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    func_8002EBCC(&this->actor, globalCtx, 1);

    if ((thisx->params < 4) || (thisx->child == NULL)) {
        SkelAnime_DrawOpa(globalCtx, this->skelAnime_188.skeleton, this->skelAnime_188.jointTable,
                          EnTest_OverrideLimbDraw, func_80863CC4, this);
    }

    if (this->iceTimer != 0) {
        thisx->colorFilterTimer++;
        this->iceTimer--;

        if ((this->iceTimer % 4) == 0) {
            s32 iceIndex = this->iceTimer >> 2;

            EffectSsEnIce_SpawnFlyingVec3s(globalCtx, thisx, &this->bodyPartsPos[iceIndex], 150, 150, 150, 250, 235,
                                           245, 255, 1.5f);
        }
    }
}

// sidestep 4
void EnTest_SetupSidestepSetSpeed(EnTest* this, f32 xzSpeed) {
    Animation_MorphToLoop(&this->skelAnime_188, &D_0600E2B0, -2.0f);
    this->actor.speedXZ = xzSpeed;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
    this->timer = (Rand_ZeroOne() * 20.0f) + 15.0f;
    this->unk_7C8 = 0x18;
    EnTest_SetupAction(this, EnTest_SidestepAgro);
}

/**
 * Checks if a projectile actor is within 300 units
 */
s32 EnTest_ReactToProjectile(GlobalContext* globalCtx, EnTest* this) {
    Actor* projectileActor;
    s16 yawToProjectile;
    s16 wallYawDiff;
    s16 touchingWall;
    s16 directionFlag;

    projectileActor = func_80033780(globalCtx, &this->actor, 300.0f);

    if (projectileActor != NULL) {
        yawToProjectile = Actor_WorldYawTowardActor(&this->actor, projectileActor) - (u16)this->actor.shape.rot.y;

        if ((u8)(this->actor.bgCheckFlags & 8)) {
            wallYawDiff = ((u16)this->actor.wallYaw - (u16)this->actor.shape.rot.y);
            touchingWall = true;
        } else {
            touchingWall = false;
        }

        if ((Math_Vec3f_DistXYZ(&this->actor.world.pos, &projectileActor->world.pos) < 200.0f)) {
            if (func_80033A84(globalCtx, &this->actor) && (projectileActor->id == ACTOR_ARMS_HOOK)) {
                EnTest_SetupJumpUp(this);
            } else if (ABS(yawToProjectile) < 0x2000) {
                EnTest_SetupStopAndBlock(this);
            } else if (ABS(yawToProjectile) < 0x6000) {
                EnTest_SetupJumpBack(this);
            } else {
                EnTest_SetupJumpUp(this);
            }

            return 1;
        }

        if (func_80033A84(globalCtx, &this->actor) && (projectileActor->id == ACTOR_ARMS_HOOK)) {
            EnTest_SetupJumpUp(this);
            return 1;
        }

        if ((ABS(yawToProjectile) < 0x2000) || (ABS(yawToProjectile) > 0x6000)) {
            directionFlag = globalCtx->gameplayFrames & 1;

            if (touchingWall && (wallYawDiff > 0x2000) && (wallYawDiff < 0x6000)) {
                directionFlag = false;
            } else if ((touchingWall != 0) && (wallYawDiff < -0x2000) && (wallYawDiff >= -0x5FFF)) {
                directionFlag = true;
            }

            if (directionFlag) {
                EnTest_SetupSidestepSetSpeed(this, 4.0f);
            } else {
                EnTest_SetupSidestepSetSpeed(this, -4.0f);
            }
        } else if (ABS(yawToProjectile) < 0x6000) {
            directionFlag = globalCtx->gameplayFrames & 1;

            if (touchingWall && (ABS(wallYawDiff) > 0x6000)) {
                directionFlag = false;
            } else if (touchingWall && (ABS(wallYawDiff) < 0x2000)) {
                directionFlag = true;
            }

            if (directionFlag) {
                EnTest_SetupJumpBack(this);
            } else {
                EnTest_SetupJumpUp(this);
            }
        }

        return 1;
    }

    return 0;
}
