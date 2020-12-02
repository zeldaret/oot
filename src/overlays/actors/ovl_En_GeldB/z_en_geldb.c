#include "z_en_geldb.h"

#define FLAGS 0x00000015

#define THIS ((EnGeldB*)thisx)

void EnGeldB_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Update(Actor* this, GlobalContext* globalCtx);
void EnGeldB_Draw(Actor* this, GlobalContext* globalCtx);

s32 func_80A39E2C(GlobalContext* globalCtx, EnGeldB* this);

void func_80A35974(EnGeldB* this);
void func_80A35A08(EnGeldB* this, GlobalContext* globalCtx);
void func_80A35B8C(EnGeldB* this);
void func_80A35C24(EnGeldB* this, GlobalContext* globalCtx);
void func_80A35D48(EnGeldB* this);
void func_80A35DD0(EnGeldB* this, GlobalContext* globalCtx);
void func_80A360B0(EnGeldB* this, GlobalContext* globalCtx);
void func_80A36130(EnGeldB* this, GlobalContext* globalCtx);
void func_80A365DC(EnGeldB* this);
void func_80A36690(EnGeldB* this, GlobalContext* globalCtx);
void func_80A367E4(EnGeldB* this);
void func_80A36830(EnGeldB* this, GlobalContext* globalCtx);
void func_80A36A10(EnGeldB* this);
void func_80A36AE4(EnGeldB* this, GlobalContext* globalCtx);
void func_80A370BC(EnGeldB* this, GlobalContext* globalCtx);
void func_80A37224(EnGeldB* this, GlobalContext* globalCtx);
void func_80A37670(EnGeldB* this);
void func_80A376E0(EnGeldB* this, GlobalContext* globalCtx);
void func_80A3792C(EnGeldB* this);
void func_80A379C0(EnGeldB* this, GlobalContext* globalCtx);
void func_80A37D70(EnGeldB* this);
void func_80A37DEC(EnGeldB* this, GlobalContext* globalCtx);
void func_80A37EF0(EnGeldB* this);
void func_80A37F98(EnGeldB* this, GlobalContext* globalCtx);
void func_80A38054(EnGeldB* this);
void func_80A380EC(EnGeldB* this, GlobalContext* globalCtx);
void func_80A38290(EnGeldB* this);
void func_80A38348(EnGeldB* this, GlobalContext* globalCtx);
void func_80A38430(EnGeldB* this);
void func_80A384E8(EnGeldB* this, GlobalContext* globalCtx);
void func_80A387D0(EnGeldB* this, GlobalContext* globalCtx);
void func_80A38960(EnGeldB* this, GlobalContext* globalCtx);
void func_80A3907C(EnGeldB* this);
void func_80A39120(EnGeldB* this, GlobalContext* globalCtx);

extern SkeletonHeader D_0600A458; // FlexSkeletonHeader
extern AnimationHeader D_0600ADF8;
extern AnimationHeader D_0600B6D4;
extern AnimationHeader D_0600A814;
extern AnimationHeader D_06001390;
extern AnimationHeader D_060024E8;
extern AnimationHeader D_060003CC;
extern AnimationHeader D_06000F5C;
extern AnimationHeader D_06002280;
extern AnimationHeader D_06001E10;
extern AnimationHeader D_0600ADF8;
extern AnimationHeader D_06001578;

const ActorInit En_GeldB_InitVars = {
    ACTOR_EN_GELDB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_GELDB,
    sizeof(EnGeldB),
    (ActorFunc)EnGeldB_Init,
    (ActorFunc)EnGeldB_Destroy,
    (ActorFunc)EnGeldB_Update,
    (ActorFunc)EnGeldB_Draw,
};

static ColliderCylinderInit sBodyCylInit = {
    { COLTYPE_UNK5, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 50, 0, { 0, 0, 0 } },
};

static ColliderTrisItemInit sBlockTrisElementsInit[] = {
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFC1FFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        { 0x02, { 0x00000000, 0x00, 0x00 }, { 0xFFC1FFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

static ColliderTrisInit sBlockTrisInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_TRIS },
    2,
    sBlockTrisElementsInit,
};

static ColliderQuadInit sSwordQuadinit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x81, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static DamageTable sDamageTable = {
    0x10, 0x02, 0x01, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0x02, 0xF2, 0x02, 0x02, 0x02,
    0x02, 0xE4, 0x60, 0xD3, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x04, 0x00, 0x04, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3000, ICHAIN_STOP),
};

void func_80A35310(EnGeldB* this, EnGeldBActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnGeldB_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EffectBlureInit1 sp44;
    EnGeldB* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    thisx->colChkInfo.damageTable = &sDamageTable;
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Teardrop, 0.0f);
    this->actor.colChkInfo.mass = 0xFE;
    thisx->colChkInfo.health = 20;
    thisx->colChkInfo.unk_10 = 50;
    thisx->colChkInfo.unk_12 = 100;
    thisx->naviEnemyId = 0x54;
    this->unk_314 = thisx->params & 0xFF00;
    thisx->params &= 0xFF;
    this->unk_31A = 0;
    this->unk_30C = 10.0f;
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600A458, &D_0600B6D4, this->limbDrawTbl,
                     this->limbTransitionTable, 24);
    Collider_InitCylinder(globalCtx, &this->colliderBody);
    Collider_SetCylinder(globalCtx, &this->colliderBody, thisx, &sBodyCylInit);
    Collider_InitTris(globalCtx, &this->colliderBlock);
    Collider_SetTris(globalCtx, &this->colliderBlock, thisx, &sBlockTrisInit, this->blockElements);
    Collider_InitQuad(globalCtx, &this->colliderSword);
    Collider_SetQuad(globalCtx, &this->colliderSword, thisx, &sSwordQuadinit);
    sp44.p1StartColor[0] = sp44.p1StartColor[1] = sp44.p1StartColor[2] = sp44.p1StartColor[3] = sp44.p2StartColor[0] =
        sp44.p2StartColor[1] = sp44.p2StartColor[2] = sp44.p1EndColor[0] = sp44.p1EndColor[1] = sp44.p1EndColor[2] =
            sp44.p2EndColor[0] = sp44.p2EndColor[1] = sp44.p2EndColor[2] = 255;
    sp44.p2StartColor[3] = 64;
    sp44.p1EndColor[3] = sp44.p2EndColor[3] = 0;
    sp44.elemDuration = 8;
    sp44.unkFlag = 0;
    sp44.calcMode = 2;

    Effect_Add(globalCtx, &this->blureIdx, 1, 0, 0, &sp44);
    Actor_SetScale(thisx, 0.012499999f);
    func_80A35974(this);
    if ((this->unk_314 != 0) && Flags_GetCollectible(globalCtx, this->unk_314 >> 8)) {
        Actor_Kill(thisx);
    }
}

