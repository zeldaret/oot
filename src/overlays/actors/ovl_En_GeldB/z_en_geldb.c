#include "z_en_geldb.h"

#define FLAGS 0x00000015

#define THIS ((EnGeldB*)thisx)

typedef enum {
    /*  0 */ GELDB_WAIT,
    /*  1 */ GELDB_DEFEAT,
    /*  2 */ GELDB_DAMAGED,
    /*  3 */ GELDB_JUMP,
    /*  4 */ GELDB_ROLL_BACK,
    /*  5 */ GELDB_READY,
    /*  6 */ GELDB_BLOCK,
    /*  7 */ GELDB_SLASH,
    /*  8 */ GELDB_ADVANCE,
    /*  9 */ GELDB_PIVOT,
    /* 10 */ GELDB_CIRCLE,
    /* 11 */ GELDB_UNUSED,
    /* 12 */ GELDB_SPIN_ATTACK,
    /* 13 */ GELDB_SIDESTEP,
    /* 14 */ GELDB_ROLL_FORWARD,
    /* 15 */ GELDB_STUNNED,
    /* 16 */ GELDB_SPIN_DODGE
} EnGeldBActionState;

void EnGeldB_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGeldB_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 EnGeldB_DodgeRanged(GlobalContext* globalCtx, EnGeldB* this);

