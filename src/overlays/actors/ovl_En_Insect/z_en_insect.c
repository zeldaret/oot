/*
 * File: z_en_insect.c
 * Overlay: ovl_En_Insect
 * Description: Bugs
 */

#include "z_en_insect.h"
#include "terminal.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0

void EnInsect_Init(Actor* thisx, PlayState* play2);
void EnInsect_Destroy(Actor* thisx, PlayState* play);
void EnInsect_Update(Actor* thisx, PlayState* play);
void EnInsect_Draw(Actor* thisx, PlayState* play);

void EnInsect_SetupSlowDown(EnInsect* this);
void EnInsect_SlowDown(EnInsect* this, PlayState* play);
void EnInsect_SetupCrawl(EnInsect* this);
void EnInsect_Crawl(EnInsect* this, PlayState* play);
void EnInsect_SetupRunFromPlayer(EnInsect* this);
void EnInsect_RunFromPlayer(EnInsect* this, PlayState* play);
void EnInsect_SetupCaught(EnInsect* this);
void EnInsect_Caught(EnInsect* this, PlayState* play);
void EnInsect_SetupDig(EnInsect* this);
void EnInsect_Dig(EnInsect* this, PlayState* play);
void EnInsect_SetupWalkOnWater(EnInsect* this);
void EnInsect_WalkOnWater(EnInsect* this, PlayState* play);
void EnInsect_SetupDrown(EnInsect* this);
void EnInsect_Drown(EnInsect* this, PlayState* play);
void EnInsect_SetupDropped(EnInsect* this);
void EnInsect_Dropped(EnInsect* this, PlayState* play);

static f32 D_80A7DEB0 = 0.0f;
/**
 * The number of bugs caught this frame.
 */
static s16 sCaughtCount = 0;
/**
 * The number of active dropped bugs.
 */
static s16 sDroppedCount = 0;

ActorInit En_Insect_InitVars = {
    ACTOR_EN_INSECT,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnInsect),
    (ActorFunc)EnInsect_Init,
    (ActorFunc)EnInsect_Destroy,
    (ActorFunc)EnInsect_Update,
    (ActorFunc)EnInsect_Draw,
};

static ColliderJntSphElementInit sColliderItemInit[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 5 }, 100 },
    },
};

static ColliderJntSphInit sColliderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_PLAYER | OC1_TYPE_1,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    1,
    sColliderItemInit,
};

/**
 * The initial flags for a new bug, depending on its type.
 */
static u16 sInitInsectFlags[] = {
    0,
    INSECT_FLAG_0 | INSECT_FLAG_IS_SHORT_LIVED,
    INSECT_FLAG_0 | INSECT_FLAG_1 | INSECT_FLAG_IS_SHORT_LIVED,
    INSECT_FLAG_0 | INSECT_FLAG_1 | INSECT_FLAG_IS_SHORT_LIVED,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 700, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 20, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 600, ICHAIN_STOP),
};

void EnInsect_InitFlags(EnInsect* this) {
    this->insectFlags = sInitInsectFlags[this->actor.params & 3];
}

f32 EnInsect_XZDistanceSquared(Vec3f* v1, Vec3f* v2) {
    return SQ(v1->x - v2->x) + SQ(v1->z - v2->z);
}

s32 EnInsect_InBottleRange(EnInsect* this, PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);
    Vec3f pos;

    if (this->actor.xzDistToPlayer < 32.0f) {
        pos.x = Math_SinS(this->actor.yawTowardsPlayer + 0x8000) * 16.0f + player->actor.world.pos.x;
        pos.y = player->actor.world.pos.y;
        pos.z = Math_CosS(this->actor.yawTowardsPlayer + 0x8000) * 16.0f + player->actor.world.pos.z;

        //! @bug: this check is superfluous: it is automatically satisfied if the coarse check is satisfied. It may have
        //! been intended to check the actor is in front of Player, but yawTowardsPlayer does not depend on Player's
        //! world rotation.
        if (EnInsect_XZDistanceSquared(&pos, &this->actor.world.pos) <= SQ(20.0f)) {
            return true;
        }
    }

    return false;
}

