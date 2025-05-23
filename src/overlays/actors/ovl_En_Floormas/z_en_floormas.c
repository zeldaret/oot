/*
 * File: z_en_floormas
 * Overlay: En_Floormas
 * Description: Floormaster
 */

#include "z_en_floormas.h"
#include "assets/objects/object_wallmaster/object_wallmaster.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER)

#define SPAWN_INVISIBLE 0x8000
#define SPAWN_SMALL 0x10

#define MERGE_LEADER 0x40
#define MERGE_FOLLOWER 0x20

void EnFloormas_Init(Actor* thisx, PlayState* play2);
void EnFloormas_Destroy(Actor* thisx, PlayState* play);
void EnFloormas_Update(Actor* thisx, PlayState* play);
void EnFloormas_Draw(Actor* thisx, PlayState* play);

void EnFloormas_GrabLink(EnFloormas* this, PlayState* play);
void EnFloormas_Split(EnFloormas* this, PlayState* play);
void EnFloormas_Recover(EnFloormas* this, PlayState* play);
void EnFloormas_DrawHighlighted(Actor* thisx, PlayState* play);
void EnFloormas_SmallWait(EnFloormas* this, PlayState* play);
void EnFloormas_SetupBigDecideAction(EnFloormas* this);
void EnFloormas_Freeze(EnFloormas* this, PlayState* play);
void EnFloormas_TakeDamage(EnFloormas* this, PlayState* play);
void EnFloormas_Merge(EnFloormas* this, PlayState* play);
void EnFloormas_JumpAtLink(EnFloormas* this, PlayState* play);
void EnFloormas_SmallFollowerJumpAtLeader(EnFloormas* this, PlayState* play);
void EnFloormas_SmallShrink(EnFloormas* this, PlayState* play);
void EnFloormas_SmallDecideAction(EnFloormas* this, PlayState* play);
void EnFloormas_SmallWalk(EnFloormas* this, PlayState* play);
void EnFloormas_Land(EnFloormas* this, PlayState* play);
void EnFloormas_Hover(EnFloormas* this, PlayState* play);
void EnFloormas_Turn(EnFloormas* this, PlayState* play);
void EnFloormas_Run(EnFloormas* this, PlayState* play);
void EnFloormas_BigStopWalk(EnFloormas* this, PlayState* play);
void EnFloormas_BigWalk(EnFloormas* this, PlayState* play);
void EnFloormas_Stand(EnFloormas* this, PlayState* play);
void EnFloormas_BigDecideAction(EnFloormas* this, PlayState* play);
void EnFloormas_Charge(EnFloormas* this, PlayState* play);

ActorProfile En_Floormas_Profile = {
    /**/ ACTOR_EN_FLOORMAS,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_WALLMASTER,
    /**/ sizeof(EnFloormas),
    /**/ EnFloormas_Init,
    /**/ EnFloormas_Destroy,
    /**/ EnFloormas_Update,
    /**/ EnFloormas_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_HIT0,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x04, 0x10 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_HARD,
        ACELEM_ON | ACELEM_HOOKABLE,
        OCELEM_ON,
    },
    { 25, 40, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 4, 30, 40, 150 };

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x1),
    /* Deku stick    */ DMG_ENTRY(2, 0x0),
    /* Slingshot     */ DMG_ENTRY(1, 0x0),
    /* Explosive     */ DMG_ENTRY(2, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x1),
    /* Normal arrow  */ DMG_ENTRY(2, 0x0),
    /* Hammer swing  */ DMG_ENTRY(2, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x1),
    /* Kokiri sword  */ DMG_ENTRY(1, 0x0),
    /* Master sword  */ DMG_ENTRY(2, 0x0),
    /* Giant's Knife */ DMG_ENTRY(4, 0x0),
    /* Fire arrow    */ DMG_ENTRY(4, 0x2),
    /* Ice arrow     */ DMG_ENTRY(2, 0x0),
    /* Light arrow   */ DMG_ENTRY(4, 0x4),
    /* Unk arrow 1   */ DMG_ENTRY(4, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(2, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(2, 0x0),
    /* Fire magic    */ DMG_ENTRY(4, 0x2),
    /* Ice magic     */ DMG_ENTRY(0, 0x0),
    /* Light magic   */ DMG_ENTRY(4, 0x4),
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
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_FLOORMASTER, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 5500, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -1000, ICHAIN_STOP),
};

void EnFloormas_Init(Actor* thisx, PlayState* play2) {
    EnFloormas* this = (EnFloormas*)thisx;
    PlayState* play = play2;
    s32 invisble;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 50.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gWallmasterSkel, &gWallmasterWaitAnim, this->jointTable,
                       this->morphTable, 25);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->zOffset = -1600;
    invisble = PARAMS_GET_NOSHIFT(this->actor.params, 15, 1); // SPAWN_INVISIBLE

    // s16 cast needed
    this->actor.params &= (s16) ~(SPAWN_INVISIBLE);
    if (invisble) {
        this->actor.flags |= ACTOR_FLAG_REACT_TO_LENS;
        this->actor.draw = EnFloormas_DrawHighlighted;
    }

    if (this->actor.params == SPAWN_SMALL) {
        this->actor.draw = NULL;
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        this->actionFunc = EnFloormas_SmallWait;
    } else {
        // spawn first small floormaster
        this->actor.parent =
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_FLOORMAS, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, 0, 0, 0, invisble + SPAWN_SMALL);
        if (this->actor.parent == NULL) {
            Actor_Kill(&this->actor);
            return;
        }
        // spawn 2nd small floormaster
        this->actor.child =
            Actor_Spawn(&play->actorCtx, play, ACTOR_EN_FLOORMAS, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, 0, 0, 0, invisble + SPAWN_SMALL);
        if (this->actor.child == NULL) {
            Actor_Kill(this->actor.parent);
            Actor_Kill(&this->actor);
            return;
        }

        // link floormasters together
        this->actor.parent->child = &this->actor;
        this->actor.parent->parent = this->actor.child;
        this->actor.child->parent = &this->actor;
        this->actor.child->child = this->actor.parent;
        EnFloormas_SetupBigDecideAction(this);
    }
}