void EnGeldB_SetupWait(EnGeldB* this);
void EnGeldB_SetupReady(EnGeldB* this);
void EnGeldB_SetupAdvance(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_SetupPivot(EnGeldB* this);
void EnGeldB_SetupRollForward(EnGeldB* this);
void EnGeldB_SetupCircle(EnGeldB* this);
void EnGeldB_SetupSpinDodge(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_SetupSlash(EnGeldB* this);
void EnGeldB_SetupSpinAttack(EnGeldB* this);
void EnGeldB_SetupRollBack(EnGeldB* this);
void EnGeldB_SetupJump(EnGeldB* this);
void EnGeldB_SetupBlock(EnGeldB* this);
void EnGeldB_SetupSidestep(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_SetupDefeated(EnGeldB* this);

void EnGeldB_Wait(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Flee(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Ready(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Advance(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_RollForward(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Pivot(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Circle(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_SpinDodge(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Slash(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_SpinAttack(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_RollBack(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Stunned(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Damaged(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Jump(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Block(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Sidestep(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Defeated(EnGeldB* this, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_0600A458;
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
    {
        COLTYPE_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 20, 50, 0, { 0, 0, 0 } },
};

static ColliderTrisElementInit sBlockTrisElementsInit[2] = {
    {
        {
            ELEMTYPE_UNK2,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFC1FFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON,
            OCELEM_NONE,
        },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        {
            ELEMTYPE_UNK2,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFC1FFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON,
            OCELEM_NONE,
        },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

static ColliderTrisInit sBlockTrisInit = {
    {
        COLTYPE_METAL,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_TRIS,
    },
    2,
    sBlockTrisElementsInit,
};

static ColliderQuadInit sSwordQuadInit = {
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
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL | TOUCH_UNK7,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

typedef enum {
    /* 0x0 */ GELDB_DMG_NORMAL,
    /* 0x1 */ GELDB_DMG_STUN,
    /* 0x6 */ GELDB_DMG_UNK_6 = 0x6,
    /* 0xD */ GELDB_DMG_UNK_D = 0xD,
    /* 0xE */ GELDB_DMG_UNK_E,
    /* 0xF */ GELDB_DMG_FREEZE
} EnGeldBDamageEffects;

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, GELDB_DMG_STUN),
    /* Deku stick    */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Slingshot     */ DMG_ENTRY(1, GELDB_DMG_NORMAL),
    /* Explosive     */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Boomerang     */ DMG_ENTRY(0, GELDB_DMG_STUN),
    /* Normal arrow  */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Hammer swing  */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Hookshot      */ DMG_ENTRY(0, GELDB_DMG_STUN),
    /* Kokiri sword  */ DMG_ENTRY(1, GELDB_DMG_NORMAL),
    /* Master sword  */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Giant's Knife */ DMG_ENTRY(4, GELDB_DMG_NORMAL),
    /* Fire arrow    */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Ice arrow     */ DMG_ENTRY(2, GELDB_DMG_FREEZE),
    /* Light arrow   */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Unk arrow 1   */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Unk arrow 2   */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Unk arrow 3   */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Fire magic    */ DMG_ENTRY(4, GELDB_DMG_UNK_E),
    /* Ice magic     */ DMG_ENTRY(0, GELDB_DMG_UNK_6),
    /* Light magic   */ DMG_ENTRY(3, GELDB_DMG_UNK_D),
    /* Shield        */ DMG_ENTRY(0, GELDB_DMG_NORMAL),
    /* Mirror Ray    */ DMG_ENTRY(0, GELDB_DMG_NORMAL),
    /* Kokiri spin   */ DMG_ENTRY(1, GELDB_DMG_NORMAL),
    /* Giant spin    */ DMG_ENTRY(4, GELDB_DMG_NORMAL),
    /* Master spin   */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Kokiri jump   */ DMG_ENTRY(2, GELDB_DMG_NORMAL),
    /* Giant jump    */ DMG_ENTRY(8, GELDB_DMG_NORMAL),
    /* Master jump   */ DMG_ENTRY(4, GELDB_DMG_NORMAL),
    /* Unknown 1     */ DMG_ENTRY(4, GELDB_DMG_NORMAL),
    /* Unblockable   */ DMG_ENTRY(0, GELDB_DMG_NORMAL),
    /* Hammer jump   */ DMG_ENTRY(4, GELDB_DMG_NORMAL),
    /* Unknown 2     */ DMG_ENTRY(0, GELDB_DMG_NORMAL),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3000, ICHAIN_STOP),
};

static Vec3f sUnusedOffset = { 1100.0f, -700.0f, 0.0f };

void EnGeldB_SetupAction(EnGeldB* this, EnGeldBActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnGeldB_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EffectBlureInit1 blureInit;
    EnGeldB* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    thisx->colChkInfo.damageTable = &sDamageTable;
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Teardrop, 0.0f);
    this->actor.colChkInfo.mass = MASS_HEAVY;
    thisx->colChkInfo.health = 20;
    thisx->colChkInfo.unk_10 = 50;
    thisx->colChkInfo.unk_12 = 100;
    thisx->naviEnemyId = 0x54;
    this->keyFlag = thisx->params & 0xFF00;
    thisx->params &= 0xFF;
    this->blinkState = 0;
    this->unkFloat = 10.0f;
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600A458, &D_0600B6D4, this->jointTable, this->morphTable, 24);
    Collider_InitCylinder(globalCtx, &this->bodyCollider);
    Collider_SetCylinder(globalCtx, &this->bodyCollider, thisx, &sBodyCylInit);
    Collider_InitTris(globalCtx, &this->blockCollider);
    Collider_SetTris(globalCtx, &this->blockCollider, thisx, &sBlockTrisInit, this->blockElements);
    Collider_InitQuad(globalCtx, &this->swordCollider);
    Collider_SetQuad(globalCtx, &this->swordCollider, thisx, &sSwordQuadInit);
    blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p1StartColor[2] = blureInit.p1StartColor[3] =
        blureInit.p2StartColor[0] = blureInit.p2StartColor[1] = blureInit.p2StartColor[2] = blureInit.p1EndColor[0] =
            blureInit.p1EndColor[1] = blureInit.p1EndColor[2] = blureInit.p2EndColor[0] = blureInit.p2EndColor[1] =
                blureInit.p2EndColor[2] = 255;
    blureInit.p2StartColor[3] = 64;
    blureInit.p1EndColor[3] = blureInit.p2EndColor[3] = 0;
    blureInit.elemDuration = 8;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 2;

    Effect_Add(globalCtx, &this->blureIdx, EFFECT_BLURE1, 0, 0, &blureInit);
    Actor_SetScale(thisx, 0.012499999f);
    EnGeldB_SetupWait(this);
    if ((this->keyFlag != 0) && Flags_GetCollectible(globalCtx, this->keyFlag >> 8)) {
        Actor_Kill(thisx);
    }
}

void EnGeldB_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGeldB* this = THIS;

    func_800F5B58();
    Effect_Delete(globalCtx, this->blureIdx);
    Collider_DestroyTris(globalCtx, &this->blockCollider);
    Collider_DestroyCylinder(globalCtx, &this->bodyCollider);
    Collider_DestroyQuad(globalCtx, &this->swordCollider);
}

s32 EnGeldB_ReactToPlayer(GlobalContext* globalCtx, EnGeldB* this, s16 arg2) {
    Player* player = PLAYER;
    Actor* thisx = &this->actor;
    s16 angleToWall;
    s16 angleToLink;
    Actor* bomb;

    angleToWall = thisx->wallPolyRot - thisx->shape.rot.y;
    angleToWall = ABS(angleToWall);
    angleToLink = thisx->yawTowardsLink - thisx->shape.rot.y;
    angleToLink = ABS(angleToLink);

    if (func_800354B4(globalCtx, thisx, 100.0f, 0x2710, 0x3E80, thisx->shape.rot.y)) {
        if (player->swordAnimation == 0x11) {
            EnGeldB_SetupSpinDodge(this, globalCtx);
            return true;
        } else if (globalCtx->gameplayFrames & 1) {
            EnGeldB_SetupBlock(this);
            return true;
        }
    }
    if (func_800354B4(globalCtx, thisx, 100.0f, 0x5DC0, 0x2AA8, thisx->shape.rot.y)) {
        thisx->shape.rot.y = thisx->posRot.rot.y = thisx->yawTowardsLink;
        if ((thisx->bgCheckFlags & 8) && (ABS(angleToWall) < 0x2EE0) && (thisx->xzDistToLink < 90.0f)) {
            EnGeldB_SetupJump(this);
            return true;
        } else if (player->swordAnimation == 0x11) {
            EnGeldB_SetupSpinDodge(this, globalCtx);
            return true;
        } else if ((thisx->xzDistToLink < 90.0f) && (globalCtx->gameplayFrames & 1)) {
            EnGeldB_SetupBlock(this);
            return true;
        } else {
            EnGeldB_SetupRollBack(this);
            return true;
        }
    } else if ((bomb = Actor_FindNearby(globalCtx, thisx, -1, ACTORTYPE_EXPLOSIVES, 80.0f)) != NULL) {
        thisx->shape.rot.y = thisx->posRot.rot.y = thisx->yawTowardsLink;
        if (((thisx->bgCheckFlags & 8) && (angleToWall < 0x2EE0)) || (bomb->id == ACTOR_EN_BOM_CHU)) {
            if ((bomb->id == ACTOR_EN_BOM_CHU) && (func_8002DB48(thisx, bomb) < 80.0f) &&
                ((s16)(thisx->shape.rot.y - (bomb->posRot.rot.y - 0x8000)) < 0x3E80)) {
                EnGeldB_SetupJump(this);
                return true;
            } else {
                EnGeldB_SetupSidestep(this, globalCtx);
                return true;
            }
        } else {
            EnGeldB_SetupRollBack(this);
            return true;
        }
    } else if (arg2) {
        if (angleToLink >= 0x1B58) {
            EnGeldB_SetupSidestep(this, globalCtx);
            return true;
        } else {
            s16 angleToFacingLink = player->actor.shape.rot.y - thisx->shape.rot.y;

            if ((thisx->xzDistToLink <= 45.0f) && !func_80033AB8(globalCtx, thisx) &&
                ((globalCtx->gameplayFrames & 7) || (ABS(angleToFacingLink) < 0x38E0))) {
                EnGeldB_SetupSlash(this);
                return true;
            } else {
                EnGeldB_SetupCircle(this);
                return true;
            }
        }
    }
    return false;
}

void EnGeldB_SetupWait(EnGeldB* this) {
    Animation_PlayOnceSetSpeed(&this->skelAnime, &D_0600ADF8, 0.0f);
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + 120.0f;
    this->timer = 10;
    this->invisible = true;
    this->actionState = GELDB_WAIT;
    this->actor.bgCheckFlags &= ~3;
    this->actor.gravity = -2.0f;
    this->actor.flags &= ~1;
    EnGeldB_SetupAction(this, EnGeldB_Wait);
}

void EnGeldB_Wait(EnGeldB* this, GlobalContext* globalCtx) {
    if ((this->invisible && !Flags_GetSwitch(globalCtx, this->actor.initPosRot.rot.z)) ||
        this->actor.xzDistToLink > 300.0f) {
        this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        this->actor.posRot.pos.y = this->actor.groundY + 120.0f;
    } else {
        this->invisible = false;
        this->actor.shape.unk_10 = 90.0f;
        func_800F5ACC(0x38);
    }
    if (this->actor.bgCheckFlags & 2) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DOWN);
        this->skelAnime.playSpeed = 1.0f;
        this->actor.posRot.pos.y = this->actor.groundY;
        this->actor.flags |= 1;
        this->actor.posRot2.pos = this->actor.posRot.pos;
        this->actor.bgCheckFlags &= ~2;
        this->actor.velocity.y = 0.0f;
        func_80033260(globalCtx, &this->actor, &this->rightFootPos, 3.0f, 2, 2.0f, 0, 0, 0);
        func_80033260(globalCtx, &this->actor, &this->leftFootPos, 3.0f, 2, 2.0f, 0, 0, 0);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        EnGeldB_SetupReady(this);
    }
}

void EnGeldB_SetupFlee(EnGeldB* this) {
    Animation_Change(&this->skelAnime, &D_0600ADF8, -2.0f, Animation_GetLastFrame(&D_0600ADF8), 0.0f,
                     ANIMMODE_ONCE_INTERP, -4.0f);
    this->timer = 20;
    this->invisible = false;
    this->actionState = GELDB_WAIT;
    this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    EnGeldB_SetupAction(this, EnGeldB_Flee);
}

void EnGeldB_Flee(EnGeldB* this, GlobalContext* globalCtx) {
    if (this->skelAnime.curFrame == 10.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    }
    if (this->skelAnime.curFrame == 2.0f) {
        this->actor.gravity = 0.0f;
        func_80033260(globalCtx, &this->actor, &this->rightFootPos, 3.0f, 2, 2.0f, 0, 0, 0);
        func_80033260(globalCtx, &this->actor, &this->leftFootPos, 3.0f, 2, 2.0f, 0, 0, 0);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        Math_SmoothStepToF(&this->actor.posRot.pos.y, this->actor.groundY + 300.0f, 1.0f, 20.5f, 0.0f);
        this->timer--;
        if (this->timer == 0) {
            Actor_Kill(&this->actor);
        }
    }
}

void EnGeldB_SetupReady(EnGeldB* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_0600B6D4, -4.0f);
    this->actionState = GELDB_READY;
    this->timer = Rand_ZeroOne() * 10.0f + 5.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    EnGeldB_SetupAction(this, EnGeldB_Ready);
}

void EnGeldB_Ready(EnGeldB* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    s16 angleToLink;

    SkelAnime_Update(&this->skelAnime);
    if (this->lookTimer != 0) {
        angleToLink = this->actor.yawTowardsLink - this->actor.shape.rot.y - this->headRot.y;
        if (ABS(angleToLink) > 0x2000) {
            this->lookTimer--;
            return;
        }
        this->lookTimer = 0;
    }
    angleToLink = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if (!EnGeldB_DodgeRanged(globalCtx, this)) {
        if (this->unkTimer != 0) {
            this->unkTimer--;

            if (ABS(angleToLink) >= 0x1FFE) {
                return;
            }
            this->unkTimer = 0;
        } else if (EnGeldB_ReactToPlayer(globalCtx, this, 0)) {
            return;
        }
        angleToLink = player->actor.shape.rot.y - this->actor.shape.rot.y;
        if ((this->actor.xzDistToLink < 100.0f) && (player->swordState != 0) && (ABS(angleToLink) >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            EnGeldB_SetupCircle(this);
        } else if (--this->timer == 0) {
            if (func_8002E084(&this->actor, 30 * 0x10000 / 360)) {
                if ((210.0f > this->actor.xzDistToLink) && (this->actor.xzDistToLink > 150.0f) &&
                    (Rand_ZeroOne() < 0.3f)) {
                    if (func_80033AB8(globalCtx, &this->actor) || (Rand_ZeroOne() > 0.5f) ||
                        (ABS(angleToLink) < 0x38E0)) {
                        EnGeldB_SetupRollForward(this);
                    } else {
                        EnGeldB_SetupSpinAttack(this);
                    }
                } else if (Rand_ZeroOne() > 0.3f) {
                    EnGeldB_SetupAdvance(this, globalCtx);
                } else {
                    EnGeldB_SetupCircle(this);
                }
            } else {
                EnGeldB_SetupPivot(this);
            }
            if ((globalCtx->gameplayFrames & 0x5F) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_BREATH);
            }
        }
    }
}

void EnGeldB_SetupAdvance(EnGeldB* this, GlobalContext* globalCtx) {
    Animation_Change(&this->skelAnime, &D_060024E8, 1.0f, 0.0f, Animation_GetLastFrame(&D_060024E8),
                     ANIMMODE_LOOP_INTERP, -4.0f);
    this->actionState = GELDB_ADVANCE;
    EnGeldB_SetupAction(this, EnGeldB_Advance);
}

void EnGeldB_Advance(EnGeldB* this, GlobalContext* globalCtx) {
    s32 thisKeyFrame;
    s32 prevKeyFrame;
    s32 pad3C;
    s16 facingAngletoLink;
    Player* player = PLAYER;
    s32 pad30;
    s32 pad2C;
    f32 playSpeed;

    if (!EnGeldB_DodgeRanged(globalCtx, this)) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0x2EE, 0);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (this->actor.xzDistToLink <= 40.0f) {
            Math_SmoothStepToF(&this->actor.speedXZ, -8.0f, 1.0f, 1.5f, 0.0f);
        } else if (this->actor.xzDistToLink > 55.0f) {
            Math_SmoothStepToF(&this->actor.speedXZ, 8.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 6.65f, 0.0f);
        }
        this->skelAnime.playSpeed = this->actor.speedXZ * 0.125f;
        facingAngletoLink = player->actor.shape.rot.y - this->actor.shape.rot.y;
        facingAngletoLink = ABS(facingAngletoLink);
        if ((this->actor.xzDistToLink < 150.0f) && (player->swordState != 0) && (facingAngletoLink >= 0x1F40)) {
            this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            if (Rand_ZeroOne() > 0.7f) {
                EnGeldB_SetupCircle(this);
                return;
            }
        }
        thisKeyFrame = (s32)this->skelAnime.curFrame;
        SkelAnime_Update(&this->skelAnime);
        playSpeed = ABS(this->skelAnime.playSpeed);
        prevKeyFrame = (s32)(this->skelAnime.curFrame - playSpeed);
        playSpeed = ABS(this->skelAnime.playSpeed); // yes it does this twice.
        if (!func_8002E084(&this->actor, 0x11C7)) {
            if (Rand_ZeroOne() > 0.5f) {
                EnGeldB_SetupCircle(this);
            } else {
                EnGeldB_SetupReady(this);
            }
        } else if (this->actor.xzDistToLink < 90.0f) {
            if (!func_80033AB8(globalCtx, &this->actor) &&
                (Rand_ZeroOne() > 0.03f || (this->actor.xzDistToLink <= 45.0f && facingAngletoLink < 0x38E0))) {
                EnGeldB_SetupSlash(this);
            } else if (func_80033AB8(globalCtx, &this->actor) && (Rand_ZeroOne() > 0.5f)) {
                EnGeldB_SetupRollBack(this);
            } else {
                EnGeldB_SetupCircle(this);
            }
        }
        if (!EnGeldB_ReactToPlayer(globalCtx, this, 0)) {
            if ((210.0f > this->actor.xzDistToLink) && (this->actor.xzDistToLink > 150.0f) &&
                func_8002E084(&this->actor, 0x71C)) {
                if (func_80033A84(globalCtx, &this->actor)) {
                    if (Rand_ZeroOne() > 0.5f) {
                        EnGeldB_SetupRollForward(this);
                    } else {
                        EnGeldB_SetupSpinAttack(this);
                    }
                } else {
                    EnGeldB_SetupCircle(this);
                    return;
                }
            }
            if ((globalCtx->gameplayFrames & 0x5F) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_BREATH);
            }
            if ((thisKeyFrame != (s32)this->skelAnime.curFrame) &&
                ((prevKeyFrame < 0 && (s32)playSpeed + thisKeyFrame > 0) ||
                 (prevKeyFrame < 4 && (s32)playSpeed + thisKeyFrame > 4))) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_LAND);
            }
        }
    }
}

void EnGeldB_SetupRollForward(EnGeldB* this) {
    Animation_Change(&this->skelAnime, &D_06001390, -1.0f, Animation_GetLastFrame(&D_06001390), 0.0f, ANIMMODE_ONCE,
                     -3.0f);
    this->timer = 0;
    this->invisible = true;
    this->actionState = GELDB_ROLL_FORWARD;
    this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
    this->actor.speedXZ = 10.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    EnGeldB_SetupAction(this, EnGeldB_RollForward);
}

void EnGeldB_RollForward(EnGeldB* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 facingAngleToLink = player->actor.shape.rot.y - this->actor.shape.rot.y;

    if (SkelAnime_Update(&this->skelAnime)) {
        this->invisible = false;
        this->actor.speedXZ = 0.0f;
        if (!func_8002E084(&this->actor, 0x1554)) {
            EnGeldB_SetupReady(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
            if (ABS(facingAngleToLink) < 0x38E0) {
                this->lookTimer = 20;
            }
        } else if (!func_80033AB8(globalCtx, &this->actor) &&
                   (Rand_ZeroOne() > 0.5f || (ABS(facingAngleToLink) < 0x3FFC))) {
            EnGeldB_SetupSlash(this);
        } else {
            EnGeldB_SetupAdvance(this, globalCtx);
        }
    }
    if ((globalCtx->gameplayFrames & 0x5F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_BREATH);
    }
}

void EnGeldB_SetupPivot(EnGeldB* this) {
    Animation_MorphToLoop(&this->skelAnime, &D_0600A814, -4.0f);
    this->actionState = GELDB_PIVOT;
    EnGeldB_SetupAction(this, EnGeldB_Pivot);
}

void EnGeldB_Pivot(EnGeldB* this, GlobalContext* globalCtx) {
    s16 angleToLink;
    s16 turnRate;
    f32 playSpeed;

    if (!EnGeldB_DodgeRanged(globalCtx, this) && !EnGeldB_ReactToPlayer(globalCtx, this, 0)) {
        angleToLink = this->actor.yawTowardsLink - this->actor.shape.rot.y;
        turnRate = (angleToLink > 0) ? ((angleToLink * 0.25f) + 2000.0f) : ((angleToLink * 0.25f) - 2000.0f);
        this->actor.posRot.rot.y = this->actor.shape.rot.y += turnRate;
        if (angleToLink > 0) {
            playSpeed = turnRate * 0.5f;
            playSpeed = CLAMP_MAX(playSpeed, 1.0f);
        } else {
            playSpeed = turnRate * 0.5f;
            playSpeed = CLAMP_MIN(playSpeed, -1.0f);
        }
        this->skelAnime.playSpeed = -playSpeed;
        SkelAnime_Update(&this->skelAnime);
        if (func_8002E084(&this->actor, 30 * 0x10000 / 360)) {
            if (Rand_ZeroOne() > 0.8f) {
                EnGeldB_SetupCircle(this);
            } else {
                EnGeldB_SetupAdvance(this, globalCtx);
            }
        }
        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_BREATH);
        }
    }
}

void EnGeldB_SetupCircle(EnGeldB* this) {
    Animation_Change(&this->skelAnime, &D_0600A814, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600A814),
                     ANIMMODE_LOOP_INTERP, 0.0f);
    this->actor.speedXZ = Rand_CenteredFloat(12.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->skelAnime.playSpeed = -this->actor.speedXZ * 0.5f;
    this->timer = Rand_ZeroOne() * 30.0f + 30.0f;
    this->actionState = GELDB_CIRCLE;
    this->approachRate = 0.0f;
    EnGeldB_SetupAction(this, EnGeldB_Circle);
}

void EnGeldB_Circle(EnGeldB* this, GlobalContext* globalCtx) {
    s16 angleBehindLink;
    s16 phi_v1;
    s32 nextKeyFrame;
    s32 thisKeyFrame;
    s32 pad;
    s32 prevKeyFrame;
    Player* player = PLAYER;

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA0, 1);
    if (!EnGeldB_DodgeRanged(globalCtx, this) && !EnGeldB_ReactToPlayer(globalCtx, this, 0)) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x3A98;
        angleBehindLink = player->actor.shape.rot.y + 0x8000;
        if (Math_SinS(angleBehindLink - this->actor.shape.rot.y) >= 0.0f) {
            this->actor.speedXZ -= 0.25f;
            if (this->actor.speedXZ < -8.0f) {
                this->actor.speedXZ = -8.0f;
            }
        } else if (Math_SinS(angleBehindLink - this->actor.shape.rot.y) < 0.0f) {
            this->actor.speedXZ += 0.25f;
            if (this->actor.speedXZ > 8.0f) {
                this->actor.speedXZ = 8.0f;
            }
        }
        if ((this->actor.bgCheckFlags & 8) ||
            !func_800339B8(&this->actor, globalCtx, this->actor.speedXZ, this->actor.shape.rot.y + 0x3E80)) {
            if (this->actor.bgCheckFlags & 8) {
                if (this->actor.speedXZ >= 0.0f) {
                    phi_v1 = this->actor.shape.rot.y + 0x3E80;
                } else {
                    phi_v1 = this->actor.shape.rot.y - 0x3E80;
                }
                phi_v1 = this->actor.wallPolyRot - phi_v1;
            } else {
                this->actor.speedXZ *= -0.8f;
                phi_v1 = 0;
            }
            if (ABS(phi_v1) > 0x4000) {
                this->actor.speedXZ *= -0.8f;
                if (this->actor.speedXZ < 0.0f) {
                    this->actor.speedXZ -= 0.5f;
                } else {
                    this->actor.speedXZ += 0.5f;
                }
            }
        }
        if (this->actor.xzDistToLink <= 45.0f) {
            Math_SmoothStepToF(&this->approachRate, -4.0f, 1.0f, 1.5f, 0.0f);
        } else if (this->actor.xzDistToLink > 40.0f) {
            Math_SmoothStepToF(&this->approachRate, 4.0f, 1.0f, 1.5f, 0.0f);
        } else {
            Math_SmoothStepToF(&this->approachRate, 0.0f, 1.0f, 6.65f, 0.0f);
        }
        if (this->approachRate != 0.0f) {
            this->actor.posRot.pos.x += Math_SinS(this->actor.shape.rot.y) * this->approachRate;
            this->actor.posRot.pos.z += Math_CosS(this->actor.shape.rot.y) * this->approachRate;
        }
        if (ABS(this->approachRate) < ABS(this->actor.speedXZ)) {
            this->skelAnime.playSpeed = -this->actor.speedXZ * 0.5f;
        } else {
            this->skelAnime.playSpeed = -this->approachRate * 0.5f;
        }
        this->skelAnime.playSpeed = CLAMP(this->skelAnime.playSpeed, -3.0f, 3.0f);

        thisKeyFrame = this->skelAnime.curFrame;
        SkelAnime_Update(&this->skelAnime);

        prevKeyFrame = this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed);
        nextKeyFrame = (s32)ABS(this->skelAnime.playSpeed) + thisKeyFrame;
        if ((thisKeyFrame != (s32)this->skelAnime.curFrame) &&
            ((prevKeyFrame < 0 && 0 < nextKeyFrame) || (prevKeyFrame < 5 && 5 < nextKeyFrame))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_LAND);
        }
        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_BREATH);
        }
        if ((Math_CosS(angleBehindLink - this->actor.shape.rot.y) < -0.85f) &&
            !func_80033AB8(globalCtx, &this->actor) && (this->actor.xzDistToLink <= 45.0f)) {
            EnGeldB_SetupSlash(this);
        } else if (--this->timer == 0) {
            if (func_80033AB8(globalCtx, &this->actor) && (Rand_ZeroOne() > 0.5f)) {
                EnGeldB_SetupRollBack(this);
            } else {
                EnGeldB_SetupReady(this);
            }
        }
    }
}

void EnGeldB_SetupSpinDodge(EnGeldB* this, GlobalContext* globalCtx) {
    s16 sp3E;
    Player* player = PLAYER;

    Animation_Change(&this->skelAnime, &D_0600A814, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600A814),
                     ANIMMODE_LOOP_INTERP, 0.0f);
    sp3E = player->actor.shape.rot.y;
    if (Math_SinS(sp3E - this->actor.shape.rot.y) > 0.0f) {
        this->actor.speedXZ = -10.0f;
    } else if (Math_SinS(sp3E - this->actor.shape.rot.y) < 0.0f) {
        this->actor.speedXZ = 10.0f;
    } else if (Rand_ZeroOne() > 0.5f) {
        this->actor.speedXZ = 10.0f;
    } else {
        this->actor.speedXZ = -10.0f;
    }
    this->skelAnime.playSpeed = -this->actor.speedXZ * 0.5f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->timer = 6;
    this->approachRate = 0.0f;
    this->unkFloat = 0.0f;
    this->actionState = GELDB_SPIN_DODGE;

    EnGeldB_SetupAction(this, EnGeldB_SpinDodge);
}