void EnGeldB_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGeldB* this = THIS;

    func_800F5B58();
    Effect_Delete(globalCtx, this->blureIdx);
    Collider_DestroyTris(globalCtx, &this->colliderBlock);
    Collider_DestroyCylinder(globalCtx, &this->colliderBody);
    Collider_DestroyQuad(globalCtx, &this->colliderSword);
}

s32 func_80A3559C(GlobalContext* globalCtx, EnGeldB* this, s16 arg2) {
    Player* player = PLAYER;
    Actor* thisx = &this->actor;
    s16 sp36;
    s16 sp34;

    sp36 = thisx->wallPolyRot - thisx->shape.rot.y;
    sp36 = ABS(sp36);
    sp34 = thisx->yawTowardsLink - thisx->shape.rot.y;
    sp34 = ABS(sp34);

    if (func_800354B4(globalCtx, thisx, 100.0f, 0x2710, 0x3E80, thisx->shape.rot.y)) {
        if (player->swordAnimation == 0x11) {
            func_80A370BC(this, globalCtx);
            return true;
        } else if (globalCtx->gameplayFrames & 1) {
            func_80A38430(this);
            return true;
        }
    }
    if (func_800354B4(globalCtx, thisx, 100.0f, 0x5DC0, 0x2AA8, thisx->shape.rot.y)) {
        thisx->shape.rot.y = thisx->posRot.rot.y = thisx->yawTowardsLink;
        if ((thisx->bgCheckFlags & 8) && (ABS(sp36) < 0x2EE0) && (thisx->xzDistFromLink < 90.0f)) {
            func_80A38290(this);
            return true;
        } else if (player->swordAnimation == 0x11) {
            func_80A370BC(this, globalCtx);
            return true;
        } else if ((thisx->xzDistFromLink < 90.0f) && (globalCtx->gameplayFrames & 1)) {
            func_80A38430(this);
            return true;
        } else {
            func_80A37D70(this);
            return true;
        }
    } else {
        Actor* bomb = Actor_FindNearby(globalCtx, thisx, -1, ACTORTYPE_EXPLOSIVES, 80.0f);

        if (bomb != NULL) {
            thisx->shape.rot.y = thisx->posRot.rot.y = thisx->yawTowardsLink;
            if (((thisx->bgCheckFlags & 8) && (sp36 < 0x2EE0)) || (bomb->id == ACTOR_EN_BOM_CHU)) {
                if ((bomb->id == ACTOR_EN_BOM_CHU) && (func_8002DB48(thisx, bomb) < 80.0f) &&
                    ((s16)(thisx->shape.rot.y - (bomb->posRot.rot.y - 0x8000)) < 0x3E80)) {
                    func_80A38290(this);
                    return true;
                } else {
                    func_80A387D0(this, globalCtx);
                    return true;
                }
            } else {
                func_80A37D70(this);
                return true;
            }
        } else if (arg2) {
            if (sp34 >= 0x1B58) {
                func_80A387D0(this, globalCtx);
                return true;
            } else {
                s16 sp2E = player->actor.shape.rot.y - thisx->shape.rot.y;

                if ((thisx->xzDistFromLink <= 45.0f) && !func_80033AB8(globalCtx, thisx) &&
                    ((globalCtx->gameplayFrames & 7) || (ABS(sp2E) < 0x38E0))) {
                    func_80A37670(this);
                    return true;
                } else {
                    func_80A36A10(this);
                    return true;
                }
            }
        }
    }
    return false;
}

void func_80A35974(EnGeldB* this) {
    SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_0600ADF8, 0.0f);
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + 120.0f;
    this->unk_300 = 10;
    this->unk_318 = 1;
    this->unk_2EC = 0;
    this->actor.bgCheckFlags &= ~3;
    this->actor.gravity = -2.0f;
    this->actor.flags &= ~1;
    func_80A35310(this, func_80A35A08);
}

void func_80A35A08(EnGeldB* this, GlobalContext* globalCtx) {
    if ((this->unk_318 && !Flags_GetSwitch(globalCtx, this->actor.initPosRot.rot.z)) ||
        this->actor.xzDistFromLink > 300.0f) {
        this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        this->actor.posRot.pos.y = this->actor.groundY + 120.0f;
    } else {
        this->unk_318 = 0;
        this->actor.shape.unk_10 = 90.0f;
        func_800F5ACC(0x38);
    }
    if (this->actor.bgCheckFlags & 2) {
        Audio_PlayActorSound2(&this->actor, 0x387A);
        this->skelAnime.animPlaybackSpeed = 1.0f;
        this->actor.posRot.pos.y = this->actor.groundY;
        this->actor.flags |= 1;
        this->actor.posRot2.pos = this->actor.posRot.pos;
        this->actor.bgCheckFlags &= ~2;
        this->actor.velocity.y = 0.0f;
        func_80033260(globalCtx, &this->actor, &this->unk_4D0, 3.0f, 2, 2.0f, 0, 0, 0);
        func_80033260(globalCtx, &this->actor, &this->unk_4C4, 3.0f, 2, 2.0f, 0, 0, 0);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_80A35D48(this);
    }
}

void func_80A35B8C(EnGeldB* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600ADF8, -2.0f, SkelAnime_GetFrameCount(&D_0600ADF8), 0.0f, 3, -4.0f);
    this->unk_300 = 20;
    this->unk_318 = 0;
    this->unk_2EC = 0;
    this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    func_80A35310(this, func_80A35C24);
}

void func_80A35C24(EnGeldB* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animCurrentFrame == 10.0f) {
        Audio_PlayActorSound2(&this->actor, 0x386C);
    }
    if (this->skelAnime.animCurrentFrame == 2.0f) {
        this->actor.gravity = 0.0f;
        func_80033260(globalCtx, &this->actor, &this->unk_4D0, 3.0f, 2, 2.0f, 0, 0, 0);
        func_80033260(globalCtx, &this->actor, &this->unk_4C4, 3.0f, 2, 2.0f, 0, 0, 0);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.groundY + 300.0f, 1.0f, 20.5f, 0.0f);
        this->unk_300--;
        if (this->unk_300 == 0) {
            Actor_Kill(&this->actor);
        }
    }
}

