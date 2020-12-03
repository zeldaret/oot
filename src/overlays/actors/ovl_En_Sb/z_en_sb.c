/*
 * File: z_en_sb.c
 * Overlay: ovl_En_Sb
 * Description: Shellblade
 */

#include "z_en_sb.h"
#include "vt.h"

#define FLAGS 0x00000005

#define THIS ((EnSb*)thisx)

void EnSb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSb_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnSb_SetupWaitClosed(EnSb* this);

void EnSb_WaitClosed(EnSb* this, GlobalContext* globalCtx);
void EnSb_Open(EnSb* this, GlobalContext* globalCtx);
void EnSb_WaitOpen(EnSb* this, GlobalContext* globalCtx);
void EnSb_TurnAround(EnSb* this, GlobalContext* globalCtx);
void EnSb_Lunge(EnSb* this, GlobalContext* globalCtx);
void EnSb_Bounce(EnSb* this, GlobalContext* globalCtx);
void EnSb_Cooldown(EnSb* this, GlobalContext* globalCtx);

const ActorInit En_Sb_InitVars = {
    ACTOR_EN_SB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_SB,
    sizeof(EnSb),
    (ActorFunc)EnSb_Init,
    (ActorFunc)EnSb_Destroy,
    (ActorFunc)EnSb_Update,
    (ActorFunc)EnSb_Draw,
};

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x04, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 30, 40, 0, { 0, 0, 0 } },
};

static DamageTable sDamageTable[] = {
    0x00, 0x00, 0x00, 0xF2, 0x00, 0xF2, 0xF2, 0x12, 0xD1, 0xD2, 0xD4, 0x24, 0xF2, 0xF2, 0xE4, 0xF2,
    0xF2, 0x24, 0x00, 0x00, 0x00, 0x00, 0xD1, 0xD4, 0xD2, 0xD2, 0xD8, 0xD4, 0x00, 0x00, 0x00, 0x00,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 39, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 30, ICHAIN_STOP),
};

static Vec3f sFlamePosOffsets[] = {
    { 5.0f, 0.0f, 0.0f },
    { -5.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 5.0f },
    { 0.0f, 0.0f, -5.0f },
};

typedef enum {
    /* 0x00 */ SHELLBLADE_OPEN,
    /* 0x01 */ SHELLBLADE_WAIT_CLOSED,
    /* 0x02 */ SHELLBLADE_WAIT_OPEN,
    /* 0x03 */ SHELLBLADE_LUNGE,
    /* 0x04 */ SHELLBLADE_BOUNCE,
} ShellbladeBehavior;

extern FlexSkeletonHeader D_06002BF0;
extern AnimationHeader D_06000194;
extern AnimationHeader D_0600004C;
extern AnimationHeader D_06000124;
extern AnimationHeader D_06002C8C;
extern AnimationHeader D_060000B4;

void EnSb_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnSb* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.colChkInfo.damageTable = &sDamageTable;
    this->actor.colChkInfo.health = 2;
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06002BF0, &D_06000194, NULL, NULL, 0);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder_Set3(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->isDead = false;
    this->actor.colChkInfo.mass = 0;
    Actor_SetScale(&this->actor, 0.006f);
    this->actor.shape.rot.y = 0;
    this->actor.speedXZ = 0.0f;
    this->actor.gravity = -0.35f;
    this->fire = 0;
    this->hitByWindArrow = false;
    this->actor.velocity.y = -1.0f;
    EnSb_SetupWaitClosed(this);
}

void EnSb_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnSb* this = THIS;
    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnSb_SpawnBubbles(GlobalContext* globalCtx, EnSb* this) {
    s32 i;

    if (this->actor.waterY > 0) {
        for (i = 0; i < 10; i++) {
            EffectSsBubble_Spawn(globalCtx, &this->actor.posRot.pos, 10.0f, 10.0f, 30.0f, 0.25f);
        }
    }
}

void EnSb_SetupWaitClosed(EnSb* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600004C, 1.0f, 0, SkelAnime_GetFrameCount(&D_0600004C), 2, 0.0f);
    this->behavior = SHELLBLADE_WAIT_CLOSED;
    this->actionFunc = EnSb_WaitClosed;
}