void EnGeldB_SpinDodge(EnGeldB* this, GlobalContext* globalCtx) {
    s16 phi_v1;
    s32 thisKeyFrame;
    s32 pad;
    s32 lastKeyFrame;
    s32 nextKeyFrame;

    this->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x3A98;
    if ((this->actor.bgCheckFlags & 8) ||
        !func_800339B8(&this->actor, globalCtx, this->actor.speedXZ, this->actor.shape.rot.y + 0x3E80)) {
        if (this->actor.bgCheckFlags & 8) {
            if (this->actor.speedXZ >= 0.0f) {
                phi_v1 = this->actor.shape.rot.y + 0x3E80;
            } else {
                phi_v1 = this->actor.shape.rot.y - 0x3E80;
            }
            phi_v1 = this->actor.wallPolyRot - phi_v1;
        } else {
            this->actor.speedXZ *= -0.8f;
            phi_v1 = 0;
        }
        if (ABS(phi_v1) > 0x4000) {
            EnGeldB_SetupJump(this);
            return;
        }
    }
    if (this->actor.xzDistToLink <= 45.0f) {
        Math_SmoothStepToF(&this->approachRate, -4.0f, 1.0f, 1.5f, 0.0f);
    } else if (this->actor.xzDistToLink > 40.0f) {
        Math_SmoothStepToF(&this->approachRate, 4.0f, 1.0f, 1.5f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->approachRate, 0.0f, 1.0f, 6.65f, 0.0f);
    }
    if (this->approachRate != 0.0f) {
        this->actor.posRot.pos.x += Math_SinS(this->actor.yawTowardsLink) * this->approachRate;
        this->actor.posRot.pos.z += Math_CosS(this->actor.yawTowardsLink) * this->approachRate;
    }
    if (ABS(this->approachRate) < ABS(this->actor.speedXZ)) {
        this->skelAnime.playSpeed = -this->actor.speedXZ * 0.5f;
    } else {
        this->skelAnime.playSpeed = -this->approachRate * 0.5f;
    }
    this->skelAnime.playSpeed = CLAMP(this->skelAnime.playSpeed, -3.0f, 3.0f);
    thisKeyFrame = this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    lastKeyFrame = this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed);
    nextKeyFrame = (s32)ABS(this->skelAnime.playSpeed) + thisKeyFrame;
    if ((thisKeyFrame != (s32)this->skelAnime.curFrame) &&
        ((lastKeyFrame < 0 && 0 < nextKeyFrame) || (lastKeyFrame < 5 && 5 < nextKeyFrame))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_LAND);
    }
    if ((globalCtx->gameplayFrames & 0x5F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_BREATH);
    }
    this->timer--;
    if (this->timer == 0) {
        this->actor.shape.rot.y = this->actor.yawTowardsLink;
        if (!EnGeldB_DodgeRanged(globalCtx, this)) {
            if (!func_80033AB8(globalCtx, &this->actor) && (this->actor.xzDistToLink <= 70.0f)) {
                EnGeldB_SetupSlash(this);
            } else {
                EnGeldB_SetupRollBack(this);
            }
        }
    } else {
        if (this->actor.speedXZ >= 0.0f) {
            this->actor.shape.rot.y += 0x4000;
        } else {
            this->actor.shape.rot.y -= 0x4000;
        }
    }
}

