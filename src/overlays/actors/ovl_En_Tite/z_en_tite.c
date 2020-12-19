/*
 * File: z_en_tite.c
 * Overlay: ovl_En_Tite
 * Description: Tektite
 */

#include "z_en_tite.h"
#include "vt.h"
#include "overlays/actors/ovl_En_Encount1/z_en_encount1.h"

#define FLAGS 0x00000015

#define THIS ((EnTite*)thisx)

#define IS_BLUE (this->actor.params == -2)

typedef enum {
    /* 0x0 */ TEKTITE_DEATH1,
    /* 0x1 */ TEKTITE_UNK_1,
    /* 0x2 */ TEKTITE_UNK_2,
    /* 0x3 */ TEKTITE_RECOIL,
    /* 0x4 */ TEKTITE_UNK_4,
    /* 0x5 */ TEKTITE_DEATH2,
    /* 0x6 */ TEKTITE_IDLE,
    /* 0x7 */ TEKTITE_STUNNED,
    /* 0x8 */ TEKTITE_UNK_8,
    /* 0x9 */ TEKTITE_LUNGE,
    /* 0xA */ TEKTITE_TURN,
    /* 0xB */ TEKTITE_UNK9,
    /* 0xC */ TEKTITE_JUMP
} EnTiteActionState;

void EnTite_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B1ABBC(Actor* thisx, GlobalContext* globalCtx);
s32 func_80042244(GlobalContext* globalCtx, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                  WaterBox** outWaterBox);
void EnTite_SetupWaitFlippedOnBack(EnTite* this);
void func_80B1A670(EnTite* this, GlobalContext* globalCtx);
void EnTite_FlipUpright(EnTite* this, GlobalContext* globalCtx);
void EnTite_WaitFlippedOnBack(EnTite* this, GlobalContext* globalCtx);
void func_80B1A2A0(EnTite* this, GlobalContext* globalCtx);
void EnTite_Idle(EnTite* this, GlobalContext* globalCtx);
void func_80B1A6E4(EnTite* this, GlobalContext* globalCtx);
void func_80B19E94(EnTite* this, GlobalContext* globalCtx);
void func_80B18E7C(EnTite* this, GlobalContext* globalCtx);
void func_80B19918(EnTite* this, GlobalContext* globalCtx);
void func_80B195C0(EnTite* this, GlobalContext* globalCtx);
void EnTite_SetupFlipUpright(EnTite* this);
void func_80B1A63C(Actor* thisx);
void func_80B18E08(Actor* thisx);
void func_80B1985C(Actor* thisx);
void func_80B19524(Actor* thisx);
void EnTite_SetupIdle(EnTite* this);

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

static AnimationHeader* D_80B1B634[] = {
    0x0600083C, 0x060004F8, 0x0600069C, NULL, NULL, NULL,
};

// Relative spacial offset to tektite foot
static Vec3f sFootOffset = { 2800.0f, -200.0f, 0.0f };

// Relative positions to spawn ice chunks when tektite is frozen
static Vec3f sIceChunks[12] = {
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
    this->flipState = 0;
    thisx->colChkInfo.damageTable = sDamageTable;
    this->timer = 0;
    this->unk2C4.unk_10 = 0;
    thisx->posRot2.pos = thisx->posRot.pos;
    thisx->posRot2.pos.y += 20.0f;
    thisx->colChkInfo.health = 2;
    thisx->colChkInfo.mass = 0xFE;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, thisx, &sJntSphInit, &this->colliderItem);
    this->unk_2DC = 0x1D;
    if (IS_BLUE) {
        this->unk_2DC |= 0x40; // Don't use the actor engine's ripple spawning code
        thisx->colChkInfo.health = 4;
        thisx->naviEnemyId += 1;
    }
    EnTite_SetupIdle(this);
}

void EnTite_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnTite* this = THIS;
    EnEncount1* spawner;

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

void EnTite_SetupIdle(EnTite* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060012E4, 4.0f);
    this->actionState = TEKTITE_IDLE;
    this->timer = Math_Rand_S16Offset(15, 30);
    this->actor.speedXZ = 0.0f;
    EnTite_SetupAction(this, EnTite_Idle);
}

