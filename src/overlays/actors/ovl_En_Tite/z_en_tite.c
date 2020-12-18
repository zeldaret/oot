/*
 * File: z_en_tite.c
 * Overlay: ovl_En_Tite
 * Description: Tektite
 */

#include "z_en_tite.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Encount1/z_en_encount1.h"

#define FLAGS 0x00000015

#define IS_BLUE (this->actor.params == -2)

#define THIS ((EnTite*)thisx)

void EnTite_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B1ABBC(Actor* thisx, GlobalContext* globalCtx);
s32 func_80042244(GlobalContext* globalCtx, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                  WaterBox** outWaterBox);
void func_80B1A76C(Actor* thisx);
void func_80B1A670(EnTite* this, GlobalContext* globalCtx);
void func_80B1AA94(EnTite* this, GlobalContext* globalCtx);
void func_80B1A888(EnTite* this, GlobalContext* globalCtx);
void func_80B1A2A0(EnTite* this, GlobalContext* globalCtx);
void func_80B18CC4(EnTite* this, GlobalContext* globalCtx);
void func_80B1A6E4(EnTite* this, GlobalContext* globalCtx);
void func_80B19E94(EnTite* this, GlobalContext* globalCtx);
void func_80B18E7C(EnTite* this, GlobalContext* globalCtx);
void func_80B19918(EnTite* this, GlobalContext* globalCtx);
void func_80B195C0(EnTite* this, GlobalContext* globalCtx);
void func_80B1AA44(Actor* thisx);
void func_80B1A63C(Actor* thisx);
void func_80B18E08(Actor* thisx);
void func_80B1985C(Actor* thisx);
void func_80B19524(Actor* thisx);
void func_80B18C5C(Actor* thisx);
// EffectSsGRipple_Spawn
// void EffectSsGRipple_Spawn(GlobalContext *globalCtxt, Vec3f *vec, s32 arg2, s32 arg3, s32 arg4);

extern SkeletonHeader D_06003A20;
extern AnimationHeader D_060012E4;
extern AnimationHeader D_06000A14;
extern AnimationHeader D_0600083C;
extern AnimationHeader D_06000C70;
extern u32 D_06001300;
extern u32 D_06001700;
extern u32 D_06001900;
extern u32 D_06001B00;
extern u32 D_06001F00;
extern u32 D_06002100;