void EnGeldB_SetupSlash(EnGeldB* this) {
    Animation_PlayOnce(&this->skelAnime, &D_060003CC);
    this->swordCollider.base.atFlags &= ~AT_BOUNCED;
    this->actionState = GELDB_SLASH;
    this->spinAttackState = 0;
    this->actor.speedXZ = 0.0f;
    func_800F8A44(&this->actor.projectedPos, NA_SE_EN_GERUDOFT_BREATH);
    EnGeldB_SetupAction(this, EnGeldB_Slash);
}

void EnGeldB_Slash(EnGeldB* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 angleFacingLink = player->actor.shape.rot.y - this->actor.shape.rot.y;
    s16 angleToLink = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    angleFacingLink = ABS(angleFacingLink);
    angleToLink = ABS(angleToLink);

    this->actor.speedXZ = 0.0f;
    if ((s32)this->skelAnime.curFrame == 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_ATTACK);
        this->swordState = 1;
    } else if ((s32)this->skelAnime.curFrame == 6) {
        this->swordState = -1;
    }
    if (this->swordCollider.base.atFlags & AT_BOUNCED) {
        this->swordState = -1;
        this->swordCollider.base.atFlags &= ~(AT_HIT | AT_BOUNCED);
        EnGeldB_SetupRollBack(this);
    } else if (SkelAnime_Update(&this->skelAnime)) {
        if (!func_8002E084(&this->actor, 0x1554)) {
            EnGeldB_SetupReady(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
            if (angleToLink > 0x4000) {
                this->lookTimer = 20;
            }
        } else if (Rand_ZeroOne() > 0.7f || (this->actor.xzDistToLink >= 120.0f)) {
            EnGeldB_SetupReady(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            if (Rand_ZeroOne() > 0.7f) {
                EnGeldB_SetupSidestep(this, globalCtx);
            } else if (angleFacingLink <= 0x2710) {
                if (angleToLink > 0x3E80) {
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                    EnGeldB_SetupCircle(this);
                } else {
                    EnGeldB_ReactToPlayer(globalCtx, this, 1);
                }
            } else {
                EnGeldB_SetupCircle(this);
            }
        }
    }
}

void EnGeldB_SetupSpinAttack(EnGeldB* this) {
    Animation_Change(&this->skelAnime, &D_06000F5C, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000F5C),
                     ANIMMODE_ONCE_INTERP, 0.0f);
    this->swordCollider.base.atFlags &= ~(AT_HIT | AT_BOUNCED);
    this->actionState = GELDB_SPIN_ATTACK;
    this->spinAttackState = 0;
    this->actor.speedXZ = 0.0f;
    EnGeldB_SetupAction(this, EnGeldB_SpinAttack);
}

