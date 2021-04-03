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

void func_8085F938(EnTest* this, GlobalContext* globalCtx);
void func_8085FAB0(EnTest* this, GlobalContext* globalCtx);
void EnTest_WaitGround(EnTest* this, GlobalContext* globalCtx);
void EnTest_WaitAbove(EnTest* this, GlobalContext* globalCtx);
void EnTest_Fall(EnTest* this, GlobalContext* globalCtx);
void EnTest_Land(EnTest* this, GlobalContext* globalCtx);
void func_80863360(EnTest* this, GlobalContext* globalCtx);
void func_808600EC(EnTest* this, GlobalContext* globalCtx);
void func_808604FC(EnTest* this, GlobalContext* globalCtx);
void func_80860C24(EnTest* this, GlobalContext* globalCtx);
void func_80860F84(EnTest* this, GlobalContext* globalCtx);
void func_8086149C(EnTest* this, GlobalContext* globalCtx);
void func_808615F4(EnTest* this, GlobalContext* globalCtx);
void func_80861898(EnTest* this, GlobalContext* globalCtx);
void func_808619EC(EnTest* this, GlobalContext* globalCtx);
void func_80861C40(EnTest* this, GlobalContext* globalCtx);
void func_80861DC8(EnTest* this, GlobalContext* globalCtx);
void func_80861F80(EnTest* this, GlobalContext* globalCtx);
void func_8086209C(EnTest* this, GlobalContext* globalCtx);
void func_808621D4(EnTest* this, GlobalContext* globalCtx);
void func_80862418(EnTest* this, GlobalContext* globalCtx);
void func_80862650(EnTest* this, GlobalContext* globalCtx);
void func_808628C8(EnTest* this, GlobalContext* globalCtx);
void func_80862E6C(EnTest* this, GlobalContext* globalCtx);
void func_80863044(EnTest* this, GlobalContext* globalCtx);
void func_8086318C(EnTest* this, GlobalContext* globalCtx);
void func_80863294(EnTest* this, GlobalContext* globalCtx);

void EnTest_SetupWaitGround(EnTest* this);
void EnTest_SetupWaitAbove(EnTest* this);
void func_8086194C(EnTest* this);
void func_808615A4(EnTest* this);
void func_8086181C(EnTest* this);
void func_80861B94(EnTest* this);
void func_80860438(EnTest* this);
void func_80860EC0(EnTest* this);
void func_80861418(EnTest* this);
void func_808627C4(EnTest* this, GlobalContext* globalCtx);