void EnFloormas_Destroy(Actor* thisx, PlayState* play) {
    EnFloormas* this = (EnFloormas*)thisx;
    ColliderCylinder* col = &this->collider;
    Collider_DestroyCylinder(play, col);
}

void EnFloormas_MakeInvulnerable(EnFloormas* this) {
    this->collider.base.colMaterial = COL_MATERIAL_HARD;
    this->collider.base.acFlags |= AC_HARD;
    this->actionTarget = 0x28;
}

void EnFloormas_MakeVulnerable(EnFloormas* this) {
    this->collider.base.colMaterial = COL_MATERIAL_HIT0;
    this->actionTarget = 0;
    this->collider.base.acFlags &= ~AC_HARD;
}

void EnFloormas_SetupBigDecideAction(EnFloormas* this) {
    Animation_PlayOnce(&this->skelAnime, &gWallmasterWaitAnim);
    this->actionFunc = EnFloormas_BigDecideAction;
    this->actor.speed = 0.0f;
}

void EnFloormas_SetupStand(EnFloormas* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gWallmasterStandUpAnim, -3.0f);
    this->actionFunc = EnFloormas_Stand;
}

void EnFloormas_SetupBigWalk(EnFloormas* this) {
    if (this->actionFunc != EnFloormas_Run) {
        Animation_PlayLoopSetSpeed(&this->skelAnime, &gWallmasterWalkAnim, 1.5f);
    } else {
        this->skelAnime.playSpeed = 1.5f;
    }

    this->actionTimer = Rand_S16Offset(2, 4);
    this->actionFunc = EnFloormas_BigWalk;
    this->actor.speed = 1.5f;
}

void EnFloormas_SetupBigStopWalk(EnFloormas* this) {
    Animation_PlayOnce(&this->skelAnime, &gWallmasterStopWalkAnim);
    this->actionFunc = EnFloormas_BigStopWalk;
    this->actor.speed = 0.0f;
}

void EnFloormas_SetupRun(EnFloormas* this) {
    this->actionTimer = 0;
    this->actionFunc = EnFloormas_Run;
    this->actor.speed = 5.0f;
    this->skelAnime.playSpeed = 3.0f;
}

void EnFloormas_SetupTurn(EnFloormas* this) {
    s16 rotDelta = this->actionTarget - this->actor.shape.rot.y;

    this->actor.speed = 0.0f;
    if (rotDelta > 0) {
        Animation_MorphToPlayOnce(&this->skelAnime, &gFloormasterTurnAnim, -3.0f);
    } else {
        Animation_Change(&this->skelAnime, &gFloormasterTurnAnim, -1.0f, Animation_GetLastFrame(&gFloormasterTurnAnim),
                         0.0f, ANIMMODE_ONCE, -3.0f);
    }

    if (this->actor.scale.x > 0.004f) {
        this->actionTarget = (rotDelta * (2.0f / 30.0f));
    } else {
        this->skelAnime.playSpeed *= 2.0f;
        this->actionTarget = rotDelta * (2.0f / 15.0f);
    }
    this->actionFunc = EnFloormas_Turn;
}

void EnFloormas_SetupHover(EnFloormas* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gWallmasterHoverAnim, 3.0f, 0, Animation_GetLastFrame(&gWallmasterHoverAnim),
                     ANIMMODE_ONCE, -3.0f);
    this->actor.speed = 0.0f;
    this->actor.gravity = 0.0f;
    EnFloormas_MakeInvulnerable(this);
    Actor_SpawnFloorDustRing(play, &this->actor, &this->actor.world.pos, 15.0f, 6, 20.0f, 300, 100, true);
    Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_ATTACK);
    this->actionFunc = EnFloormas_Hover;
}

void EnFloormas_SetupCharge(EnFloormas* this) {
    this->actionTimer = 25;
    this->actor.gravity = -0.15f;
    this->actionFunc = EnFloormas_Charge;
    this->actor.speed = 0.5f;
}

void EnFloormas_SetupLand(EnFloormas* this) {
    Animation_Change(&this->skelAnime, &gWallmasterJumpAnim, 1.0f, 41.0f, 42.0f, ANIMMODE_ONCE, 5.0f);
    if ((this->actor.speed < 0.0f) || (this->actionFunc != EnFloormas_Charge)) {
        this->actionTimer = 30;
    } else {
        this->actionTimer = 45;
    }
    this->actor.gravity = -1.0f;
    this->actionFunc = EnFloormas_Land;
}