void func_80A35D48(EnGeldB* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600B6D4, -4.0f);
    this->unk_2EC = 5;
    this->unk_300 = Math_Rand_ZeroOne() * 10.0f + 5.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    func_80A35310(this, func_80A35DD0);
}

void func_80A35DD0(EnGeldB* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    s16 sp26;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_2FA != 0) {
        sp26 = this->actor.yawTowardsLink - this->actor.shape.rot.y - this->unk_4DC.y;
        if (ABS(sp26) > 0x2000) {
            this->unk_2FA--;
            return;
        }
        this->unk_2FA = 0;
    }
    sp26 = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if (!func_80A39E2C(globalCtx, this)) {
        if (this->unk_2F8 != 0) {
            this->unk_2F8--;

            if (ABS(sp26) >= 0x1FFE) {
                return;
            }
            this->unk_2F8 = 0;
        } else if (func_80A3559C(globalCtx, this, 0)) {
            return;
        }
        sp26 = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if ((this->actor.xzDistFromLink < 100.0f) && (player->swordState != 0) && (ABS(sp26) >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            func_80A36A10(this);
        } else if (--this->unk_300 == 0) {
            if (func_8002E084(&this->actor, 0x1555)) {
                if ((210.0f > this->actor.xzDistFromLink) && (this->actor.xzDistFromLink > 150.0f) &&
                    (Math_Rand_ZeroOne() < 0.3f)) {
                    if (func_80033AB8(globalCtx, &this->actor) || (Math_Rand_ZeroOne() > 0.5f) ||
                        (ABS(sp26) < 0x38E0)) {
                        func_80A365DC(this);
                    } else {
                        func_80A3792C(this);
                    }
                } else if (Math_Rand_ZeroOne() > 0.3f) {
                    func_80A360B0(this, globalCtx);
                } else {
                    func_80A36A10(this);
                }
            } else {
                func_80A367E4(this);
            }
            if ((globalCtx->gameplayFrames & 0x5F) == 0) {
                Audio_PlayActorSound2(&this->actor, 0x39C6);
            }
        }
    }
}

void func_80A360B0(EnGeldB* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060024E8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060024E8), 1, -4.0f);
    this->unk_2EC = 8;
    func_80A35310(this, &func_80A36130);
}

void func_80A36130(EnGeldB* this, GlobalContext* globalCtx) {
    s32 sp44;
    s32 sp40;
    s32 pad3C;
    s16 sp3A;
    Player* player = PLAYER;
    s32 pad30;
    s32 pad2C;
    f32 sp28;

    if (!func_80A39E2C(globalCtx, this)) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0x2EE, 0);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (this->actor.xzDistFromLink <= 40.0f) {
            Math_SmoothScaleMaxMinF(&this->actor.speedXZ, -8.0f, 1.0f, 1.5f, 0.0f);
        } else if (55.0f < this->actor.xzDistFromLink) {
            Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 8.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 6.65f, 0.0f);
        }
        this->skelAnime.animPlaybackSpeed = this->actor.speedXZ * 0.125f;
        sp3A = player->actor.shape.rot.y - this->actor.shape.rot.y;
        sp3A = ABS(sp3A);
        if ((this->actor.xzDistFromLink < 150.0f) && (player->swordState != 0) && (sp3A >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            if (Math_Rand_ZeroOne() > 0.7f) {
                func_80A36A10(this);
                return;
            }
        }
        sp44 = (s32)this->skelAnime.animCurrentFrame;
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        sp28 = ABS(this->skelAnime.animPlaybackSpeed);
        sp40 = (s32)(this->skelAnime.animCurrentFrame - sp28);
        sp28 = ABS(this->skelAnime.animPlaybackSpeed); // yes it does this twice.
        if (!func_8002E084(&this->actor, 0x11C7)) {
            if (0.5f < Math_Rand_ZeroOne()) {
                func_80A36A10(this);
            } else {
                func_80A35D48(this);
            }
        } else if (this->actor.xzDistFromLink < 90.0f) {
            if (!func_80033AB8(globalCtx, &this->actor) &&
                (Math_Rand_ZeroOne() > 0.03f || (this->actor.xzDistFromLink <= 45.0f && sp3A < 0x38E0))) {
                func_80A37670(this);
            } else if (func_80033AB8(globalCtx, &this->actor) && (Math_Rand_ZeroOne() > 0.5f)) {
                func_80A37D70(this);
            } else {
                func_80A36A10(this);
            }
        }
        if (!func_80A3559C(globalCtx, this, 0)) {
            if ((this->actor.xzDistFromLink < 210.0f) && (150.0f < this->actor.xzDistFromLink) &&
                (func_8002E084(&this->actor, 0x71C) != 0)) {
                if (func_80033A84(globalCtx, &this->actor)) {
                    if (Math_Rand_ZeroOne() > 0.5f) {
                        func_80A365DC(this);
                    } else {
                        func_80A3792C(this);
                    }
                } else {
                    func_80A36A10(this);
                    return;
                }
            }
            if ((globalCtx->gameplayFrames & 0x5F) == 0) {
                Audio_PlayActorSound2(&this->actor, 0x39C6);
            }
            if ((sp44 != (s32)this->skelAnime.animCurrentFrame) &&
                ((sp40 < 0 && (s32)sp28 + sp44 > 0) || (sp40 < 4 && (s32)sp28 + sp44 > 4))) {
                Audio_PlayActorSound2(&this->actor, 0x39A0);
            }
        }
    }
}

void func_80A365DC(EnGeldB* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06001390, -1.0f, SkelAnime_GetFrameCount(&D_06001390), 0.0f, 2, -3.0f);
    this->unk_300 = 0;
    this->unk_318 = 1;
    this->unk_2EC = 14;
    this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
    this->actor.speedXZ = 10.0f;
    Audio_PlayActorSound2(&this->actor, 0x386C);
    func_80A35310(this, func_80A36690);
}