// idle action function (this is the action func if i'm far away from tektite, also seems to be before I uncull them)
// Sometimes switches to this at the end of some jumping, even if I am in range
void EnTite_Idle(EnTite* this, GlobalContext* globalCtx) {
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
    if (this->timer > 0) {
        this->timer--;
    } else if ((this->actor.xzDistFromLink < 300.0f) && (this->actor.yDistFromLink <= 80.0f)) {
        func_80B19524(&this->actor);
    }
}

// EnTite_SetupAttack
void func_80B18E08(Actor* thisx) {
    EnTite* this = THIS;

    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600083C);
    this->actionState = TEKTITE_LUNGE;
    this->timer = 0;
    this->counter = Math_Rand_S16Offset(1, 3);
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
        sp50 = this->timer;
        switch (this->timer) {
            case 0:
                this->timer = (u16)1;
                if ((!IS_BLUE) || (!(this->actor.bgCheckFlags & 0x20))) {
                    if (-32000.0f < this->actor.groundY) {
                        this->actor.posRot.pos.y = this->actor.groundY;
                    }
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
                } else {
                    this->actor.posRot.pos.y += this->actor.waterY;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_JUMP_WATER);
                }
                this->actor.velocity.y = 8.0f;
                this->actor.gravity = -1.0f;
                this->actor.speedXZ = 4.0f;
                break;
            case 1:
                this->actor.flags = (u32)(this->actor.flags | 0x1000000);
                if ((this->actor.bgCheckFlags & 3) || (IS_BLUE && (this->actor.bgCheckFlags & 0x20))) {
                    if (this->actor.velocity.y <= 0.0f) {
                        this->timer = 2;
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
                                this->timer++;
                                this->actor.velocity.y *= 0.75f;
                                sp50 = this->timer;
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
                if (this->counter != 0) {
                    this->counter--;
                    this->timer = 0;
                    this->collider.base.atFlags &= ~2;
                } else {
                    func_80B19524(&this->actor);
                }
                break;
            case 3:
                if (0.0f == this->actor.waterY) {
                    this->timer = 2;
                    sp50 = this->timer;
                }
                break;
        }
        if (sp50 != this->timer) {
            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, D_80B1B634[this->timer]);
        }
    }

    switch (this->timer) {
        case 0:
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, (u16)1, (u16)0x3E8, 0);
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
            temp_v1_3 = this->actor.yawTowardsLink - this->actor.shape.rot.y;
            if ((300.0f < this->actor.xzDistFromLink) && (80.0f < this->actor.yDistFromLink)) {
                EnTite_SetupIdle(this);
            } else if (ABS(temp_v1_3) >= 0x2328) {
                func_80B19524(&this->actor);
            }
            break;
        case 1:
            if (5.0f <= this->actor.velocity.y) {
                if (this->actor.bgCheckFlags & 1) {
                    func_800355B8(globalCtx, &this->frontLeftFootPos);
                    func_800355B8(globalCtx, &this->frontRightFootPos);
                    func_800355B8(globalCtx, &this->backRightFootPos);
                    func_800355B8(globalCtx, &this->backLeftFootPos);
                }
            }
            if ((!(this->collider.base.atFlags & 2)) && (this->actor.flags & 0x40)) {
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            } else {
                Player* player = PLAYER;
                this->collider.base.atFlags = (this->collider.base.atFlags & ~2);
                SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060012E4, 4.0f);
                this->actor.speedXZ = -6.0f;
                this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                if (&player->actor == this->collider.base.at) {
                    if (!(this->collider.base.atFlags & 4)) {
                        Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
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
            func_80033480(globalCtx, &this->frontLeftFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->frontRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->backRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->backLeftFootPos, 1.0f, 2, 0x50, 0xF, 1);
        }
    }
    if (IS_BLUE) {
        if (this->actor.bgCheckFlags & 0x40) {
            this->actor.speedXZ = 0.0f;
            if (this->timer == 3) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_LAND_WATER);
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_LAND_WATER2);
            }
            this->actor.bgCheckFlags = (u16)(this->actor.bgCheckFlags & ~0x40);
        } else if (this->actor.bgCheckFlags & 2) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        }
    } else if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
    }
}