void EnFloormas_SetupSplit(EnFloormas* this) {
    Actor_SetScale(&this->actor, 0.004f);
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    if (CHECK_FLAG_ALL(this->actor.flags, ACTOR_FLAG_REACT_TO_LENS)) {
        this->actor.draw = EnFloormas_DrawHighlighted;
    } else {
        this->actor.draw = EnFloormas_Draw;
    }
    this->actor.shape.rot.y = this->actor.parent->shape.rot.y + 0x5555;
    this->actor.world.pos = this->actor.parent->world.pos;
    this->actor.params = 0x10;
    Animation_Change(&this->skelAnime, &gWallmasterJumpAnim, 1.0f, 41.0f, Animation_GetLastFrame(&gWallmasterJumpAnim),
                     ANIMMODE_ONCE, 0.0f);
    this->collider.dim.radius = sCylinderInit.dim.radius * 0.6f;
    this->collider.dim.height = sCylinderInit.dim.height * 0.6f;
    this->collider.elem.acElemFlags &= ~ACELEM_HOOKABLE;
    this->actor.speed = 4.0f;
    this->actor.velocity.y = 7.0f;
    // using div creates a signed check.
    this->actor.colChkInfo.health = sColChkInfoInit.health >> 1;
    this->actionFunc = EnFloormas_Split;
}

void EnFloormas_SetupSmallWalk(EnFloormas* this) {
    Animation_PlayLoopSetSpeed(&this->skelAnime, &gWallmasterWalkAnim, 4.5f);
    this->actionFunc = EnFloormas_SmallWalk;
    this->actor.speed = 5.0f;
}

void EnFloormas_SetupSmallDecideAction(EnFloormas* this) {
    if (this->actionFunc != EnFloormas_SmallWalk) {
        Animation_PlayLoopSetSpeed(&this->skelAnime, &gWallmasterWalkAnim, 4.5f);
    }
    this->actionFunc = EnFloormas_SmallDecideAction;
    this->actor.speed = 5.0f;
}

void EnFloormas_SetupSmallShrink(EnFloormas* this, PlayState* play) {
    static Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    static Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;

    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    pos.x = this->actor.world.pos.x;
    pos.y = this->actor.world.pos.y + 15.0f;
    pos.z = this->actor.world.pos.z;
    EffectSsDeadDb_Spawn(play, &pos, &velocity, &accel, 150, -10, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
    this->actionFunc = EnFloormas_SmallShrink;
}

void EnFloormas_SetupSmallFollowerJumpAtLeader(EnFloormas* this) {
    Animation_Change(&this->skelAnime, &gWallmasterJumpAnim, 2.0f, 0.0f, 41.0f, ANIMMODE_ONCE, 0.0f);
    this->actionFunc = EnFloormas_SmallFollowerJumpAtLeader;
    this->actor.speed = 0.0f;
}

void EnFloormas_SetupJumpAtLink(EnFloormas* this) {
    Animation_Change(&this->skelAnime, &gWallmasterJumpAnim, 2.0f, 0.0f, 41.0f, ANIMMODE_ONCE, 0.0f);
    this->actionFunc = EnFloormas_JumpAtLink;
    this->actor.speed = 0.0f;
}

void EnFloormas_SetupGrabLink(EnFloormas* this, Player* player) {
    f32 yDelta;
    f32 xzDelta;

    Animation_Change(&this->skelAnime, &gWallmasterJumpAnim, 1.0f, 36.0f, 45.0f, ANIMMODE_ONCE, -3.0f);
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
    EnFloormas_MakeInvulnerable(this);
    if (!LINK_IS_ADULT) {
        yDelta = CLAMP(-this->actor.yDistToPlayer, 20.0f, 30.0f);
        xzDelta = -10.0f;
    } else {
        yDelta = CLAMP(-this->actor.yDistToPlayer, 25.0f, 45.0f);
        xzDelta = -70.0f;
    }
    this->actor.world.pos.y = player->actor.world.pos.y + yDelta;
    this->actor.world.pos.x = Math_SinS(this->actor.shape.rot.y) * (xzDelta * 0.1f) + player->actor.world.pos.x;
    this->actor.world.pos.z = Math_CosS(this->actor.shape.rot.y) * (xzDelta * 0.1f) + player->actor.world.pos.z;
    this->actor.shape.rot.x = -0x4CE0;
    this->actionFunc = EnFloormas_GrabLink;
}

void EnFloormas_SetupMerge(EnFloormas* this) {
    Animation_PlayOnce(&this->skelAnime, &gWallmasterWaitAnim);
    this->actionTimer = 0;
    this->smallActionTimer += 1500;
    EnFloormas_MakeInvulnerable(this);
    this->actionFunc = EnFloormas_Merge;
}

void EnFloormas_SetupSmallWait(EnFloormas* this) {
    EnFloormas* parent = (EnFloormas*)this->actor.parent;
    EnFloormas* child = (EnFloormas*)this->actor.child;

    // if this is the last remaining small floor master, kill all.
    if ((parent->actionFunc == EnFloormas_SmallWait) && (child->actionFunc == EnFloormas_SmallWait)) {
        Actor_Kill(&parent->actor);
        Actor_Kill(&child->actor);
        Actor_Kill(&this->actor);
        return;
    }
    this->actor.draw = NULL;
    this->actionFunc = EnFloormas_SmallWait;
    this->actor.flags &= ~(ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_UPDATE_CULLING_DISABLED);
}

void EnFloormas_SetupTakeDamage(EnFloormas* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gWallmasterDamageAnim, -3.0f);
    if (this->collider.elem.acHitElem->atDmgInfo.dmgFlags & (DMG_ARROW | DMG_SLINGSHOT)) {
        this->actor.world.rot.y = this->collider.base.ac->world.rot.y;
    } else {
        this->actor.world.rot.y = Actor_WorldYawTowardActor(&this->actor, this->collider.base.ac) + 0x8000;
    }
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 20);
    this->actionFunc = EnFloormas_TakeDamage;
    this->actor.speed = 5.0f;
    this->actor.velocity.y = 5.5f;
}