void func_80A36690(EnGeldB* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 sp22 = player->actor.shape.rot.y - this->actor.shape.rot.y;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_318 = 0;
        this->actor.speedXZ = 0.0f;
        if (func_8002E084(&this->actor, 0x1554) == 0) {
            func_80A35D48(this);
            this->unk_300 = (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
            if (ABS(sp22) < 0x38E0) {
                this->unk_2FA = 0x14;
            }
        } else if (!func_80033AB8(globalCtx, &this->actor) && (Math_Rand_ZeroOne() > 0.5f || (ABS(sp22) < 0x3FFC))) {
            func_80A37670(this);
        } else {
            func_80A360B0(this, globalCtx);
        }
    }
    if ((globalCtx->gameplayFrames & 0x5F) == 0) {
        Audio_PlayActorSound2(&this->actor, 0x39C6);
    }
}

void func_80A367E4(EnGeldB* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600A814, -4.0f);
    this->unk_2EC = 9;
    func_80A35310(this, func_80A36830);
}

void func_80A36830(EnGeldB* this, GlobalContext* globalCtx) {
    s16 temp_v0;
    s16 phi_v1;
    f32 phi_f2;

    if ((func_80A39E2C(globalCtx, this) == 0) && (func_80A3559C(globalCtx, this, 0) == 0)) {
        temp_v0 = this->actor.yawTowardsLink - this->actor.shape.rot.y;
        phi_v1 = (temp_v0 > 0) ? ((temp_v0 * 0.25f) + 2000.0f) : ((temp_v0 * 0.25f) - 2000.0f);
        this->actor.posRot.rot.y = this->actor.shape.rot.y += phi_v1;
        if (temp_v0 > 0) {
            phi_f2 = phi_v1 * 0.5f;
            phi_f2 = CLAMP_MAX(phi_f2, 1.0f);
        } else {
            phi_f2 = phi_v1 * 0.5f;
            phi_f2 = CLAMP_MIN(phi_f2, -1.0f);
        }
        this->skelAnime.animPlaybackSpeed = -phi_f2;
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        if (func_8002E084(&this->actor, 0x1555)) {
            if (Math_Rand_ZeroOne() > 0.8f) {
                func_80A36A10(this);
            } else {
                func_80A360B0(this, globalCtx);
            }
        }
        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, 0x39C6);
        }
    }
}

void func_80A36A10(EnGeldB* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600A814, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600A814), 1, 0.0f);
    this->actor.speedXZ = Math_Rand_CenteredFloat(12.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->skelAnime.animPlaybackSpeed = -this->actor.speedXZ * 0.5f;
    this->unk_300 = Math_Rand_ZeroOne() * 30.0f + 30.0f;
    this->unk_2EC = 10;
    this->unk_304 = 0.0f;
    func_80A35310(this, func_80A36AE4);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36AE4.s")

void func_80A36AE4(EnGeldB *this, GlobalContext *globalCtx) {
    s16 sp3E;
    s16 phi_v0_2;
    s32 pad38;
    s32 sp34;
    f32 phi_f2_4;
    s32 temp_f6;
    Player* player = PLAYER;
    
    

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA0, 1);
    if (!func_80A39E2C(globalCtx, this) && !func_80A3559C(globalCtx, this, 0)) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x3A98;
        sp3E = player->actor.shape.rot.y + 0x8000;
        if (0.0f <= Math_Sins(sp3E - this->actor.shape.rot.y)) {
            this->actor.speedXZ -= 0.25f;
            if (this->actor.speedXZ < -8.0f) {
                this->actor.speedXZ = -8.0f;
            }
        } else if (Math_Sins(sp3E - this->actor.shape.rot.y) < 0.0f) {
            this->actor.speedXZ += 0.25f;
            if (this->actor.speedXZ > 8.0f) {
                this->actor.speedXZ = 8.0f;
            }
        }
        if ((this->actor.bgCheckFlags & 8) || !func_800339B8(this, globalCtx, this->actor.speedXZ, this->actor.shape.rot.y + 0x3E80)) {
            if (this->actor.bgCheckFlags & 8) {
                if(this->actor.speedXZ >= 0.0f) {
                    phi_v0_2 = this->actor.shape.rot.y + 0x3E80;
                } else {
                    phi_v0_2 = this->actor.shape.rot.y - 0x3E80;
                }
                phi_v0_2 = this->actor.wallPolyRot - phi_v0_2;
            } else {
                this->actor.speedXZ *= -0.8f;
                phi_v0_2 = 0;
            }
            if (ABS(phi_v0_2) > 0x4000) {
                this->actor.speedXZ *= -0.8f;
                if (this->actor.speedXZ< 0.0f) {
                    this->actor.speedXZ -= 0.5f;
                } else {
                    this->actor.speedXZ += 0.5f;
                }
            }
        }
        if (this->actor.xzDistFromLink <= 45.0f) {
            Math_SmoothScaleMaxMinF(&this->unk_304, -4.0f, 1.0f, 1.5f, 0.0f);
        } else if (40.0f < this->actor.xzDistFromLink) {
            Math_SmoothScaleMaxMinF(&this->unk_304, 4.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothScaleMaxMinF(&this->unk_304, 0.0f, 1.0f, 6.65f, 0.0f);
        }
        if (0.0f != this->unk_304) {
            this->actor.posRot.pos.x += Math_Sins(this->actor.shape.rot.y) * this->unk_304;
            this->actor.posRot.pos.z += Math_Coss(this->actor.shape.rot.y) * this->unk_304;
        }
        if (ABS(this->unk_304) < ABS(this->actor.speedXZ)) {
            this->skelAnime.animPlaybackSpeed = -this->actor.speedXZ * 0.5f;
        } else {
            this->skelAnime.animPlaybackSpeed = -this->unk_304 * 0.5f;
        }
        this->skelAnime.animPlaybackSpeed = CLAMP(this->skelAnime.animPlaybackSpeed, -3.0f, 3.0f);
        
        sp34 = this->skelAnime.animCurrentFrame;
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);

        temp_f6 = this->skelAnime.animCurrentFrame - ABS(this->skelAnime.animPlaybackSpeed);
        phi_f2_4 = ABS(this->skelAnime.animPlaybackSpeed);
        pad38 = (s32)phi_f2_4 + sp34;
        if ((sp34 != (s32)this->skelAnime.animCurrentFrame) && ((temp_f6 < 0 && 0 < pad38) || (temp_f6 < 5 && 5 < pad38))) {
            Audio_PlayActorSound2(this, 0x39A0);
        }
        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(this, 0x39C6);
        }
        if ((Math_Coss(sp3E - this->actor.shape.rot.y) < -0.85f) && !func_80033AB8(globalCtx, this) && (this->actor.xzDistFromLink <= 45.0f)) {
            func_80A37670(this);
        } else if (--this->unk_300 == 0) {
            if (func_80033AB8(globalCtx, this) && ( Math_Rand_ZeroOne() > 0.5f)) {
                func_80A37D70(this);
            } else {
                func_80A35D48(this);
            }
        }
    }
}