void func_80B19524(Actor* thisx) {
    EnTite* this = THIS;

    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000A14);
    this->actionState = TEKTITE_TURN;
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
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_WALK_WATER);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_WALK);
        }
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if ((300.0f < this->actor.xzDistFromLink) && (80.0f < this->actor.yDistFromLink)) {
        EnTite_SetupIdle(this);
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
    this->actionState = TEKTITE_JUMP;
    thisx->velocity.y = 10.0f;
    thisx->gravity = -1.0f;
    thisx->speedXZ = 4.0f;
    this->counter = Math_Rand_S16Offset(1, 3);
    if (IS_BLUE && (thisx->bgCheckFlags & 0x20)) {
        Audio_PlayActorSound2(thisx, NA_SE_EN_TEKU_JUMP_WATER);
    } else {
        Audio_PlayActorSound2(thisx, NA_SE_EN_STAL_JUMP);
    }
    EnTite_SetupAction(this, &func_80B19918);
}

// Generally in the mode where he's jumping to travel towards link.
void func_80B19918(EnTite* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.1f, 1.0f, 0.0f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.bgCheckFlags & 0x42) {
        if (!(this->actor.bgCheckFlags & 0x40)) {
            func_80033480(globalCtx, &this->frontLeftFootPos, 1.0f, 2, 0x50, 0xF, 1); // spawn dust
            func_80033480(globalCtx, &this->frontRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->backRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->backLeftFootPos, 1.0f, 2, 0x50, 0xF, 1);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_LAND_WATER);
        }
    }

    if ((this->actor.bgCheckFlags & 2) || (IS_BLUE && (this->actor.bgCheckFlags & 0x40))) {
        if (this->counter != 0) {
            this->counter--;
        } else {
            EnTite_SetupIdle(this);
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
                Vec3f ripplePos;
                ripplePos = this->actor.posRot.pos;
                this->actor.bgCheckFlags &= ~0x40;
                ripplePos.y += this->actor.waterY;
                this->actor.gravity = 0.0f;
                this->actor.velocity.y *= 0.75f;
                EffectSsGRipple_Spawn(globalCtx, &ripplePos, 0, 0x1F4, 0);
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
            EnTite_SetupIdle(this);
        } else {
            if (((this->actor.xzDistFromLink <= 180.0f)) && ((this->actor.yDistFromLink <= 80.0f))) {
                if (this->counter <= 0) {
                    func_80B19524(&this->actor);
                    return;
                }
                this->actor.velocity.y = 10.0f;
                this->actor.speedXZ = 4.0f;
                this->actor.flags |= 0x1000000;
                this->actor.gravity = -1.0f;
                if (IS_BLUE && (this->actor.bgCheckFlags & 0x20)) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_JUMP_WATER);
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
                }
            } else {
                this->actor.velocity.y = 10.0f;
                this->actor.speedXZ = 4.0f;
                this->actor.flags |= 0x1000000;
                this->actor.gravity = -1.0f;
                if (IS_BLUE && (this->actor.bgCheckFlags & 0x20)) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_JUMP_WATER);
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
                }
            }
        }
    } else {
        this->actor.flags |= 0x1000000;
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, (u16)1, (u16)0x3E8, 0);
        if (6.0f <= this->actor.velocity.y) {
            if (this->actor.bgCheckFlags & 1) {
                func_800355B8(globalCtx, &this->frontLeftFootPos);
                func_800355B8(globalCtx, &this->frontRightFootPos);
                func_800355B8(globalCtx, &this->backRightFootPos);
                func_800355B8(globalCtx, &this->backLeftFootPos);
            }
        }
    }
}