// animation indexes?
u8 D_80864510[] = {
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

// sDamageTable
DamageTable D_80864618[] = {
    0x10, 0x02, 0xD1, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0x02, 0xF4, 0xE2, 0x02, 0x02,
    0x02, 0x60, 0xF3, 0xE0, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

// sInitChain
InitChainEntry D_80864638[] = {
    ICHAIN_S8(naviEnemyId, 27, ICHAIN_CONTINUE),      ICHAIN_F32(targetArrowOffset, 500, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE), ICHAIN_F32(scale.y, 0, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 64036, ICHAIN_STOP),
};

Vec3f unused1 = { 1100.0f, -700.0f, 0.0f };
Vec3f D_80864658 = { 300.0f, 0.0f, 0.0f };
Vec3f D_80864664 = { 3400.0f, 0.0f, 0.0f };
Vec3f D_80864670 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8086467C = { 7000.0f, 1000.0f, 0.0f };
Vec3f D_80864688 = { 3000.0f, -2000.0f, -1000.0f };
Vec3f D_80864694 = { 3000.0f, -2000.0f, 1000.0f };
Vec3f D_808646A0 = { -1300.0f, 1100.0f, 0.0f };

// part of the array above? unused?
Vec3f unused2[] = {
    { -3000.0f, 1900.0f, 800.0f },  { -3000.0f, -1100.0f, 800.0f }, { 1900.0f, 1900.0f, 800.0f },
    { -3000.0f, -1100.0f, 800.0f }, { 1900.0f, -1100.0f, 800.0f },  { 1900.0f, 1900.0f, 800.0f },
};

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
extern UNK_TYPE D_06000444;
extern UNK_TYPE D_06001420;
extern UNK_TYPE D_06008604;
extern UNK_TYPE D_06009A90;
extern UNK_TYPE D_0600C438;

void EnTest_SetupAction(EnTest* this, EnTestActionFunc* actionFunc) {
    this->actionFunc = actionFunc;
}

void EnTest_Init(Actor* thisx, GlobalContext* globalCtx) {
    EffectBlureInit1 slashBlure;
    EnTest* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80864638);

    SkelAnime_Init(globalCtx, &this->skelAnime_188, &D_06007C28, &D_0600316C, this->limbDrawTable_1CC,
                   this->transitionTbl_16E, 61);
    SkelAnime_Init(globalCtx, &this->skelAnime_4A8, &D_06007C28, &D_0600316C, this->limbDrawTable_4EC,
                   this->transitionTbl_65A, 61);

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFeet, 90.0f);

    this->actor.colChkInfo.cylRadius = 40;
    this->actor.colChkInfo.cylHeight = 100;
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 45.0f;
    this->actor.colChkInfo.damageTable = D_80864618;

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

    if (this->actor.params != 3) {
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

    if ((this->actor.params != 2) && !Actor_FindNearby(globalCtx, this, 2, 5, 8000.0f)) {
        func_800F5B58();
    }

    Effect_Delete(globalCtx, this->effectIndex);
    Collider_DestroyCylinder(globalCtx, &this->shieldCollider);
    Collider_DestroyCylinder(globalCtx, &this->collider);
    Collider_DestroyQuad(globalCtx, &this->swordCollider);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085F938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085FAB0.s")

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
        EnTest_SetupAction(this, func_80863360);
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        this->actor.shape.rot.y = this->actor.yawTowardsPlayer;

        if (this->actor.params != 2) {
            func_800F5ACC(0x38); // play miniboss music
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
        Actor_SetScale(this, 0.015f);
    }
}

// setup wait after jump back/jump slash/fall
void func_80860068(EnTest* this) {
    Animation_PlayLoop(&this->skelAnime_188, &D_0600316C);
    this->unk_7C8 = 0xA;
    this->timer = (Rand_ZeroOne() * 10.0f) + 5.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnTest_SetupAction(this, func_808600EC);
}

// wait after jump back
void func_808600EC(EnTest* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 yawDiff;

    SkelAnime_Update(&this->skelAnime_188);

    if (func_808641E8(globalCtx, this) == 0) {
        yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;

        if (this->actor.xzDistToPlayer < 100.0f) {
            if ((player->swordState != 0) && (ABS(yawDiff) >= 0x1F40)) {
                this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;

                if (Rand_ZeroOne() > 0.7f && player->swordAnimation != 0x11) {
                    func_8086194C(this);
                } else {
                    func_808627C4(this, globalCtx);
                }
                return;
            }
        }

        if (this->timer != 0) {
            this->timer--;
        } else {
            if (func_8002E084(this, 0x1555) != 0) {
                if ((this->actor.xzDistToPlayer < 220.0f) && (this->actor.xzDistToPlayer > 160.0f) &&
                    (Rand_ZeroOne() < 0.3f)) {
                    // player is targeting this stalfos
                    if (func_80033A84(globalCtx, this) != 0) {
                        func_80861B94(this);
                    } else {
                        func_808627C4(this, globalCtx);
                    }
                } else {
                    if ((Rand_ZeroOne() > 0.3f)) {
                        func_80860438(this);
                    } else {
                        func_808627C4(this, globalCtx);
                    }
                }
            } else {
                if (Rand_ZeroOne() > 0.7f) {
                    func_80860BDC(this);
                } else {
                    func_8085FAB0(this, globalCtx);
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
        Audio_PlayActorSound2(this, NA_SE_EN_RIZA_DOWN);
        EnTest_SetupAction(this, EnTest_Land);
    }
}

void EnTest_Land(EnTest* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime_188)) {
        func_80860068(this);
        this->timer = (Rand_ZeroOne() * 10.0f) + 5.0f;
    }
}

// block and start walking?
void func_80860438(EnTest* this) {
    Animation_Change(&this->skelAnime_4A8, &D_06001C20, 2.0f, 0.0f, Animation_GetLastFrame(&D_06001C20), 2, 2.0f);
    Animation_PlayLoop(&this->skelAnime_188, &D_060081B4);
    this->timer = (s16)(Rand_ZeroOne() * 5.0f);
    this->unk_7C8 = 0xD;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnTest_SetupAction(this, func_808604FC);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808604FC.s")
// void func_808604FC(EnTest* this, GlobalContext* globalCtx) {
//     f32 sp68;
//     s32 sp60;
//     Player* player = PLAYER;
//     SkelAnime* sp34;
//     GlobalContext* temp_a0;
//     SkelAnime* temp_a0_2;
//     SkelAnime* temp_a0_3;
//     f32 temp_f0;
//     f32 temp_f0_2;
//     f32 temp_f0_3;
//     f32 speed1;
//     f32 temp_f0_5;
//     f32 currentFrame1;
//     f32 temp_f16;
//     f32 temp_f8;
//     s16 temp_v0_3;
//     s16 temp_v0_5;
//     s32 speedFrameNegative;
//     s32 oldFrame;
//     s16 yawDiff;
//     s32 speedFramePositive;
//     u8 temp_v0;
//     void* temp_t6;
//     f32 distOffset;
//     f32 phi_f2_2;
//     f32 playbackSpeed;
//     f32 phi_f2_4;
//     s32 phi_v1;
//     f32 speedAbs2;
//     f32 speedAbs;

//     // sp68 = 0.0f;
//     if (func_808641E8(globalCtx, this) == 0) {
//         this->timer++;
//         // sp68 = 0.0f;
//         distOffset = 0.0f;
//         if (func_80033AB8(globalCtx, this) != 0) {
//             distOffset = 150.0f;
//         }

//         if (this->actor.xzDistToPlayer <= (80.0f + distOffset)) {
//             Math_SmoothStepToF(&this->actor.speedXZ, -5.0f, 1.0f, 0.8f, 0.0f);
//         } else if (this->actor.xzDistToPlayer > (110.0f + distOffset)) {
//             Math_SmoothStepToF(&this->actor.speedXZ, 5.0f, 1.0f, 0.8f, 0.0f);
//         }

//         // not actually clamp, need to fix
//         this->actor.speedXZ = CLAMP(this->actor.speedXZ, -5.0f, 5.0f);

//         if (this->actor.params == 3) {
//             if (func_800339B8(this, globalCtx, this->actor.speedXZ, this->actor.world.rot.y) == 0) {
//                 this->actor.speedXZ *= -1.0f;
//             }
//         }

//         // not abs maybe?
//         if (ABS(this->actor.speedXZ) < 3.0f) {
//             Animation_Change(&this->skelAnime_188, &D_060081B4, 0.0f, this->skelAnime_188.curFrame,
//                                  Animation_GetLastFrame(&D_060081B4), 0, -6.0f);
//             playbackSpeed = this->actor.speedXZ * 10.0f;
//         } else {
//             Animation_Change(&this->skelAnime_188, &D_060026D4, 0.0f, this->skelAnime_188.curFrame,
//                                  Animation_GetLastFrame(&D_060026D4), 0, -4.0f);
//             playbackSpeed = (this->actor.speedXZ * 10.0f) * 0.02f;
//         }

//         if (this->actor.speedXZ >= 0.0f) {
//             if (this->unk_7DE == 0) {
//                 this->unk_7DE++;
//             }
//             playbackSpeed = CLAMP_MAX(playbackSpeed, 2.5f);
//         } else {
//             playbackSpeed = CLAMP_MIN(playbackSpeed, -2.5f);
//         }

//         this->skelAnime_188.playSpeed = playbackSpeed;
//         yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;

//         if ((this->actor.xzDistToPlayer < 100.0f) && (player->swordState != 0) && (ABS(yawDiff) >= 0x1F40)) {
//             this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
//             // might be backwards?
//             if ((Rand_ZeroOne() > 0.7f) && (player->swordAnimation != 0x11)) {
//                 func_8086194C(this);
//             } else {
//                 func_80861EC0(this);
//             }
//             return;
//         }

//         oldFrame = this->skelAnime_188.curFrame;
//         SkelAnime_Update(&this->skelAnime_188);
//         speed1 = this->skelAnime_188.playSpeed;
//         if (0.0f <= speed1) {
//             speedAbs = speed1;
//         } else {
//             speedAbs = -speed1;
//         }
//         currentFrame1 = this->skelAnime_188.curFrame;
//         speedFrameNegative = currentFrame1 - speedAbs;
//         if (0.0f <= speed1) {
//             speedAbs2 = speed1;
//         } else {
//             speedAbs2 = -speed1;
//         }
//         if (oldFrame != currentFrame1) {
//             speedFramePositive = speedAbs2 + oldFrame;
//             if ((speedFramePositive < 2) || (speedFrameNegative > 0)) {
//                 if (speedFrameNegative < 7) {
//                     if (speedFramePositive >= 8) {
//                     block_48:
//                         Audio_PlayActorSound2(this, NA_SE_EN_STAL_WALK);
//                     }
//                 }
//             } else {
//                 goto block_48;
//             }
//         }

//         if ((this->timer & 0x1F) == 0) {
//             Audio_PlayActorSound2(this, NA_SE_EN_STAL_WARAU);
//             this->timer += (s16)(Rand_ZeroOne() * 5.0f);
//         }

//         if ((this->actor.xzDistToPlayer < 220.0f) && (this->actor.xzDistToPlayer > 160.0f)) {
//             if (func_8002E084(this, 0x71C)) {
//                 if (func_80033A84(globalCtx, this)) {
//                     if (Rand_ZeroOne() < 0.1f) {
//                         func_80861B94(this);
//                         return;
//                     }
//                 } else {
//                     if (player->heldItemActionParam != PLAYER_AP_NONE) {
//                         if (this->actor.isTargeted) {
//                             if (globalCtx->gameplayFrames & 1) {
//                                 func_808627C4(this, globalCtx);
//                             } else {
//                                 func_8085FAB0(this, globalCtx);
//                             }
//                             return;
//                         } else {
//                             func_80860EC0(this);
//                         }
//                     }
//                 }
//             }
//         }

//         if (Rand_ZeroOne() < 0.4f) {
//             this->actor.world.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
//         }

//         if (func_8002E084(this, 0x11C7) == 0) {
//             func_80860068(this);
//             this->timer = (Rand_ZeroOne() * 10.0f) + 10.0f;
//             return;
//         }
//         if (this->actor.xzDistToPlayer < 110.0f) {
//             // flip?
//             if (!(0.2f < Rand_ZeroOne())) {
//                 func_80861EC0(this);
//                 return;
//             }
//             if (!(player->stateFlags1 & 0x10)) {
//                 func_80861418(this);
//                 return;
//             }
//             if (!this->actor.isTargeted) {
//                 func_808627C4(this, globalCtx);
//                 return;
//             }
//             func_80861418(this);
//             return;
//         }
//         if (Rand_ZeroOne() < 0.1f) {
//             this->actor.speedXZ = 5.0f;
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860C24.s")

void func_80860EC0(EnTest* this) {

    Animation_PlayLoop(&this->skelAnime_188, &D_0600E2B0);
    this->unk_7C8 = 0xF;
    this->actor.speedXZ = (Rand_ZeroOne() > 0.5f) ? -0.5f : 0.5f;
    this->timer = (s16)((Rand_ZeroOne() * 15.0f) + 25.0f);
    this->unk_7EC = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnTest_SetupAction(this, func_80860F84);
}

// later
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860F84.s")

// setup slash
void func_80861418(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_0600B00C);
    func_800F8A44(&this->actor.projectedPos, NA_SE_EN_STAL_WARAU);
    this->swordCollider.base.atFlags &= ~4;
    this->unk_7C8 = 0x10;
    this->actor.speedXZ = 0.0f;
    EnTest_SetupAction(this, func_8086149C);
    this->swordCollider.info.toucher.damage = 16;

    if (this->unk_7DE != 0) {
        this->unk_7DE = 3;
    }
}

// slash 1
void func_8086149C(EnTest* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;

    if ((s32)this->skelAnime_188.curFrame < 4) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xBB8, 0);
    }

    if ((s32)this->skelAnime_188.curFrame == 7) {
        Audio_PlayActorSound2(this, NA_SE_EN_STAL_SAKEBI);
    }

    if ((this->skelAnime_188.curFrame > 7.0f) && (this->skelAnime_188.curFrame < 11.0f)) {
        this->atOn = true;
    } else {
        this->atOn = false;
    }

    if (SkelAnime_Update(&this->skelAnime_188) != 0) {
        if (globalCtx->gameplayFrames & 1) {
            func_808615A4(this);
        } else {
            func_8086181C(this);
        }
    }
}