void EnFloormas_SetupRecover(EnFloormas* this) {
    Animation_PlayOnce(&this->skelAnime, &gWallmasterRecoverFromDamageAnim);
    this->actor.velocity.y = this->actor.speed = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actionFunc = EnFloormas_Recover;
}

void EnFloormas_SetupFreeze(EnFloormas* this) {
    Animation_Change(&this->skelAnime, &gWallmasterJumpAnim, 1.5f, 0, 20.0f, ANIMMODE_ONCE, -3.0f);
    this->actor.speed = 0.0f;
    if (this->actor.colChkInfo.damageEffect == 4) {
        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_GRAY, 255, COLORFILTER_BUFFLAG_OPA, 80);
    } else {
        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 255, COLORFILTER_BUFFLAG_OPA, 80);
        if (this->actor.scale.x > 0.004f) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        }
    }
    this->actionTimer = 80;
    this->actionFunc = EnFloormas_Freeze;
}

void EnFloormas_Die(EnFloormas* this, PlayState* play) {
    if (this->actor.scale.x > 0.004f) {
        // split
        this->actor.shape.rot.y = this->actor.yawTowardsPlayer + 0x8000;
        EnFloormas_SetupSplit((EnFloormas*)this->actor.child);
        EnFloormas_SetupSplit((EnFloormas*)this->actor.parent);
        EnFloormas_SetupSplit(this);
        Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SPLIT);
    } else {
        // Die
        Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, 0x90);
        EnFloormas_SetupSmallShrink(this, play);
    }
}

void EnFloormas_BigDecideAction(EnFloormas* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        // within 400 units and within 90 degrees rotation of player
        if (this->actor.xzDistToPlayer < 400.0f && !Actor_IsFacingPlayer(&this->actor, 0x4000)) {
            this->actionTarget = this->actor.yawTowardsPlayer;
            EnFloormas_SetupTurn(this);
            // within 280 units and within 45 degrees rotation of player
        } else if (this->actor.xzDistToPlayer < 280.0f && Actor_IsFacingPlayer(&this->actor, 0x2000)) {
            EnFloormas_SetupHover(this, play);
        } else {
            EnFloormas_SetupStand(this);
        }
    }
}

void EnFloormas_Stand(EnFloormas* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actor.scale.x > 0.004f) {
            EnFloormas_SetupBigWalk(this);
        } else if (this->actor.params == MERGE_FOLLOWER) {
            EnFloormas_SetupSmallDecideAction(this);
        } else {
            EnFloormas_SetupSmallWalk(this);
        }
    }
}

void EnFloormas_BigWalk(EnFloormas* this, PlayState* play) {
    s32 animPastFrame;

    SkelAnime_Update(&this->skelAnime);
    animPastFrame = Animation_OnFrame(&this->skelAnime, 0.0f);
    if (animPastFrame) {
        if (this->actionTimer != 0) {
            this->actionTimer--;
        }
    }
    if (((animPastFrame || (Animation_OnFrame(&this->skelAnime, 12.0f))) ||
         (Animation_OnFrame(&this->skelAnime, 24.0f) != 0)) ||
        (Animation_OnFrame(&this->skelAnime, 36.0f) != 0)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_FALL_WALK);
    }

    if ((this->actor.xzDistToPlayer < 320.0f) && (Actor_IsFacingPlayer(&this->actor, 0x4000))) {
        EnFloormas_SetupRun(this);
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        // set target rotation to the colliding wall's rotation
        this->actionTarget = this->actor.wallYaw;
        EnFloormas_SetupTurn(this);
    } else if ((this->actor.xzDistToPlayer < 400.0f) && !Actor_IsFacingPlayer(&this->actor, 0x4000)) {
        // set target rotation to player.
        this->actionTarget = this->actor.yawTowardsPlayer;
        EnFloormas_SetupTurn(this);
    } else if (this->actionTimer == 0) {
        EnFloormas_SetupBigStopWalk(this);
    }
}

void EnFloormas_BigStopWalk(EnFloormas* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnFloormas_SetupBigDecideAction(this);
    }
}

void EnFloormas_Run(EnFloormas* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) || Animation_OnFrame(&this->skelAnime, 12.0f) ||
        Animation_OnFrame(&this->skelAnime, 24.0f) || Animation_OnFrame(&this->skelAnime, 36.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_FALL_WALK);
    }

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 0x71C);

    if ((this->actor.xzDistToPlayer < 280.0f) && Actor_IsFacingPlayer(&this->actor, 0x2000) &&
        !(this->actor.bgCheckFlags & BGCHECKFLAG_WALL)) {
        EnFloormas_SetupHover(this, play);
    } else if (this->actor.xzDistToPlayer > 400.0f) {
        EnFloormas_SetupBigWalk(this);
    }
}

