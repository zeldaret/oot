/*
 * File: z_en_floormas
 * Overlay: En_Floormas
 * Description: Floormaster
 */

#include "z_en_floormas.h"

#define FLAGS 0x00000405

#define THIS ((EnFloormas*)thisx)

#define SPAWN_INVISIBLE 0x8000
#define SPAWN_SMALL 0x10

#define MERGE_MASTER 0x40
#define MERGE_SLAVE 0x20

void EnFloormas_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFloormas_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFloormas_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFloormas_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnFloormas_GrabLink(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Split(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Recover(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_DrawHighlighted(Actor* this, GlobalContext* globalCtx);
void EnFloormas_SmWait(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_SetupBigDecideAction(EnFloormas* this);
void EnFloormas_Freeze(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_TakeDamage(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Merge(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_JumpAtLink(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_SmSlaveJumpAtMaster(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_SmShrink(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_SmDecideAction(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_SmWalk(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Land(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Hover(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Turn(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Run(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_BigStopWalk(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_BigWalk(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Stand(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_BigDecideAction(EnFloormas* this, GlobalContext* globalCtx);
void EnFloormas_Charge(EnFloormas* this, GlobalContext* globalCtx);

const ActorInit En_Floormas_InitVars = {
    ACTOR_EN_FLOORMAS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_WALLMASTER,
    sizeof(EnFloormas),
    (ActorFunc)EnFloormas_Init,
    (ActorFunc)EnFloormas_Destroy,
    (ActorFunc)EnFloormas_Update,
    (ActorFunc)EnFloormas_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK0, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x04, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x05, 0x01 },
    { 25, 40, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0x04, 0x001E, 0x0028, 0x96 };

static DamageTable sDamageTable = { {
    0x10, 0x02, 0x01, 0x02, 0x10, 0x02, 0x02, 0x10, 0x01, 0x02, 0x04, 0x24, 0x02, 0x44, 0x04, 0x02,
    0x02, 0x24, 0x00, 0x44, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
} };

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 0x31, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0x157C, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0xFC18, ICHAIN_STOP),
};

extern Gfx D_06008688[];

extern FlexSkeletonHeader D_06008FB0;

extern AnimationHeader D_06009DB0;
extern AnimationHeader D_060039B0;
extern AnimationHeader D_06000EA4;
extern AnimationHeader D_06000590;
extern AnimationHeader D_060019CC;
extern AnimationHeader D_06009520;
extern AnimationHeader D_06002158;
extern AnimationHeader D_0600A054;
extern AnimationHeader D_060041F4;
extern AnimationHeader D_06009244;

void EnFloormas_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFloormas* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;
    s32 invisble;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 50.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06008FB0, &D_06009DB0, &this->limbDrawTable,
                       &this->transitionDrawTable, 25);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061ED4(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->zOffset = -1600;
    invisble = this->actor.params & SPAWN_INVISIBLE;

    // s16 cast needed
    this->actor.params &= (s16) ~(SPAWN_INVISIBLE);
    if (invisble) {
        this->actor.flags |= 0x80;
        this->actor.draw = EnFloormas_DrawHighlighted;
    }

    if (this->actor.params == SPAWN_SMALL) {
        this->actor.draw = NULL;
        this->actor.flags &= ~1;
        this->actionFunc = EnFloormas_SmWait;
    } else {
        // spawn first small floormaster
        this->actor.parent =
            Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_EN_FLOORMAS, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, invisble + SPAWN_SMALL);
        if (this->actor.parent == NULL) {
            Actor_Kill(&this->actor);
            return;
        }
        // spawn 2nd small floormaster
        this->actor.child =
            Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_EN_FLOORMAS, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, invisble + SPAWN_SMALL);
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

void EnFloormas_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFloormas* this = THIS;
    ColliderCylinder* col = &this->collider;
    Collider_DestroyCylinder(globalCtx, col);
}

void EnFloormas_MakeInvulnerable(EnFloormas* this) {
    this->collider.base.type = COLTYPE_UNK12;
    this->collider.base.acFlags |= 4;
    this->actionTarget = 0x28;
}

void EnFloormas_MakeVulnerable(EnFloormas* this) {
    this->collider.base.type = COLTYPE_UNK0;
    this->actionTarget = 0;
    this->collider.base.acFlags &= ~4;
}

void EnFloormas_SetupBigDecideAction(EnFloormas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06009DB0);
    this->actionFunc = EnFloormas_BigDecideAction;
    this->actor.speedXZ = 0.0f;
}

void EnFloormas_SetupStand(EnFloormas* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600A054, -3.0f);
    this->actionFunc = EnFloormas_Stand;
}

void EnFloormas_SetupBigWalk(EnFloormas* this) {
    if (this->actionFunc != EnFloormas_Run) {
        SkelAnime_ChangeAnimPlaybackRepeat(&this->skelAnime, &D_060041F4, 1.5f);
    } else {
        this->skelAnime.animPlaybackSpeed = 1.5f;
    }

    this->actionTimer = Math_Rand_S16Offset(2, 4);
    this->actionFunc = EnFloormas_BigWalk;
    this->actor.speedXZ = 1.5f;
}

void EnFloormas_SetupBigStopWalk(EnFloormas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06009244);
    this->actionFunc = EnFloormas_BigStopWalk;
    this->actor.speedXZ = 0.0f;
}

void EnFloormas_SetupRun(EnFloormas* this) {
    this->actionTimer = 0;
    this->actionFunc = EnFloormas_Run;
    this->actor.speedXZ = 5.0f;
    this->skelAnime.animPlaybackSpeed = 3.0f;
}

void EnFloormas_SetupTurn(EnFloormas* this) {
    s16 rotDelta = this->actionTarget - this->actor.shape.rot.y;
    this->actor.speedXZ = 0.0f;
    if (rotDelta > 0) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06002158, -3.0f);
    } else {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06002158, -1.0f, SkelAnime_GetFrameCount(&D_06002158), 0.0f, 2,
                             -3.0f);
    }

    if (this->actor.scale.x > 0.004f) {
        this->actionTarget = (rotDelta * (2.0f / 30.0f));
    } else {
        this->skelAnime.animPlaybackSpeed = this->skelAnime.animPlaybackSpeed + this->skelAnime.animPlaybackSpeed;
        this->actionTarget = rotDelta * (2.0f / 15.0f);
    }
    this->actionFunc = EnFloormas_Turn;
}

void EnFloormas_SetupHover(EnFloormas* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06009520, 3.0f, 0, SkelAnime_GetFrameCount(&D_06009520), 2, -3.0f);
    this->actor.speedXZ = 0.0f;
    this->actor.gravity = 0.0f;
    EnFloormas_MakeInvulnerable(this);
    func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 15.0f, 6, 20.0f, 0x12C, 0x64, 1);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_ATTACK);
    this->actionFunc = EnFloormas_Hover;
}

void EnFloormas_SetupCharge(EnFloormas* this) {
    this->actionTimer = 25;
    this->actor.gravity = -0.15f;
    this->actionFunc = EnFloormas_Charge;
    this->actor.speedXZ = 0.5f;
}

void EnFloormas_SetupLand(EnFloormas* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060019CC, 1.0f, 41.0f, 42.0f, 2, 5.0f);
    if ((this->actor.speedXZ < 0.0f) || (this->actionFunc != EnFloormas_Charge)) {
        this->actionTimer = 30;
    } else {
        this->actionTimer = 45;
    }
    this->actor.gravity = -1.0f;
    this->actionFunc = EnFloormas_Land;
}

void EnFloormas_SetupSplit(EnFloormas* this) {

    Actor_SetScale(&this->actor, 0.004f);
    this->actor.flags |= 0x10;
    if ((this->actor.flags & 0x80) == 0x80) {
        this->actor.draw = EnFloormas_DrawHighlighted;
    } else {
        this->actor.draw = EnFloormas_Draw;
    }
    this->actor.shape.rot.y = this->actor.parent->shape.rot.y + 0x5555;
    this->actor.posRot.pos = this->actor.parent->posRot.pos;
    this->actor.params = 0x10;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060019CC, 1.0f, 41.0f, SkelAnime_GetFrameCount(&D_060019CC), 2, 0.0f);
    this->collider.dim.radius = sCylinderInit.dim.radius * 0.6f;
    this->collider.dim.height = sCylinderInit.dim.height * 0.6f;
    this->collider.body.bumperFlags &= ~4;
    this->actor.speedXZ = 4.0f;
    this->actor.velocity.y = 7.0f;
    // using div creates a signed check.
    this->actor.colChkInfo.health = sColChkInfoInit.health >> 1;
    this->actionFunc = EnFloormas_Split;
}

void EnFloormas_SetupSmWalk(EnFloormas* this) {
    SkelAnime_ChangeAnimPlaybackRepeat(&this->skelAnime, &D_060041F4, 4.5f);
    this->actionFunc = EnFloormas_SmWalk;
    this->actor.speedXZ = 5.0f;
}

void EnFloormas_SetupSmDecideAction(EnFloormas* this) {
    if (this->actionFunc != EnFloormas_SmWalk) {
        SkelAnime_ChangeAnimPlaybackRepeat(&this->skelAnime, &D_060041F4, 4.5f);
    }
    this->actionFunc = EnFloormas_SmDecideAction;
    this->actor.speedXZ = 5.0f;
}

void EnFloormas_SetupSmShrink(EnFloormas* this, GlobalContext* globalCtx) {
    static Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    static Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;

    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    pos.x = this->actor.posRot.pos.x;
    pos.y = this->actor.posRot.pos.y + 15.0f;
    pos.z = this->actor.posRot.pos.z;
    EffectSsDeadDb_Spawn(globalCtx, &pos, &velocity, &accel, 150, -10, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
    this->actionFunc = EnFloormas_SmShrink;
}

void EnFloormas_SetupSlaveJumpAtMaster(EnFloormas* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060019CC, 2.0f, 0.0f, 41.0f, 2, 0.0f);
    this->actionFunc = EnFloormas_SmSlaveJumpAtMaster;
    this->actor.speedXZ = 0.0f;
}

void EnFloormas_SetupJumpAtLink(EnFloormas* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060019CC, 2.0f, 0.0f, 41.0f, 2, 0.0f);
    this->actionFunc = EnFloormas_JumpAtLink;
    this->actor.speedXZ = 0.0f;
}

void EnFloormas_SetupGrabLink(EnFloormas* this, Player* player) {
    f32 yDelta;
    f32 xzDelta;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_060019CC, 1.0f, 36.0f, 45.0f, 2, -3.0f);
    this->actor.flags &= ~1;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    EnFloormas_MakeInvulnerable(this);
    if (LINK_IS_CHILD) {
        yDelta = CLAMP(-this->actor.yDistFromLink, 20.0f, 30.0f);
        xzDelta = -10.0f;
    } else {
        yDelta = CLAMP(-this->actor.yDistFromLink, 25.0f, 45.0f);
        xzDelta = -70.0f;
    }
    this->actor.posRot.pos.y = player->actor.posRot.pos.y + yDelta;
    this->actor.posRot.pos.x = Math_Sins(this->actor.shape.rot.y) * (xzDelta * 0.1f) + player->actor.posRot.pos.x;
    this->actor.posRot.pos.z = Math_Coss(this->actor.shape.rot.y) * (xzDelta * 0.1f) + player->actor.posRot.pos.z;
    this->actor.shape.rot.x = -0x4CE0;
    this->actionFunc = EnFloormas_GrabLink;
}

void EnFloormas_SetupMerge(EnFloormas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06009DB0);
    this->actionTimer = 0;
    this->smActionTimer += 1500;
    EnFloormas_MakeInvulnerable(this);
    this->actionFunc = EnFloormas_Merge;
}

void EnFloormas_SetupSmWait(EnFloormas* this) {
    EnFloormas* parent = (EnFloormas*)this->actor.parent;
    EnFloormas* child = (EnFloormas*)this->actor.child;

    // if this is the last remaining small floor master, kill all.
    if ((parent->actionFunc == EnFloormas_SmWait) && (child->actionFunc == EnFloormas_SmWait)) {
        Actor_Kill(&parent->actor);
        Actor_Kill(&child->actor);
        Actor_Kill(&this->actor);
        return;
    }
    this->actor.draw = NULL;
    this->actionFunc = EnFloormas_SmWait;
    this->actor.flags &= ~0x11;
}

void EnFloormas_SetupTakeDamage(EnFloormas* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06000590, -3.0f);
    if ((this->collider.body.acHitItem->toucher.flags & 0x1F824) != 0) {
        this->actor.posRot.rot.y = this->collider.base.ac->posRot.rot.y;
    } else {
        this->actor.posRot.rot.y = func_8002DA78(&this->actor, this->collider.base.ac) + 0x8000;
    }
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x14);
    this->actionFunc = EnFloormas_TakeDamage;
    this->actor.speedXZ = 5.0f;
    this->actor.velocity.y = 5.5f;
}