// slash 1 end
void func_808615A4(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_0600B4E4);
    this->unk_7C8 = 0x12;
    this->actor.speedXZ = 0.0f;
    EnTest_SetupAction(this, func_808615F4);
}

// decide action after slash 1?
void func_808615F4(EnTest* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 yawDiff;

    if (SkelAnime_Update(&this->skelAnime_188) != 0) {
        if (this->swordCollider.base.atFlags & 2) {
            this->swordCollider.base.atFlags &= ~2;
            if (this->actor.params != 3) {
                func_8086194C(this);
                return;
            }
        }

        if (Rand_ZeroOne() > 0.7f) {
            func_80860068(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
            return;
        }

        this->actor.world.rot.y = Actor_WorldYawTowardActor(this, player);

        if (Rand_ZeroOne() > 0.7f) {
            if (this->actor.params != 3) {
                func_8086194C(this);
                return;
            }
        }

        yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;

        if (ABS(yawDiff) <= 0x2710) {
            yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

            if ((ABS(yawDiff) > 0x3E80) && (this->actor.params != 3)) {
                this->actor.world.rot.y = this->actor.yawTowardsPlayer;
                func_8086194C(this);
            } else {
                if (player->stateFlags1 & 0x10) {
                    if (this->actor.isTargeted) {
                        func_80861418(this);
                    } else {
                        if (globalCtx->gameplayFrames & 1) {
                            func_808627C4(this, globalCtx);
                        } else {
                            func_8086194C(this);
                        }
                    }
                } else {
                    func_80861418(this);
                }
            }
        } else {
            func_808627C4(this, globalCtx);
        }
    }
}

// setup slash 2
void func_8086181C(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_0600BE4C);
    this->swordCollider.base.atFlags &= ~4;
    this->unk_7C8 = 0x11;
    this->swordCollider.info.toucher.damage = 16;
    this->actor.speedXZ = 0.0f;
    EnTest_SetupAction(this, func_80861898);

    if (this->unk_7DE != 0) {
        this->unk_7DE = 3;
    }
}