const ActorInit En_Tite_InitVars = {
    ACTOR_EN_TITE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_TITE,
    sizeof(EnTite),
    (ActorFunc)EnTite_Init,
    (ActorFunc)EnTite_Destroy,
    (ActorFunc)EnTite_Update,
    (ActorFunc)EnTite_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
        { 0, { { 0, 1500, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK6, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static DamageTable sDamageTable[] = {
    0x10, 0x02, 0x01, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0x02, 0xF4, 0x02, 0x02, 0x02,
    0x02, 0xE0, 0xF3, 0xE0, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 69, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(minVelocityY, 65496, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 64536, ICHAIN_STOP),
};

AnimationHeader* D_80B1B634[] = {
    0x0600083C, 0x060004F8, 0x0600069C, NULL, NULL, NULL,
};

Vec3f D_80B1B64C = { 2800.0f, -200.0f, 0.0f };

Vec3f D_80B1B658[] = {
    { 20.0f, 20.0f, 0.0f },   { 10.0f, 40.0f, 10.0f },   { -10.0f, 40.0f, 10.0f }, { -20.0f, 20.0f, 0.0f },
    { 10.0f, 40.0f, -10.0f }, { -10.0f, 40.0f, -10.0f }, { 0.0f, 20.0f, -20.0f },  { 10.0f, 0.0f, 10.0f },
    { 10.0f, 0.0f, -10.0f },  { 0.0f, 20.0f, 20.0f },    { -10.0f, 0.0f, 10.0f },  { -10.0f, 0.0f, -10.0f },
};

void EnTite_SetupAction(EnTite* this, EnTiteActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnTite_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnTite* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    thisx->unk_1F = 3;
    Actor_SetScale(thisx, 0.01f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06003A20, &D_060012E4, this->limbDrawTable,
                   this->transitionDrawTable, 25);
    ActorShape_Init(&thisx->shape, -200.0f, ActorShadow_DrawFunc_Circle, 70.0f);
    this->unk2BD = 0;
    thisx->colChkInfo.damageTable = sDamageTable;
    this->unk2E0 = 0; // is this a u16???
    this->unk2C4.unk_10 = 0;
    thisx->posRot2.pos = thisx->posRot.pos;
    thisx->posRot2.pos.y += 20.0f;
    thisx->colChkInfo.health = 2;
    thisx->colChkInfo.mass = 0xFE;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, thisx, &sJntSphInit, &this->colliderItem);
    this->unk2DC = 0x1D;
    if (IS_BLUE) {
        this->unk2DC |= 0x40;
        thisx->colChkInfo.health = 4;
        thisx->naviEnemyId += 1;
    }
    func_80B18C5C(thisx);
}

void EnTite_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnTite* this = THIS;
    EnEncount1* spawner; // I think this is En_Encount1

    if (thisx->parent != NULL) {
        spawner = (EnEncount1*)thisx->parent;
        if (spawner->curNumSpawn > 0) {
            spawner->curNumSpawn--;
        }
        osSyncPrintf("\n\n");
        // "Number of simultaneous occourances"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 同時発生数 ☆☆☆☆☆%d\n" VT_RST, spawner->curNumSpawn);
        osSyncPrintf("\n\n");
    }
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

// setup idle? Maybe?
void func_80B18C5C(Actor* thisx) {
    EnTite* this = THIS;

    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060012E4, 4.0f);
    this->unk2BC = 6;
    this->unk2E0 = Math_Rand_S16Offset(15, 30);
    thisx->speedXZ = 0.0f;
    EnTite_SetupAction(this, func_80B18CC4);
}

// idle action function (this is the action func if i'm far away from tektite, also seems to be before I uncull them)
// Sometimes switches to this at the end of some jumping, even if I am in range
void func_80B18CC4(EnTite* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if (IS_BLUE) {
        if (this->actor.bgCheckFlags & 0x20) {
            this->actor.gravity = 0.0f;
            Math_SmoothScaleMaxMinF(&this->actor.velocity.y, 0.0f, 1.0f, 2.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.posRot.pos.y + this->actor.waterY, 1.0f,
                                    2.0f, 0.0f);
        } else {
            this->actor.gravity = -1.0f;
        }
    }
    if ((this->actor.bgCheckFlags & 3) && (this->actor.velocity.y <= 0.0f)) {
        this->actor.velocity.y = 0.0f;
    }
    if (this->unk2E0 > 0) {
        this->unk2E0--;
    } else if ((this->actor.xzDistFromLink < 300.0f) && (this->actor.yDistFromLink <= 80.0f)) {
        func_80B19524(&this->actor);
    }
}

void func_80B18E08(Actor* thisx) {
    EnTite* this = THIS;

    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600083C);
    this->unk2BC = 9;
    this->unk2E0 = 0;
    this->unk2E2 = Math_Rand_S16Offset(1, 3);
    thisx->speedXZ = 0.0f;
    thisx->velocity.y = 0.0f;
    thisx->posRot.rot.y = thisx->shape.rot.y;
    EnTite_SetupAction(this, func_80B18E7C);
}

// EnTite_Attack
void func_80B18E7C(EnTite* this, GlobalContext* globalCtx) {
    s16 temp_v1_3;
    s32 sp50;
    Vec3f sp44;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        sp50 = this->unk2E0;
        switch (this->unk2E0) {
            case 0:
                this->unk2E0 = (u16)1;
                if ((!IS_BLUE) || (!(this->actor.bgCheckFlags & 0x20))) {
                    if (-32000.0f < this->actor.groundY) {
                        this->actor.posRot.pos.y = this->actor.groundY;
                    }
                    Audio_PlayActorSound2(&this->actor, 0x386C);
                } else {
                    this->actor.posRot.pos.y += this->actor.waterY;
                    Audio_PlayActorSound2(&this->actor, 0x388E);
                }
                this->actor.velocity.y = 8.0f;
                this->actor.gravity = -1.0f;
                this->actor.speedXZ = 4.0f;
                break;
            case 1:
                this->actor.flags = (u32)(this->actor.flags | 0x1000000);
                if ((this->actor.bgCheckFlags & 3) || (IS_BLUE && (this->actor.bgCheckFlags & 0x20))) {
                    if (this->actor.velocity.y <= 0.0f) {
                        this->unk2E0 = 2;
                        if ((!IS_BLUE) || (!(this->actor.bgCheckFlags & 0x20))) {
                            if (-32000.0f < this->actor.groundY) {
                                this->actor.posRot.pos.y = this->actor.groundY;
                            }
                            this->actor.velocity.y = 0.0f;
                            this->actor.speedXZ = 0.0f;
                        } else {
                            this->actor.gravity = 0.0f;
                            if (this->actor.velocity.y < -8.0f) {
                                sp44 = this->actor.posRot.pos;
                                sp44.y += this->actor.waterY;
                                this->unk2E0++;
                                this->actor.velocity.y *= 0.75f;
                                sp50 = this->unk2E0;
                                EffectSsGRipple_Spawn(globalCtx, &sp44, 0, 0x1F4, 0);
                            } else {
                                this->actor.velocity.y = 0.0f;
                                this->actor.speedXZ = 0.0f;
                            }
                        }
                        this->actor.posRot.rot.y = this->actor.shape.rot.y;
                    }
                }
                break;
            case 2:
                if (this->unk2E2 != 0) {
                    this->unk2E2--;
                    this->unk2E0 = 0;
                    this->collider.base.atFlags &= 0xFFFD;
                } else {
                    func_80B19524(&this->actor);
                }
                break;
            case 3:
                if (0.0f == this->actor.waterY) {
                    this->unk2E0 = 2;
                    sp50 = this->unk2E0;
                }
                break;
        }
        if (sp50 != this->unk2E0) {
            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, D_80B1B634[this->unk2E0]);
        }
    }

    switch (this->unk2E0) {
        case 0:
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, (u16)1, (u16)0x3E8, 0);
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
            temp_v1_3 = this->actor.yawTowardsLink - this->actor.shape.rot.y;
            if ((300.0f < this->actor.xzDistFromLink) && (80.0f < this->actor.yDistFromLink)) {
                func_80B18C5C(&this->actor);
            } else if (ABS(temp_v1_3) >= 0x2328) {
                func_80B19524(&this->actor);
            }
            break;
        case 1:
            if (5.0f <= this->actor.velocity.y) {
                if (this->actor.bgCheckFlags & 1) {
                    func_800355B8(globalCtx, &this->footPosFrontLeft);
                    func_800355B8(globalCtx, &this->footPosFrontRight);
                    func_800355B8(globalCtx, &this->footPosBackRight);
                    func_800355B8(globalCtx, &this->footPosBackLeft);
                }
            }
            if ((!(this->collider.base.atFlags & 2)) && (this->actor.flags & 0x40)) {
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            } else {
                Player* player = PLAYER;
                this->collider.base.atFlags = (this->collider.base.atFlags & 0xFFFD);
                SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060012E4, 4.0f);
                this->actor.speedXZ = -6.0f;
                this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                if (&player->actor == this->collider.base.at) {
                    if (!(this->collider.base.atFlags & 4)) {
                        Audio_PlayActorSound2(&player->actor, 0x83E);
                    }
                }
                EnTite_SetupAction(this, &func_80B19E94);
            }
            break;
        case 2:
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1, 0x5DC, 0);
            break;
        case 3:
            Math_SmoothScaleMaxMinF(&this->actor.velocity.y, 0.0f, 1.0f, 2.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.posRot.pos.y + this->actor.waterY, 1.0f,
                                    2.0f, 0.0f);
            break;
    }
    if (this->actor.bgCheckFlags & 2) {
        if (!(this->actor.bgCheckFlags & 0x20)) {
            func_80033480(globalCtx, &this->footPosFrontLeft, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosFrontRight, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosBackRight, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosBackLeft, 1.0f, 2, 0x50, 0xF, 1);
        }
    }
    if (IS_BLUE) {
        if (this->actor.bgCheckFlags & 0x40) {
            this->actor.speedXZ = 0.0f;
            if (this->unk2E0 == 3) {
                Audio_PlayActorSound2(&this->actor, (u16)0x388AU);
            } else {
                Audio_PlayActorSound2(&this->actor, (u16)0x388FU);
            }
            this->actor.bgCheckFlags = (u16)(this->actor.bgCheckFlags & 0xFFBF);
        } else if (this->actor.bgCheckFlags & 2) {
            Audio_PlayActorSound2(&this->actor, (u16)0x387BU);
        }
    } else {
        if (this->actor.bgCheckFlags & 2) {
            this->actor.speedXZ = 0.0f;
            Audio_PlayActorSound2(&this->actor, 0x387BU);
        }
    }
}