void EnFloormas_SetupRecover(EnFloormas* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000EA4);
    this->actor.velocity.y = this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->actionFunc = EnFloormas_Recover;
}

void EnFloormas_SetupFreeze(EnFloormas* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060019CC, 1.5f, 0, 20.0f, 2, -3.0f);
    this->actor.speedXZ = 0.0f;
    if (this->actor.colChkInfo.damageEffect == 4) {
        func_8003426C(&this->actor, -0x8000, 0xFF, 0, 0x50);
    } else {
        func_8003426C(&this->actor, 0, 0xFF, 0, 0x50);
        if (this->actor.scale.x > 0.004f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        }
    }
    this->actionTimer = 80;
    this->actionFunc = EnFloormas_Freeze;
}

void EnFloormas_Die(EnFloormas* this, GlobalContext* globalCtx) {
    if (this->actor.scale.x > 0.004f) {
        // split
        this->actor.shape.rot.y = this->actor.yawTowardsLink + 0x8000;
        EnFloormas_SetupSplit((EnFloormas*)this->actor.child);
        EnFloormas_SetupSplit((EnFloormas*)this->actor.parent);
        EnFloormas_SetupSplit(this);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SPLIT);
    } else {
        // Die
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x90);
        EnFloormas_SetupSmShrink(this, globalCtx);
    }
}