void EnSb_SetupOpen(EnSb* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000194, 1.0f, 0, SkelAnime_GetFrameCount(&D_06000194), 2, 0.0f);
    this->behavior = SHELLBLADE_OPEN;
    this->actionFunc = EnSb_Open;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHELL_MOUTH);
}

void EnSb_SetupWaitOpen(EnSb* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002C8C, 1.0f, 0, SkelAnime_GetFrameCount(&D_06002C8C), 0, 0.0f);
    this->behavior = SHELLBLADE_WAIT_OPEN;
    this->actionFunc = EnSb_WaitOpen;
}

void EnSb_SetupLunge(EnSb* this) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06000124);
    f32 playbackSpeed = this->actor.waterY > 0.0f ? 1.0f : 0.0f;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000124, playbackSpeed, 0.0f, frameCount, 2, 0);
    this->behavior = SHELLBLADE_LUNGE;
    this->actionFunc = EnSb_Lunge;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_SHELL_MOUTH);
}

void EnSb_SetupBounce(EnSb* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060000B4, 1.0f, 0, SkelAnime_GetFrameCount(&D_060000B4), 2, 0.0f);
    this->behavior = SHELLBLADE_BOUNCE;
    this->actionFunc = EnSb_Bounce;
}

void EnSb_SetupCooldown(EnSb* this, s32 changeSpeed) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_0600004C);

    if (this->behavior != SHELLBLADE_WAIT_CLOSED) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_0600004C, 1.0f, 0, frameCount, 2, 0.0f);
    }
    this->behavior = SHELLBLADE_WAIT_CLOSED;
    if (changeSpeed) {
        if (this->actor.waterY > 0.0f) {
            this->actor.speedXZ = -5.0f;
            if (this->actor.velocity.y < 0.0f) {
                this->actor.velocity.y = 2.1f;
            }
        } else {
            this->actor.speedXZ = -6.0f;
            if (this->actor.velocity.y < 0.0f) {
                this->actor.velocity.y = 1.4f;
            }
        }
    }
    this->timer = 60;
    this->actionFunc = EnSb_Cooldown;
}

void EnSb_WaitClosed(EnSb* this, GlobalContext* globalCtx) {
    // always face toward link
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0xA, 0x7D0, 0x0);

    if ((this->actor.xzDistFromLink <= 160.0f) && (this->actor.xzDistFromLink > 40.0f)) {
        EnSb_SetupOpen(this);
    }
}

void EnSb_Open(EnSb* this, GlobalContext* globalCtx) {
    f32 currentFrame = this->skelAnime.animCurrentFrame;

    if (SkelAnime_GetFrameCount(&D_06000194) <= currentFrame) {
        this->timer = 15;
        EnSb_SetupWaitOpen(this);
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0xA, 0x7D0, 0x0);
        if ((this->actor.xzDistFromLink > 160.0f) || (this->actor.xzDistFromLink <= 40.0f)) {
            EnSb_SetupWaitClosed(this);
        }
    }
}

void EnSb_WaitOpen(EnSb* this, GlobalContext* globalCtx) {
    s16 timer = this->timer;

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0xA, 0x7D0, 0x0);

    if ((this->actor.xzDistFromLink > 160.0f) || (this->actor.xzDistFromLink <= 40.0f)) {
        EnSb_SetupWaitClosed(this);
    }

    if (timer != 0) {
        this->timer = timer - 1;
    } else {
        this->timer = 0;
        this->attackYaw = this->actor.yawTowardsLink;
        this->actionFunc = EnSb_TurnAround;
    }
}

void EnSb_TurnAround(EnSb* this, GlobalContext* globalCtx) {
    s16 invertedYaw;

    invertedYaw = this->attackYaw + 0x8000;
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, invertedYaw, 0x1, 0x1F40, 0xA);

    if (this->actor.shape.rot.y == invertedYaw) {
        this->actor.posRot.rot.y = this->attackYaw;
        if (this->actor.waterY > 0.0f) {
            this->actor.velocity.y = 3.0f;
            this->actor.speedXZ = 5.0f;
            this->actor.gravity = -0.35f;
        } else {
            this->actor.velocity.y = 2.0f;
            this->actor.speedXZ = 6.0f;
            this->actor.gravity = -2.0f;
        }
        EnSb_SpawnBubbles(globalCtx, this);
        this->bouncesLeft = 3;
        EnSb_SetupLunge(this);
        // Attack!!
        osSyncPrintf("アタァ〜ック！！\n");
    }
}