void func_80B19524(Actor* thisx) {
    EnTite* this = THIS;

    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000A14);
    this->unk2BC = 0xA;
    if ((thisx->bgCheckFlags & 3) || (IS_BLUE && (thisx->bgCheckFlags & 0x20))) {
        if (thisx->velocity.y <= 0.0f) {
            thisx->gravity = 0.0f;
            thisx->velocity.y = 0.0f;
            thisx->speedXZ = 0.0f;
        }
    }
    EnTite_SetupAction(this, &func_80B195C0);
}

// When I come in range of the tektite on land. Turning on the spot?
void func_80B195C0(EnTite* this, GlobalContext* globalCtx) {
    s16 temp_v1;
    s16 phi_a1;

    if (((this->actor.bgCheckFlags & 3) || (IS_BLUE && (this->actor.bgCheckFlags & 0x20))) &&
        (this->actor.velocity.y <= 0.0f)) {
        this->actor.gravity = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.speedXZ = 0.0f;
    }
    if (IS_BLUE && (this->actor.bgCheckFlags & 0x20)) {
        this->actor.posRot.pos.y += this->actor.waterY;
    }
    temp_v1 = func_8002DA78(&this->actor, globalCtx->actorCtx.actorList[2].first) - this->actor.posRot.rot.y;
    if (temp_v1 > 0) {
        phi_a1 = (temp_v1 / 42.0f) + 10.0f;
        this->actor.posRot.rot.y += (phi_a1 * 2);
    } else {
        phi_a1 = (temp_v1 / 42.0f) - 10.0f;
        this->actor.posRot.rot.y += (phi_a1 * 2);
    }
    if (temp_v1 > 0) {
        this->skelAnime.animPlaybackSpeed = phi_a1 * 0.01f;
    } else {
        this->skelAnime.animPlaybackSpeed = phi_a1 * 0.01f;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (((s16)this->skelAnime.animCurrentFrame & 7) == 0) {
        if (IS_BLUE && (this->actor.bgCheckFlags & 0x20)) {
            Audio_PlayActorSound2(&this->actor, 0x3835);
        } else {
            Audio_PlayActorSound2(&this->actor, 0x386F);
        }
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if ((300.0f < this->actor.xzDistFromLink) && (80.0f < this->actor.yDistFromLink)) {
        func_80B18C5C(&this->actor);
    } else if (func_8002E084(&this->actor, 0xE38) != 0) {
        if ((this->actor.xzDistFromLink <= 180.0f) && (this->actor.yDistFromLink <= 80.0f)) {
            func_80B18E08(&this->actor);
        } else {
            func_80B1985C(&this->actor);
        }
    }
}

void func_80B1985C(Actor* thisx) {
    EnTite* this = THIS;
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000C70);
    this->unk2BC = 0xC;
    thisx->velocity.y = 10.0f;
    thisx->gravity = -1.0f;
    thisx->speedXZ = 4.0f;
    this->unk2E2 = Math_Rand_S16Offset(1, 3);
    if (IS_BLUE && (thisx->bgCheckFlags & 0x20)) {
        Audio_PlayActorSound2(thisx, 0x388E);
    } else {
        Audio_PlayActorSound2(thisx, 0x386C);
    }
    EnTite_SetupAction(this, &func_80B19918);
}

// Generally in the mode where he's jumping at link.
void func_80B19918(EnTite* this, GlobalContext* globalCtx) {
    Vec3f sp3C;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.1f, 1.0f, 0.0f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.bgCheckFlags & 0x42) {
        if (!(this->actor.bgCheckFlags & 0x40)) {
            func_80033480(globalCtx, &this->footPosFrontLeft, 1.0f, 2, 0x50, 0xF, 1); // spawn dust
            func_80033480(globalCtx, &this->footPosFrontRight, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosBackRight, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosBackLeft, 1.0f, 2, 0x50, 0xF, 1);
            Audio_PlayActorSound2(&this->actor, 0x387B);
        } else {
            Audio_PlayActorSound2(&this->actor, 0x388A);
        }
    }

    if ((this->actor.bgCheckFlags & 2) || (IS_BLUE && (this->actor.bgCheckFlags & 0x40))) {
        if (this->unk2E2 != 0) {
            this->unk2E2--;
        } else {
            func_80B18C5C(&this->actor);
        }
    }

    if (((this->actor.bgCheckFlags & 3) || (IS_BLUE && (this->actor.bgCheckFlags & 0x60))) &&
        (this->actor.velocity.y <= 0.0f)) {
        this->actor.speedXZ = 0.0f;
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA0, 0);
        this->actor.posRot.rot.y = (s16)this->actor.shape.rot.y;
        if ((!IS_BLUE) || (!(this->actor.bgCheckFlags & 0x20))) {
            if (this->actor.groundY > -32000.0f) {
                this->actor.posRot.pos.y = this->actor.groundY;
            }
        } else {
            if (this->actor.bgCheckFlags & 0x40) {
                sp3C = this->actor.posRot.pos;
                this->actor.bgCheckFlags &= ~0x40;
                sp3C.y += this->actor.waterY;
                this->actor.gravity = 0.0f;
                this->actor.velocity.y *= 0.75f;
                EffectSsGRipple_Spawn(globalCtx, &sp3C, 0, 0x1F4, 0);
                return;
            }
            Math_SmoothScaleMaxMinF(&this->actor.velocity.y, 0.0f, 1.0f, 2.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.posRot.pos.y + this->actor.waterY, 1.0f,
                                    2.0f, 0.0f);
            if (0.0f != this->actor.waterY) {
                return;
            }
        }
        if (((this->actor.xzDistFromLink > 300.0f) && (this->actor.yDistFromLink > 80.0f))) {
            func_80B18C5C(&this->actor);
        } else {
            if (((this->actor.xzDistFromLink <= 180.0f)) && ((this->actor.yDistFromLink <= 80.0f))) {
                if (this->unk2E2 <= 0) {
                    func_80B19524(&this->actor);
                    return;
                }
                this->actor.velocity.y = 10.0f;
                this->actor.speedXZ = 4.0f;
                this->actor.flags |= 0x1000000;
                this->actor.gravity = -1.0f;
                if (IS_BLUE && (this->actor.bgCheckFlags & 0x20)) {
                    Audio_PlayActorSound2(&this->actor, (u16)0x388EU);
                } else {
                    Audio_PlayActorSound2(&this->actor, (u16)0x386CU);
                }
            } else {
                this->actor.velocity.y = 10.0f;
                this->actor.speedXZ = 4.0f;
                this->actor.flags |= 0x1000000;
                this->actor.gravity = -1.0f;
                if (IS_BLUE && (this->actor.bgCheckFlags & 0x20)) {
                    Audio_PlayActorSound2(&this->actor, (u16)0x388EU);
                } else {
                    Audio_PlayActorSound2(&this->actor, (u16)0x386CU);
                }
            }
        }
    } else {
        this->actor.flags |= 0x1000000;
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, (u16)1, (u16)0x3E8, 0);
        if (6.0f <= this->actor.velocity.y) {
            if (this->actor.bgCheckFlags & 1) {
                func_800355B8(globalCtx, &this->footPosFrontLeft);
                func_800355B8(globalCtx, &this->footPosFrontRight);
                func_800355B8(globalCtx, &this->footPosBackRight);
                func_800355B8(globalCtx, &this->footPosBackLeft);
            }
        }
    }
}