void EnGeldB_SpinAttack(EnGeldB* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 angleFacingLink;
    s16 angleToLink;

    if (this->spinAttackState < 2) {
        if (this->swordCollider.base.atFlags & AT_BOUNCED) {
            this->swordCollider.base.atFlags &= ~(AT_HIT | AT_BOUNCED);
            this->spinAttackState = 1;
            this->skelAnime.playSpeed = 1.5f;
        } else if (this->swordCollider.base.atFlags & AT_HIT) {
            this->swordCollider.base.atFlags &= ~AT_HIT;
            if (&player->actor == this->swordCollider.base.at) {
                func_8002F71C(globalCtx, &this->actor, 6.0f, this->actor.yawTowardsLink, 6.0f);
                this->spinAttackState = 2;
                func_8002DF54(globalCtx, &this->actor, 0x18);
                func_8010B680(globalCtx, 0x6003, &this->actor);
                this->timer = 30;
                this->actor.speedXZ = 0.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_LAUGH);
                return;
            }
        }
    }
    if ((s32)this->skelAnime.curFrame < 9) {
        this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    } else if ((s32)this->skelAnime.curFrame == 13) {
        func_80033260(globalCtx, &this->actor, &this->rightFootPos, 3.0f, 2, 2.0f, 0, 0, 0);
        func_80033260(globalCtx, &this->actor, &this->leftFootPos, 3.0f, 2, 2.0f, 0, 0, 0);
        this->swordState = 1;
        this->actor.speedXZ = 10.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_ATTACK);
    } else if ((s32)this->skelAnime.curFrame == 21) {
        this->actor.speedXZ = 0.0f;
    } else if ((s32)this->skelAnime.curFrame == 24) {
        this->swordState = -1;
    }
    if (SkelAnime_Update(&this->skelAnime) && (this->spinAttackState < 2)) {
        if (!func_8002E084(&this->actor, 0x1554)) {
            EnGeldB_SetupReady(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
            this->lookTimer = 46;
        } else if (this->spinAttackState != 0) {
            EnGeldB_SetupRollBack(this);
        } else if (Rand_ZeroOne() > 0.7f || (this->actor.xzDistToLink >= 120.0f)) {
            EnGeldB_SetupReady(this);
            this->timer = (Rand_ZeroOne() * 5.0f) + 5.0f;
        } else {
            this->actor.posRot.rot.y = this->actor.yawTowardsLink;
            if (Rand_ZeroOne() > 0.7f) {
                EnGeldB_SetupSidestep(this, globalCtx);
            } else {
                angleFacingLink = player->actor.shape.rot.y - this->actor.shape.rot.y;
                angleFacingLink = ABS(angleFacingLink);
                if (angleFacingLink <= 0x2710) {
                    angleToLink = this->actor.yawTowardsLink - this->actor.shape.rot.y;
                    angleToLink = ABS(angleToLink);
                    if (angleToLink > 0x3E80) {
                        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                        EnGeldB_SetupCircle(this);
                    } else {
                        EnGeldB_ReactToPlayer(globalCtx, this, 1);
                    }
                } else {
                    EnGeldB_SetupCircle(this);
                }
            }
        }
    }
}

void EnGeldB_SetupRollBack(EnGeldB* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06001390, -3.0f);
    this->timer = 0;
    this->invisible = true;
    this->actionState = GELDB_ROLL_BACK;
    this->actor.speedXZ = -8.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    EnGeldB_SetupAction(this, EnGeldB_RollBack);
}

void EnGeldB_RollBack(EnGeldB* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        if (!func_80033AB8(globalCtx, &this->actor) && (this->actor.xzDistToLink < 170.0f) &&
            (this->actor.xzDistToLink > 140.0f) && (Rand_ZeroOne() < 0.2f)) {
            EnGeldB_SetupSpinAttack(this);
        } else if (globalCtx->gameplayFrames & 1) {
            EnGeldB_SetupSidestep(this, globalCtx);
        } else {
            EnGeldB_SetupReady(this);
        }
    }
    if ((globalCtx->state.frames & 0x5F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_BREATH);
    }
}

void EnGeldB_SetupStunned(EnGeldB* this) {
    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = 0.0f;
    }
    if ((this->damageEffect != GELDB_DMG_FREEZE) || (this->actionState == GELDB_SPIN_ATTACK)) {
        Animation_PlayOnceSetSpeed(&this->skelAnime, &D_06002280, 0.0f);
    }
    if (this->damageEffect == GELDB_DMG_FREEZE) {
        this->iceTimer = 36;
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actionState = GELDB_STUNNED;
    EnGeldB_SetupAction(this, EnGeldB_Stunned);
}

void EnGeldB_Stunned(EnGeldB* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }
    if (this->actor.bgCheckFlags & 1) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }
        this->invisible = false;
    }
    if ((this->actor.dmgEffectTimer == 0) && (this->actor.bgCheckFlags & 1)) {
        if (this->actor.colChkInfo.health == 0) {
            EnGeldB_SetupDefeated(this);
        } else {
            EnGeldB_ReactToPlayer(globalCtx, this, 1);
        }
    }
}