// Recoil after hitting link or being hit by link?
void func_80B19E28(Actor* thisx) {
    EnTite* this = THIS;

    this->actionState = TEKTITE_RECOIL;
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060012E4, 4.0f);
    thisx->speedXZ = -6.0f;
    thisx->posRot.rot.y = thisx->yawTowardsLink;
    thisx->gravity = -1.0f;
    EnTite_SetupAction(this, func_80B19E94);
}

// Tektite hits me, then slides back on landing
// OR, I hit tektite in mid air, then it lands and slides back on landing
// EnTite_Recoil?
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
            func_80033480(globalCtx, &this->frontLeftFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->frontRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->backRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->backLeftFootPos, 1.0f, 2, 0x50, 0xF, 1);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        } else {
            this->actor.bgCheckFlags = (this->actor.bgCheckFlags & ~0x40);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_LAND_WATER2);
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
            EnTite_SetupIdle(this);
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

// setup stunned?
void func_80B1A1EC(Actor* thisx) {
    EnTite* this = THIS;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_060012E4, 0.0f, 0.0f,
                         (f32)SkelAnime_GetFrameCount(&D_060012E4.genericHeader), 0, 4.0f);
    this->actionState = TEKTITE_STUNNED;
    thisx->speedXZ = -6.0f;
    thisx->posRot.rot.y = thisx->yawTowardsLink;
    if (this->damageEffect == 0xF) {
        this->spawnIceTimer = 0x30;
    }
    Audio_PlayActorSound2(thisx, NA_SE_EN_GOMA_JR_FREEZE);
    EnTite_SetupAction(this, func_80B1A2A0);
}

// stunned?
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
            func_80033480(globalCtx, &this->frontLeftFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->frontRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->backRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalCtx, &this->backLeftFootPos, 1.0f, 2, 0x50, 0xF, 1);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        } else {
            this->actor.bgCheckFlags = (this->actor.bgCheckFlags & ~0x40);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_LAND_WATER2);
        }
    }
    temp = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if (((this->actor.dmgEffectTimer == 0) && (this->actor.speedXZ == 0.0f)) &&
        ((this->actor.bgCheckFlags & 1) || (IS_BLUE && (this->actor.bgCheckFlags & 0x20)))) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (this->actor.colChkInfo.health == 0) {
            func_80B1A63C(&this->actor);
        } else if (this->flipState == 2) {
            EnTite_SetupFlipUpright(this);
        } else if (((300.0f < this->actor.xzDistFromLink) && (80.0f < this->actor.yDistFromLink) &&
                    (ABS(this->actor.shape.rot.x) < 0xFA0) && (ABS(this->actor.shape.rot.z) < 0xFA0)) &&
                    ((this->actor.bgCheckFlags & 1) ||
                    (IS_BLUE && (this->actor.bgCheckFlags & 0x20)))) {
            EnTite_SetupIdle(this);
        } else if ((this->actor.xzDistFromLink < 180.0f) && (this->actor.yDistFromLink <= 80.0f) &&
            (ABS(temp) < 0x1771)) {
            func_80B18E08(&this->actor);
        } else {
            func_80B1985C(&this->actor);
        }

    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

// Setup death
void func_80B1A63C(Actor* thisx) {
    EnTite* this = THIS;

    this->actionState = TEKTITE_DEATH1;
    thisx->dmgEffectTimer = 0;
    thisx->speedXZ = 0.0f;
    EnTite_SetupAction(this, func_80B1A670);
}

// First frame of death? EnTite_DeathScream
void func_80B1A670(EnTite* this, GlobalContext* globalCtx) {
    EffectSsDeadSound_SpawnStationary(globalCtx, &this->actor.projectedPos, NA_SE_EN_TEKU_DEAD, 1, 1, 0x28);
    this->actionState = TEKTITE_DEATH2;
    EnTite_SetupAction(this, func_80B1A6E4);
    func_80032E24(&this->unk2C4, 0x18, globalCtx);
}

// Fall apart? EnTite_Die? EnTite_Disintegrate
void func_80B1A6E4(EnTite* this, GlobalContext* globalCtx) {
    if (func_8003305C(&this->actor, &this->unk2C4, globalCtx, (this->actor.params + 0xB))) {
        if (IS_BLUE) {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xE0);
        } else {
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x40);
        }
        Actor_Kill(&this->actor);
    }
}