void EnFloormas_BigDecideAction(EnFloormas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        // within 400 units of link and within 90 degrees rotation of him
        if (this->actor.xzDistFromLink < 400.0f && !func_8002E084(&this->actor, 0x4000)) {
            this->actionTarget = this->actor.yawTowardsLink;
            EnFloormas_SetupTurn(this);
            // within 280 units of link and within 45 degrees rotation of him
        } else if (this->actor.xzDistFromLink < 280.0f && func_8002E084(&this->actor, 0x2000)) {
            EnFloormas_SetupHover(this, globalCtx);
        } else {
            EnFloormas_SetupStand(this);
        }
    }
}

void EnFloormas_Stand(EnFloormas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->actor.scale.x > 0.004f) {
            EnFloormas_SetupBigWalk(this);
        } else if (this->actor.params == MERGE_SLAVE) {
            EnFloormas_SetupSmDecideAction(this);
        } else {
            EnFloormas_SetupSmWalk(this);
        }
    }
}

void EnFloormas_BigWalk(EnFloormas* this, GlobalContext* globalCtx) {
    s32 animPastFrame;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    animPastFrame = func_800A56C8(&this->skelAnime, 0.0f);
    if (animPastFrame) {
        if (this->actionTimer != 0) {
            this->actionTimer--;
        }
    }
    if (((animPastFrame || (func_800A56C8(&this->skelAnime, 12.0f))) ||
         (func_800A56C8(&this->skelAnime, 24.0f) != 0)) ||
        (func_800A56C8(&this->skelAnime, 36.0f) != 0)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_WALK);
    }

    if ((this->actor.xzDistFromLink < 320.0f) && (func_8002E084(&this->actor, 0x4000))) {
        EnFloormas_SetupRun(this);
    } else if (this->actor.bgCheckFlags & 8) {
        // set target rotation to the colliding wall's rotation
        this->actionTarget = this->actor.wallPolyRot;
        EnFloormas_SetupTurn(this);
    } else if ((this->actor.xzDistFromLink < 400.0f) && !func_8002E084(&this->actor, 0x4000)) {
        // set target rotation to link.
        this->actionTarget = this->actor.yawTowardsLink;
        EnFloormas_SetupTurn(this);
    } else if (this->actionTimer == 0) {
        EnFloormas_SetupBigStopWalk(this);
    }
}