void EnInsect_SetCrawlAnim(EnInsect* this) {
    Animation_Change(&this->skelAnime, &gBugCrawlAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP_INTERP, 0.0f);
}

/**
 * Find the nearest soft dirt patch within 6400 units in the xz plane and the current room
 *
 * @return true if one was found, false otherwise
 */
s32 EnInsect_TryFindNearbySoil(EnInsect* this, PlayState* play) {
    Actor* currentActor = play->actorCtx.actorLists[ACTORCAT_ITEMACTION].head;
    f32 currentDistanceSq;
    f32 bestDistanceSq = SQ(80.0f);
    s32 ret = false;

    this->soilActor = NULL;

    while (currentActor != NULL) {
        if (currentActor->id == ACTOR_OBJ_MAKEKINSUTA) {
            currentDistanceSq = Math3D_Dist2DSq(this->actor.world.pos.x, this->actor.world.pos.z,
                                                currentActor->world.pos.x, currentActor->world.pos.z);

            if (currentDistanceSq < bestDistanceSq && currentActor->room == this->actor.room) {
                ret = true;
                bestDistanceSq = currentDistanceSq;
                this->soilActor = (ObjMakekinsuta*)currentActor;
            }
        }
        currentActor = currentActor->next;
    }
    return ret;
}

/**
 * Update the crawl sound timer, and play the crawling sound effect when it reaches 0.
 */
void EnInsect_UpdateCrawlSfx(EnInsect* this) {
    if (this->crawlSoundDelay > 0) {
        this->crawlSoundDelay--;
        return;
    }

    Audio_PlayActorSfx2(&this->actor, NA_SE_EN_MUSI_WALK);

    this->crawlSoundDelay = 3.0f / CLAMP_MIN(this->skelAnime.playSpeed, 0.1f);
    if (this->crawlSoundDelay < 2) {
        this->crawlSoundDelay = 2;
    }
}

void EnInsect_Init(Actor* thisx, PlayState* play2) {
    EnInsect* this = (EnInsect*)thisx;
    PlayState* play = play2;
    f32 rand;
    s16 type;
    s32 count;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    EnInsect_InitFlags(this);

    type = this->actor.params & 3;

    SkelAnime_Init(play, &this->skelAnime, &gBugSkel, &gBugCrawlAnim, this->jointTable, this->morphTable, 24);
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sColliderInit, &this->colliderItem);

    this->actor.colChkInfo.mass = 30;

    if (this->insectFlags & INSECT_FLAG_0) {
        this->actor.gravity = -0.2f;
        this->actor.minVelocityY = -2.0f;
    }

    if (this->insectFlags & INSECT_FLAG_IS_SHORT_LIVED) {
        this->lifeTimer = Rand_S16Offset(200, 40);
        this->actor.flags |= ACTOR_FLAG_4;
    }

    if (type == INSECT_TYPE_FIRST_DROPPED || type == INSECT_TYPE_EXTRA_DROPPED) {
        if (EnInsect_TryFindNearbySoil(this, play)) {
            this->insectFlags |= INSECT_FLAG_FOUND_SOIL;
            D_80A7DEB0 = 0.0f;
        }

        if (type == INSECT_TYPE_FIRST_DROPPED) {
            this->actor.world.rot.z = 0;
            this->actor.shape.rot.z = this->actor.world.rot.z;

            for (count = 0; count < 2; count++) {
                Actor_Spawn(&play->actorCtx, play, ACTOR_EN_INSECT, this->actor.world.pos.x, this->actor.world.pos.y,
                            this->actor.world.pos.z, this->actor.shape.rot.x, this->actor.shape.rot.y,
                            this->actor.shape.rot.z, INSECT_TYPE_EXTRA_DROPPED);
            }
        }

        EnInsect_SetupDropped(this);

        sDroppedCount++;
    } else {
        rand = Rand_ZeroOne();

        if (rand < 0.3f) {
            EnInsect_SetupSlowDown(this);
        } else if (rand < 0.4f) {
            EnInsect_SetupCrawl(this);
        } else {
            EnInsect_SetupRunFromPlayer(this);
        }
    }
}