void func_80B19E28(Actor* thisx) {
    EnTite* this = THIS;

    this->unk2BC = 3;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060012E4, 4.0f);
    thisx->speedXZ = -6.0f;
    thisx->posRot.rot.y = thisx->yawTowardsLink;
    thisx->gravity = -1.0f;
    EnTite_SetupAction(this, func_80B19E94);
}

// Tektite hits me, then slides back on landing
// OR, I hit tektite in mid air, then it lands and slides back on landing
void func_80B19E94(EnTite* this, GlobalContext* globalCtx) {
    s16 temp;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if (((this->actor.bgCheckFlags & 3) || (IS_BLUE && (this->actor.bgCheckFlags & 0x20))) &&
        (this->actor.velocity.y <= 0.0f)) {
        if ((!IS_BLUE) || (!(this->actor.bgCheckFlags & 0x20))) {
            if (this->actor.groundY > -32000.0f) {
                this->actor.posRot.pos.y = this->actor.groundY;
            }
        } else {
            this->actor.velocity.y = 0.0f;
            this->actor.gravity = 0.0f;
            this->actor.posRot.pos.y += this->actor.waterY;
        }
    }

    if (this->actor.bgCheckFlags & 0x42) {
        if (!(this->actor.bgCheckFlags & 0x40)) {
            func_80033480(globalCtx, &this->footPosFrontLeft, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosFrontRight, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosBackRight, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosBackLeft, 1.0f, 2, 0x50, 0xF, 1);
            Audio_PlayActorSound2(&this->actor, 0x387B);
        } else {
            this->actor.bgCheckFlags = (this->actor.bgCheckFlags & 0xFFBF);
            Audio_PlayActorSound2(&this->actor, 0x388F);
        }
    }
    temp = (this->actor.yawTowardsLink - this->actor.shape.rot.y);
    if ((this->actor.speedXZ == 0.0f) &&
        ((this->actor.bgCheckFlags & 1) || (IS_BLUE && (this->actor.bgCheckFlags & 0x20)))) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        this->collider.base.atFlags &= ~0x2;
        if ((300.0f < this->actor.xzDistFromLink) && (80.0f < this->actor.yDistFromLink) &&
            (ABS(this->actor.shape.rot.x) < 0xFA0) && (ABS(this->actor.shape.rot.z) < 0xFA0) &&
            ((this->actor.bgCheckFlags & 1) || (IS_BLUE && (this->actor.bgCheckFlags & 0x20)))) {
            func_80B18C5C(&this->actor);
        } else {
            if ((this->actor.xzDistFromLink < 180.0f) && (this->actor.yDistFromLink <= 80.0f) && (ABS(temp) < 0x1771)) {
                func_80B18E08(&this->actor);
            } else {
                func_80B1985C(&this->actor);
            }
        }
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void func_80B1A1EC(Actor* thisx) {
    EnTite* this = THIS;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_060012E4, 0.0f, 0.0f,
                         (f32)SkelAnime_GetFrameCount(&D_060012E4.genericHeader), 0, 4.0f);
    this->unk2BC = 7;
    thisx->speedXZ = -6.0f;
    thisx->posRot.rot.y = thisx->yawTowardsLink;
    if (this->unk2E4 == 0xF) {
        this->unk2E3 = 0x30;
    }
    Audio_PlayActorSound2(thisx, 0x389E);
    EnTite_SetupAction(this, func_80B1A2A0);
}