// slash 2
void func_80861898(EnTest* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;

    if ((s32)this->skelAnime_188.curFrame == 2) {
        Audio_PlayActorSound2(this, NA_SE_EN_STAL_SAKEBI);
    }

    if ((this->skelAnime_188.curFrame > 1.0f) && (this->skelAnime_188.curFrame < 8.0f)) {
        this->atOn = true;
    } else {
        this->atOn = false;
    }

    if (SkelAnime_Update(&this->skelAnime_188) != 0) {
        func_80861418(this);
    }
}

// setup jump back
void func_8086194C(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_06001978);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->unk_7C8 = 0x14;
    this->timer = 5;
    EnTest_SetupAction(this, func_808619EC);

    if (this->unk_7DE != 0) {
        this->unk_7DE = 3;
    }

    if (this->actor.params != 3) {
        this->actor.speedXZ = -11.0f;
    } else {
        this->actor.speedXZ = -7.0f;
    }
}

// jump back
void func_808619EC(EnTest* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xBB8, 1);

    if (this->timer == 0) {
        Audio_PlayActorSound2(this, NA_SE_EN_STAL_WARAU); // laugh
    } else {
        this->timer--;
    }

    if (SkelAnime_Update(&this->skelAnime_188) != 0) {
        if (func_808641E8(globalCtx, this) == 0) {
            if (this->actor.xzDistToPlayer <= 100.0f) {
                if (func_8002E084(this, 0x1555)) {
                    func_80861418(this);
                } else {
                    func_80860068(this);
                    this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
                }
            } else {
                if ((this->actor.xzDistToPlayer <= 220.0f) && func_8002E084(this, 0xE38)) {
                    func_80861B94(this);
                } else {
                    func_80860068(this);
                    this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
                }
            }
            this->actor.flags |= 1;
        }
    } else {
        if (this->skelAnime_188.curFrame == (this->skelAnime_188.endFrame - 4.0f)) {
            Audio_PlayActorSound2(this, NA_SE_EN_DODO_M_GND); // landing on the ground
        }
    }
}