void EnInsect_Destroy(Actor* thisx, PlayState* play) {
    s16 type;
    EnInsect* this = (EnInsect*)thisx;

    type = this->actor.params & 3;
    Collider_DestroyJntSph(play, &this->collider);
    if ((type == INSECT_TYPE_FIRST_DROPPED || type == INSECT_TYPE_EXTRA_DROPPED) && sDroppedCount > 0) {
        sDroppedCount--;
    }
}

void EnInsect_SetupSlowDown(EnInsect* this) {
    this->actionTimer = Rand_S16Offset(5, 35);
    EnInsect_SetCrawlAnim(this);
    this->actionFunc = EnInsect_SlowDown;
    this->insectFlags |= INSECT_FLAG_CRAWLING;
}

void EnInsect_SlowDown(EnInsect* this, PlayState* play) {
    s32 pad[2];
    s16 type;
    f32 playSpeed;

    type = this->actor.params & 3;

    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 0.1f, 0.5f, 0.0f);

    playSpeed = (Rand_ZeroOne() * 0.8f) + (this->actor.speedXZ * 1.2f);
    this->skelAnime.playSpeed = CLAMP(playSpeed, 0.0f, 1.9f);

    SkelAnime_Update(&this->skelAnime);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->actionTimer <= 0) {
        EnInsect_SetupCrawl(this);
    }

    if (((this->insectFlags & INSECT_FLAG_IS_SHORT_LIVED) && this->lifeTimer <= 0) ||
        ((type == INSECT_TYPE_FIRST_DROPPED || type == INSECT_TYPE_EXTRA_DROPPED) &&
         (this->insectFlags & INSECT_FLAG_0) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
         sDroppedCount >= 4)) {
        EnInsect_SetupDig(this);
    } else if ((this->insectFlags & INSECT_FLAG_0) && (this->actor.bgCheckFlags & BGCHECKFLAG_WATER_TOUCH)) {
        EnInsect_SetupWalkOnWater(this);
    } else if (this->actor.xzDistToPlayer < 40.0f) {
        EnInsect_SetupRunFromPlayer(this);
    }
}

void EnInsect_SetupCrawl(EnInsect* this) {
    this->actionTimer = Rand_S16Offset(10, 45);
    EnInsect_SetCrawlAnim(this);
    this->actionFunc = EnInsect_Crawl;
    this->insectFlags |= INSECT_FLAG_CRAWLING;
}

void EnInsect_Crawl(EnInsect* this, PlayState* play) {
    s32 pad1;
    s32 pad2;
    s16 yaw;
    s16 type = this->actor.params & 3;

    Math_SmoothStepToF(&this->actor.speedXZ, 1.5f, 0.1f, 0.5f, 0.0f);

    if (EnInsect_XZDistanceSquared(&this->actor.world.pos, &this->actor.home.pos) > 1600.0f ||
        (this->actionTimer < 4)) {
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        Math_ScaledStepToS(&this->actor.world.rot.y, yaw, 2000);
    } else if (this->actor.child != NULL && &this->actor != this->actor.child) {
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.child->world.pos);
        Math_ScaledStepToS(&this->actor.world.rot.y, yaw, 2000);
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->skelAnime.playSpeed = CLAMP(this->actor.speedXZ * 1.4f, 0.7f, 1.9f);

    SkelAnime_Update(&this->skelAnime);

    if (this->actionTimer <= 0) {
        EnInsect_SetupSlowDown(this);
    }

    if (((this->insectFlags & INSECT_FLAG_IS_SHORT_LIVED) && this->lifeTimer <= 0) ||
        ((type == INSECT_TYPE_FIRST_DROPPED || type == INSECT_TYPE_EXTRA_DROPPED) &&
         (this->insectFlags & INSECT_FLAG_0) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
         sDroppedCount >= 4)) {
        EnInsect_SetupDig(this);
    } else if ((this->insectFlags & INSECT_FLAG_0) && (this->actor.bgCheckFlags & BGCHECKFLAG_WATER_TOUCH)) {
        EnInsect_SetupWalkOnWater(this);
    } else if (this->actor.xzDistToPlayer < 40.0f) {
        EnInsect_SetupRunFromPlayer(this);
    }
}