void func_80A370BC(EnGeldB* this, GlobalContext* globalCtx) {
    s16 sp3E;
    Player* player = PLAYER;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600A814, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600A814), 1, 0.0f);
    sp3E = player->actor.shape.rot.y;
    if (Math_Sins(sp3E - this->actor.shape.rot.y) > 0.0f) {
        this->actor.speedXZ = -10.0f;
    } else if (Math_Sins(sp3E - this->actor.shape.rot.y) < 0.0f) {
        this->actor.speedXZ = 10.0f;
    } else if (Math_Rand_ZeroOne() > 0.5f) {
        this->actor.speedXZ = 10.0f;
    } else {
        this->actor.speedXZ = -10.0f;
    }
    this->skelAnime.animPlaybackSpeed = -this->actor.speedXZ * 0.5f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->unk_300 = 6;
    this->unk_304 = 0.0f;
    this->unk_30C = 0.0f;
    this->unk_2EC = 16;

    func_80A35310(this, func_80A37224);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37224.s")

void func_80A37670(EnGeldB* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_060003CC);
    this->colliderSword.base.atFlags &= ~4;
    this->unk_2EC = 7;
    this->unk_312 = 0;
    this->actor.speedXZ = 0.0f;
    func_800F8A44(&this->actor.projectedPos, 0x39C6);
    func_80A35310(this, func_80A376E0);
}

void func_80A376E0(EnGeldB* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 sp22 = player->actor.shape.rot.y - this->actor.shape.rot.y;
    s16 sp20 = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    sp22 = ABS(sp22);
    sp20 = ABS(sp20);

    this->actor.speedXZ = 0.0f;
    if ((s32)this->skelAnime.animCurrentFrame == 1) {
        Audio_PlayActorSound2(&this->actor, 0x3998);
        this->unk_310 = 1;
    } else if ((s32)this->skelAnime.animCurrentFrame == 6) {
        this->unk_310 = -1;
    }
    if (this->colliderSword.base.atFlags & 4) {
        this->unk_310 = -1;
        this->colliderSword.base.atFlags &= ~6;
        func_80A37D70(this);
    } else if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (!func_8002E084(&this->actor, 0x1554)) {
            func_80A35D48(this);
            this->unk_300 = (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
            if (sp20 > 0x4000) {
                this->unk_2FA = 0x14;
            }
        } else if (0.7f < Math_Rand_ZeroOne() || (120.0f <= this->actor.xzDistFromLink)) {
            func_80A35D48(this);
            this->unk_300 = (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            if (0.7f < Math_Rand_ZeroOne()) {
                func_80A387D0(this, globalCtx);
            } else if (sp22 <= 0x2710) {
                if (sp20 > 0x3E80) {
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                    func_80A36A10(this);
                } else {
                    func_80A3559C(globalCtx, this, 1);
                }
            } else {
                func_80A36A10(this);
            }
        }
    }
}

void func_80A3792C(EnGeldB* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000F5C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000F5C), 3, 0.0f);
    this->colliderSword.base.atFlags &= ~6;
    this->unk_2EC = 12;
    this->unk_312 = 0;
    this->actor.speedXZ = 0.0f;
    func_80A35310(this, func_80A379C0);
}

void func_80A379C0(EnGeldB* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 temp1;
    s16 temp2;

    if (this->unk_312 < 2) {
        if (this->colliderSword.base.atFlags & 4) {
            this->colliderSword.base.atFlags &= ~6;
            this->unk_312 = 1;
            this->skelAnime.animPlaybackSpeed = 1.5f;
        } else if (this->colliderSword.base.atFlags & 2) {
            this->colliderSword.base.atFlags &= ~2;
            if (&player->actor == this->colliderSword.base.at) {
                func_8002F71C(globalCtx, &this->actor, 6.0f, this->actor.yawTowardsLink, 6.0f);
                this->unk_312 = 2;
                func_8002DF54(globalCtx, &this->actor, 0x18);
                func_8010B680(globalCtx, 0x6003, &this->actor);
                this->unk_300 = 0x1E;
                this->actor.speedXZ = 0.0f;
                Audio_PlayActorSound2(&this->actor, 0x39B9);
                return;
            }
        }
    }
    if ((s32)this->skelAnime.animCurrentFrame < 9) {
        this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    } else if ((s32)this->skelAnime.animCurrentFrame == 0xD) {
        func_80033260(globalCtx, &this->actor, &this->unk_4D0, 3.0f, 2, 2.0f, 0, 0, 0);
        func_80033260(globalCtx, &this->actor, &this->unk_4C4, 3.0f, 2, 2.0f, 0, 0, 0);
        this->unk_310 = 1;
        this->actor.speedXZ = 10.0f;
        Audio_PlayActorSound2(&this->actor, 0x3998);
    } else if ((s32)this->skelAnime.animCurrentFrame == 0x15) {
        this->actor.speedXZ = 0.0f;
    } else if ((s32)this->skelAnime.animCurrentFrame == 0x18) {
        this->unk_310 = -1;
    }
    if ((SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) && (this->unk_312 < 2)) {
        if (func_8002E084(&this->actor, 0x1554) == 0) {
            func_80A35D48(this);
            this->unk_300 = (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
            this->unk_2FA = 0x2E;
        } else if (this->unk_312 != 0) {
            func_80A37D70(this);
        } else if (0.7f < Math_Rand_ZeroOne() || (120.0f <= this->actor.xzDistFromLink)) {
            func_80A35D48(this);
            this->unk_300 = (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            if (0.7f < Math_Rand_ZeroOne()) {
                func_80A387D0(this, globalCtx);
            } else {
                temp1 = player->actor.shape.rot.y - this->actor.shape.rot.y;
                temp1 = ABS(temp1);
                if (temp1 <= 0x2710) {
                    temp2 = this->actor.yawTowardsLink - this->actor.shape.rot.y;
                    temp2 = ABS(temp2);
                    if (temp2 > 0x3E80) {
                        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                        func_80A36A10(this);
                    } else {
                        func_80A3559C(globalCtx, this, 1);
                    }
                } else {
                    func_80A36A10(this);
                }
            }
        }
    }
}

void func_80A37D70(EnGeldB* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06001390, -3.0f);
    this->unk_300 = 0;
    this->unk_318 = 1;
    this->unk_2EC = 4;
    this->actor.speedXZ = -8.0f;
    Audio_PlayActorSound2(&this->actor, 0x386C);
    this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    func_80A35310(this, func_80A37DEC);
}

void func_80A37DEC(EnGeldB* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (!func_80033AB8(globalCtx, &this->actor) && (this->actor.xzDistFromLink < 170.0f) &&
            (140.0f < this->actor.xzDistFromLink) && (Math_Rand_ZeroOne() < 0.2f)) {
            func_80A3792C(this);
        } else if (globalCtx->gameplayFrames & 1) {
            func_80A387D0(this, globalCtx);
        } else {
            func_80A35D48(this);
        }
    }
    if ((globalCtx->state.frames & 0x5F) == 0) {
        Audio_PlayActorSound2(&this->actor, 0x39C6);
    }
}