void EnSb_Lunge(EnSb* this, GlobalContext* globalCtx) {
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.2f);
    if ((this->actor.velocity.y <= -0.1f) || ((this->actor.bgCheckFlags & 2))) {
        if (!(this->actor.waterY > 0.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        }
        this->actor.bgCheckFlags = this->actor.bgCheckFlags & ~2;
        EnSb_SetupBounce(this);
    }
}

void EnSb_Bounce(EnSb* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 currentFrame;
    f32 frameCount;

    currentFrame = this->skelAnime.animCurrentFrame;
    frameCount = SkelAnime_GetFrameCount(&D_060000B4);
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.2f);

    if (currentFrame == frameCount) {
        if (this->bouncesLeft != 0) {
            this->bouncesLeft--;
            this->timer = 1;
            if (this->actor.waterY > 0.0f) {
                this->actor.velocity.y = 3.0f;
                this->actor.speedXZ = 5.0f;
                this->actor.gravity = -0.35f;
            } else {
                this->actor.velocity.y = 2.0f;
                this->actor.speedXZ = 6.0f;
                this->actor.gravity = -2.0f;
            }
            EnSb_SpawnBubbles(globalCtx, this);
            EnSb_SetupLunge(this);
        } else if (this->actor.bgCheckFlags & 1) {
            this->actor.bgCheckFlags &= ~2;
            this->actor.speedXZ = 0.0f;
            this->timer = 1;
            EnSb_SetupWaitClosed(this);
            // "Attack Complete!"
            osSyncPrintf(VT_FGCOL(RED) "攻撃終了！！" VT_RST "\n");
        }
    }
}

void EnSb_Cooldown(EnSb* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
        if (this->actor.bgCheckFlags & 1) {
            this->actor.bgCheckFlags &= ~1;
            this->actor.speedXZ = 0.0f;
        }
    } else {
        if (this->actor.bgCheckFlags & 1) {
            this->actor.bgCheckFlags &= ~1;
            this->actionFunc = EnSb_WaitClosed;
            this->actor.speedXZ = 0.0f;
        }
    }
}

s32 EnSb_IsVulnerable(EnSb* this) {
    switch (this->behavior) {
        case SHELLBLADE_OPEN:
            if ((this->skelAnime.animCurrentFrame >= 2.0f) && (this->skelAnime.animCurrentFrame <= 5.0f)) {
                return true;
            }
            break;
        case SHELLBLADE_WAIT_CLOSED:
            if ((this->skelAnime.animCurrentFrame >= 0.0f) && (this->skelAnime.animCurrentFrame <= 1.0f)) {
                return true;
            }
            break;
        case SHELLBLADE_WAIT_OPEN:
            if ((this->skelAnime.animCurrentFrame >= 0.0f) && (this->skelAnime.animCurrentFrame <= 19.0f)) {
                return true;
            }
            break;
        case SHELLBLADE_LUNGE:
            if (this->skelAnime.animCurrentFrame == 0.0f) {
                return true;
            }
            break;
        case SHELLBLADE_BOUNCE:
            if ((this->skelAnime.animCurrentFrame >= 3.0f) && (this->skelAnime.animCurrentFrame <= 5.0f)) {
                return true;
            }
            break;
    }
    return false;
}