void EnFloormas_Turn(EnFloormas* this, PlayState* play) {
    char pad[4];
    f32 sp30;
    f32 sp2C;

    if (SkelAnime_Update(&this->skelAnime)) {
        EnFloormas_SetupStand(this);
    }

    if (((this->skelAnime.playSpeed > 0.0f) && Animation_OnFrame(&this->skelAnime, 21.0f)) ||
        ((this->skelAnime.playSpeed < 0.0f) && Animation_OnFrame(&this->skelAnime, 6.0f))) {
        if (this->actor.scale.x > 0.004f) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_FALL_WALK);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SM_WALK);
        }
    }
    // Needed to match
    if (!this->skelAnime.curFrame) {}
    if (this->skelAnime.curFrame >= 7.0f && this->skelAnime.curFrame < 22.0f) {
        sp30 = Math_SinS(this->actor.shape.rot.y + 0x4268);
        sp2C = Math_CosS(this->actor.shape.rot.y + 0x4268);
        this->actor.shape.rot.y += this->actionTarget;
        this->actor.world.pos.x -=
            (this->actor.scale.x * 2700.0f) * (Math_SinS(this->actor.shape.rot.y + 0x4268) - sp30);
        this->actor.world.pos.z -=
            (this->actor.scale.x * 2700.0f) * (Math_CosS(this->actor.shape.rot.y + 0x4268) - sp2C);
    }
}

void EnFloormas_Hover(EnFloormas* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnFloormas_SetupCharge(this);
    }
    this->actor.shape.rot.x += 0x140;
    this->actor.world.pos.y += 10.0f;
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 2730);
    Math_StepToS(&this->zOffset, 1200, 100);
}

void EnFloormas_Slide(EnFloormas* this, PlayState* play) {
    static Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;
    Vec3f velocity;

    pos.x = this->actor.world.pos.x;
    pos.z = this->actor.world.pos.z;
    pos.y = this->actor.floorHeight;

    velocity.y = 2.0f;
    velocity.x = Math_SinS(this->actor.shape.rot.y + 0x6000) * 7.0f;
    velocity.z = Math_CosS(this->actor.shape.rot.y + 0x6000) * 7.0f;

    func_800286CC(play, &pos, &velocity, &accel, 450, 100);

    velocity.x = Math_SinS(this->actor.shape.rot.y - 0x6000) * 7.0f;
    velocity.z = Math_CosS(this->actor.shape.rot.y - 0x6000) * 7.0f;

    func_800286CC(play, &pos, &velocity, &accel, 450, 100);

    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_FLOORMASTER_SLIDING - SFX_FLAG);
}

void EnFloormas_Charge(EnFloormas* this, PlayState* play) {
    f32 distFromGround;

    if (this->actionTimer != 0) {
        this->actionTimer--;
    }

    Math_StepToF(&this->actor.speed, 15.0f, SQ(this->actor.speed) * (1.0f / 3.0f));
    Math_ScaledStepToS(&this->actor.shape.rot.x, -0x1680, 0x140);

    distFromGround = this->actor.world.pos.y - this->actor.floorHeight;
    if (distFromGround < 10.0f) {
        this->actor.world.pos.y = this->actor.floorHeight + 10.0f;
        this->actor.gravity = 0.0f;
        this->actor.velocity.y = 0.0f;
    }

    if (distFromGround < 12.0f) {
        EnFloormas_Slide(this, play);
    }

    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) || (this->actionTimer == 0)) {
        EnFloormas_SetupLand(this);
    }
}

void EnFloormas_Land(EnFloormas* this, PlayState* play) {
    s32 isOnGround;

    isOnGround = this->actor.bgCheckFlags & BGCHECKFLAG_GROUND;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        if (this->actor.params != MERGE_LEADER) {
            EnFloormas_MakeVulnerable(this);
        }

        if (this->actor.velocity.y < -4.0f) {
            if (this->actor.scale.x > 0.004f) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_FALL_LAND);
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
            }
        }
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        this->actor.speed = 0.0f;
    }

    if (isOnGround) {
        Math_StepToF(&this->actor.speed, 0.0f, 2.0f);
    }

    if ((this->actor.speed > 0.0f) && ((this->actor.world.pos.y - this->actor.floorHeight) < 12.0f)) {
        EnFloormas_Slide(this, play);
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actionTimer != 0) {
            this->actionTimer--;
        }

        if (this->actionTimer == 0 && isOnGround) {
            if (this->skelAnime.endFrame < 45.0f) {
                this->skelAnime.endFrame = Animation_GetLastFrame(&gWallmasterJumpAnim);
            } else if (this->actor.params == MERGE_LEADER) {
                EnFloormas_SetupMerge(this);
            } else {
                EnFloormas_SetupStand(this);
                this->smallActionTimer = 50;
            }
        }
    }

    Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x140);
    Math_StepToS(&this->zOffset, -1600, 100);
}

void EnFloormas_Split(EnFloormas* this, PlayState* play) {
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        if (SkelAnime_Update(&this->skelAnime)) {
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            this->smallActionTimer = 50;
            EnFloormas_SetupStand(this);
        }
        Math_StepToF(&this->actor.speed, 0.0f, 1.0f);
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
    }
}

void EnFloormas_SmallWalk(EnFloormas* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    DECR(this->smallActionTimer);

    if (Animation_OnFrame(&this->skelAnime, 0.0f) || Animation_OnFrame(&this->skelAnime, 18.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SM_WALK);
    }

    if (this->smallActionTimer == 0) {
        EnFloormas_SetupSmallDecideAction(this);
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        this->actionTarget = this->actor.wallYaw;
        EnFloormas_SetupTurn(this);
    } else if (this->actor.xzDistToPlayer < 120.0f) {
        Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer + 0x8000, 0x38E);
    }
}