// paralyse?
void func_80B1A2A0(EnTite* this, GlobalContext* globalCtx) {
    s16 temp;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if (((this->actor.bgCheckFlags & 3) || (IS_BLUE && (this->actor.bgCheckFlags & 0x20))) &&
        (this->actor.velocity.y <= 0.0f)) {
        if (((!IS_BLUE) || (!(this->actor.bgCheckFlags & 0x20)))) {
            if (this->actor.groundY > -32000.0f) {
                this->actor.posRot.pos.y = this->actor.groundY;
            }
        } else {
            this->actor.velocity.y = 0.0f;
            this->actor.gravity = 0.0f;
            this->actor.posRot.pos.y += this->actor.waterY;
        }
    }

    if (this->actor.bgCheckFlags & 0x42) {
        if (!(this->actor.bgCheckFlags & 0x40)) {
            func_80033480(globalCtx, &this->footPosFrontLeft, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosFrontRight, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosBackRight, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->footPosBackLeft, 1.0f, 2, 0x50, 0xF, 1);
            Audio_PlayActorSound2(&this->actor, 0x387B);
        } else {
            this->actor.bgCheckFlags = (this->actor.bgCheckFlags & 0xFFBF);
            Audio_PlayActorSound2(&this->actor, 0x388F);
        }
    }
    temp = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if (((this->actor.dmgEffectTimer == 0) && (this->actor.speedXZ == 0.0f)) &&
        ((this->actor.bgCheckFlags & 1) || (IS_BLUE && (this->actor.bgCheckFlags & 0x20)))) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (this->actor.colChkInfo.health == 0) {
            func_80B1A63C(&this->actor);
        } else {
            if (this->unk2BD == 2) {
                func_80B1AA44(&this->actor);
            } else if (((300.0f < this->actor.xzDistFromLink) && (80.0f < this->actor.yDistFromLink) &&
                        (ABS(this->actor.shape.rot.x) < 0xFA0) && (ABS(this->actor.shape.rot.z) < 0xFA0)) &&
                       ((this->actor.bgCheckFlags & 1) ||
                        (IS_BLUE && (this->actor.bgCheckFlags & 0x20)))) {
                func_80B18C5C(&this->actor);
            } else {
                if ((this->actor.xzDistFromLink < 180.0f) && (this->actor.yDistFromLink <= 80.0f) &&
                    (ABS(temp) < 0x1771)) {
                    func_80B18E08(&this->actor);
                } else {
                    func_80B1985C(&this->actor);
                }
            }
        }
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void func_80B1A63C(Actor* thisx) {
    EnTite* this = THIS;

    this->unk2BC = 0;
    thisx->dmgEffectTimer = 0;
    thisx->speedXZ = 0.0f;
    EnTite_SetupAction(this, func_80B1A670);
}

// First frame of death?
void func_80B1A670(EnTite* this, GlobalContext* globalCtx) {
    EffectSsDeadSound_SpawnStationary(globalCtx, &this->actor.projectedPos, 0x386EU, 1, 1, 0x28);
    this->unk2BC = 5;
    EnTite_SetupAction(this, func_80B1A6E4);
    func_80032E24(&this->unk2C4, 0x18, globalCtx);
}

// Rest of death
void func_80B1A6E4(EnTite* this, GlobalContext* globalCtx) {
    if (func_8003305C(&this->actor, &this->unk2C4, globalCtx, (u16)(this->actor.params + 0xB)) != 0) {
        if (IS_BLUE) {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xE0);
        } else {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x40);
        }
        Actor_Kill(&this->actor);
    }
}