void EnTite_SetupWaitFlippedOnBack(EnTite* this) {
    SkelAnime_ChangeAnimPlaybackRepeat(&this->skelAnime, &D_06000A14, 1.5f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_REVERSE);
    this->flipState = 2;
    this->timer = 500;
    this->actor.speedXZ = 0.0f;
    this->actor.gravity = -1.0f;
    this->counter = (Math_Rand_ZeroOne() * 50.0f);
    this->actor.velocity.y = 11.0f;
    EnTite_SetupAction(this, EnTite_WaitFlippedOnBack);
}

// Both being flipped over and idling on back.
void EnTite_WaitFlippedOnBack(EnTite* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, 0x7FFF, 1, 0xFA0, 0);
    this->counter--;
    if (this->counter == 0) {
        this->counter = Math_Rand_ZeroOne() * 30.0f;
        this->skelAnime.animCurrentFrame = Math_Rand_ZeroOne() * 5.0f;
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.bgCheckFlags & 3) {
        if (this->actor.bgCheckFlags & 2) {
            func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 20.0f, 0xB, 4.0f, 0, 0, 0);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        }
        this->timer--;
        if (this->timer == 0) {
            EnTite_SetupFlipUpright(this);
        }
    } else {
        if (this->actor.shape.unk_08 < 2800.0f) {
            this->actor.shape.unk_08 += 400.0f;
        }
    }
}

void EnTite_SetupFlipUpright(EnTite* this) {
    this->flipState = 1;
    this->timer = 1000;
    //! @bug flying tektite: water sets gravity to 0 so y velocity will never decrease from 13
    this->actor.velocity.y = 13.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TEKU_REVERSE);
    EnTite_SetupAction(this, EnTite_FlipUpright);
}

void EnTite_FlipUpright(EnTite* this, GlobalContext* globalCtx) {    
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, 0, 1, 0xFA0, 0);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    //! @bug flying tektite: the following condition is never met and tektite stays stuck in this action forever
    if (this->actor.bgCheckFlags & 2) {
        func_80033480(globalCtx, &this->frontLeftFootPos, 1.0f, 2, 0x50, 0xF, 1);
        func_80033480(globalCtx, &this->frontRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
        func_80033480(globalCtx, &this->backRightFootPos, 1.0f, 2, 0x50, 0xF, 1);
        func_80033480(globalCtx, &this->backLeftFootPos, 1.0f, 2, 0x50, 0xF, 1);
        this->actor.shape.unk_08 = 0.0f;
        this->actor.posRot.pos.y = this->actor.groundY;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        EnTite_SetupIdle(this);
    }
}

