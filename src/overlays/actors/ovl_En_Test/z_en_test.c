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
void func_8085FE48(EnTest* this, GlobalContext* globalCtx);
void func_8085FF9C(EnTest* this, GlobalContext* globalCtx);
void func_80860318(EnTest* this, GlobalContext* globalCtx);
void func_808603CC(EnTest* this, GlobalContext* globalCtx);
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

void func_8085FDD0(EnTest* this);
void func_8085FF28(EnTest* this);
void func_8086194C(EnTest* this);
void func_808615A4(EnTest* this);

// animation indexes?
u8 D_80864510[] = {
    0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const ActorInit En_Test_InitVars = {
    ACTOR_EN_TEST,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_SK2,
    sizeof(EnTest),
    (ActorFunc)EnTest_Init,
    (ActorFunc)EnTest_Destroy,
    (ActorFunc)EnTest_Update,
    (ActorFunc)EnTest_Draw,
};

// sBodyCylinderInit
ColliderCylinderInit D_80864570 = {
    { COLTYPE_UNK5, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 25, 65, 0, { 0, 0, 0 } },
};

// sShieldCylinderInit
ColliderCylinderInit D_8086459C = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFC1FFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 20, 70, -50, { 0, 0, 0 } },
};

// sQuadInit
ColliderQuadInit D_808645C8 = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0x00000000, 0x00, 0x00 }, 0x81, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

// sDamageTable
DamageTable D_80864618[] = {
    0x10, 0x02, 0xD1, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0x02, 0xF4, 0xE2, 0x02, 0x02,
    0x02, 0x60, 0xF3, 0xE0, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

// sInitChain
InitChainEntry D_80864638[] = {
    ICHAIN_S8(naviEnemyId, 27, ICHAIN_CONTINUE),      ICHAIN_F32(unk_4C, 500, ICHAIN_CONTINUE),
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

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Teardrop, 90.0f);

    this->actor.colChkInfo.unk_10 = 0x28;
    this->actor.colChkInfo.unk_12 = 0x64;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 45.0f;
    this->actor.colChkInfo.damageTable = D_80864618;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80864570);

    Collider_InitCylinder(globalCtx, &this->shieldCollider);
    Collider_SetCylinder(globalCtx, &this->shieldCollider, &this->actor, &D_8086459C);

    Collider_InitQuad(globalCtx, &this->swordCollider);
    Collider_SetQuad(globalCtx, &this->swordCollider, &this->actor, &D_808645C8);

    this->actor.colChkInfo.mass = 0xFE;
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
        func_8085FDD0(this);
    } else {
        func_8085FF28(this);
    }

    if (this->actor.params == 0) {
        this->actor.flags |= 0x80;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/EnTest_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085F938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085FAB0.s")

// wait in ground
void func_8085FDD0(EnTest* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime_188, &D_0600316C);
    this->unk_7C8 = 0;
    this->timer = 15;
    this->actor.scale.y = 0.0f;
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - 3.5f;
    this->actor.flags &= ~1;
    EnTest_SetupAction(this, func_8085FE48);
}

// wait to start battle
void func_8085FE48(EnTest* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime_188);

    if ((this->timer == 0) && (ABS(this->actor.yDistFromLink) < 150.0f)) {
        this->unk_7C8 = 3;
        EnTest_SetupAction(this, func_80863360);
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        this->actor.shape.rot.y = this->actor.yawTowardsLink;
        if (this->actor.params != 2) {
            func_800F5ACC(0x38); // play miniboss music
        }
    } else {
        if (this->timer != 0) {
            this->timer--;
        }
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - 3.5f;
    }
}

// wait above
void func_8085FF28(EnTest* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime_188, &D_0600316C);
    this->unk_7C8 = 0;
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + 150.0f;
    Actor_SetScale(&this->actor, 0.0f);
    this->actor.flags &= ~1;
    EnTest_SetupAction(this, func_8085FF9C);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8085FF9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808600EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808603CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808604FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860EC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80860F84.s")

// setup slash
void func_80861418(EnTest* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime_188, &D_0600B00C);
    func_800F8A44(&this->actor.projectedPos, NA_SE_EN_STAL_WARAU);
    this->swordCollider.base.atFlags &= ~4;
    this->unk_7C8 = 0x10;
    this->actor.speedXZ = 0.0f;
    EnTest_SetupAction(this, func_8086149C);
    this->swordCollider.body.toucher.damage = 16;

    if (this->unk_7DE != 0) {
        this->unk_7DE = 3;
    }
}

void func_8086149C(EnTest* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;

    if ((s32)this->skelAnime_188.animCurrentFrame < 4) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xBB8, 0);
    }

    if ((s32)this->skelAnime_188.animCurrentFrame == 7) {
        Audio_PlayActorSound2(this, NA_SE_EN_STAL_SAKEBI);
    }

    if ((this->skelAnime_188.animCurrentFrame > 7.0f) && (this->skelAnime_188.animCurrentFrame < 11.0f)) {
        this->atOn = true;
    } else {
        this->atOn = false;
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime_188) != 0) {
        if (globalCtx->gameplayFrames & 1) {
            func_808615A4(this);
        } else {
            func_8086181C(this);
        }
    }
}