void func_80B1A76C(Actor* thisx) {
    EnTite* this = THIS;

    SkelAnime_ChangeAnimPlaybackRepeat(&this->skelAnime, &D_06000A14, 1.5f);
    Audio_PlayActorSound2(thisx, 0x3888);
    this->unk2BD = 2;
    this->unk2E0 = 500;
    thisx->speedXZ = 0.0f;
    thisx->gravity = -1.0f;
    this->unk2E2 = (Math_Rand_ZeroOne() * 50.0f);
    thisx->velocity.y = 11.0f;
    EnTite_SetupAction(this, func_80B1A888);
}

// as soon as hammer hits floor and starts to flip tektite upside down, up until he corrects himself
// EnTite_FlipOntoBack
void func_80B1A888(EnTite* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, 0x7FFF, 1, 0xFA0, 0);
    this->unk2E2--;
    if (this->unk2E2 == 0) {
        this->unk2E2 = Math_Rand_ZeroOne() * 30.0f;
        this->skelAnime.animCurrentFrame = Math_Rand_ZeroOne() * 5.0f;
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.bgCheckFlags & 3) {
        if (this->actor.bgCheckFlags & 2) {
            func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 20.0f, 0xB, 4.0f, 0, 0, 0);
            Audio_PlayActorSound2(&this->actor, 0x387B);
        }
        this->unk2E0--;
        if (this->unk2E0 == 0) {
            func_80B1AA44(&this->actor);
        }
    } else {
        if (this->actor.shape.unk_08 < 2800.0f) {
            this->actor.shape.unk_08 += 400.0f;
        }
    }
}