void EnFloormas_BigStopWalk(EnFloormas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        EnFloormas_SetupBigDecideAction(this);
    }
}

void EnFloormas_Run(EnFloormas* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((((func_800A56C8(&this->skelAnime, 0.0f)) || (func_800A56C8(&this->skelAnime, 12.0f))) ||
         (func_800A56C8(&this->skelAnime, 24.0f))) ||
        (func_800A56C8(&this->skelAnime, 36.0f))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_WALK);
    }

    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x71C);

    if ((this->actor.xzDistFromLink < 280.0f) && func_8002E084(&this->actor, 0x2000) &&
        !(this->actor.bgCheckFlags & 8)) {
        EnFloormas_SetupHover(this, globalCtx);
    } else if (this->actor.xzDistFromLink > 400.0f) {
        EnFloormas_SetupBigWalk(this);
    }
}

void EnFloormas_Turn(EnFloormas* this, GlobalContext* globalCtx) {
    char pad[4];
    f32 sp30;
    f32 sp2C;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        EnFloormas_SetupStand(this);
    }

    if (((this->skelAnime.animPlaybackSpeed > 0.0f) && func_800A56C8(&this->skelAnime, 21.0f)) ||
        ((this->skelAnime.animPlaybackSpeed < 0.0f) && func_800A56C8(&this->skelAnime, 6.0f))) {
        if (this->actor.scale.x > 0.004f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_WALK);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_WALK);
        }
    }
    // Needed to match
    if (!this->skelAnime.animCurrentFrame) {}
    if (this->skelAnime.animCurrentFrame >= 7.0f && this->skelAnime.animCurrentFrame < 22.0f) {
        sp30 = Math_Sins(this->actor.shape.rot.y + 0x4268);
        sp2C = Math_Coss(this->actor.shape.rot.y + 0x4268);
        this->actor.shape.rot.y += this->actionTarget;
        this->actor.posRot.pos.x -=
            (this->actor.scale.x * 2700.0f) * (Math_Sins(this->actor.shape.rot.y + 0x4268) - sp30);
        this->actor.posRot.pos.z -=
            (this->actor.scale.x * 2700.0f) * (Math_Coss(this->actor.shape.rot.y + 0x4268) - sp2C);
    }
}

void EnFloormas_Hover(EnFloormas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        EnFloormas_SetupCharge(this);
    }
    this->actor.shape.rot.x += 0x140;
    this->actor.posRot.pos.y += 10.0f;
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 2730);
    Math_ApproxS(&this->zOffset, 1200, 100);
}