void EnInsect_SetupRunFromPlayer(EnInsect* this) {
    this->actionTimer = Rand_S16Offset(10, 40);
    EnInsect_SetCrawlAnim(this);
    this->actionFunc = EnInsect_RunFromPlayer;
    this->insectFlags |= INSECT_FLAG_CRAWLING;
}

void EnInsect_RunFromPlayer(EnInsect* this, PlayState* play) {
    s32 pad1;
    s32 pad2;
    s16 pad3;
    s16 frames;
    s16 yaw;
    s16 playerIsClose = this->actor.xzDistToPlayer < 40.0f;

    Math_SmoothStepToF(&this->actor.speedXZ, 1.8f, 0.1f, 0.5f, 0.0f);

    if (EnInsect_XZDistanceSquared(&this->actor.world.pos, &this->actor.home.pos) > 25600.0f || this->actionTimer < 4) {
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        Math_ScaledStepToS(&this->actor.world.rot.y, yaw, 2000);
    } else if (playerIsClose) {
        frames = play->state.frames;
        yaw = this->actor.yawTowardsPlayer + 0x8000;

        if (frames & 0x10) {
            if (frames & 0x20) {
                yaw += 0x2000;
            }
        } else {
            if (frames & 0x20) {
                yaw -= 0x2000;
            }
        }
        if (play) {} // Must be 'play'
        Math_ScaledStepToS(&this->actor.world.rot.y, yaw, 2000);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->skelAnime.playSpeed = CLAMP(this->actor.speedXZ * 1.6f, 0.8f, 1.9f);
    SkelAnime_Update(&this->skelAnime);

    if (this->actionTimer <= 0 || !playerIsClose) {
        EnInsect_SetupSlowDown(this);
    } else if ((this->insectFlags & INSECT_FLAG_0) && (this->actor.bgCheckFlags & BGCHECKFLAG_WATER_TOUCH)) {
        EnInsect_SetupWalkOnWater(this);
    }
}

void EnInsect_SetupCaught(EnInsect* this) {
    this->actionTimer = 200;

    Actor_SetScale(&this->actor, 0.001f);

    this->actor.draw = NULL;
    this->actor.speedXZ = 0.0f;

    EnInsect_SetCrawlAnim(this);

    this->skelAnime.playSpeed = 0.3f;
    this->actionFunc = EnInsect_Caught;
    this->insectFlags &= ~INSECT_FLAG_CRAWLING;
}

void EnInsect_Caught(EnInsect* this, PlayState* play) {
    if (this->actionTimer == 20 && !(this->insectFlags & INSECT_FLAG_IS_SHORT_LIVED)) {
        this->actor.draw = EnInsect_Draw;
    } else if (this->actionTimer == 0) {
        if (this->insectFlags & INSECT_FLAG_IS_SHORT_LIVED) {
            Actor_Kill(&this->actor);
        } else {
            Actor_SetScale(&this->actor, 0.01f);
            EnInsect_SetupSlowDown(this);
        }
    } else if (this->actionTimer < 20) {
        Actor_SetScale(&this->actor, CLAMP_MAX(this->actor.scale.x + 0.001f, 0.01f));
        SkelAnime_Update(&this->skelAnime);
    }
}

void EnInsect_SetupDig(EnInsect* this) {
    this->actionTimer = 60;
    EnInsect_SetCrawlAnim(this);
    this->skelAnime.playSpeed = 1.9f;
    Audio_PlayActorSfx2(&this->actor, NA_SE_EN_MUSI_SINK);
    Math_Vec3f_Copy(&this->actor.home.pos, &this->actor.world.pos);
    this->actionFunc = EnInsect_Dig;
    this->insectFlags &= ~INSECT_FLAG_CRAWLING;
    this->insectFlags |= INSECT_FLAG_UNCATCHABLE;
}

void EnInsect_Dig(EnInsect* this, PlayState* play) {
    static Vec3f accel = { 0.0f, 0.0f, 0.0f };
    static Vec3f unused = { 0.0f, 0.0f, 0.0f };
    s32 pad[2];
    Vec3f velocity;

    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 0.1f, 0.5f, 0.0f);
    Math_StepToS(&this->actor.shape.rot.x, 10922, 352);

    Actor_SetScale(&this->actor, CLAMP_MIN(this->actor.scale.x - 0.0002f, 0.001f));

    this->actor.shape.yOffset -= 0.8f;
    this->actor.world.pos.x = Rand_ZeroOne() + this->actor.home.pos.x - 0.5f;
    this->actor.world.pos.z = Rand_ZeroOne() + this->actor.home.pos.z - 0.5f;

    SkelAnime_Update(&this->skelAnime);

    if (this->actionTimer > 20 && Rand_ZeroOne() < 0.1f) {
        velocity.x = Math_SinS(this->actor.shape.rot.y) * -0.6f;
        velocity.y = Math_SinS(this->actor.shape.rot.x) * 0.6f;
        velocity.z = Math_CosS(this->actor.shape.rot.y) * -0.6f;
        func_800286CC(play, &this->actor.world.pos, &velocity, &accel, Rand_ZeroOne() * 5.0f + 8.0f,
                      Rand_ZeroOne() * 5.0f + 8.0f);
    }

    if (this->actionTimer <= 0) {
        if ((this->insectFlags & INSECT_FLAG_FOUND_SOIL) && this->soilActor != NULL &&
            Math3D_Vec3fDistSq(&this->soilActor->actor.world.pos, &this->actor.world.pos) < SQ(8.0f)) {
            this->soilActor->unk_152 = 1;
        }
        Actor_Kill(&this->actor);
    }
}