// slash 1 end
void func_808615A4(EnTest* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime_188, &D_0600B4E4);
    this->unk_7C8 = 0x12;
    this->actor.speedXZ = 0.0f;
    EnTest_SetupAction(this, func_808615F4);
}

// decide action after slash 1?
void func_808615F4(EnTest* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 yawDiff;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime_188) != 0) {
        if (this->swordCollider.base.atFlags & 2) {
            this->swordCollider.base.atFlags &= ~2;
            if (this->actor.params != 3) {
                func_8086194C(this);
                return;
            }
        }

        if (0.7f < Math_Rand_ZeroOne()) {
            func_80860068(this);
            this->timer = (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
            return;
        }

        this->actor.posRot.rot.y = func_8002DA78(this, player);

        if (0.7f < Math_Rand_ZeroOne()) {
            if (this->actor.params != 3) {
                func_8086194C(this);
                return;
            }
        }
        yawDiff = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if (ABS(yawDiff) <= 0x2710) {
            yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
            if ((ABS(yawDiff) > 0x3E80) && (this->actor.params != 3)) {
                this->actor.posRot.rot.y = this->actor.yawTowardsLink;
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_8086181C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861898.s")

// jump back (setup?)
void func_8086194C(EnTest* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime_188, &D_06001978);
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

void func_808619EC(EnTest* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xBB8, 1);

    if (this->timer == 0) {
        Audio_PlayActorSound2(this, NA_SE_EN_STAL_WARAU); // laugh
    } else {
        this->timer--;
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime_188) != 0) {
        if (func_808641E8(globalCtx, this) == 0) {
            if (this->actor.xzDistFromLink <= 100.0f) {
                if (func_8002E084(this, 0x1555)) {
                    func_80861418(this);
                } else {
                    func_80860068(this);
                    this->timer = (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
                }
            } else {
                if ((this->actor.xzDistFromLink <= 220.0f) && func_8002E084(this, 0xE38)) {
                    func_80861B94(this);
                } else {
                    func_80860068(this);
                    this->timer = (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
                }
            }
            this->actor.flags |= 1;
        }
    } else {
        if (this->skelAnime_188.animCurrentFrame == (this->skelAnime_188.animFrameCount - 4.0f)) {
            Audio_PlayActorSound2(this, NA_SE_EN_DODO_M_GND); // landing on the ground
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861B94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80861C40.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808627C4.s")

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
    SkelAnime_FrameUpdateMatrix(&this->skelAnime_188);

    if (this->actor.scale.y < 0.015f) {
        this->actor.scale.y += 0.002f;
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - 3.5f;
    } else {
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y;
        func_8086194C(this);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808633E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808634F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/EnTest_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863AB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80863CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/EnTest_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_80864158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Test/func_808641E8.s")
/*
void func_808641E8(GlobalContext *globalCtx, EnTest *this) {
    ProjectileActor* projectile;
    s16 sp22;
    s16 wallYawDiff;
    s16 touchingWall;
    Actor *temp_v0;
    EnTest *temp_a0;
    EnTest *temp_a1;
    EnTest *temp_a1_2;
    PosRot *temp_a0_3;
    s32 projectileYawDiff;
    s32 temp_v1_2;
    s32 temp_v1_3;
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
        projectileYawDiff = func_8002DA78(&this->actor, &projectile->actor) - this->actor.shape.rot.y;
        touchingWall = false;
        if (this->actor.bgCheckFlags & 8) {
            wallYawDiff = this->actor.wallPolyRot - this->actor.shape.rot.y;
            touchingWall = true;
        }

        if (Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &projectile->actor.posRot.pos) < 200.0f) {
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





        if (!(Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &projectile->actor.posRot.pos) < 200.0f)) {
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
                        temp_v1_2 = ((globalCtx->gameplayFrames & 1) << 0x10) >> 0x10;
                        if (touchingWall) {
                            phi_v0_6 = 0 - wallYawDiff;
                            if (wallYawDiff >= 0) {
                                phi_v0_6 = wallYawDiff;
                            }
                            if (phi_v0_6 >= 0x6001) {
                                phi_v1 = 0;
                            } else {
block_44:
                                phi_v1 = temp_v1_2;
                                if (touchingWall) {
                                    phi_v0_7 = 0 - wallYawDiff;
                                    if (wallYawDiff >= 0) {
                                        phi_v0_7 = wallYawDiff;
                                    }
                                    phi_v1 = temp_v1_2;
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
                temp_v1_3 = ((globalCtx->gameplayFrames & 1) << 0x10) >> 0x10;
                if (touchingWall) {
                    if (wallYawDiff >= 0x2001) {
                        if (wallYawDiff < 0x6000) {
                            phi_v1_2 = 0;
                        } else {
block_29:
                            phi_v1_2 = temp_v1_3;
                            if (touchingWall) {
                                phi_v1_2 = temp_v1_3;
                                if (wallYawDiff < -0x2000) {
                                    phi_v1_2 = temp_v1_3;
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