void EnFloormas_SmallDecideAction(EnFloormas* this, PlayState* play) {
    Actor* primaryFloormas;
    s32 isAgainstWall;

    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) || Animation_OnFrame(&this->skelAnime, 18.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SM_WALK);
    }
    isAgainstWall = this->actor.bgCheckFlags & BGCHECKFLAG_WALL;
    if (isAgainstWall) {
        this->actionTarget = this->actor.wallYaw;
        EnFloormas_SetupTurn(this);
        return;
    }

    if (this->actor.params == MERGE_FOLLOWER) {
        if (this->actor.parent->params == MERGE_LEADER) {
            primaryFloormas = this->actor.parent;
        } else if (this->actor.child->params == MERGE_LEADER) {
            primaryFloormas = this->actor.child;
        } else {
            this->actor.params = 0x10;
            return;
        }

        Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_WorldYawTowardActor(&this->actor, primaryFloormas), 0x38E);
        if (Actor_WorldDistXZToActor(&this->actor, primaryFloormas) < 80.0f) {
            EnFloormas_SetupSmallFollowerJumpAtLeader(this);
        }
    } else {
        Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 0x71C);
        if (this->actor.xzDistToPlayer < 80.0f) {
            EnFloormas_SetupJumpAtLink(this);
        }
    }
}

void EnFloormas_SmallShrink(EnFloormas* this, PlayState* play) {
    if (Math_StepToF(&this->actor.scale.x, 0.0f, 0.0015f)) {
        EnFloormas_SetupSmallWait(this);
    }
    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;
}

void EnFloormas_JumpAtLink(EnFloormas* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);
    if (this->skelAnime.curFrame < 20.0f) {
        Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 2, 0xE38);
    } else if (Animation_OnFrame(&this->skelAnime, 20.0f)) {
        this->actor.speed = 5.0f;
        this->actor.velocity.y = 7.0f;
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actionTimer = 0x32;
        this->actor.speed = 0.0f;
        Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
        EnFloormas_SetupLand(this);
    } else if ((this->actor.yDistToPlayer < -10.0f) && (this->collider.base.ocFlags1 & OC1_HIT) &&
               (&player->actor == this->collider.base.oc)) {
        play->grabPlayer(play, player);
        EnFloormas_SetupGrabLink(this, player);
    }
}

void EnFloormas_GrabLink(EnFloormas* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    EnFloormas* parent;
    EnFloormas* child;
    f32 yDelta;
    f32 xzDelta;

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->skelAnime.playSpeed > 0.0f) {
            this->skelAnime.playSpeed = -1.0f;
            this->skelAnime.endFrame = 36.0f;
            this->skelAnime.startFrame = 45.0f;
        } else {
            this->skelAnime.playSpeed = 1.0f;
            this->skelAnime.endFrame = 45.0f;
            this->skelAnime.startFrame = 36.0f;
        }
    }

    if (!LINK_IS_ADULT) {
        yDelta = CLAMP(-this->actor.yDistToPlayer, 20.0f, 30.0f);
        xzDelta = -10.0f;
    } else {
        yDelta = CLAMP(-this->actor.yDistToPlayer, 25.0f, 45.0f);
        xzDelta = -30.0f;
    }

    this->actor.world.pos.y = player->actor.world.pos.y + yDelta;
    this->actor.world.pos.x = Math_SinS(this->actor.shape.rot.y) * (xzDelta * 0.1f) + player->actor.world.pos.x;
    this->actor.world.pos.z = Math_CosS(this->actor.shape.rot.y) * (xzDelta * 0.1f) + player->actor.world.pos.z;

    // let go
    if (!(player->stateFlags2 & PLAYER_STATE2_7) || (player->invincibilityTimer < 0)) {
        parent = (EnFloormas*)this->actor.parent;
        child = (EnFloormas*)this->actor.child;

        if (((parent->actionFunc == EnFloormas_GrabLink) || parent->actionFunc == EnFloormas_SmallWait) &&
            (child->actionFunc == EnFloormas_GrabLink || child->actionFunc == EnFloormas_SmallWait)) {

            parent->actor.params = MERGE_FOLLOWER;
            child->actor.params = MERGE_FOLLOWER;
            this->actor.params = MERGE_LEADER;
        }

        this->actor.shape.rot.x = 0;
        this->actor.velocity.y = 6.0f;
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
        this->actor.speed = -3.0f;
        EnFloormas_SetupLand(this);
    } else {
        // Damage link every 20 frames
        if ((this->actionTarget % 20) == 0) {
            if (!LINK_IS_ADULT) {
                Player_PlaySfx(player, NA_SE_VO_LI_DAMAGE_S_KID);
            } else {
                Player_PlaySfx(player, NA_SE_VO_LI_DAMAGE_S);
            }
            play->damagePlayer(play, -8);
        }
    }

    Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SM_STICK - SFX_FLAG);
}