s32 EnSb_UpdateDamage(EnSb* this, GlobalContext* globalCtx) {
    Vec3f hitPoint;
    f32 hitY;
    s16 yawDiff;
    s32 tookDamage;
    u8 hitByWindArrow;

    // hit box collided, switch to cool down
    if ((this->collider.base.atFlags & 2)) {
        EnSb_SetupCooldown(this, 1);
        return 1;
    }

    // hurt box collided, take damage if appropriate
    if ((this->collider.base.acFlags & 2)) {
        hitByWindArrow = false;
        tookDamage = false;
        this->collider.base.acFlags &= ~2;

        switch (this->actor.colChkInfo.damageEffect) {
            case 14: // wind arrow
                hitByWindArrow = true;
            case 15: // explosions, arrow, hammer, ice arrow, light arrow, spirit arrow, shadow arrow
                if (EnSb_IsVulnerable(this)) {
                    hitY = this->collider.body.bumper.unk_06.y - this->actor.posRot.pos.y;
                    yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
                    if ((hitY < 30.0f) && (hitY > 10.0f) && (yawDiff >= -0x1FFF) && (yawDiff < 0x2000)) {
                        Actor_ApplyDamage(&this->actor);
                        func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, 0x50);
                        tookDamage = true;
                    }
                }
                break;
            case 2: // fire arrow, dins fire
                this->fire = 4;
                Actor_ApplyDamage(&this->actor);
                func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, 0x50);
                tookDamage = true;
                break;
            case 1:  // hookshot/longshot
            case 13: // all sword damage
                if (EnSb_IsVulnerable(this)) {
                    hitY = this->collider.body.bumper.unk_06.y - this->actor.posRot.pos.y;
                    yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
                    if ((hitY < 30.0f) && (hitY > 10.0f) && (yawDiff >= -0x1FFF) && (yawDiff < 0x2000)) {
                        Actor_ApplyDamage(&this->actor);
                        func_8003426C(&this->actor, 0x4000, 0xFF, 0x2000, 0x50);
                        tookDamage = true;
                        EnSb_SetupCooldown(this, 0);
                    }
                }
                break;
            default:
                break;
        }
        if (this->actor.colChkInfo.health == 0) {
            this->hitByWindArrow = hitByWindArrow;
            func_80032E24(&this->unk_1E0, 8, globalCtx);
            this->isDead = true;
            func_80032C7C(globalCtx, &this->actor);
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EN_SHELL_DEAD);
            return 1;
        }

        // if player attack didn't do damage, play recoil sound and spawn sparks
        if (!tookDamage) {
            hitPoint.x = this->collider.body.bumper.unk_06.x;
            hitPoint.y = this->collider.body.bumper.unk_06.y;
            hitPoint.z = this->collider.body.bumper.unk_06.z;
            func_80062DF4(globalCtx, &hitPoint);
        }
    }

    return 0;
}

void EnSb_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnSb* this = THIS;
    s32 pad;

    if (this->isDead) {
        if (this->actor.waterY > 0.0f) {
            this->actor.params = 4;
        } else {
            this->actor.params = 1;
        }
        if (func_8003305C(this, &this->unk_1E0, globalCtx, this->actor.params) != 0) {
            if (!this->hitByWindArrow) {
                Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x80);
            } else {
                Item_DropCollectible(globalCtx, &this->actor.posRot.pos, 8);
            }
            Actor_Kill(&this->actor);
        }
    } else {
        Actor_SetHeight(&this->actor, 20.0f);
        Actor_SetScale(&this->actor, 0.006f);
        Actor_MoveForward(&this->actor);
        this->actionFunc(this, globalCtx);
        func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 20.0f, 5);
        EnSb_UpdateDamage(this, globalCtx);
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    }
}

void EnSb_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnSb* this = THIS;

    func_80032F54(&this->unk_1E0, limbIndex, 0, 6, 8, dList, -1);
}

void EnSb_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnSb* this = THIS;
    Vec3f flamePos;
    Vec3f* offset;
    s16 fireDecr;

    func_8002EBCC(&this->actor, globalCtx, 1);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                          NULL, EnSb_PostLimbDraw, this);
    if (this->fire != 0) {
        this->actor.dmgEffectTimer++;
        fireDecr = this->fire - 1;
        // this is intended to draw flames after being burned, but the condition is never met to run this code
        // fire gets set to 4 when burned, decrements to 3 and fails the "& 1" check and never stores the decrement
        if ((fireDecr & 1) == 0) {
            offset = &sFlamePosOffsets[(fireDecr & 3)];
            flamePos.x = Math_Rand_CenteredFloat(5.0f) + (this->actor.posRot.pos.x + offset->x);
            flamePos.y = Math_Rand_CenteredFloat(5.0f) + (this->actor.posRot.pos.y + offset->y);
            flamePos.z = Math_Rand_CenteredFloat(5.0f) + (this->actor.posRot.pos.z + offset->z);
            EffectSsEnFire_SpawnVec3f(globalCtx, this, &flamePos, 100, 0, 0, -1);
        }
    }
}