void EnInsect_SetupWalkOnWater(EnInsect* this) {
    this->actionTimer = Rand_S16Offset(120, 50);
    EnInsect_SetCrawlAnim(this);
    this->unk_316 = this->unk_318 = 0;
    this->actionFunc = EnInsect_WalkOnWater;
    this->insectFlags &= ~INSECT_FLAG_CRAWLING;
}

void EnInsect_WalkOnWater(EnInsect* this, PlayState* play) {
    f32 temp_f0;
    s16 temp_v1;
    s16 pad;
    s16 type;
    Vec3f ripplePoint;

    type = this->actor.params & 3;

    if (this->actionTimer > 80) {
        Math_StepToF(&this->actor.speedXZ, 0.6f, 0.08f);
    } else {
        Math_StepToF(&this->actor.speedXZ, 0.0f, 0.02f);
    }
    this->actor.velocity.y = 0.0f;
    this->actor.world.pos.y += this->actor.yDistToWater;
    this->skelAnime.playSpeed = CLAMP(this->actionTimer * 0.018f, 0.1f, 1.9f);

    SkelAnime_Update(&this->skelAnime);

    if (this->actionTimer > 80) {
        this->unk_316 += Rand_S16Offset(-50, 100);
        this->unk_318 += Rand_S16Offset(-300, 600);
    }

    temp_v1 = this->skelAnime.playSpeed * 200.0f;
    this->unk_316 = CLAMP(this->unk_316, -temp_v1, temp_v1);
    this->actor.world.rot.y += this->unk_316;

    temp_v1 = this->skelAnime.playSpeed * 1000.0f;
    this->unk_318 = CLAMP(this->unk_318, -temp_v1, temp_v1);
    this->actor.shape.rot.y += this->unk_318;

    Math_ScaledStepToS(&this->actor.world.rot.x, 0, 3000);
    this->actor.shape.rot.x = this->actor.world.rot.x;

    if (Rand_ZeroOne() < 0.03f) {
        ripplePoint.x = this->actor.world.pos.x;
        ripplePoint.y = this->actor.world.pos.y + this->actor.yDistToWater;
        ripplePoint.z = this->actor.world.pos.z;
        EffectSsGRipple_Spawn(play, &ripplePoint, 20, 100, 4);
        EffectSsGRipple_Spawn(play, &ripplePoint, 40, 200, 8);
    }

    if (this->actionTimer <= 0 || ((this->insectFlags & INSECT_FLAG_IS_SHORT_LIVED) && this->lifeTimer <= 0) ||
        ((type == INSECT_TYPE_FIRST_DROPPED || type == INSECT_TYPE_EXTRA_DROPPED) &&
         (this->insectFlags & INSECT_FLAG_0) && sDroppedCount >= 4)) {
        EnInsect_SetupDrown(this);
    } else if (!(this->actor.bgCheckFlags & BGCHECKFLAG_WATER_TOUCH)) {
        if (this->insectFlags & INSECT_FLAG_FOUND_SOIL) {
            EnInsect_SetupDropped(this);
        } else {
            EnInsect_SetupSlowDown(this);
        }
    }
}