void func_80A37EF0(EnGeldB* this) {
    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = 0.0f;
    }
    if ((this->unk_2FE != 15) || (this->unk_2EC == 12)) {
        SkelAnime_ChangeAnimPlaybackStop(&this->skelAnime, &D_06002280, 0.0f);
    }
    if (this->unk_2FE == 15) {
        this->unk_2FC = 36;
    }
    Audio_PlayActorSound2(&this->actor, 0x389E);
    this->unk_2EC = 15;
    func_80A35310(this, func_80A37F98);
}

void func_80A37F98(EnGeldB* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }
    if (this->actor.bgCheckFlags & 1) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }
        this->unk_318 = 0;
    }
    if ((this->actor.dmgEffectTimer == 0) && (this->actor.bgCheckFlags & 1)) {
        if (this->actor.colChkInfo.health == 0) {
            func_80A3907C(this);
        } else {
            func_80A3559C(globalCtx, this, 1);
        }
    }
}

void func_80A38054(EnGeldB* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06002280, -4.0f);
    if ((this->actor.bgCheckFlags & 1) != 0) {
        this->unk_318 = 0;
        this->actor.speedXZ = -4.0f;
    } else {
        this->unk_318 = 1;
    }
    this->unk_2FA = 0;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    Audio_PlayActorSound2(&this->actor, 0x3999);
    this->unk_2EC = 2;
    func_80A35310(this, func_80A380EC);
}

void func_80A380EC(EnGeldB* this, GlobalContext* globalCtx) {
    s16 temp_v1;

    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }
    if (this->actor.bgCheckFlags & 1) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }
        this->unk_318 = 0;
    }
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0x1194, 0);
    if (!func_80A39E2C(globalCtx, this) && !func_80A3559C(globalCtx, this, 0) &&
        SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (this->actor.bgCheckFlags & 1)) {
        temp_v1 = this->actor.wallPolyRot - this->actor.shape.rot.y;
        if ((this->actor.bgCheckFlags & 8) && (ABS(temp_v1) < 0x2EE0) && (this->actor.xzDistFromLink < 90.0f)) {
            func_80A38290(this);
        } else if (!func_80A39E2C(globalCtx, this)) {
            if ((this->actor.xzDistFromLink <= 45.0f) && !func_80033AB8(globalCtx, &this->actor) &&
                (globalCtx->gameplayFrames & 7)) {
                func_80A37670(this);
            } else {
                func_80A37D70(this);
            }
        }
    }
}

void func_80A38290(EnGeldB* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06001390, -1.0f, SkelAnime_GetFrameCount(&D_06001390), 0.0f, 2, -3.0f);
    this->unk_300 = 0;
    this->unk_318 = 0;
    this->unk_2EC = 3;
    this->actor.speedXZ = 6.5f;
    this->actor.velocity.y = 15.0f;
    Audio_PlayActorSound2(&this->actor, 0x386C);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    func_80A35310(this, func_80A38348);
}

void func_80A38348(EnGeldB* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA0, 1);
    if (this->actor.velocity.y >= 5.0f) {
        func_800355B8(globalCtx, &this->unk_4D0);
        func_800355B8(globalCtx, &this->unk_4C4);
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (this->actor.bgCheckFlags & 3)) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
        this->actor.shape.rot.x = 0;
        this->actor.speedXZ = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.posRot.pos.y = this->actor.groundY;
        if (!func_80033AB8(globalCtx, &this->actor)) {
            func_80A37670(this);
        } else {
            func_80A35D48(this);
        }
    }
}

void func_80A38430(EnGeldB* this) {
    f32 sp34;
    f32 temp_f14;

    sp34 = SkelAnime_GetFrameCount(&D_06001578);
    if (this->unk_310 != 0) {
        this->unk_310 = -1;
    }
    this->actor.speedXZ = 0.0f;
    this->unk_2EC = 6;
    this->unk_300 = (s32)Math_Rand_CenteredFloat(10.0f) + 10;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06001578, 0.0f, 0.0f, sp34, 2, 0.0f);
    func_80A35310(this, func_80A384E8);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A384E8.s")

void func_80A387D0(EnGeldB* this, GlobalContext* globalCtx) {
    s16 sp36;
    Player* player;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600A814, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600A814), 1, 0.0f);
    player = PLAYER;
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA0, 1);
    sp36 = player->actor.shape.rot.y;
    if (Math_Sins(sp36 - this->actor.shape.rot.y) > 0.0f) {
        this->actor.speedXZ = -6.0f;
    } else if (Math_Sins(sp36 - this->actor.shape.rot.y) < 0.0f) {
        this->actor.speedXZ = 6.0f;
    } else {
        this->actor.speedXZ = Math_Rand_CenteredFloat(12.0f);
    }
    this->skelAnime.animPlaybackSpeed = -this->actor.speedXZ * 0.5f;
    this->unk_304 = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x3FFF;
    this->unk_300 = Math_Rand_ZeroOne() * 10.0f + 5.0f;
    this->unk_2EC = 13;
    func_80A35310(this, func_80A38960);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38960.s")