void EnFloormas_Slide(EnFloormas* this, GlobalContext* globalCtx) {
    static Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;
    Vec3f velocity;

    pos.x = this->actor.posRot.pos.x;
    pos.z = this->actor.posRot.pos.z;
    pos.y = this->actor.groundY;

    velocity.y = 2.0f;
    velocity.x = Math_Sins(this->actor.shape.rot.y + 0x6000) * 7.0f;
    velocity.z = Math_Coss(this->actor.shape.rot.y + 0x6000) * 7.0f;

    func_800286CC(globalCtx, &pos, &velocity, &accel, 450, 100);

    velocity.x = Math_Sins(this->actor.shape.rot.y - 0x6000) * 7.0f;
    velocity.z = Math_Coss(this->actor.shape.rot.y - 0x6000) * 7.0f;

    func_800286CC(globalCtx, &pos, &velocity, &accel, 450, 100);

    func_8002F974(this, NA_SE_EN_FLOORMASTER_SLIDING);
}

void EnFloormas_Charge(EnFloormas* this, GlobalContext* globalCtx) {
    f32 distFromGround;

    if (this->actionTimer != 0) {
        this->actionTimer--;
    }

    Math_ApproxF(&this->actor.speedXZ, 15.0f, SQ(this->actor.speedXZ) * (1.0f / 3.0f));
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0x1680, 0x140);

    distFromGround = this->actor.posRot.pos.y - this->actor.groundY;
    if (distFromGround < 10.0f) {
        this->actor.posRot.pos.y = this->actor.groundY + 10.0f;
        this->actor.gravity = 0.0f;
        this->actor.velocity.y = 0.0f;
    }

    if (distFromGround < 12.0f) {
        EnFloormas_Slide(this, globalCtx);
    }

    if ((this->actor.bgCheckFlags & 8) || (this->actionTimer == 0)) {
        EnFloormas_SetupLand(this);
    }
}

void EnFloormas_Land(EnFloormas* this, GlobalContext* globalCtx) {
    s32 isOnGround;

    isOnGround = this->actor.bgCheckFlags & 1;
    if (this->actor.bgCheckFlags & 2) {
        if (this->actor.params != MERGE_MASTER) {
            EnFloormas_MakeVulnerable(this);
        }

        if (this->actor.velocity.y < -4.0f) {
            if (this->actor.scale.x > 0.004f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_LAND);
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
            }
        }
    }
    if (this->actor.bgCheckFlags & 8) {
        this->actor.speedXZ = 0.0f;
    }

    if (isOnGround) {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 2.0f);
    }

    if ((this->actor.speedXZ > 0.0f) && ((this->actor.posRot.pos.y - this->actor.groundY) < 12.0f)) {
        EnFloormas_Slide(this, globalCtx);
    }

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->actionTimer != 0) {
            this->actionTimer--;
        }

        if (this->actionTimer == 0 && isOnGround) {
            if (this->skelAnime.animFrameCount < 45.0f) {
                this->skelAnime.animFrameCount = SkelAnime_GetFrameCount(&D_060019CC);
            } else if (this->actor.params == MERGE_MASTER) {
                EnFloormas_SetupMerge(this);
            } else {
                EnFloormas_SetupStand(this);
                this->smActionTimer = 50;
            }
        }
    }

    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x140);
    Math_ApproxS(&this->zOffset, -1600, 100);
}

void EnFloormas_Split(EnFloormas* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 1) {
        if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
            this->actor.flags |= 1;
            this->smActionTimer = 50;
            EnFloormas_SetupStand(this);
        }
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 1.0f);
    }

    if (this->actor.bgCheckFlags & 2) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
    }
}

void EnFloormas_SmWalk(EnFloormas* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    DECR(this->smActionTimer);

    if ((func_800A56C8(&this->skelAnime, 0.0f)) || (func_800A56C8(&this->skelAnime, 18.0f))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_WALK);
    }

    if (this->smActionTimer == 0) {
        EnFloormas_SetupSmDecideAction(this);
    } else if (this->actor.bgCheckFlags & 8) {
        this->actionTarget = this->actor.wallPolyRot;
        EnFloormas_SetupTurn(this);
    } else if (this->actor.xzDistFromLink < 120.0f) {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink + 0x8000, 0x38E);
    }
}

void EnFloormas_SmDecideAction(EnFloormas* this, GlobalContext* globalCtx) {
    Actor* primaryFloormas;
    s32 isAgainstWall;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_800A56C8(&this->skelAnime, 0.0f)) || (func_800A56C8(&this->skelAnime, 18.0f))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_WALK);
    }
    isAgainstWall = this->actor.bgCheckFlags & 8;
    if (isAgainstWall) {
        this->actionTarget = this->actor.wallPolyRot;
        EnFloormas_SetupTurn(this);
        return;
    }

    if (this->actor.params == MERGE_SLAVE) {
        if (this->actor.parent->params == MERGE_MASTER) {
            primaryFloormas = this->actor.parent;
        } else if (this->actor.child->params == MERGE_MASTER) {
            primaryFloormas = this->actor.child;
        } else {
            this->actor.params = 0x10;
            return;
        }

        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DA78(&this->actor, primaryFloormas), 0x38E);
        if (func_8002DB8C(&this->actor, primaryFloormas) < 80.0f) {
            EnFloormas_SetupSlaveJumpAtMaster(this);
        }
    } else {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x71C);
        if (this->actor.xzDistFromLink < 80.0f) {
            EnFloormas_SetupJumpAtLink(this);
        }
    }
}