// setup jumpslash
void func_80861B94(EnTest* this) {
    Animation_PlayOnce(&this->skelAnime_188, &D_0600A324);
    func_800F8A44(&this->actor.projectedPos, NA_SE_EN_STAL_WARAU);
    this->timer = 0;
    this->unk_7C8 = 0x17;
    this->actor.velocity.y = 10.0f;
    this->actor.speedXZ = 8.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->swordCollider.base.atFlags &= ~4;
    EnTest_SetupAction(this, func_80861C40);
    this->swordCollider.info.toucher.damage = 32;

    if (this->unk_7DE != 0) {
        this->unk_7DE = 3;
    }
}

void func_80861C40(EnTest* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime_188) != 0) {
        if (this->timer == 0) {
            Animation_PlayOnce(&this->skelAnime_188, &D_0600A99C);
            this->timer = 1;
            this->atOn = true;
            Audio_PlayActorSound2(this, NA_SE_EN_STAL_SAKEBI);
            Audio_PlayActorSound2(this, NA_SE_EN_STAL_JUMP);
        } else {
            this->actor.speedXZ = 0.0f;
            func_80860068(this);
        }
    }

    if ((this->timer != 0) && (this->skelAnime_188.curFrame >= 5.0f)) {
        this->atOn = false;
    }

    if (this->actor.world.pos.y <= this->actor.floorHeight) {
        if (0.0f != this->actor.speedXZ) {
            Audio_PlayActorSound2(this, NA_SE_EN_DODO_M_GND);
        }
        this->actor.world.pos.y = this->actor.floorHeight;
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861DC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861F80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8086209C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862154.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808621D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862418.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862650.s")

void func_808627C4(EnTest* this, GlobalContext* globalCtx) {

    if (func_80033AB8(globalCtx, this)) {
        func_80860EC0(this);
        return;
    }

    Animation_MorphToLoop(&this->skelAnime_188, &D_0600E2B0, -2.0f);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 1, 0xFA0, 1);
    this->actor.speedXZ = (globalCtx->gameplayFrames & 1) ? -4.0f : 4.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x3FFF;
    this->timer = (Rand_ZeroOne() * 20.0f) + 20.0f;
    this->unk_7C8 = 0x18;
    EnTest_SetupAction(this, func_808628C8);
    this->unk_7EC = 0.0f;
}