void func_80B1ABBC(Actor* thisx, GlobalContext* globalCtx) {
    EnTite* this = THIS;

    if ((this->collider.base.acFlags & 2) && (this->actionState >= TEKTITE_IDLE)) {
        this->collider.base.acFlags = (this->collider.base.acFlags & ~2);
        if (thisx->colChkInfo.damageEffect != 0xE) {
            this->damageEffect = thisx->colChkInfo.damageEffect;
            func_80035650(thisx, &this->collider.list->body, 0);
            if ((thisx->colChkInfo.damageEffect == 1) || (thisx->colChkInfo.damageEffect == 0xF)) {
                if (this->actionState != TEKTITE_STUNNED) {
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
                    Audio_PlayActorSound2(thisx, NA_SE_EN_TEKU_DAMAGE);
                    if (this->flipState != 2) {
                        func_80B19E28(thisx);
                    } else {
                        EnTite_SetupFlipUpright(this);
                    }
                }
            }
        }
    } else if ((thisx->colChkInfo.health != 0) && (globalCtx->actorCtx.unk_02 != 0) &&
               (thisx->xzDistFromLink <= 400.0f) && (thisx->bgCheckFlags & 1)) {
        if (this->flipState == 2) {
            EnTite_SetupFlipUpright(this);
        } else if ((this->actionState >= TEKTITE_IDLE) || (this->actionState >= TEKTITE_IDLE)) {
            if (1) {}
            EnTite_SetupWaitFlippedOnBack(this);
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
        Actor_MoveForward(thisx);
        func_8002E4B4(globalCtx, thisx, 25.0f, 40.0f, 20.0f, this->unk_2DC);
        if (IS_BLUE && (thisx->bgCheckFlags & 0x20)) {
            floorPoly = thisx->floorPoly;
            if ((((globalCtx->gameplayFrames % 8) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->backRightFootPos.x, this->backRightFootPos.z,
                               &waterSurfaceY, &waterBox)) &&
                (this->backRightFootPos.y <= waterSurfaceY)) {
                this->backRightFootPos.y = waterSurfaceY;
                EffectSsGRipple_Spawn(globalCtx, &this->backRightFootPos, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 2) % 8) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->backLeftFootPos.x, this->backLeftFootPos.z,
                               &waterSurfaceY, &waterBox)) &&
                (this->backLeftFootPos.y <= waterSurfaceY)) {
                this->backLeftFootPos.y = waterSurfaceY;
                EffectSsGRipple_Spawn(globalCtx, &this->backLeftFootPos, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 4) % 8) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->frontLeftFootPos.x, this->frontLeftFootPos.z,
                               &waterSurfaceY, &waterBox)) &&
                (this->frontLeftFootPos.y <= waterSurfaceY)) {
                this->frontLeftFootPos.y = waterSurfaceY;
                EffectSsGRipple_Spawn(globalCtx, &this->frontLeftFootPos, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 1) % 8) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->frontRightFootPos.x, this->frontRightFootPos.z,
                               &waterSurfaceY, &waterBox)) &&
                (this->frontRightFootPos.y <= waterSurfaceY)) {
                this->frontRightFootPos.y = waterSurfaceY;
                EffectSsGRipple_Spawn(globalCtx, &this->frontRightFootPos, 0, 0xDC, 0);
            }
            thisx->floorPoly = floorPoly;
        }
        if (thisx->bgCheckFlags & 3) {
            func_800359B8(thisx, thisx->shape.rot.y, &thisx->shape.rot);
            if (this->flipState >= 2) {
                thisx->shape.rot.z = (thisx->shape.rot.z + 0x7FFF);
            }
        } else {
            Math_SmoothScaleMaxMinS(&thisx->shape.rot.x, 0, 1, 0x3E8, 0);
            if (this->flipState < 2) {
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

// postLimbDraw
void func_80B1B178(GlobalContext* globalCtx, s32 limbIndex, Gfx** limbDList, Vec3s* rot, void* thisx) {
    EnTite* this = THIS;
    switch (limbIndex) {
        case 8:
            Matrix_MultVec3f(&sFootOffset, &this->backRightFootPos);
            break;
        case 0xD:
            Matrix_MultVec3f(&sFootOffset, &this->frontRightFootPos);
            break;
        case 0x12:
            Matrix_MultVec3f(&sFootOffset, &this->backLeftFootPos);
            break;
        case 0x17:
            Matrix_MultVec3f(&sFootOffset, &this->frontLeftFootPos);
            break;
    }
    func_80032F54(&this->unk2C4, limbIndex, 0, 0x18, 0x18, limbDList, -1);
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
    
    if (this->spawnIceTimer != 0) {
        thisx->dmgEffectTimer++;
        this->spawnIceTimer--;
        if ((this->spawnIceTimer & 3) == 0) {
            Vec3f iceChunk;
            s32 idx = this->spawnIceTimer >> 2;
            iceChunk.x = thisx->posRot.pos.x + sIceChunks[idx].x;
            iceChunk.y = thisx->posRot.pos.y + sIceChunks[idx].y;
            iceChunk.z = thisx->posRot.pos.z + sIceChunks[idx].z;
            EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &iceChunk, 0x96, 0x96, 0x96, 0xFA, 0xEB, 0xF5, 0xFF, 1.0f);
        }
    }
}