void EnGeldB_SetupDamaged(EnGeldB* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06002280, -4.0f);
    if (this->actor.bgCheckFlags & 1) {
        this->invisible = false;
        this->actor.speedXZ = -4.0f;
    } else {
        this->invisible = true;
    }
    this->lookTimer = 0;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_DAMAGE);
    this->actionState = GELDB_DAMAGED;
    EnGeldB_SetupAction(this, EnGeldB_Damaged);
}

void EnGeldB_Damaged(EnGeldB* this, GlobalContext* globalCtx) {
    s16 angleToWall;

    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }
    if (this->actor.bgCheckFlags & 1) {
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ += 0.05f;
        }
        this->invisible = false;
    }
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0x1194, 0);
    if (!EnGeldB_DodgeRanged(globalCtx, this) && !EnGeldB_ReactToPlayer(globalCtx, this, 0) &&
        SkelAnime_Update(&this->skelAnime) && (this->actor.bgCheckFlags & 1)) {
        angleToWall = this->actor.wallPolyRot - this->actor.shape.rot.y;
        if ((this->actor.bgCheckFlags & 8) && (ABS(angleToWall) < 0x2EE0) && (this->actor.xzDistToLink < 90.0f)) {
            EnGeldB_SetupJump(this);
        } else if (!EnGeldB_DodgeRanged(globalCtx, this)) {
            if ((this->actor.xzDistToLink <= 45.0f) && !func_80033AB8(globalCtx, &this->actor) &&
                (globalCtx->gameplayFrames & 7)) {
                EnGeldB_SetupSlash(this);
            } else {
                EnGeldB_SetupRollBack(this);
            }
        }
    }
}

void EnGeldB_SetupJump(EnGeldB* this) {
    Animation_Change(&this->skelAnime, &D_06001390, -1.0f, Animation_GetLastFrame(&D_06001390), 0.0f, ANIMMODE_ONCE,
                     -3.0f);
    this->timer = 0;
    this->invisible = false;
    this->actionState = GELDB_JUMP;
    this->actor.speedXZ = 6.5f;
    this->actor.velocity.y = 15.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    EnGeldB_SetupAction(this, EnGeldB_Jump);
}

void EnGeldB_Jump(EnGeldB* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA0, 1);
    if (this->actor.velocity.y >= 5.0f) {
        func_800355B8(globalCtx, &this->rightFootPos);
        func_800355B8(globalCtx, &this->leftFootPos);
    }
    if (SkelAnime_Update(&this->skelAnime) && (this->actor.bgCheckFlags & 3)) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
        this->actor.shape.rot.x = 0;
        this->actor.speedXZ = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.posRot.pos.y = this->actor.groundY;
        if (!func_80033AB8(globalCtx, &this->actor)) {
            EnGeldB_SetupSlash(this);
        } else {
            EnGeldB_SetupReady(this);
        }
    }
}

void EnGeldB_SetupBlock(EnGeldB* this) {
    f32 lastFrame;

    lastFrame = Animation_GetLastFrame(&D_06001578);
    if (this->swordState != 0) {
        this->swordState = -1;
    }
    this->actor.speedXZ = 0.0f;
    this->actionState = GELDB_BLOCK;
    this->timer = (s32)Rand_CenteredFloat(10.0f) + 10;
    Animation_Change(&this->skelAnime, &D_06001578, 0.0f, 0.0f, lastFrame, ANIMMODE_ONCE, 0.0f);
    EnGeldB_SetupAction(this, EnGeldB_Block);
}

void EnGeldB_Block(EnGeldB* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;
    s16 angleToLink;
    s16 angleFacingLink;

    if (this->timer != 0) {
        this->timer--;
    } else {
        this->skelAnime.playSpeed = 1.0f;
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        angleToLink = this->actor.yawTowardsLink - this->actor.shape.rot.y;
        if ((ABS(angleToLink) <= 0x4000) && (this->actor.xzDistToLink < 40.0f) &&
            (ABS(this->actor.yDistToLink) < 50.0f)) {
            if (func_800354B4(globalCtx, &this->actor, 100.0f, 0x2710, 0x4000, this->actor.shape.rot.y)) {
                if (player->swordAnimation == 0x11) {
                    EnGeldB_SetupSpinDodge(this, globalCtx);
                } else if (globalCtx->gameplayFrames & 1) {
                    EnGeldB_SetupBlock(this);
                } else {
                    EnGeldB_SetupRollBack(this);
                }
            } else {
                angleFacingLink = player->actor.shape.rot.y - this->actor.shape.rot.y;
                if (!func_80033AB8(globalCtx, &this->actor) &&
                    ((globalCtx->gameplayFrames & 1) || (ABS(angleFacingLink) < 0x38E0))) {
                    EnGeldB_SetupSlash(this);
                } else {
                    EnGeldB_SetupCircle(this);
                }
            }
        } else {
            EnGeldB_SetupCircle(this);
        }
    } else if ((this->timer == 0) &&
               func_800354B4(globalCtx, &this->actor, 100.0f, 0x2710, 0x4000, this->actor.shape.rot.y)) {
        if (player->swordAnimation == 0x11) {
            EnGeldB_SetupSpinDodge(this, globalCtx);
        } else if (!EnGeldB_DodgeRanged(globalCtx, this)) {
            if ((globalCtx->gameplayFrames & 1)) {
                if ((this->actor.xzDistToLink < 100.0f) && (Rand_ZeroOne() > 0.7f)) {
                    EnGeldB_SetupJump(this);
                } else {
                    EnGeldB_SetupRollBack(this);
                }
            } else {
                EnGeldB_SetupBlock(this);
            }
        }
    }
}

void EnGeldB_SetupSidestep(EnGeldB* this, GlobalContext* globalCtx) {
    s16 linkAngle;
    Player* player;

    Animation_Change(&this->skelAnime, &D_0600A814, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600A814),
                     ANIMMODE_LOOP_INTERP, 0.0f);
    player = PLAYER;
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA0, 1);
    linkAngle = player->actor.shape.rot.y;
    if (Math_SinS(linkAngle - this->actor.shape.rot.y) > 0.0f) {
        this->actor.speedXZ = -6.0f;
    } else if (Math_SinS(linkAngle - this->actor.shape.rot.y) < 0.0f) {
        this->actor.speedXZ = 6.0f;
    } else {
        this->actor.speedXZ = Rand_CenteredFloat(12.0f);
    }
    this->skelAnime.playSpeed = -this->actor.speedXZ * 0.5f;
    this->approachRate = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x3FFF;
    this->timer = Rand_ZeroOne() * 10.0f + 5.0f;
    this->actionState = GELDB_SIDESTEP;
    EnGeldB_SetupAction(this, EnGeldB_Sidestep);
}