void EnFloormas_SmShrink(EnFloormas* this, GlobalContext* globalCtx) {
    if (Math_ApproxF(&this->actor.scale.x, 0.0f, 0.0015f)) {
        EnFloormas_SetupSmWait(this);
    }
    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;
}

void EnFloormas_JumpAtLink(EnFloormas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->skelAnime.animCurrentFrame < 20.0f) {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xE38);
    } else if (func_800A56C8(&this->skelAnime, 20.0f)) {
        this->actor.speedXZ = 5.0f;
        this->actor.velocity.y = 7.0f;
    } else if (this->actor.bgCheckFlags & 2) {
        this->actionTimer = 0x32;
        this->actor.speedXZ = 0.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
        EnFloormas_SetupLand(this);
    } else if ((this->actor.yDistFromLink < -10.0f) && (this->collider.base.maskA & 2) &&
               (&player->actor == this->collider.base.oc)) {
        globalCtx->grabPlayer(globalCtx, player);
        EnFloormas_SetupGrabLink(this, player);
    }
}

void EnFloormas_GrabLink(EnFloormas* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnFloormas* parent;
    EnFloormas* child;
    f32 yDelta;
    f32 xzDelta;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->skelAnime.animPlaybackSpeed > 0.0f) {
            this->skelAnime.animPlaybackSpeed = -1.0f;
            this->skelAnime.animFrameCount = 36.0f;
            this->skelAnime.initialFrame = 45.0f;
        } else {
            this->skelAnime.animPlaybackSpeed = 1.0f;
            this->skelAnime.animFrameCount = 45.0f;
            this->skelAnime.initialFrame = 36.0f;
        }
    }

    if (LINK_IS_CHILD) {
        yDelta = CLAMP(-this->actor.yDistFromLink, 20.0f, 30.0f);
        xzDelta = -10.0f;
    } else {
        yDelta = CLAMP(-this->actor.yDistFromLink, 25.0f, 45.0f);
        xzDelta = -30.0f;
    }

    this->actor.posRot.pos.y = player->actor.posRot.pos.y + yDelta;
    this->actor.posRot.pos.x = Math_Sins(this->actor.shape.rot.y) * (xzDelta * 0.1f) + player->actor.posRot.pos.x;
    this->actor.posRot.pos.z = Math_Coss(this->actor.shape.rot.y) * (xzDelta * 0.1f) + player->actor.posRot.pos.z;

    // let go
    if (!(player->stateFlags2 & 0x80) || (player->invincibilityTimer < 0)) {
        parent = this->actor.parent;
        child = this->actor.child;

        if (((parent->actionFunc == EnFloormas_GrabLink) || parent->actionFunc == EnFloormas_SmWait) &&
            (child->actionFunc == EnFloormas_GrabLink || child->actionFunc == EnFloormas_SmWait)) {

            parent->actor.params = MERGE_SLAVE;
            child->actor.params = MERGE_SLAVE;
            this->actor.params = MERGE_MASTER;
        }

        this->actor.shape.rot.x = 0;
        this->actor.velocity.y = 6.0f;
        this->actor.flags |= 1;
        this->actor.speedXZ = -3.0f;
        EnFloormas_SetupLand(this);
    } else {
        // Damage link every 20 frames
        if ((this->actionTarget % 20) == 0) {
            if (LINK_IS_CHILD) {
                func_8002F7DC(&player->actor, NA_SE_VO_LI_DAMAGE_S_KID);
            } else {
                func_8002F7DC(&player->actor, NA_SE_VO_LI_DAMAGE_S);
            }
            globalCtx->damagePlayer(globalCtx, -8);
        }
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_STICK);
}

void EnFloormas_SmSlaveJumpAtMaster(EnFloormas* this, GlobalContext* globalCtx) {
    Actor* primFloormas;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.parent->params == MERGE_MASTER) {
        primFloormas = this->actor.parent;
    } else if (this->actor.child->params == MERGE_MASTER) {
        primFloormas = this->actor.child;
    } else {
        if (this->actor.bgCheckFlags & 2) {
            this->actor.params = 0x10;
            EnFloormas_SetupLand(this);
        }
        return;
    }
    if (func_800A56C8(&this->skelAnime, 20.0f)) {
        this->actor.speedXZ = 5.0f;
        this->actor.velocity.y = 7.0f;
    } else if (this->skelAnime.animCurrentFrame < 20.0f) {
        Math_SmoothScaleMaxS(&this->actor.shape.rot.y, func_8002DA78(&this->actor, primFloormas), 2, 0xE38);
    } else if ((((primFloormas->posRot.pos.y - this->actor.posRot.pos.y) < -10.0f) &&
                (fabsf(this->actor.posRot.pos.x - primFloormas->posRot.pos.x) < 10.0f)) &&
               (fabsf(this->actor.posRot.pos.z - primFloormas->posRot.pos.z) < 10.0f)) {
        EnFloormas_SetupSmWait(this);
        this->collider.base.maskA |= 1;
    } else if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_LAND);
        EnFloormas_SetupLand(this);
    }

    if (fabsf(this->actor.posRot.pos.x - primFloormas->posRot.pos.x) < 5.0f &&
        fabsf(this->actor.posRot.pos.z - primFloormas->posRot.pos.z) < 5.0f) {
        Math_ApproxF(&this->actor.speedXZ, 0, 2.0f);
    }
}