void EnFloormas_SmallFollowerJumpAtLeader(EnFloormas* this, PlayState* play) {
    Actor* primFloormas;

    SkelAnime_Update(&this->skelAnime);
    if (this->actor.parent->params == MERGE_LEADER) {
        primFloormas = this->actor.parent;
    } else if (this->actor.child->params == MERGE_LEADER) {
        primFloormas = this->actor.child;
    } else {
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
            this->actor.params = 0x10;
            EnFloormas_SetupLand(this);
        }
        return;
    }
    if (Animation_OnFrame(&this->skelAnime, 20.0f)) {
        this->actor.speed = 5.0f;
        this->actor.velocity.y = 7.0f;
    } else if (this->skelAnime.curFrame < 20.0f) {
        Math_ApproachS(&this->actor.shape.rot.y, Actor_WorldYawTowardActor(&this->actor, primFloormas), 2, 0xE38);
    } else if ((((primFloormas->world.pos.y - this->actor.world.pos.y) < -10.0f) &&
                (fabsf(this->actor.world.pos.x - primFloormas->world.pos.x) < 10.0f)) &&
               (fabsf(this->actor.world.pos.z - primFloormas->world.pos.z) < 10.0f)) {
        EnFloormas_SetupSmallWait(this);
        this->collider.base.ocFlags1 |= OC1_ON;
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        this->actor.speed = 0.0f;
        Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
        EnFloormas_SetupLand(this);
    }

    if (fabsf(this->actor.world.pos.x - primFloormas->world.pos.x) < 5.0f &&
        fabsf(this->actor.world.pos.z - primFloormas->world.pos.z) < 5.0f) {
        Math_StepToF(&this->actor.speed, 0, 2.0f);
    }
}

void EnFloormas_Merge(EnFloormas* this, PlayState* play) {
    EnFloormas* parent;
    EnFloormas* child;
    s32 mergeCnt;
    f32 prevScale;
    f32 curScale;

    mergeCnt = 0;

    DECR(this->smallActionTimer);

    parent = (EnFloormas*)this->actor.parent;
    child = (EnFloormas*)this->actor.child;

    if (this->smallActionTimer == 0) {
        if (parent->actionFunc != EnFloormas_SmallWait) {
            EnFloormas_SetupSmallShrink(parent, play);
        }

        if (child->actionFunc != EnFloormas_SmallWait) {
            EnFloormas_SetupSmallShrink(child, play);
        }
    } else {
        if ((parent->actionFunc != EnFloormas_SmallWait) && (parent->actionFunc != EnFloormas_SmallShrink)) {
            mergeCnt++;
        }

        if ((child->actionFunc != EnFloormas_SmallWait) && (child->actionFunc != EnFloormas_SmallShrink)) {
            mergeCnt++;
        }
    }

    prevScale = this->actor.scale.x;

    if (mergeCnt == 1) {
        Math_StepToF(&this->actor.scale.x, 0.007f, 0.0005f);
    } else if (mergeCnt == 0) {
        Math_StepToF(&this->actor.scale.x, 0.01f, 0.0005f);
    }

    curScale = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.z = curScale;

    if (((prevScale == 0.007f) || (prevScale == 0.004f)) && (prevScale != this->actor.scale.x)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_EXPAND);
    }

    this->collider.dim.radius = (sCylinderInit.dim.radius * 100.0f) * this->actor.scale.x;
    this->collider.dim.height = (sCylinderInit.dim.height * 100.0f) * this->actor.scale.x;

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actor.scale.x >= 0.01f) {
            this->actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
            EnFloormas_MakeVulnerable(this);
            this->actor.params = 0;
            this->collider.elem.acElemFlags |= ACELEM_HOOKABLE;
            this->actor.colChkInfo.health = sColChkInfoInit.health;
            EnFloormas_SetupStand(this);
        } else {
            if (this->actionTimer == 0) {
                Animation_PlayOnce(&this->skelAnime, &gFloormasterTapFingerAnim);
                this->actionTimer = 1;
            } else {
                Animation_PlayOnce(&this->skelAnime, &gWallmasterWaitAnim);
                this->actionTimer = 0;
            }
        }
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_FLOORMASTER_RESTORE - SFX_FLAG);
}

void EnFloormas_SmallWait(EnFloormas* this, PlayState* play) {
}

void EnFloormas_TakeDamage(EnFloormas* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->actor.colChkInfo.health == 0) {
            EnFloormas_Die(this, play);
        } else {
            EnFloormas_SetupRecover(this);
        }
    }

    if (Animation_OnFrame(&this->skelAnime, 13.0f)) {
        if (this->actor.scale.x > 0.004f) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
        }
    }
    Math_StepToF(&this->actor.speed, 0.0f, 0.2f);
}

void EnFloormas_Recover(EnFloormas* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnFloormas_SetupStand(this);
    }
}

void EnFloormas_Freeze(EnFloormas* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->actionTimer != 0) {
        this->actionTimer--;
    }
    if (this->actionTimer == 0) {
        if (this->actor.colChkInfo.health == 0) {
            EnFloormas_Die(this, play);
            return;
        }
        EnFloormas_SetupStand(this);
    }
}