// setup flip (back upright?)
void func_80B1AA44(Actor* thisx) {
    EnTite* this = THIS;

    this->unk2BD = 1;
    this->unk2E0 = 1000;
    thisx->velocity.y = 13.0f;
    Audio_PlayActorSound2(thisx, 0x3888U);
    EnTite_SetupAction(this, func_80B1AA94);
}

// EnTite_FlipUpright
// flying tektite happens here. This action func happens when he's being flipped back upright
void func_80B1AA94(EnTite* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, 0, 1, 0xFA0, 0); // responspible for flipping tektite back up
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    // during flying tektite this branch is not taken
    if (this->actor.bgCheckFlags & 2) { // once he lands again???
        func_80033480(globalCtx, &this->footPosFrontLeft, 1.0f, 2, 0x50, 0xF, 1);
        func_80033480(globalCtx, &this->footPosFrontRight, 1.0f, 2, 0x50, 0xF, 1);
        func_80033480(globalCtx, &this->footPosBackRight, 1.0f, 2, 0x50, 0xF, 1);
        func_80033480(globalCtx, &this->footPosBackLeft, 1.0f, 2, 0x50, 0xF, 1);
        this->actor.shape.unk_08 = 0.0f;
        this->actor.posRot.pos.y = this->actor.groundY;
        Audio_PlayActorSound2(&this->actor, 0x387B);
        func_80B18C5C(&this->actor);
    }
}

void func_80B1ABBC(Actor* thisx, GlobalContext* globalCtx) {
    EnTite* this = THIS;

    if ((this->collider.base.acFlags & 2) && (this->unk2BC >= 6)) {
        this->collider.base.acFlags = (this->collider.base.acFlags & 0xFFFD);
        if (thisx->colChkInfo.damageEffect != 0xE) {
            this->unk2E4 = thisx->colChkInfo.damageEffect;
            func_80035650(thisx, &this->collider.list->body, 0);
            if ((thisx->colChkInfo.damageEffect == 1) || (thisx->colChkInfo.damageEffect == 0xF)) {
                if (this->unk2BC != 7) {
                    func_8003426C(thisx, 0, 0x78, 0, 0x50);
                    Actor_ApplyDamage(thisx);
                    func_80B1A1EC(thisx);
                }
            } else {
                if ((thisx->dmgEffectTimer == 0) || ((thisx->dmgEffectParams & 0x4000) == 0)) {
                    func_8003426C(thisx, 0x4000, 0xFF, 0, 8);
                    Actor_ApplyDamage(thisx);
                }
                if (thisx->colChkInfo.health == 0) {
                    func_80B1A63C(thisx);
                } else {
                    Audio_PlayActorSound2(thisx, 0x386D);
                    if (this->unk2BD != 2) {
                        func_80B19E28(thisx);
                    } else {
                        func_80B1AA44(thisx);
                    }
                }
            }
        }
    } else if ((thisx->colChkInfo.health != 0) && (globalCtx->actorCtx.unk_02 != 0) &&
               (thisx->xzDistFromLink <= 400.0f) && (thisx->bgCheckFlags & 1)) {
        if (this->unk2BD == 2) {
            func_80B1AA44(thisx);
        } else if ((this->unk2BC >= 6) || (!(this->unk2BC < 6))) {
            if (1) {}
            func_80B1A76C(thisx);
        }
    }
}