void func_80A3907C(EnGeldB* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06001E10, -4.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
    if ((this->actor.bgCheckFlags & 1) != 0) {
        this->unk_318 = 0;
        this->actor.speedXZ = -6.0f;
    } else {
        this->unk_318 = 1;
    }
    this->unk_2EC = 1;
    this->actor.flags &= ~1;
    Audio_PlayActorSound2(&this->actor, 0x399A);
    func_80A35310(this, &func_80A39120);
}

void func_80A39120(EnGeldB* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }
    if (this->actor.bgCheckFlags & 1) {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
        this->unk_318 = 0;
    }
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_80A35B8C(this);
    } else if ((s32)this->skelAnime.animCurrentFrame == 0xA) {
        Audio_PlayActorSound2(&this->actor, 0x387A);
        func_800F5B58();
    }
}

void func_80A391D8(EnGeldB* this, GlobalContext* globalCtx) {
    if ((this->unk_2EC == 5) && (this->unk_2FA != 0)) {
        this->unk_4DC.y = Math_Sins(this->unk_2FA * 0x1068) * 8920.0f;
    } else if (this->unk_2EC != 15) {
        if ((this->unk_2EC != 7) && (this->unk_2EC != 12)) {
            Math_SmoothScaleMaxMinS(&this->unk_4DC.y, this->actor.yawTowardsLink - this->actor.shape.rot.y, 1, 0x1F4,
                                    0);
            this->unk_4DC.y = CLAMP(this->unk_4DC.y, -0x256F, 0x256F);
        } else {
            this->unk_4DC.y = 0;
        }
    }
}

void func_80A392D8(EnGeldB* this, GlobalContext* globalCtx) {
    s32 pad;
    EnItem00* sp28;

    if (this->colliderBlock.base.acFlags & 0x80) {
        this->colliderBlock.base.acFlags &= ~0x80;
        this->colliderBody.base.acFlags &= ~2;
    } else if ((this->colliderBody.base.acFlags & 2) && (this->unk_2EC >= 5) && (this->unk_312 < 2)) {
        this->colliderBody.base.acFlags &= ~2;
        if (this->actor.colChkInfo.damageEffect != 6) {
            this->unk_2FE = this->actor.colChkInfo.damageEffect;
            func_80035650(&this->actor, &this->colliderBody.body, 1);
            func_800F8A44(&this->actor.projectedPos, 0x39C6);
            if ((this->actor.colChkInfo.damageEffect == 1) || (this->actor.colChkInfo.damageEffect == 0xF)) {
                if (this->unk_2EC != 0xF) {
                    func_8003426C(&this->actor, 0, 0x78, 0, 0x50);
                    Actor_ApplyDamage(&this->actor);
                    func_80A37EF0(this);
                }
            } else {
                func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    if (this->unk_314 != 0) {
                        sp28 = Item_DropCollectible(globalCtx, &this->actor.posRot.pos, this->unk_314 | 0x11);
                        if (sp28 != NULL) {
                            sp28->actor.posRot.rot.y =
                                Math_Vec3f_Yaw(&sp28->actor.posRot.pos, &this->actor.initPosRot.pos);
                            sp28->actor.speedXZ = 6.0f;
                            Audio_PlaySoundGeneral(0x4807, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        }
                    }
                    func_80A3907C(this);
                    func_80032C7C(globalCtx, &this->actor);
                } else {
                    func_80A38054(this);
                }
            }
        }
    }
}

void EnGeldB_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGeldB* this = THIS;

    func_80A392D8(this, globalCtx);
    if (this->actor.colChkInfo.damageEffect != 6) {
        Actor_MoveForward(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 15.0f, 30.0f, 60.0f, 0x1D);
        this->actionFunc(this, globalCtx);
        this->actor.posRot2.pos = this->actor.posRot.pos;
        this->actor.posRot2.pos.y += 40.0f;
        func_80A391D8(this, globalCtx);
    }
    Collider_CylinderUpdate(&this->actor, &this->colliderBody);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    if ((this->unk_2EC >= 5) && (this->unk_312 < 2) &&
        ((this->actor.dmgEffectTimer == 0) || !(this->actor.dmgEffectParams & 0x4000))) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderBody.base);
    }
    if ((this->unk_2EC == 6) && (this->skelAnime.animCurrentFrame == 0.0f)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderBlock.base);
    }
    if (this->unk_310 > 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderSword.base);
    }
    if (this->unk_31A == 0) {
        if ((Math_Rand_ZeroOne() < 0.1f) && ((globalCtx->gameplayFrames & 3) == 0)) {
            this->unk_31A++;
        }
    } else {
        this->unk_31A = (this->unk_31A + 1) & 3;
    }
}

s32 func_80A39688(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGeldB* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_geldB.c", 2507);
    if (limbIndex == 3) {
        rot->z += this->unk_4DC.x;
        rot->x += this->unk_4DC.y;
        rot->y += this->unk_4DC.z;
    } else if (limbIndex == 6) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 80, 60, 10, 255);
    } else if ((limbIndex == 11) || (limbIndex == 16)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 140, 170, 230, 255);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
    } else {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 140, 0, 0, 255);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_geldB.c", 2529);
    return false;
}