void EnFloormas_Merge(EnFloormas* this, GlobalContext* globalCtx) {
    EnFloormas* parent;
    EnFloormas* child;
    s32 mergeCnt;
    f32 prevScale;
    f32 curScale;

    mergeCnt = 0;

    DECR(this->smActionTimer);

    parent = this->actor.parent;
    child = this->actor.child;

    if (this->smActionTimer == 0) {
        if (parent->actionFunc != EnFloormas_SmWait) {
            EnFloormas_SetupSmShrink(parent, globalCtx);
        }

        if (child->actionFunc != EnFloormas_SmWait) {
            EnFloormas_SetupSmShrink(child, globalCtx);
        }
    } else {
        if ((parent->actionFunc != EnFloormas_SmWait) && (parent->actionFunc != EnFloormas_SmShrink)) {
            mergeCnt++;
        }

        if ((child->actionFunc != EnFloormas_SmWait) && (child->actionFunc != EnFloormas_SmShrink)) {
            mergeCnt++;
        }
    }

    prevScale = this->actor.scale.x;

    if (mergeCnt == 1) {
        Math_ApproxF(&this->actor.scale.x, 0.007f, 0.0005f);
    } else if (mergeCnt == 0) {
        Math_ApproxF(&this->actor.scale.x, 0.01f, 0.0005f);
    }

    curScale = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.z = curScale;

    if (((prevScale == 0.007f) || (prevScale == 0.004f)) && (prevScale != this->actor.scale.x)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_EXPAND);
    }

    this->collider.dim.radius = (sCylinderInit.dim.radius * 100.0f) * this->actor.scale.x;
    this->collider.dim.height = (sCylinderInit.dim.height * 100.0f) * this->actor.scale.x;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->actor.scale.x >= 0.01f) {
            this->actor.flags &= ~0x10;
            EnFloormas_MakeVulnerable(this);
            this->actor.params = 0;
            this->collider.body.bumperFlags |= 4;
            this->actor.colChkInfo.health = sColChkInfoInit.health;
            EnFloormas_SetupStand(this);
        } else {
            if (this->actionTimer == 0) {
                SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_060039B0);
                this->actionTimer = 1;
            } else {
                SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06009DB0);
                this->actionTimer = 0;
            }
        }
    }
    func_8002F974(&this->actor, NA_SE_EN_FLOORMASTER_RESTORE - SFX_FLAG);
}

void EnFloormas_SmWait(EnFloormas* this, GlobalContext* globalCtx) {
}

void EnFloormas_TakeDamage(EnFloormas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->actor.colChkInfo.health == 0) {
            EnFloormas_Die(this, globalCtx);
        } else {
            EnFloormas_SetupRecover(this);
        }
    }

    if (func_800A56C8(&this->skelAnime, 13.0f)) {
        if (this->actor.scale.x > 0.004f) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        }
    }
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.2f);
}

void EnFloormas_Recover(EnFloormas* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        EnFloormas_SetupStand(this);
    }
}

void EnFloormas_Freeze(EnFloormas* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actionTimer != 0) {
        this->actionTimer--;
    }
    if (this->actionTimer == 0) {
        if (this->actor.colChkInfo.health == 0) {
            EnFloormas_Die(this, globalCtx);
            return;
        }
        EnFloormas_SetupStand(this);
    }
}

void EnFloormas_ColliderCheck(EnFloormas* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 isSmall;

    if ((this->collider.base.acFlags & 2) != 0) {
        this->collider.base.acFlags &= ~2;
        func_80035650(&this->actor, &this->collider.body, 1);
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (this->collider.base.type != COLTYPE_UNK12) {
                isSmall = 0;
                if (this->actor.scale.x < 0.01f) {
                    isSmall = 1;
                }
                if (isSmall && this->collider.body.acHitItem->toucher.flags & 0x80) {
                    this->actor.colChkInfo.damage = 2;
                    this->actor.colChkInfo.damageEffect = 0;
                }
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    if (isSmall) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FLOORMASTER_SM_DEAD);
                    } else {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_DEAD);
                    }
                    func_80032C7C(globalCtx, &this->actor);
                    this->actor.flags &= ~1;
                } else if (this->actor.colChkInfo.damage != 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FALL_DAMAGE);
                }

                if ((this->actor.colChkInfo.damageEffect == 4) || (this->actor.colChkInfo.damageEffect == 1)) {
                    if (this->actionFunc != EnFloormas_Freeze) {
                        EnFloormas_SetupFreeze(this);
                    }
                } else {
                    if (this->actor.colChkInfo.damageEffect == 2) {
                        EffectSsFCircle_Spawn(globalCtx, &this->actor, &this->actor.posRot.pos,
                                              this->actor.scale.x * 4000.f, this->actor.scale.x * 4000.f);
                    }
                    EnFloormas_SetupTakeDamage(this);
                }
            }
        }
    }
}