void EnTite_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnTite* this = THIS;
    char pad[0x4];
    CollisionPoly* floorPoly;
    WaterBox* waterBox;
    f32 waterSurfaceY;

    func_80B1ABBC(thisx, globalCtx);
    if (thisx->colChkInfo.damageEffect != 0xE) {
        this->actionFunc(this, globalCtx);
        Actor_MoveForward(thisx); // flying tektite happens in this function during the second function call within
        func_8002E4B4(globalCtx, thisx, 25.0f, 40.0f, 20.0f, this->unk2DC);
        if (IS_BLUE && (thisx->bgCheckFlags & 0x20)) {
            floorPoly = thisx->floorPoly;
            if ((((globalCtx->gameplayFrames % 8) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->footPosBackRight.x, this->footPosBackRight.z,
                               &waterSurfaceY, &waterBox)) &&
                (this->footPosBackRight.y <= waterSurfaceY)) {
                this->footPosBackRight.y = waterSurfaceY;
                // spawn water ripples
                EffectSsGRipple_Spawn(globalCtx, &this->footPosBackRight, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 2) % 8) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->footPosBackLeft.x, this->footPosBackLeft.z,
                               &waterSurfaceY, &waterBox)) &&
                (this->footPosBackLeft.y <= waterSurfaceY)) {
                this->footPosBackLeft.y = waterSurfaceY;
                EffectSsGRipple_Spawn(globalCtx, &this->footPosBackLeft, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 4) % 8) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->footPosFrontLeft.x, this->footPosFrontLeft.z,
                               &waterSurfaceY, &waterBox)) &&
                (this->footPosFrontLeft.y <= waterSurfaceY)) {
                this->footPosFrontLeft.y = waterSurfaceY;
                EffectSsGRipple_Spawn(globalCtx, &this->footPosFrontLeft, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 1) % 8) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->footPosFrontRight.x, this->footPosFrontRight.z,
                               &waterSurfaceY, &waterBox)) &&
                (this->footPosFrontRight.y <= waterSurfaceY)) {
                this->footPosFrontRight.y = waterSurfaceY;
                EffectSsGRipple_Spawn(globalCtx, &this->footPosFrontRight, 0, 0xDC, 0);
            }
            thisx->floorPoly = floorPoly;
        }
        if (thisx->bgCheckFlags & 3) {
            func_800359B8(thisx, thisx->shape.rot.y, &thisx->shape.rot);
            if (this->unk2BD >= 2) {
                thisx->shape.rot.z = (thisx->shape.rot.z + 0x7FFF);
            }
        } else {
            Math_SmoothScaleMaxMinS(&thisx->shape.rot.x, 0, 1, 0x3E8, 0);
            if (this->unk2BD < 2) {
                Math_SmoothScaleMaxMinS(&thisx->shape.rot.z, 0, 1, 0x3E8, 0);
                if (0.0f < thisx->shape.unk_08) {
                    thisx->shape.unk_08 -= 400.0f;
                }
            }
        }
    }
    thisx->posRot2.pos = thisx->posRot.pos;
    thisx->posRot2.pos.y += 20.0f;

    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void func_80B1B178(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnTite* this = THIS;
    switch (limbIndex) {
        case 8:
            Matrix_MultVec3f(&D_80B1B64C, &this->footPosBackRight);
            break;
        case 0xD:
            Matrix_MultVec3f(&D_80B1B64C, &this->footPosFrontRight);
            break;
        case 0x12:
            Matrix_MultVec3f(&D_80B1B64C, &this->footPosBackLeft);
            break;
        case 0x17:
            Matrix_MultVec3f(&D_80B1B64C, &this->footPosFrontLeft);
            break;
    }
    func_80032F54(&this->unk2C4, limbIndex, 0, 0x18, 0x18, dList, -1);
}

void EnTite_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnTite* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_tite.c", 0x6A8);
    func_80093D18(globalCtx->state.gfxCtx);
    func_800628A4(0, &this->collider);
    if (IS_BLUE) {
        gSPSegment(__gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(&D_06001300));
        gSPSegment(__gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(&D_06001700));
        gSPSegment(__gfxCtx->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06001900));
    } else {
        gSPSegment(__gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(&D_06001B00));
        gSPSegment(__gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(&D_06001F00));
        gSPSegment(__gfxCtx->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(&D_06002100));
    }
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, func_80B1B178, thisx);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_tite.c", 0x6C7);
    
    if (this->unk2E3 != 0) {
        thisx->dmgEffectTimer++;
        this->unk2E3--;
        if ((this->unk2E3 & 3) == 0) {
            Vec3f sp4C;
            s32 temp = this->unk2E3 >> 2;
            sp4C.x = thisx->posRot.pos.x + D_80B1B658[temp].x;
            sp4C.y = thisx->posRot.pos.y + D_80B1B658[temp].y;
            sp4C.z = thisx->posRot.pos.z + D_80B1B658[temp].z;
            EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &sp4C, 0x96, 0x96, 0x96, 0xFA, 0xEB, 0xF5, 0xFF, 1.0f);
        }
    }
}