void EnInsect_SetupDrown(EnInsect* this) {
    this->actionTimer = 100;
    EnInsect_SetCrawlAnim(this);
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.minVelocityY = -0.8f;
    this->actor.gravity = -0.04f;
    this->insectFlags &= ~(INSECT_FLAG_0 | INSECT_FLAG_1);
    this->actionFunc = EnInsect_Drown;
    this->insectFlags &= ~INSECT_FLAG_CRAWLING;
    this->insectFlags |= INSECT_FLAG_UNCATCHABLE;
}

void EnInsect_Drown(EnInsect* this, PlayState* play) {
    this->actor.shape.rot.x -= 500;
    this->actor.shape.rot.y += 200;
    Actor_SetScale(&this->actor, CLAMP_MIN(this->actor.scale.x - 0.00005f, 0.001f));

    if (this->actor.yDistToWater > 5.0f && this->actor.yDistToWater < 30.0f && Rand_ZeroOne() < 0.3f) {
        EffectSsBubble_Spawn(play, &this->actor.world.pos, -5.0f, 5.0f, 5.0f, (Rand_ZeroOne() * 0.04f) + 0.02f);
    }

    if (this->actionTimer <= 0) {
        Actor_Kill(&this->actor);
    }
}

void EnInsect_SetupDropped(EnInsect* this) {
    EnInsect_SetCrawlAnim(this);
    this->actionTimer = 100;
    this->unk_324 = 1.5f;
    this->unk_328 = Rand_ZeroOne() * (0xFFFF + 0.5f);
    this->unk_316 = (Rand_ZeroOne() - 0.5f) * 1500.0f;
    this->actor.world.rot.y = Rand_ZeroOne() * (0xFFFF + 0.5f);
    Actor_SetScale(&this->actor, 0.003f);
    this->actionFunc = EnInsect_Dropped;
    this->insectFlags |= INSECT_FLAG_CRAWLING;
}

