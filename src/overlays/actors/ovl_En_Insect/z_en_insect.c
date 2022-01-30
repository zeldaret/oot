/*
 * File: z_en_insect.c
 * Overlay: ovl_En_Insect
 * Description: Bugs
 */

#include "z_en_insect.h"
#include "vt.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0

void EnInsect_Init(Actor* thisx, GlobalContext* globalCtx);
void EnInsect_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnInsect_Update(Actor* thisx, GlobalContext* globalCtx);
void EnInsect_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnInsect_SetupCrawl(EnInsect* this);
void EnInsect_Crawl(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_SetupCrawlToSpawn(EnInsect* this);
void EnInsect_CrawlToSpawn(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_SetupRunFromPlayer(EnInsect* this);
void EnInsect_RunFromPlayer(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_SetupCaught(EnInsect* this);
void EnInsect_UpdateCaught(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_SetupDig(EnInsect* this);
void EnInsect_Dig(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_SetupSink(EnInsect* this);
void EnInsect_Sink(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_SetupDrown(EnInsect* this);
void EnInsect_Drown(EnInsect* this, GlobalContext* globalCtx);
void EnInsect_SetupDropped(EnInsect* this);
void EnInsect_UpdateDropped(EnInsect* this, GlobalContext* globalCtx);

static f32 D_80A7DEB0 = 0.0f;
/**
 * The number of bugs caught this frame.
 */
static s16 sCaughtCount = 0;
/**
 * The number of active dropped bugs.
 */
static s16 sDroppedCount = 0;

const ActorInit En_Insect_InitVars = {
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
 * The inital flags for a new bug, depending on its type.
 */
static u16 sInitFlags[] = {
    0,
    INSECT_FLAG_TEMP_AND_ALIVE | INSECT_FLAG_TEMP,
    INSECT_FLAG_TEMP_AND_ALIVE | INSECT_FLAG_ON_GROUND | INSECT_FLAG_TEMP,
    INSECT_FLAG_TEMP_AND_ALIVE | INSECT_FLAG_ON_GROUND | INSECT_FLAG_TEMP
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 700, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 20, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 600, ICHAIN_STOP),
};

void EnInsect_InitFlags(EnInsect* this) {
    this->flags = sInitFlags[this->actor.params & 3];
}

f32 EnInsect_XZDistanceSquared(Vec3f* v1, Vec3f* v2) {
    return SQ(v1->x - v2->x) + SQ(v1->z - v2->z);
}

s32 EnInsect_InBottleRange(EnInsect* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = GET_PLAYER(globalCtx);
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

void EnInsect_SetupAnimation(EnInsect* this) {
    Animation_Change(&this->skelAnime, &gBugCrawlAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP_INTERP, 0.0f);
}

/**
 * Find the nearest soft dirt patch within 6400 units in the xz plane and the current room
 *
 * @return 1 if one was found, 0 otherwise
 */
s32 EnInsect_FoundNearbySoil(EnInsect* this, GlobalContext* globalCtx) {
    Actor* currentActor;
    f32 currentDistance;
    f32 bestDistance;
    s32 ret;

    ret = 0;
    currentActor = globalCtx->actorCtx.actorLists[ACTORCAT_ITEMACTION].head;
    bestDistance = 6400.0f;
    this->soilActor = NULL;

    while (currentActor != NULL) {
        if (currentActor->id == ACTOR_OBJ_MAKEKINSUTA) {
            currentDistance = Math3D_Dist2DSq(this->actor.world.pos.x, this->actor.world.pos.z,
                                              currentActor->world.pos.x, currentActor->world.pos.z);

            if (currentDistance < bestDistance && currentActor->room == this->actor.room) {
                ret = 1;
                bestDistance = currentDistance;
                this->soilActor = (ObjMakekinsuta*)currentActor;
            }
        }
        currentActor = currentActor->next;
    }
    return ret;
}

/**
 * Update the crawl sound timer, and play the crawling sound when it reaches 0.
 * TODO: this might need a better name, since it doesn't always play the sound.
 */
void EnInsect_PlayCrawlSound(EnInsect* this) {
    if (this->crawlSoundTimer > 0) {
        this->crawlSoundTimer--;
        return;
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_WALK);

    this->crawlSoundTimer = 3.0f / CLAMP_MIN(this->skelAnime.playSpeed, 0.1f);
    if (this->crawlSoundTimer < 2) {
        this->crawlSoundTimer = 2;
    }
}

void EnInsect_Init(Actor* thisx, GlobalContext* globalCtx2) {
    EnInsect* this = (EnInsect*)thisx;
    GlobalContext* globalCtx = globalCtx2;
    f32 rand;
    s16 type;
    s32 count;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    EnInsect_InitFlags(this);

    type = this->actor.params & 3;

    SkelAnime_Init(globalCtx, &this->skelAnime, &gBugSkel, &gBugCrawlAnim, this->jointTable, this->morphTable, 24);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sColliderInit, &this->colliderItem);

    this->actor.colChkInfo.mass = 30;

    if (this->flags & INSECT_FLAG_TEMP_AND_ALIVE) {
        this->actor.gravity = -0.2f;
        this->actor.minVelocityY = -2.0f;
    }

    if (this->flags & INSECT_FLAG_TEMP) {
        this->lifeTimer = Rand_S16Offset(200, 40);
        this->actor.flags |= ACTOR_FLAG_4;
    }

    if (IS_DROPPED(type)) {
        if (EnInsect_FoundNearbySoil(this, globalCtx)) {
            this->flags |= INSECT_FLAG_FOUND_SOIL;
            D_80A7DEB0 = 0.0f;
        }

        if (type == INSECT_FIRST_DROPPED) {
            this->actor.world.rot.z = 0;
            this->actor.shape.rot.z = this->actor.world.rot.z;

            for (count = 0; count < 2; count++) {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_INSECT, this->actor.world.pos.x,
                            this->actor.world.pos.y, this->actor.world.pos.z, this->actor.shape.rot.x,
                            this->actor.shape.rot.y, this->actor.shape.rot.z, INSECT_EXTRA_DROPPED);
            }
        }

        EnInsect_SetupDropped(this);

        sDroppedCount++;
    } else {
        rand = Rand_ZeroOne();

        if (rand < 0.3f) {
            EnInsect_SetupCrawl(this);
        } else if (rand < 0.4f) {
            EnInsect_SetupCrawlToSpawn(this);
        } else {
            EnInsect_SetupRunFromPlayer(this);
        }
    }
}

void EnInsect_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s16 type;
    EnInsect* this = (EnInsect*)thisx;

    type = this->actor.params & 3;
    Collider_DestroyJntSph(globalCtx, &this->collider);
    if (IS_DROPPED(type) && sDroppedCount > 0) {
        sDroppedCount--;
    }
}

void EnInsect_SetupCrawl(EnInsect* this) {
    this->actionTimer = Rand_S16Offset(5, 35);
    EnInsect_SetupAnimation(this);
    this->actionFunc = EnInsect_Crawl;
    this->flags |= INSECT_FLAG_CRAWLING;
}

void EnInsect_Crawl(EnInsect* this, GlobalContext* globalCtx) {
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
        EnInsect_SetupCrawlToSpawn(this);
    }

    if (((this->flags & INSECT_FLAG_TEMP) && this->lifeTimer <= 0) ||
        (IS_DROPPED(type) && (this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && (this->actor.bgCheckFlags & 1) && sDroppedCount >= 4)) {
        EnInsect_SetupDig(this);
    } else if ((this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && (this->actor.bgCheckFlags & 0x40)) {
        EnInsect_SetupSink(this);
    } else if (this->actor.xzDistToPlayer < 40.0f) {
        EnInsect_SetupRunFromPlayer(this);
    }
}

void EnInsect_SetupCrawlToSpawn(EnInsect* this) {
    this->actionTimer = Rand_S16Offset(10, 45);
    EnInsect_SetupAnimation(this);
    this->actionFunc = EnInsect_CrawlToSpawn;
    this->flags |= INSECT_FLAG_CRAWLING;
}

void EnInsect_CrawlToSpawn(EnInsect* this, GlobalContext* globalCtx) {
    s32 pad1;
    s32 pad2;
    s16 yaw;
    s16 type = this->actor.params & 3;

    Math_SmoothStepToF(&this->actor.speedXZ, 1.5f, 0.1f, 0.5f, 0.0f);

    if (EnInsect_XZDistanceSquared(&this->actor.world.pos, &this->actor.home.pos) > 1600.0f || (this->actionTimer < 4)) {
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
        EnInsect_SetupCrawl(this);
    }

    if (((this->flags & INSECT_FLAG_TEMP) && this->lifeTimer <= 0) ||
        (IS_DROPPED(type) && (this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && (this->actor.bgCheckFlags & 1) && sDroppedCount >= 4)) {
        EnInsect_SetupDig(this);
    } else if ((this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && (this->actor.bgCheckFlags & 0x40)) {
        EnInsect_SetupSink(this);
    } else if (this->actor.xzDistToPlayer < 40.0f) {
        EnInsect_SetupRunFromPlayer(this);
    }
}

void EnInsect_SetupRunFromPlayer(EnInsect* this) {
    this->actionTimer = Rand_S16Offset(10, 40);
    EnInsect_SetupAnimation(this);
    this->actionFunc = EnInsect_RunFromPlayer;
    this->flags |= INSECT_FLAG_CRAWLING;
}

void EnInsect_RunFromPlayer(EnInsect* this, GlobalContext* globalCtx) {
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
        frames = globalCtx->state.frames;
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
        if (globalCtx) {} // Must be 'globalCtx'
        Math_ScaledStepToS(&this->actor.world.rot.y, yaw, 2000);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->skelAnime.playSpeed = CLAMP(this->actor.speedXZ * 1.6f, 0.8f, 1.9f);
    SkelAnime_Update(&this->skelAnime);

    if (this->actionTimer <= 0 || !playerIsClose) {
        EnInsect_SetupCrawl(this);
    } else if ((this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && (this->actor.bgCheckFlags & 0x40)) {
        EnInsect_SetupSink(this);
    }
}

void EnInsect_SetupCaught(EnInsect* this) {
    this->actionTimer = 200;

    Actor_SetScale(&this->actor, 0.001f);

    this->actor.draw = NULL;
    this->actor.speedXZ = 0.0f;

    EnInsect_SetupAnimation(this);

    this->skelAnime.playSpeed = 0.3f;
    this->actionFunc = EnInsect_UpdateCaught;
    this->flags &= ~INSECT_FLAG_CRAWLING;
}

void EnInsect_UpdateCaught(EnInsect* this, GlobalContext* globalCtx) {
    if (this->actionTimer == 20 && !(this->flags & INSECT_FLAG_TEMP)) {
        this->actor.draw = EnInsect_Draw;
    } else if (this->actionTimer == 0) {
        if (this->flags & INSECT_FLAG_TEMP) {
            Actor_Kill(&this->actor);
        } else {
            Actor_SetScale(&this->actor, 0.01f);
            EnInsect_SetupCrawl(this);
        }
    } else if (this->actionTimer < 20) {
        Actor_SetScale(&this->actor, CLAMP_MAX(this->actor.scale.x + 0.001f, 0.01f));
        SkelAnime_Update(&this->skelAnime);
    }
}

void EnInsect_SetupDig(EnInsect* this) {
    this->actionTimer = 60;
    EnInsect_SetupAnimation(this);
    this->skelAnime.playSpeed = 1.9f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_SINK);
    Math_Vec3f_Copy(&this->actor.home.pos, &this->actor.world.pos);
    this->actionFunc = EnInsect_Dig;
    this->flags &= ~INSECT_FLAG_CRAWLING;
    this->flags |= INSECT_FLAG_UNCATCHABLE;
}

void EnInsect_Dig(EnInsect* this, GlobalContext* globalCtx) {
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
        func_800286CC(globalCtx, &this->actor.world.pos, &velocity, &accel, Rand_ZeroOne() * 5.0f + 8.0f,
                      Rand_ZeroOne() * 5.0f + 8.0f);
    }

    if (this->actionTimer <= 0) {
        if ((this->flags & INSECT_FLAG_FOUND_SOIL) && this->soilActor != NULL &&
            Math3D_Vec3fDistSq(&this->soilActor->actor.world.pos, &this->actor.world.pos) < 64.0f) {
            this->soilActor->unk_152 = 1;
        }
        Actor_Kill(&this->actor);
    }
}

void EnInsect_SetupSink(EnInsect* this) {
    this->actionTimer = Rand_S16Offset(120, 50);
    EnInsect_SetupAnimation(this);
    this->unk_316 = this->unk_318 = 0;
    this->actionFunc = EnInsect_Sink;
    this->flags &= ~INSECT_FLAG_CRAWLING;
}

void EnInsect_Sink(EnInsect* this, GlobalContext* globalCtx) {
    f32 temp_f0;
    s16 temp_v1;
    s16 pad;
    s16 type;
    Vec3f ripplePoint;
    s32 phi_v0;
    s32 phi_v0_2;

    type = this->actor.params & 3;

    if (this->actionTimer >= 81) {
        Math_StepToF(&this->actor.speedXZ, 0.6f, 0.08f);
    } else {
        Math_StepToF(&this->actor.speedXZ, 0.0f, 0.02f);
    }
    this->actor.velocity.y = 0.0f;
    this->actor.world.pos.y += this->actor.yDistToWater;
    this->skelAnime.playSpeed = CLAMP(this->actionTimer * 0.018f, 0.1f, 1.9f);

    SkelAnime_Update(&this->skelAnime);

    if (this->actionTimer >= 81) {
        this->unk_316 += Rand_S16Offset(-50, 100);
        this->unk_318 += Rand_S16Offset(-300, 600);
    }

    temp_v1 = this->skelAnime.playSpeed * 200.0f;

    if (this->unk_316 < -temp_v1) {
        this->unk_316 = -temp_v1;
    } else {
        if (temp_v1 < this->unk_316) {
            phi_v0 = temp_v1;
        } else {
            phi_v0 = this->unk_316;
        }
        this->unk_316 = phi_v0;
    }
    this->actor.world.rot.y += this->unk_316;

    temp_v1 = this->skelAnime.playSpeed * 1000.0f;
    if (this->unk_318 < -temp_v1) {
        this->unk_318 = -temp_v1;
    } else {
        if (temp_v1 < this->unk_318) {
            phi_v0_2 = temp_v1;
        } else {
            phi_v0_2 = this->unk_318;
        }
        this->unk_318 = phi_v0_2;
    }
    this->actor.shape.rot.y += this->unk_318;

    Math_ScaledStepToS(&this->actor.world.rot.x, 0, 3000);
    this->actor.shape.rot.x = this->actor.world.rot.x;

    if (Rand_ZeroOne() < 0.03f) {
        ripplePoint.x = this->actor.world.pos.x;
        ripplePoint.y = this->actor.world.pos.y + this->actor.yDistToWater;
        ripplePoint.z = this->actor.world.pos.z;
        EffectSsGRipple_Spawn(globalCtx, &ripplePoint, 20, 100, 4);
        EffectSsGRipple_Spawn(globalCtx, &ripplePoint, 40, 200, 8);
    }

    if (this->actionTimer <= 0 || ((this->flags & INSECT_FLAG_TEMP) && this->lifeTimer <= 0) ||
        (IS_DROPPED(type) && (this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && sDroppedCount >= 4)) {
        EnInsect_SetupDrown(this);
    } else if (!(this->actor.bgCheckFlags & 0x40)) {
        if (this->flags & INSECT_FLAG_FOUND_SOIL) {
            EnInsect_SetupDropped(this);
        } else {
            EnInsect_SetupCrawl(this);
        }
    }
}

void EnInsect_SetupDrown(EnInsect* this) {
    this->actionTimer = 100;
    EnInsect_SetupAnimation(this);
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.minVelocityY = -0.8f;
    this->actor.gravity = -0.04f;
    this->flags &= ~(INSECT_FLAG_TEMP_AND_ALIVE | INSECT_FLAG_ON_GROUND);
    this->actionFunc = EnInsect_Drown;
    this->flags &= ~INSECT_FLAG_CRAWLING;
    this->flags |= INSECT_FLAG_UNCATCHABLE;
}

void EnInsect_Drown(EnInsect* this, GlobalContext* globalCtx) {
    this->actor.shape.rot.x -= 500;
    this->actor.shape.rot.y += 200;
    Actor_SetScale(&this->actor, CLAMP_MIN(this->actor.scale.x - 0.00005f, 0.001f));

    if (this->actor.yDistToWater > 5.0f && this->actor.yDistToWater < 30.0f && Rand_ZeroOne() < 0.3f) {
        EffectSsBubble_Spawn(globalCtx, &this->actor.world.pos, -5.0f, 5.0f, 5.0f, (Rand_ZeroOne() * 0.04f) + 0.02f);
    }

    if (this->actionTimer <= 0) {
        Actor_Kill(&this->actor);
    }
}

void EnInsect_SetupDropped(EnInsect* this) {
    EnInsect_SetupAnimation(this);
    this->actionTimer = 100;
    this->unk_324 = 1.5f;
    this->unk_328 = Rand_ZeroOne() * (0xFFFF + 0.5f);
    this->unk_316 = (Rand_ZeroOne() - 0.5f) * 1500.0f;
    this->actor.world.rot.y = Rand_ZeroOne() * (0xFFFF + 0.5f);
    Actor_SetScale(&this->actor, 0.003f);
    this->actionFunc = EnInsect_UpdateDropped;
    this->flags |= INSECT_FLAG_CRAWLING;
}

void EnInsect_UpdateDropped(EnInsect* this, GlobalContext* globalCtx) {
    s32 temp_a0;
    s32 sp50;
    f32 phi_f0;
    EnInsect* thisTemp = this;
    s32 temp_a1;
    f32 distance;
    f32 phi_f2;
    s16 type;
    s16 sp38;
    f32 sp34;

    sp50 = 0;
    type = this->actor.params & 3;

    if (this->soilActor != NULL) {
        distance = Math3D_Vec3fDistSq(&this->actor.world.pos, &this->soilActor->actor.world.pos);
    } else {
        if (this->flags & INSECT_FLAG_FOUND_SOIL) {
            osSyncPrintf(VT_COL(YELLOW, BLACK));
            // "warning: target Actor is NULL"
            osSyncPrintf("warning:目標 Actor が NULL (%s %d)\n", "../z_en_mushi.c", 1046);
            osSyncPrintf(VT_RST);
        }
        distance = 40.0f;
    }

    D_80A7DEB0 += 0.99999994f / 300.0f;
    if (D_80A7DEB0 > 1.0f) {
        D_80A7DEB0 = 1.0f;
    }

    if (D_80A7DEB0 > 0.999f) {
        phi_f2 = 0.0f;
    } else {
        if (distance > 900.0f) {
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

    if (this->actor.bgCheckFlags & 1) {
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
    if (!(this->flags & INSECT_FLAG_LANDED) && (this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && (this->actor.bgCheckFlags & 1)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_LAND);
        this->flags |= INSECT_FLAG_LANDED;
    }

    if (type == INSECT_FIRST_DROPPED && (this->flags & INSECT_FLAG_FOUND_SOIL) && !(this->flags & INSECT_FLAG_7)) {
        if (this->unk_32A >= 15) {
            if (this->soilActor != NULL) {
                if (!(GET_GS_FLAGS(((this->soilActor->actor.params >> 8) & 0x1F) - 1) &
                      (this->soilActor->actor.params & 0xFF))) {
                    func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
                }
            }
            this->flags |= INSECT_FLAG_7;
        } else {
            this->unk_32A++;
        }
    }

    if ((this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && (this->actor.bgCheckFlags & 0x40)) {
        EnInsect_SetupSink(this);
    } else if (this->flags & INSECT_FLAG_FOUND_SOIL) {
        if (distance < 9.0f) {
            EnInsect_SetupDig(this);
        } else if (this->actionTimer <= 0 || this->lifeTimer <= 0 ||
                   ((this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && (this->actor.bgCheckFlags & 1) && sDroppedCount >= 4 &&
                    IS_DROPPED(type))) {
            EnInsect_SetupDig(this);
        } else {
            if (distance < 900.0f) {
                this->lifeTimer++;
                this->flags |= INSECT_FLAG_SOIL_CLOSE;
            } else {
                this->actionTimer = 100;
            }
        }
    } else if (sp50 != 0) {
        EnInsect_SetupCrawl(this);
    } else if (IS_DROPPED(type) && (this->flags & INSECT_FLAG_TEMP_AND_ALIVE) && this->lifeTimer <= 0 && this->actionTimer <= 0 &&
               this->actor.floorHeight < BGCHECK_Y_MIN + 10.0f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // "BG missing? To do Actor_delete"
        osSyncPrintf("BG 抜け？ Actor_delete します(%s %d)\n", "../z_en_mushi.c", 1197);
        osSyncPrintf(VT_RST);
        Actor_Kill(&this->actor);
    }
}

void EnInsect_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnInsect* this = (EnInsect*)thisx;
    s32 tmp;

    if (this->actor.child != NULL) {
        if (this->actor.child->update == NULL) {
            if (&this->actor != this->actor.child) {
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

    this->actionFunc(this, globalCtx);

    if (this->actor.update != NULL) {
        Actor_MoveForward(&this->actor);
        if (this->flags & INSECT_FLAG_CRAWLING) {
            if (this->flags & INSECT_FLAG_TEMP_AND_ALIVE) {
                if (this->actor.bgCheckFlags & 1) {
                    EnInsect_PlayCrawlSound(this);
                }
            } else {
                EnInsect_PlayCrawlSound(this);
            }
        }

        tmp = 0;

        if (this->flags & INSECT_FLAG_TEMP_AND_ALIVE) {
            tmp = 4;
        }

        if (this->flags & INSECT_FLAG_ON_GROUND) {
            tmp |= 1;
        }

        if (tmp != 0) {
            tmp |= 0x40;
            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 8.0f, 5.0f, 0.0f, tmp);
        }

        if (Actor_HasParent(&this->actor, globalCtx)) {
            this->actor.parent = NULL;
            tmp = this->actor.params & 3;

            if (IS_DROPPED(tmp)) {
                Actor_Kill(&this->actor);
            } else {
                EnInsect_SetupCaught(this);
            }
        } else if (this->actor.xzDistToPlayer < 50.0f && this->actionFunc != EnInsect_UpdateCaught) {
            if (!(this->flags & INSECT_FLAG_SOIL_CLOSE) && this->lifeTimer < 180) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            }

            if (!(this->flags & INSECT_FLAG_UNCATCHABLE) && sCaughtCount < 4 && EnInsect_InBottleRange(this, globalCtx) &&
                // GI_MAX in this case allows the player to catch the actor in a bottle
                func_8002F434(&this->actor, globalCtx, GI_MAX, 60.0f, 30.0f)) {
                sCaughtCount++;
            }
        }

        Actor_SetFocus(&this->actor, 0.0f);
    }
}

void EnInsect_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnInsect* this = (EnInsect*)thisx;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, NULL);
    Collider_UpdateSpheres(0, &this->collider);
    sCaughtCount = 0;
}