void EnFloormas_ColliderCheck(EnFloormas* this, PlayState* play) {
    s32 pad;
    s32 isSmall;

    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlag(&this->actor, &this->collider.elem, true);
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (this->collider.base.colMaterial != COL_MATERIAL_HARD) {
                isSmall = false;
                if (this->actor.scale.x < 0.01f) {
                    isSmall = true;
                }
                if (isSmall && this->collider.elem.acHitElem->atDmgInfo.dmgFlags & DMG_HOOKSHOT) {
                    this->actor.colChkInfo.damage = 2;
                    this->actor.colChkInfo.damageEffect = 0;
                }
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    if (isSmall) {
                        Actor_PlaySfx(&this->actor, NA_SE_EN_FLOORMASTER_SM_DEAD);
                    } else {
                        Actor_PlaySfx(&this->actor, NA_SE_EN_FALL_DEAD);
                    }
                    Enemy_StartFinishingBlow(play, &this->actor);
                    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
                } else if (this->actor.colChkInfo.damage != 0) {
                    Actor_PlaySfx(&this->actor, NA_SE_EN_FALL_DAMAGE);
                }

                if ((this->actor.colChkInfo.damageEffect == 4) || (this->actor.colChkInfo.damageEffect == 1)) {
                    if (this->actionFunc != EnFloormas_Freeze) {
                        EnFloormas_SetupFreeze(this);
                    }
                } else {
                    if (this->actor.colChkInfo.damageEffect == 2) {
                        EffectSsFCircle_Spawn(play, &this->actor, &this->actor.world.pos, this->actor.scale.x * 4000.0f,
                                              this->actor.scale.x * 4000.0f);
                    }
                    EnFloormas_SetupTakeDamage(this);
                }
            }
        }
    }
}

void EnFloormas_Update(Actor* thisx, PlayState* play) {
    EnFloormas* this = (EnFloormas*)thisx;
    s32 pad;

    if (this->actionFunc != EnFloormas_SmallWait) {
        if (this->collider.base.atFlags & AT_HIT) {
            this->collider.base.atFlags &= ~AT_HIT;
            this->actor.speed *= -0.5f;

            this->actor.speed = CLAMP_MAX(this->actor.speed, -5.0f);
            this->actor.velocity.y = 5.0f;

            EnFloormas_SetupLand(this);
        }
        EnFloormas_ColliderCheck(this, play);
        this->actionFunc(this, play);

        if (this->actionFunc != EnFloormas_TakeDamage) {
            this->actor.world.rot.y = this->actor.shape.rot.y;
        }

        if (this->actionFunc != EnFloormas_GrabLink) {
            Actor_MoveXZGravity(&this->actor);
        }

        Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, this->actor.scale.x * 3000.0f, 0.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);
        Collider_UpdateCylinder(&this->actor, &this->collider);
        if (this->actionFunc == EnFloormas_Charge) {
            this->actor.flags |= ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }
        if (this->actionFunc != EnFloormas_GrabLink) {
            if (this->actionFunc != EnFloormas_Split && this->actionFunc != EnFloormas_TakeDamage &&
                this->actor.freezeTimer == 0) {
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
            }

            if ((this->actionFunc != EnFloormas_SmallFollowerJumpAtLeader) || (this->skelAnime.curFrame < 20.0f)) {
                CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
            }
        }

        Actor_SetFocus(&this->actor, this->actor.scale.x * 2500.0f);

        if (this->collider.base.colMaterial == COL_MATERIAL_HARD) {
            if (this->actionTarget != 0) {
                this->actionTarget--;
            }

            if (this->actionTarget == 0) {
                this->actionTarget = 0x28;
            }
        }
    }
}

s32 EnFloormas_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                                Gfx** gfx) {
    EnFloormas* this = (EnFloormas*)thisx;

    if (limbIndex == 1) {
        pos->z += this->zOffset;
    }
    return false;
}

void EnFloormas_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    if (limbIndex == 2) {
        Matrix_Push();
        Matrix_Translate(1600.0f, -700.0f, -1700.0f, MTXMODE_APPLY);
        Matrix_RotateY(DEG_TO_RAD(60), MTXMODE_APPLY);
        Matrix_RotateZ(DEG_TO_RAD(15), MTXMODE_APPLY);
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD((*gfx)++, play->state.gfxCtx, "../z_en_floormas.c", 2299);
        gSPDisplayList((*gfx)++, gWallmasterFingerDL);
        Matrix_Pop();
    }
}

static Color_RGBA8 sMergeColor = { 0, 255, 0, 0 };

void EnFloormas_Draw(Actor* thisx, PlayState* play) {
    EnFloormas* this = (EnFloormas*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_floormas.c", 2318);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    if (this->collider.base.colMaterial == COL_MATERIAL_HARD) {
        func_80026230(play, &sMergeColor, this->actionTarget % 0x28, 0x28);
    }

    POLY_OPA_DISP =
        SkelAnime_DrawFlex(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                           EnFloormas_OverrideLimbDraw, EnFloormas_PostLimbDraw, this, POLY_OPA_DISP);
    if (this->collider.base.colMaterial == COL_MATERIAL_HARD) {
        func_80026608(play);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_floormas.c", 2340);
}

void EnFloormas_DrawHighlighted(Actor* thisx, PlayState* play) {
    EnFloormas* this = (EnFloormas*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_floormas.c", 2352);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    if (this->collider.base.colMaterial == COL_MATERIAL_HARD) {
        func_80026690(play, &sMergeColor, this->actionTarget % 0x28, 0x28);
    }
    POLY_XLU_DISP =
        SkelAnime_DrawFlex(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                           EnFloormas_OverrideLimbDraw, EnFloormas_PostLimbDraw, this, POLY_XLU_DISP);
    if (this->collider.base.colMaterial == COL_MATERIAL_HARD) {
        func_80026A6C(play);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_floormas.c", 2374);
}