void EnInsect_Dropped(EnInsect* this, PlayState* play) {
    s32 temp_a0;
    s32 sp50;
    f32 phi_f0;
    EnInsect* thisTemp = this;
    s32 temp_a1;
    f32 distanceSq;
    f32 phi_f2;
    s16 type;
    s16 sp38;
    f32 sp34;

    sp50 = 0;
    type = this->actor.params & 3;

    if (this->soilActor != NULL) {
        distanceSq = Math3D_Vec3fDistSq(&this->actor.world.pos, &this->soilActor->actor.world.pos);
    } else {
        if (this->insectFlags & INSECT_FLAG_FOUND_SOIL) {
            osSyncPrintf(VT_COL(YELLOW, BLACK));
            // "warning: target Actor is NULL"
            osSyncPrintf("warning:目標 Actor が NULL (%s %d)\n", "../z_en_mushi.c", 1046);
            osSyncPrintf(VT_RST);
        }
        distanceSq = 40.0f;
    }

    D_80A7DEB0 += 0.99999994f / 300.0f;
    if (D_80A7DEB0 > 1.0f) {
        D_80A7DEB0 = 1.0f;
    }

    if (D_80A7DEB0 > 0.999f) {
        phi_f2 = 0.0f;
    } else {
        if (distanceSq > SQ(30.0f)) {
            phi_f2 = ((1.1f - D_80A7DEB0) * 100.0f) + 20.0f;
        } else {
            phi_f2 = (1.0f - D_80A7DEB0) * 10.0f;
        }
    }

    if (this->soilActor != NULL && Rand_ZeroOne() < 0.07f) {
        this->actor.home.pos.x = (Rand_ZeroOne() - 0.5f) * phi_f2 + thisTemp->soilActor->actor.world.pos.x;
        this->actor.home.pos.y = thisTemp->soilActor->actor.world.pos.y;
        this->actor.home.pos.z = (Rand_ZeroOne() - 0.5f) * phi_f2 + thisTemp->soilActor->actor.world.pos.z;
    }

    if (D_80A7DEB0 > 0.999f) {
        this->unk_328 = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        this->unk_324 = Rand_ZeroOne() * 0.6f + 0.6f;
    } else if (Rand_ZeroOne() < 0.07f) {
        if (this->unk_324 > 1.0f) {
            this->unk_324 = 0.1f;
        } else {
            this->unk_324 = Rand_ZeroOne() * 0.8f + 1.0f;
        }

        sp34 = 1.3f - D_80A7DEB0;
        if (sp34 < 0.0f) {
            sp34 = 0.0f;
        } else {
            if (sp34 > 1.0f) {
                phi_f0 = 1.0f;
            } else {
                phi_f0 = sp34;
            }
            sp34 = phi_f0;
        }

        sp38 = (Rand_ZeroOne() - 0.5f) * 65535.0f * sp34;
        this->unk_328 = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos) + sp38;
    }

    Actor_SetScale(&this->actor, CLAMP_MAX(thisTemp->actor.scale.x + 0.0008f, 0.01f));

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        Math_SmoothStepToF(&this->actor.speedXZ, this->unk_324, 0.1f, 0.5f, 0.0f);
        Math_ScaledStepToS(&this->actor.world.rot.y, this->unk_328, 2000);
        sp50 = Math_ScaledStepToS(&this->actor.world.rot.x, 0, 2000);
        this->actor.shape.rot.y = this->actor.world.rot.y;
        this->actor.shape.rot.x = this->actor.world.rot.x;
    } else {
        Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 0.1f, 0.5f, 0.0f);
        this->actor.speedXZ += (Rand_ZeroOne() - 0.5f) * 0.14f;
        this->actor.velocity.y += Rand_ZeroOne() * 0.12f;
        this->actor.world.rot.y += this->unk_316;
        this->actor.shape.rot.y = this->actor.world.rot.y;
        this->actor.shape.rot.x -= 2000;
    }

    phi_f2 = Rand_ZeroOne() * 0.5f + this->actor.speedXZ * 1.3f;
    if (phi_f2 < 0.0f) {
        this->skelAnime.playSpeed = 0.0f;
    } else {
        if (phi_f2 > 1.9f) {
            phi_f0 = 1.9f;
        } else {
            phi_f0 = phi_f2;
        }
        this->skelAnime.playSpeed = phi_f0;
    }

    SkelAnime_Update(&this->skelAnime);
    if (!(this->insectFlags & INSECT_FLAG_DROPPED_HAS_LANDED) && (this->insectFlags & INSECT_FLAG_0) &&
        (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_EN_MUSI_LAND);
        this->insectFlags |= INSECT_FLAG_DROPPED_HAS_LANDED;
    }

    if (type == INSECT_TYPE_FIRST_DROPPED && (this->insectFlags & INSECT_FLAG_FOUND_SOIL) &&
        !(this->insectFlags & INSECT_FLAG_7)) {
        if (this->unk_32A >= 15) {
            if (this->soilActor != NULL) {
                if (!(GET_GS_FLAGS(((this->soilActor->actor.params >> 8) & 0x1F) - 1) &
                      (this->soilActor->actor.params & 0xFF))) {
                    func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
                }
            }
            this->insectFlags |= INSECT_FLAG_7;
        } else {
            this->unk_32A++;
        }
    }

    if ((this->insectFlags & INSECT_FLAG_0) && (this->actor.bgCheckFlags & BGCHECKFLAG_WATER_TOUCH)) {
        EnInsect_SetupWalkOnWater(this);
    } else if (this->insectFlags & INSECT_FLAG_FOUND_SOIL) {
        if (distanceSq < SQ(3.0f)) {
            EnInsect_SetupDig(this);
        } else if (this->actionTimer <= 0 || this->lifeTimer <= 0 ||
                   ((this->insectFlags & INSECT_FLAG_0) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) &&
                    sDroppedCount >= 4 && (type == INSECT_TYPE_FIRST_DROPPED || type == INSECT_TYPE_EXTRA_DROPPED))) {
            EnInsect_SetupDig(this);
        } else {
            if (distanceSq < SQ(30.0f)) {
                this->lifeTimer++;
                this->insectFlags |= INSECT_FLAG_SOIL_CLOSE;
            } else {
                this->actionTimer = 100;
            }
        }
    } else if (sp50 != 0) {
        EnInsect_SetupSlowDown(this);
    } else if ((type == INSECT_TYPE_FIRST_DROPPED || type == INSECT_TYPE_EXTRA_DROPPED) &&
               (this->insectFlags & INSECT_FLAG_0) && this->lifeTimer <= 0 && this->actionTimer <= 0 &&
               this->actor.floorHeight < BGCHECK_Y_MIN + 10.0f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // "BG missing? To do Actor_delete"
        osSyncPrintf("BG 抜け？ Actor_delete します(%s %d)\n", "../z_en_mushi.c", 1197);
        osSyncPrintf(VT_RST);
        Actor_Kill(&this->actor);
    }
}