void EnFloormas_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnFloormas* this = THIS;
    s32 pad;

    if (this->actionFunc != EnFloormas_SmWait) {
        if (this->collider.base.atFlags & 2) {
            this->collider.base.atFlags &= ~2;
            this->actor.speedXZ *= -0.5f;

            if (-5.0f < this->actor.speedXZ) {
                this->actor.speedXZ = -5.0f;
            } else {
                this->actor.speedXZ = this->actor.speedXZ;
            }

            this->actor.velocity.y = 5.0f;

            EnFloormas_SetupLand(this);
        }
        EnFloormas_ColliderCheck(this, globalCtx);
        this->actionFunc(this, globalCtx);

        if (this->actionFunc != EnFloormas_TakeDamage) {
            this->actor.posRot.rot.y = this->actor.shape.rot.y;
        }

        if (this->actionFunc != EnFloormas_GrabLink) {
            Actor_MoveForward(&this->actor);
        }

        func_8002E4B4(globalCtx, &this->actor, 20.0f, this->actor.scale.x * 3000.0f, 0.0f, 0x1D);
        Collider_CylinderUpdate(&this->actor, &this->collider);
        if (this->actionFunc == EnFloormas_Charge) {
            this->actor.flags |= 0x1000000;
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider);
        }
        if (this->actionFunc != EnFloormas_GrabLink) {
            if (this->actionFunc != EnFloormas_Split && this->actionFunc != EnFloormas_TakeDamage &&
                this->actor.freezeTimer == 0) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
            }

            if ((this->actionFunc != EnFloormas_SmSlaveJumpAtMaster) || (this->skelAnime.animCurrentFrame < 20.0f)) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
            }
        }

        Actor_SetHeight(&this->actor, this->actor.scale.x * 2500.0f);

        if (this->collider.base.type == COLTYPE_UNK12) {
            if (this->actionTarget != 0) {
                this->actionTarget--;
            }

            if (this->actionTarget == 0) {
                this->actionTarget = 0x28;
            }
        }
    }
}

s32 EnFloormas_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                void* thisx, Gfx** gfx) {
    EnFloormas* this = THIS;
    if (limbIndex == 1) {
        pos->z += this->zOffset;
    }
    return 0;
}

void EnFloormas_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    if (limbIndex == 2) {
        Matrix_Push();
        Matrix_Translate(1600.0f, -700.0f, -1700.0f, MTXMODE_APPLY);
        Matrix_RotateY(DEGTORAD(60.0f), 1);
        Matrix_RotateZ(DEGTORAD(15.0f), 1);
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);
        gSPMatrix((*gfx)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_floormas.c", 2299), G_MTX_LOAD);
        gSPDisplayList((*gfx)++, D_06008688);
        Matrix_Pull();
    }
}

static Color_RGBA8 sMergeColor = { 0, 255, 0, 0 };

void EnFloormas_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnFloormas* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_floormas.c", 2318);

    func_80093D18(globalCtx->state.gfxCtx);
    if (this->collider.base.type == COLTYPE_UNK12) {
        func_80026230(globalCtx, &sMergeColor, this->actionTarget % 0x28, 0x28);
    }

    POLY_OPA_DISP =
        SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                           EnFloormas_OverrideLimbDraw, EnFloormas_PostLimbDraw, this, POLY_OPA_DISP);
    if (this->collider.base.type == COLTYPE_UNK12) {
        func_80026608(globalCtx);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_floormas.c", 2340);
}

void EnFloormas_DrawHighlighted(Actor* thisx, GlobalContext* globalCtx) {
    EnFloormas* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_floormas.c", 2352);

    func_80093D84(globalCtx->state.gfxCtx);
    if (this->collider.base.type == COLTYPE_UNK12) {
        func_80026690(globalCtx, &sMergeColor, this->actionTarget % 0x28, 0x28);
    }
    POLY_XLU_DISP =
        SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                           EnFloormas_OverrideLimbDraw, EnFloormas_PostLimbDraw, this, POLY_XLU_DISP);
    if (this->collider.base.type == COLTYPE_UNK12) {
        func_80026A6C(globalCtx);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_floormas.c", 2374);
}