void func_80A39824(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f D_80A3A110 = { 1100.0f, -700.0f, 0.0f };
    static Vec3f D_80A3A11C = { 300.0f, 0.0f, 0.0f };
    static Vec3f D_80A3A128 = { 0.0f, -3000.0f, 0.0f };
    static Vec3f D_80A3A134 = { 400.0f, 0.0f, 0.0f };
    static Vec3f D_80A3A140 = { 1600.0f, -4000.0f, 0.0f };
    static Vec3f D_80A3A14C = { -3000.0f, -2000.0f, 1300.0f };
    static Vec3f D_80A3A158 = { -3000.0f, -2000.0f, -1300.0f };
    static Vec3f D_80A3A164 = { 1000.0f, 1000.0f, 0.0f };
    static Vec3f D_80A3A170 = { 0.0f, 0.0f, 0.0f };

    Vec3f sp5C;
    Vec3f sp50;
    EnGeldB* this = THIS;
    s32 phi_s1 = -1;

    if (limbIndex == 11) {
        Matrix_MultVec3f(&D_80A3A140, &this->colliderSword.dim.quad[1]);
        Matrix_MultVec3f(&D_80A3A14C, &this->colliderSword.dim.quad[0]);
        Matrix_MultVec3f(&D_80A3A158, &this->colliderSword.dim.quad[3]);
        Matrix_MultVec3f(&D_80A3A164, &this->colliderSword.dim.quad[2]);
        func_80062734(&this->colliderSword, &this->colliderSword.dim.quad[0], &this->colliderSword.dim.quad[1],
                      &this->colliderSword.dim.quad[2], &this->colliderSword.dim.quad[3]);
        Matrix_MultVec3f(&D_80A3A128, &sp5C);
        Matrix_MultVec3f(&D_80A3A134, &sp50);

        if ((this->unk_310 < 0) || ((this->unk_2EC != 7) && (this->unk_2EC != 12))) {
            EffectBlure_AddSpace(Effect_GetByIndex(this->blureIdx));
            this->unk_310 = 0;
        } else if (this->unk_310 > 0) {
            EffectBlure_AddVertex(Effect_GetByIndex(this->blureIdx), &sp5C, &sp50);
        }
    } else {
        func_8002BDB0(&this->actor, limbIndex, 19, &D_80A3A11C, 22, &D_80A3A11C);
    }
    if (limbIndex == 19) {
        Matrix_MultVec3f(&D_80A3A11C, &this->unk_4D0);
    } else if (limbIndex == 22) {
        Matrix_MultVec3f(&D_80A3A11C, &this->unk_4C4);
    }
    if (this->unk_2FC != 0) {
        switch (limbIndex) {
            case 3:
                phi_s1 = 0;
                break;
            case 16:
                phi_s1 = 1;
                break;
            case 11:
                phi_s1 = 2;
                break;
            case 12:
                phi_s1 = 3;
                break;
            case 7:
                phi_s1 = 4;
                break;
            case 2:
                phi_s1 = 5;
                break;
            case 23:
                phi_s1 = 6;
                break;
            case 19:
                phi_s1 = 7;
                break;
            case 22:
                phi_s1 = 8;
                break;
            default:
                break;
        }
        if (phi_s1 >= 0) {
            Vec3f sp3C;

            Matrix_MultVec3f(&D_80A3A170, &sp3C);
            this->unk_14C[phi_s1].x = sp3C.x;
            this->unk_14C[phi_s1].y = sp3C.y;
            this->unk_14C[phi_s1].z = sp3C.z;
        }
    }
}

void EnGeldB_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f D_80A3A17C[3] = {
        { -3000.0f, 6000.0f, 1600.0f },
        { -3000.0f, 0.0f, 1600.0f },
        { 3000.0f, 6000.0f, 1600.0f },
    };
    static Vec3f D_80A3A1A0[3] = {
        { -3000.0f, 0.0f, 1600.0f },
        { 3000.0f, 0.0f, 1600.0f },
        { 3000.0f, 6000.0f, 1600.0f },
    };
    static Gfx* D_80A3A1C4[4] = { 0x06005FE8, 0x060065A8, 0x06006D28, 0x060065A8 };
    s32 pad;
    EnGeldB* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_geldB.c", 2672);
    if (1) {}

    if ((this->unk_312 >= 2) && SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->unk_312 == 2) {
            SkelAnime_ChangeAnim(&this->skelAnime, &D_06000F5C, 0.5f, 0.0f, 12.0f, 3, 4.0f);
            this->unk_312++;
            thisx->posRot.rot.y = thisx->shape.rot.y = thisx->yawTowardsLink;
        } else {
            this->unk_300--;
            if (this->unk_300 == 0) {
                if ((gSaveContext.inventory.items[gItemSlots[10]] == 0xFF) ||
                    (gSaveContext.inventory.items[gItemSlots[11]] == 0xFF)) {
                    globalCtx->nextEntranceIndex = 0x1A5;
                } else if (gSaveContext.eventChkInf[12] & 0x80) {
                    globalCtx->nextEntranceIndex = 0x5F8;
                } else {
                    globalCtx->nextEntranceIndex = 0x3B4;
                }
                globalCtx->fadeTransition = 0x26;
                globalCtx->sceneLoadFlag = 0x14;
            }
        }
    }

    if ((this->unk_2EC != 0) || (this->unk_318 == 0)) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A3A1C4[this->unk_31A]));
        SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                         func_80A39688, func_80A39824, this);
        if (this->unk_2EC == 6) {
            s32 i;
            Vec3f sp90[3];
            Vec3f sp6C[3];

            for (i = 0; i < 3; i++) {
                Matrix_MultVec3f(&D_80A3A17C[i], &sp90[i]);
                Matrix_MultVec3f(&D_80A3A1A0[i], &sp6C[i]);
            }
            func_800627A0(&this->colliderBlock, 0, &sp90[0], &sp90[1], &sp90[2]);
            func_800627A0(&this->colliderBlock, 1, &sp6C[0], &sp6C[1], &sp6C[2]);
        }

        if (this->unk_2FC != 0) {
            thisx->dmgEffectTimer++;
            this->unk_2FC--;
            if (!(this->unk_2FC & 3)) {
                s32 temp = this->unk_2FC >> 2;

                EffectSsEnIce_SpawnFlyingVec3s(globalCtx, thisx, &this->unk_14C[temp], 0x96, 0x96, 0x96, 0xFA, 0xEB,
                                               0xF5, 0xFF, 1.5f);
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_geldB.c", 2744);
}

#ifdef NON_MATCHING
// regalloc
s32 func_80A39E2C(GlobalContext* globalCtx, EnGeldB* this) {
    Actor* actor;
    s16 sp1A;
    s16 pad18;
    f32 temp;

    actor = func_80033780(globalCtx, &this->actor, 800.0f);

    if (actor != NULL) {
        sp1A = func_8002DA78(&this->actor, actor) - this->actor.shape.rot.y;
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        temp = func_8002DB6C(&this->actor, &actor->posRot.pos);
        if ((ABS(sp1A) < 0x2EE0) && (sqrt(temp) < 600.0)) {
            if (actor->id == ACTOR_ARMS_HOOK) {
                func_80A38290(this);
            } else {
                func_80A38430(this);
            }
        } else {
            this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if ((ABS(sp1A) < 0x2000) || (ABS(sp1A) > 0x5FFF)) {
                func_80A387D0(this, globalCtx);
                this->actor.speedXZ *= 3.0f;
            } else if (ABS(sp1A) < 0x5FFF) {
                func_80A37D70(this);
            }
        }
        return true;
    }
    return false;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39E2C.s")
#endif