void EnGeldB_Sidestep(EnGeldB* this, GlobalContext* globalCtx) {
    s16 behindLinkAngle;
    s16 phi_v1;
    Player* player = PLAYER;
    s32 thisKeyFrame;
    s32 prevKeyFrame;
    f32 playSpeed;

    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xBB8, 1);
    behindLinkAngle = player->actor.shape.rot.y + 0x8000;
    if (Math_SinS(behindLinkAngle - this->actor.shape.rot.y) > 0.0f) {
        this->actor.speedXZ += 0.125f;
    } else if (Math_SinS(behindLinkAngle - this->actor.shape.rot.y) <= 0.0f) {
        this->actor.speedXZ -= 0.125f;
    }

    if ((this->actor.bgCheckFlags & 8) ||
        !func_800339B8(&this->actor, globalCtx, this->actor.speedXZ, this->actor.shape.rot.y + 0x3E80)) {
        if (this->actor.bgCheckFlags & 8) {
            if (this->actor.speedXZ >= 0.0f) {
                phi_v1 = this->actor.shape.rot.y + 0x3E80;
            } else {
                phi_v1 = this->actor.shape.rot.y - 0x3E80;
            }
            phi_v1 = this->actor.wallPolyRot - phi_v1;
        } else {
            this->actor.speedXZ *= -0.8f;
            phi_v1 = 0;
        }
        if (ABS(phi_v1) > 0x4000) {
            this->actor.speedXZ *= -0.8f;
            if (this->actor.speedXZ < 0.0f) {
                this->actor.speedXZ -= 0.5f;
            } else {
                this->actor.speedXZ += 0.5f;
            }
        }
    }
    if (this->actor.speedXZ >= 0.0f) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x3E80;
    } else {
        this->actor.posRot.rot.y = this->actor.shape.rot.y - 0x3E80;
    }
    if (this->actor.xzDistToLink <= 45.0f) {
        Math_SmoothStepToF(&this->approachRate, -4.0f, 1.0f, 1.5f, 0.0f);
    } else if (this->actor.xzDistToLink > 40.0f) {
        Math_SmoothStepToF(&this->approachRate, 4.0f, 1.0f, 1.5f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->approachRate, 0.0f, 1.0f, 6.65f, 0.0f);
    }
    if (this->approachRate != 0.0f) {
        this->actor.posRot.pos.x += Math_SinS(this->actor.shape.rot.y) * this->approachRate;
        this->actor.posRot.pos.z += Math_CosS(this->actor.shape.rot.y) * this->approachRate;
    }
    if (ABS(this->approachRate) < ABS(this->actor.speedXZ)) {
        this->skelAnime.playSpeed = -this->actor.speedXZ * 0.5f;
    } else {
        this->skelAnime.playSpeed = -this->approachRate * 0.5f;
    }
    this->skelAnime.playSpeed = CLAMP(this->skelAnime.playSpeed, -3.0f, 3.0f);
    thisKeyFrame = this->skelAnime.curFrame;
    SkelAnime_Update(&this->skelAnime);
    prevKeyFrame = this->skelAnime.curFrame - ABS(this->skelAnime.playSpeed);

    playSpeed = ((void)0, ABS(this->skelAnime.playSpeed)); // Needed to match for some reason

    if (!EnGeldB_DodgeRanged(globalCtx, this) && !EnGeldB_ReactToPlayer(globalCtx, this, 0)) {
        if (--this->timer == 0) {
            s16 angleFacingPlayer = player->actor.shape.rot.y - this->actor.shape.rot.y;

            angleFacingPlayer = ABS(angleFacingPlayer);
            if (angleFacingPlayer >= 0x3A98) {
                EnGeldB_SetupReady(this);
                this->timer = (Rand_ZeroOne() * 5.0f) + 1.0f;
            } else {
                Player* player2 = PLAYER;
                s16 angleFacingPlayer2 = player2->actor.shape.rot.y - this->actor.shape.rot.y;

                this->actor.posRot.rot.y = this->actor.shape.rot.y;
                if ((this->actor.xzDistToLink <= 45.0f) && (!func_80033AB8(globalCtx, &this->actor)) &&
                    (!(globalCtx->gameplayFrames & 3) || (ABS(angleFacingPlayer2) < 0x38E0))) {
                    EnGeldB_SetupSlash(this);
                } else if ((210.0f > this->actor.xzDistToLink) && (this->actor.xzDistToLink > 150.0f) &&
                           !(globalCtx->gameplayFrames & 1)) {
                    if (func_80033AB8(globalCtx, &this->actor) || (Rand_ZeroOne() > 0.5f) ||
                        (ABS(angleFacingPlayer2) < 0x38E0)) {
                        EnGeldB_SetupRollForward(this);
                    } else {
                        EnGeldB_SetupSpinAttack(this);
                    }
                } else {
                    EnGeldB_SetupAdvance(this, globalCtx);
                }
            }
        }
        if ((thisKeyFrame != (s32)this->skelAnime.curFrame) &&
            (((prevKeyFrame < 0) && (((s32)playSpeed + thisKeyFrame) > 0)) ||
             ((prevKeyFrame < 5) && (((s32)playSpeed + thisKeyFrame) > 5)))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_LAND);
        }
        if ((globalCtx->gameplayFrames & 0x5F) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_BREATH);
        }
    }
}

void EnGeldB_SetupDefeated(EnGeldB* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06001E10, -4.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
    if (this->actor.bgCheckFlags & 1) {
        this->invisible = false;
        this->actor.speedXZ = -6.0f;
    } else {
        this->invisible = true;
    }
    this->actionState = GELDB_DEFEAT;
    this->actor.flags &= ~1;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GERUDOFT_DEAD);
    EnGeldB_SetupAction(this, EnGeldB_Defeated);
}

void EnGeldB_Defeated(EnGeldB* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 2) {
        this->actor.speedXZ = 0.0f;
    }
    if (this->actor.bgCheckFlags & 1) {
        Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
        this->invisible = false;
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        EnGeldB_SetupFlee(this);
    } else if ((s32)this->skelAnime.curFrame == 10) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DOWN);
        func_800F5B58();
    }
}

void func_80A391D8(EnGeldB* this, GlobalContext* globalCtx) {
    if ((this->actionState == GELDB_READY) && (this->lookTimer != 0)) {
        this->headRot.y = Math_SinS(this->lookTimer * 0x1068) * 8920.0f;
    } else if (this->actionState != GELDB_STUNNED) {
        if ((this->actionState != GELDB_SLASH) && (this->actionState != GELDB_SPIN_ATTACK)) {
            Math_SmoothStepToS(&this->headRot.y, this->actor.yawTowardsLink - this->actor.shape.rot.y, 1, 0x1F4, 0);
            this->headRot.y = CLAMP(this->headRot.y, -0x256F, 0x256F);
        } else {
            this->headRot.y = 0;
        }
    }
}

void func_80A392D8(EnGeldB* this, GlobalContext* globalCtx) {
    s32 pad;
    EnItem00* key;

    if (this->blockCollider.base.acFlags & AC_BOUNCED) {
        this->blockCollider.base.acFlags &= ~AC_BOUNCED;
        this->bodyCollider.base.acFlags &= ~AC_HIT;
    } else if ((this->bodyCollider.base.acFlags & AC_HIT) && (this->actionState >= GELDB_READY) &&
               (this->spinAttackState < 2)) {
        this->bodyCollider.base.acFlags &= ~AC_HIT;
        if (this->actor.colChkInfo.damageEffect != GELDB_DMG_UNK_6) {
            this->damageEffect = this->actor.colChkInfo.damageEffect;
            func_80035650(&this->actor, &this->bodyCollider.info, 1);
            func_800F8A44(&this->actor.projectedPos, NA_SE_EN_GERUDOFT_BREATH);
            if ((this->actor.colChkInfo.damageEffect == GELDB_DMG_STUN) ||
                (this->actor.colChkInfo.damageEffect == GELDB_DMG_FREEZE)) {
                if (this->actionState != GELDB_STUNNED) {
                    func_8003426C(&this->actor, 0, 0x78, 0, 0x50);
                    Actor_ApplyDamage(&this->actor);
                    EnGeldB_SetupStunned(this);
                }
            } else {
                func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);
                if (Actor_ApplyDamage(&this->actor) == 0) {
                    if (this->keyFlag != 0) {
                        key =
                            Item_DropCollectible(globalCtx, &this->actor.posRot.pos, this->keyFlag | ITEM00_SMALL_KEY);
                        if (key != NULL) {
                            key->actor.posRot.rot.y =
                                Math_Vec3f_Yaw(&key->actor.posRot.pos, &this->actor.initPosRot.pos);
                            key->actor.speedXZ = 6.0f;
                            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                                   &D_801333E8);
                        }
                    }
                    EnGeldB_SetupDefeated(this);
                    func_80032C7C(globalCtx, &this->actor);
                } else {
                    EnGeldB_SetupDamaged(this);
                }
            }
        }
    }
}

void EnGeldB_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGeldB* this = THIS;

    func_80A392D8(this, globalCtx);
    if (this->actor.colChkInfo.damageEffect != GELDB_DMG_UNK_6) {
        Actor_MoveForward(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 15.0f, 30.0f, 60.0f, 0x1D);
        this->actionFunc(this, globalCtx);
        this->actor.posRot2.pos = this->actor.posRot.pos;
        this->actor.posRot2.pos.y += 40.0f;
        func_80A391D8(this, globalCtx);
    }
    Collider_UpdateCylinder(&this->actor, &this->bodyCollider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bodyCollider.base);
    if ((this->actionState >= GELDB_READY) && (this->spinAttackState < 2) &&
        ((this->actor.dmgEffectTimer == 0) || !(this->actor.dmgEffectParams & 0x4000))) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->bodyCollider.base);
    }
    if ((this->actionState == GELDB_BLOCK) && (this->skelAnime.curFrame == 0.0f)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->blockCollider.base);
    }
    if (this->swordState > 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->swordCollider.base);
    }
    if (this->blinkState == 0) {
        if ((Rand_ZeroOne() < 0.1f) && ((globalCtx->gameplayFrames % 4) == 0)) {
            this->blinkState++;
        }
    } else {
        this->blinkState = (this->blinkState + 1) & 3;
    }
}