void EnInsect_Update(Actor* thisx, PlayState* play) {
    EnInsect* this = (EnInsect*)thisx;
    s32 tmp;

    if (this->actor.child != NULL) {
        if (this->actor.child->update == NULL) {
            if (this->actor.child != &this->actor) {
                this->actor.child = NULL;
            }
        }
    }

    if (this->actionTimer > 0) {
        this->actionTimer--;
    }

    if (this->lifeTimer > 0) {
        this->lifeTimer--;
    }

    this->actionFunc(this, play);

    if (this->actor.update != NULL) {
        Actor_MoveForward(&this->actor);
        if (this->insectFlags & INSECT_FLAG_CRAWLING) {
            if (this->insectFlags & INSECT_FLAG_0) {
                if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
                    EnInsect_UpdateCrawlSfx(this);
                }
            } else {
                EnInsect_UpdateCrawlSfx(this);
            }
        }

        tmp = 0;

        if (this->insectFlags & INSECT_FLAG_0) {
            tmp = UPDBGCHECKINFO_FLAG_2;
        }

        if (this->insectFlags & INSECT_FLAG_1) {
            tmp |= UPDBGCHECKINFO_FLAG_0;
        }

        if (tmp != 0) {
            tmp |= UPDBGCHECKINFO_FLAG_6;
            Actor_UpdateBgCheckInfo(play, &this->actor, 8.0f, 5.0f, 0.0f, tmp);
        }

        if (Actor_HasParent(&this->actor, play)) {
            this->actor.parent = NULL;
            tmp = this->actor.params & 3;

            if (tmp == INSECT_TYPE_FIRST_DROPPED || tmp == INSECT_TYPE_EXTRA_DROPPED) {
                Actor_Kill(&this->actor);
            } else {
                EnInsect_SetupCaught(this);
            }
        } else if (this->actor.xzDistToPlayer < 50.0f && this->actionFunc != EnInsect_Caught) {
            if (!(this->insectFlags & INSECT_FLAG_SOIL_CLOSE) && this->lifeTimer < 180) {
                CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
            }

            if (!(this->insectFlags & INSECT_FLAG_UNCATCHABLE) && sCaughtCount < 4 &&
                EnInsect_InBottleRange(this, play) &&
                // GI_MAX in this case allows the player to catch the actor in a bottle
                func_8002F434(&this->actor, play, GI_MAX, 60.0f, 30.0f)) {
                sCaughtCount++;
            }
        }

        Actor_SetFocus(&this->actor, 0.0f);
    }
}

void EnInsect_Draw(Actor* thisx, PlayState* play) {
    EnInsect* this = (EnInsect*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, NULL);
    Collider_UpdateSpheres(0, &this->collider);
    sCaughtCount = 0;
}