// later
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808628C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862E6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80862FA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863044.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808630F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8086318C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863240.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863294.s")

// rise from the ground
void func_80863360(EnTest* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime_188);

    if (this->actor.scale.y < 0.015f) {
        this->actor.scale.y += 0.002f;
        this->actor.world.pos.y = this->actor.home.pos.y - 3.5f;
    } else {
        this->actor.world.pos.y = this->actor.home.pos.y;
        func_8086194C(this);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808633E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808634F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/EnTest_Update.s")

s32 func_80863AB8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863AB8.s")

void func_80863CC4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863CC4.s")

void EnTest_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnTest* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    func_8002EBCC(this, globalCtx, 1);

    if ((thisx->params < 4) || (thisx->child == NULL)) {
        SkelAnime_DrawOpa(globalCtx, this->skelAnime_188.skeleton, this->skelAnime_188.jointTable, func_80863AB8,
                          func_80863CC4, this);
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80864158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808641E8.s")
/*
void func_808641E8(GlobalContext *globalCtx, EnTest *this) {
    ProjectileActor* projectile;
    s16 sp22;
    s16 wallYawDiff;
    s16 touchingWall;
    Actor *yawDiff;
    EnTest *temp_a0;
    EnTest *temp_a1;
    EnTest *temp_a1_2;
    PosRot *temp_a0_3;
    s32 projectileYawDiff;
    s32 index_2;
    s32 index_3;
    s16 temp_a0_2;
    s32 phi_v0;
    s32 phi_v0_2;
    s32 phi_v0_3;
    s32 phi_v0_4;
    s32 phi_v0_5;
    s32 phi_v0_6;
    s32 phi_v0_7;
    s32 phi_v1;
    s32 phi_v1_2;

    projectile = func_80033780(globalCtx, &this->actor, 300.0f);

    if (projectile != NULL) {
        projectileYawDiff = Actor_WorldYawTowardActor(&this->actor, &projectile->actor) - this->actor.shape.rot.y;
        touchingWall = false;
        if (this->actor.bgCheckFlags & 8) {
            wallYawDiff = this->actor.wallYaw - this->actor.shape.rot.y;
            touchingWall = true;
        }

        if (Math_Vec3f_DistXYZ(&this->actor.world.pos, &projectile->actor.world.pos) < 200.0f) {
            if (!func_80033A84(globalCtx, &this->actor) || projectile->actor.id != ACTOR_ARMS_HOOK) {
                if (ABS(projectileYawDiff) >= 0x2000) {
                    if (ABS(projectileYawDiff) >= 0x6000) {
                        func_80861D50(this);
                    } else {
                        func_8086194C(this);
                    }
                } else {
                    func_80861EC0(this);
                }
            } else {
                func_80861D50(this);
            }
        } else { // block 16
            if (!func_80033A84(globalCtx, &this->actor) || projectile->actor.id != ACTOR_ARMS_HOOK) {

            } else {
                func_80861D50(this);
            }
        }





        if (!(Math_Vec3f_DistXYZ(&this->actor.world.pos, &projectile->actor.world.pos) < 200.0f)) {
            wallYawDiff = wallYawDiff;
            this = this;
            // stalfos is not targeted and player is not targeting an enemy
            if (!func_80033A84(globalCtx, &this->actor)) {
                if ((ABS(projectileYawDiff) >= 0x2000) && ABS(projectileYawDiff) <= 0x6000) {

                }
block_19:
                phi_v0_3 = 0 - projectileYawDiff;
                if (projectileYawDiff >= 0) {
                    phi_v0_3 = projectileYawDiff;
                }
                if (phi_v0_3 >= 0x2000) {
                    phi_v0_4 = 0 - projectileYawDiff;
                    if (projectileYawDiff >= 0) {
                        phi_v0_4 = projectileYawDiff;
                    }
                    if (phi_v0_4 < 0x6001) {
                        phi_v0_5 = 0 - projectileYawDiff;
                        if (projectileYawDiff >= 0) {
                            phi_v0_5 = projectileYawDiff;
                        }
                        if (phi_v0_5 >= 0x6000) {
block_52:
                            return;
                        }
                        index_2 = ((globalCtx->gameplayFrames & 1) << 0x10) >> 0x10;
                        if (touchingWall) {
                            phi_v0_6 = 0 - wallYawDiff;
                            if (wallYawDiff >= 0) {
                                phi_v0_6 = wallYawDiff;
                            }
                            if (phi_v0_6 >= 0x6001) {
                                phi_v1 = 0;
                            } else {
block_44:
                                phi_v1 = index_2;
                                if (touchingWall) {
                                    phi_v0_7 = 0 - wallYawDiff;
                                    if (wallYawDiff >= 0) {
                                        phi_v0_7 = wallYawDiff;
                                    }
                                    phi_v1 = index_2;
                                    if (phi_v0_7 < 0x2000) {
                                        phi_v1 = 1;
                                    }
                                }
                            }
                        } else {
                            goto block_44;
                        }
                        if (phi_v1 == 0) {
                            func_80861D50(this, wallYawDiff, this);
                            goto block_52;
                        }
                        func_8086194C(this);
                        return;
                    }
                }
                index_3 = ((globalCtx->gameplayFrames & 1) << 0x10) >> 0x10;
                if (touchingWall) {
                    if (wallYawDiff >= 0x2001) {
                        if (wallYawDiff < 0x6000) {
                            phi_v1_2 = 0;
                        } else {
block_29:
                            phi_v1_2 = index_3;
                            if (touchingWall) {
                                phi_v1_2 = index_3;
                                if (wallYawDiff < -0x2000) {
                                    phi_v1_2 = index_3;
                                    if (wallYawDiff >= -0x5FFF) {
                                        phi_v1_2 = 1;
                                    }
                                }
                            }
                        }
                    } else {
                        goto block_29;
                    }
                } else {
                    goto block_29;
                }
                if (phi_v1_2 == 0) {
                    func_80864158(this, 0xC0800000, wallYawDiff, this);
                    return;
                }
                func_80864158(this, 0x40800000, wallYawDiff, this);
                return;
            }
            if (projectile->actor.id != ACTOR_ARMS_HOOK) {
                goto block_19;
            }
            func_80861D50(this, wallYawDiff, this);
            return;
        }
        temp_a1_2 = this;
        this = this;
        if (func_80033A84(globalCtx, temp_a1_2) == 0) {
block_7:
            phi_v0 = 0 - projectileYawDiff;
            if (projectileYawDiff >= 0) {
                phi_v0 = projectileYawDiff;
            }
            if (phi_v0 >= 0x2000) {
                phi_v0_2 = 0 - projectileYawDiff;
                if (projectileYawDiff >= 0) {
                    phi_v0_2 = projectileYawDiff;
                }
                if (phi_v0_2 >= 0x6000) {
                    func_80861D50(this, this);
                    return;
                }
                func_8086194C(this);
                return;
            }
            func_80861EC0(this, this);
            return;
        }
        if (projectile->actor.id != ACTOR_ARMS_HOOK) {
            goto block_7;
        }
        func_80861D50(this, this);
        return;

    }

}
*/