s32 EnGeldB_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             void* thisx) {
    EnGeldB* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_geldB.c", 2507);
    if (limbIndex == 3) {
        rot->z += this->headRot.x;
        rot->x += this->headRot.y;
        rot->y += this->headRot.z;
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

void EnGeldB_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f footOffset = { 300.0f, 0.0f, 0.0f };
    static Vec3f swordTipOffset = { 0.0f, -3000.0f, 0.0f };
    static Vec3f swordHiltOffset = { 400.0f, 0.0f, 0.0f };
    static Vec3f swordQuadOffset1 = { 1600.0f, -4000.0f, 0.0f };
    static Vec3f swordQuadOffset0 = { -3000.0f, -2000.0f, 1300.0f };
    static Vec3f swordQuadOffset3 = { -3000.0f, -2000.0f, -1300.0f };
    static Vec3f swordQuadOffset2 = { 1000.0f, 1000.0f, 0.0f };
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f swordTip;
    Vec3f swordHilt;
    EnGeldB* this = THIS;
    s32 bodyPart = -1;

    if (limbIndex == 11) {
        Matrix_MultVec3f(&swordQuadOffset1, &this->swordCollider.dim.quad[1]);
        Matrix_MultVec3f(&swordQuadOffset0, &this->swordCollider.dim.quad[0]);
        Matrix_MultVec3f(&swordQuadOffset3, &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&swordQuadOffset2, &this->swordCollider.dim.quad[2]);
        Collider_SetQuadVertices(&this->swordCollider, &this->swordCollider.dim.quad[0],
                                 &this->swordCollider.dim.quad[1], &this->swordCollider.dim.quad[2],
                                 &this->swordCollider.dim.quad[3]);
        Matrix_MultVec3f(&swordTipOffset, &swordTip);
        Matrix_MultVec3f(&swordHiltOffset, &swordHilt);

        if ((this->swordState < 0) ||
            ((this->actionState != GELDB_SLASH) && (this->actionState != GELDB_SPIN_ATTACK))) {
            EffectBlure_AddSpace(Effect_GetByIndex(this->blureIdx));
            this->swordState = 0;
        } else if (this->swordState > 0) {
            EffectBlure_AddVertex(Effect_GetByIndex(this->blureIdx), &swordTip, &swordHilt);
        }
    } else {
        func_8002BDB0(&this->actor, limbIndex, 19, &footOffset, 22, &footOffset);
    }
    if (limbIndex == 19) {
        Matrix_MultVec3f(&footOffset, &this->rightFootPos);
    } else if (limbIndex == 22) {
        Matrix_MultVec3f(&footOffset, &this->leftFootPos);
    }
    if (this->iceTimer != 0) {
        switch (limbIndex) {
            case 3:
                bodyPart = 0;
                break;
            case 16:
                bodyPart = 1;
                break;
            case 11:
                bodyPart = 2;
                break;
            case 12:
                bodyPart = 3;
                break;
            case 7:
                bodyPart = 4;
                break;
            case 2:
                bodyPart = 5;
                break;
            case 23:
                bodyPart = 6;
                break;
            case 19:
                bodyPart = 7;
                break;
            case 22:
                bodyPart = 8;
                break;
            default:
                break;
        }
        if (bodyPart >= 0) {
            Vec3f limbPos;

            Matrix_MultVec3f(&zeroVec, &limbPos);
            this->bodyPartsPos[bodyPart].x = limbPos.x;
            this->bodyPartsPos[bodyPart].y = limbPos.y;
            this->bodyPartsPos[bodyPart].z = limbPos.z;
        }
    }
}

void EnGeldB_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f blockTrisOffsets0[3] = {
        { -3000.0f, 6000.0f, 1600.0f },
        { -3000.0f, 0.0f, 1600.0f },
        { 3000.0f, 6000.0f, 1600.0f },
    };
    static Vec3f blockTrisOffsets1[3] = {
        { -3000.0f, 0.0f, 1600.0f },
        { 3000.0f, 0.0f, 1600.0f },
        { 3000.0f, 6000.0f, 1600.0f },
    };
    static Gfx* eyeDLists[4] = { 0x06005FE8, 0x060065A8, 0x06006D28, 0x060065A8 };
    s32 pad;
    EnGeldB* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_geldB.c", 2672);
    if (1) {}

    if ((this->spinAttackState >= 2) && SkelAnime_Update(&this->skelAnime)) {
        if (this->spinAttackState == 2) {
            Animation_Change(&this->skelAnime, &D_06000F5C, 0.5f, 0.0f, 12.0f, ANIMMODE_ONCE_INTERP, 4.0f);
            this->spinAttackState++;
            thisx->posRot.rot.y = thisx->shape.rot.y = thisx->yawTowardsLink;
        } else {
            this->timer--;
            if (this->timer == 0) {
                if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
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

    if ((this->actionState != GELDB_WAIT) || !this->invisible) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeDLists[this->blinkState]));
        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, EnGeldB_OverrideLimbDraw, EnGeldB_PostLimbDraw, this);
        if (this->actionState == GELDB_BLOCK) {
            s32 i;
            Vec3f blockTrisVtx0[3];
            Vec3f blockTrisVtx1[3];

            for (i = 0; i < 3; i++) {
                Matrix_MultVec3f(&blockTrisOffsets0[i], &blockTrisVtx0[i]);
                Matrix_MultVec3f(&blockTrisOffsets1[i], &blockTrisVtx1[i]);
            }
            Collider_SetTrisVertices(&this->blockCollider, 0, &blockTrisVtx0[0], &blockTrisVtx0[1], &blockTrisVtx0[2]);
            Collider_SetTrisVertices(&this->blockCollider, 1, &blockTrisVtx1[0], &blockTrisVtx1[1], &blockTrisVtx1[2]);
        }

        if (this->iceTimer != 0) {
            thisx->dmgEffectTimer++;
            this->iceTimer--;
            if ((this->iceTimer % 4) == 0) {
                s32 iceIndex = this->iceTimer >> 2;

                EffectSsEnIce_SpawnFlyingVec3s(globalCtx, thisx, &this->bodyPartsPos[iceIndex], 0x96, 0x96, 0x96, 0xFA,
                                               0xEB, 0xF5, 0xFF, 1.5f);
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_geldB.c", 2744);
}

s32 EnGeldB_DodgeRanged(GlobalContext* globalCtx, EnGeldB* this) {
    Actor* actor = func_80033780(globalCtx, &this->actor, 800.0f);

    if (actor != NULL) {
        s16 angleToFacing;
        s16 pad18;
        f32 dist;

        angleToFacing = func_8002DA78(&this->actor, actor) - this->actor.shape.rot.y;
        this->actor.posRot.rot.y = (u16)this->actor.shape.rot.y & 0xFFFF;
        dist = func_8002DB6C(&this->actor, &actor->posRot.pos);
        //! @bug
        // func_8002DB6C already sqrtfs the distance, so this actually checks for a
        // distance of 360000. Also it's a double calculation because no f on sqrt.
        if ((ABS(angleToFacing) < 0x2EE0) && (sqrt(dist) < 600.0)) {
            if (actor->id == ACTOR_ARMS_HOOK) {
                EnGeldB_SetupJump(this);
            } else {
                EnGeldB_SetupBlock(this);
            }
        } else {
            this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x3FFF;
            if ((ABS(angleToFacing) < 0x2000) || (ABS(angleToFacing) > 0x5FFF)) {
                EnGeldB_SetupSidestep(this, globalCtx);
                this->actor.speedXZ *= 3.0f;
            } else if (ABS(angleToFacing) < 0x5FFF) {
                EnGeldB_SetupRollBack(this);
            }
        }
        return true;
    }
    return false;
}
