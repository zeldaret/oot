/*
 * File: z_en_ik.c
 * Overlay: ovl_En_Ik
 * Description: Iron Knuckle
 */

#include "z_en_ik.h"
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_scene.h"
#include "assets/objects/object_ik/object_ik.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_4

typedef void (*EnIkDrawFunc)(struct EnIk*, PlayState*);

#define ARMOR_BROKEN (1 << 0)

typedef enum {
    /* 0x00 */ IK_CS_ACTION_0,
    /* 0x01 */ IK_CS_ACTION_1,
    /* 0x02 */ IK_CS_ACTION_2,
    /* 0x03 */ IK_CS_ACTION_3,
    /* 0x04 */ IK_CS_ACTION_4,
    /* 0x05 */ IK_CS_ACTION_5
} EnIkCsAction;

typedef enum {
    /* 0x00 */ IK_CS_DRAW_NOTHING,
    /* 0x01 */ IK_CS_DRAW_INTRO,
    /* 0x02 */ IK_CS_DRAW_DEFEAT
} EnIkCsDrawMode;

typedef enum {
    /* 0x0 */ EN_IK_DMGEFF_NONE,
    /* 0x6 */ EN_IK_DMGEFF_ELEMENTAL_MAGIC = 0x6,
    /* 0xD */ EN_IK_DMGEFF_SPARKS_NO_DMG = 0xD,
    /* 0xE */ EN_IK_DMGEFF_PROJECTILE,
    /* 0xF */ EN_IK_DMGEFF_DAMAGE
} EnIkDamageEffect;

void EnIk_UpdateEnemy(Actor* thisx, PlayState* play);
void EnIk_DrawEnemy(Actor* thisx, PlayState* play);

void EnIk_SetupStandUp(EnIk* this);
void EnIk_StandUp(EnIk* this, PlayState* play);
void EnIk_Idle(EnIk* this, PlayState* play);
void EnIk_SetupWalkOrRun(EnIk* this);
void EnIk_WalkOrRun(EnIk* this, PlayState* play);
void EnIk_SetupVerticalAttack(EnIk* this);
void EnIk_VerticalAttack(EnIk* this, PlayState* play);
void EnIk_SetupPullOutAxe(EnIk* this);
void EnIk_PullOutAxe(EnIk* this, PlayState* play);
void EnIk_SetupDoubleHorizontalAttack(EnIk* this);
void EnIk_DoubleHorizontalAttack(EnIk* this, PlayState* play);
void EnIk_SetupRecoverFromHorizontalAttack(EnIk* this);
void EnIk_RecoverFromHorizontalAttack(EnIk* this, PlayState* play);
void EnIk_SetupSingleHorizontalAttack(EnIk* this);
void EnIk_SingleHorizontalAttack(EnIk* this, PlayState* play);
void EnIk_SetupStopAndBlock(EnIk* this);
void EnIk_StopAndBlock(EnIk* this, PlayState* play);
void EnIk_ReactToAttack(EnIk* this, PlayState* play);
void EnIk_Die(EnIk* this, PlayState* play);

void EnIk_HandleCsCues(EnIk* this, PlayState* play);
void EnIk_ChangeToEnemy(EnIk* this, PlayState* play);
void EnIk_StartDefeatCutscene(Actor* thisx, PlayState* play);

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 25, 80, 0, { 0, 0, 0 } },
};

static ColliderTrisElementInit sTrisElementsInit[2] = {
    {
        {
            ELEMTYPE_UNK2,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFC3FFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON | BUMP_NO_AT_INFO,
            OCELEM_NONE,
        },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        {
            ELEMTYPE_UNK2,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFC3FFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON | BUMP_NO_AT_INFO,
            OCELEM_NONE,
        },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    {
        COLTYPE_METAL,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_TRIS,
    },
    2,
    sTrisElementsInit,
};

static ColliderQuadInit sQuadInit = {
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
        { 0x20000000, 0x00, 0x40 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL | TOUCH_UNK7,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, EN_IK_DMGEFF_SPARKS_NO_DMG),
    /* Deku stick    */ DMG_ENTRY(2, EN_IK_DMGEFF_DAMAGE),
    /* Slingshot     */ DMG_ENTRY(1, EN_IK_DMGEFF_PROJECTILE),
    /* Explosive     */ DMG_ENTRY(2, EN_IK_DMGEFF_DAMAGE),
    /* Boomerang     */ DMG_ENTRY(0, EN_IK_DMGEFF_SPARKS_NO_DMG),
    /* Normal arrow  */ DMG_ENTRY(2, EN_IK_DMGEFF_PROJECTILE),
    /* Hammer swing  */ DMG_ENTRY(2, EN_IK_DMGEFF_DAMAGE),
    /* Hookshot      */ DMG_ENTRY(0, EN_IK_DMGEFF_SPARKS_NO_DMG),
    /* Kokiri sword  */ DMG_ENTRY(1, EN_IK_DMGEFF_DAMAGE),
    /* Master sword  */ DMG_ENTRY(2, EN_IK_DMGEFF_DAMAGE),
    /* Giant's Knife */ DMG_ENTRY(4, EN_IK_DMGEFF_DAMAGE),
    /* Fire arrow    */ DMG_ENTRY(2, EN_IK_DMGEFF_PROJECTILE),
    /* Ice arrow     */ DMG_ENTRY(2, EN_IK_DMGEFF_PROJECTILE),
    /* Light arrow   */ DMG_ENTRY(2, EN_IK_DMGEFF_PROJECTILE),
    /* Unk arrow 1   */ DMG_ENTRY(2, EN_IK_DMGEFF_PROJECTILE),
    /* Unk arrow 2   */ DMG_ENTRY(2, EN_IK_DMGEFF_PROJECTILE),
    /* Unk arrow 3   */ DMG_ENTRY(15, EN_IK_DMGEFF_PROJECTILE),
    /* Fire magic    */ DMG_ENTRY(0, EN_IK_DMGEFF_ELEMENTAL_MAGIC),
    /* Ice magic     */ DMG_ENTRY(0, EN_IK_DMGEFF_ELEMENTAL_MAGIC),
    /* Light magic   */ DMG_ENTRY(0, EN_IK_DMGEFF_ELEMENTAL_MAGIC),
    /* Shield        */ DMG_ENTRY(0, EN_IK_DMGEFF_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, EN_IK_DMGEFF_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, EN_IK_DMGEFF_DAMAGE),
    /* Giant spin    */ DMG_ENTRY(4, EN_IK_DMGEFF_DAMAGE),
    /* Master spin   */ DMG_ENTRY(2, EN_IK_DMGEFF_DAMAGE),
    /* Kokiri jump   */ DMG_ENTRY(2, EN_IK_DMGEFF_DAMAGE),
    /* Giant jump    */ DMG_ENTRY(8, EN_IK_DMGEFF_DAMAGE),
    /* Master jump   */ DMG_ENTRY(4, EN_IK_DMGEFF_DAMAGE),
    /* Unknown 1     */ DMG_ENTRY(10, EN_IK_DMGEFF_DAMAGE),
    /* Unblockable   */ DMG_ENTRY(0, EN_IK_DMGEFF_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, EN_IK_DMGEFF_DAMAGE),
    /* Unknown 2     */ DMG_ENTRY(0, EN_IK_DMGEFF_NONE),
};

void EnIk_Destroy(Actor* thisx, PlayState* play) {
    EnIk* this = (EnIk*)thisx;

    if (Actor_FindNearby(play, &this->actor, ACTOR_EN_IK, ACTORCAT_ENEMY, 8000.0f) == NULL) {
        func_800F5B58();
    }

    Collider_DestroyTris(play, &this->shieldCollider);
    Collider_DestroyCylinder(play, &this->bodyCollider);
    Collider_DestroyQuad(play, &this->axeCollider);
}

void EnIk_SetupAction(EnIk* this, EnIkActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnIk_InitImpl(Actor* thisx, PlayState* play) {
    EnIk* this = (EnIk*)thisx;
    s32 pad;
    EffectBlureInit1 blureInit;

    thisx->update = EnIk_UpdateEnemy;
    thisx->draw = EnIk_DrawEnemy;
    thisx->flags |= ACTOR_FLAG_10;

    Collider_InitCylinder(play, &this->bodyCollider);
    Collider_SetCylinder(play, &this->bodyCollider, thisx, &sCylinderInit);
    Collider_InitTris(play, &this->shieldCollider);
    Collider_SetTris(play, &this->shieldCollider, thisx, &sTrisInit, this->shieldColliderItems);
    Collider_InitQuad(play, &this->axeCollider);
    Collider_SetQuad(play, &this->axeCollider, thisx, &sQuadInit);

    thisx->colChkInfo.damageTable = &sDamageTable;
    thisx->colChkInfo.mass = MASS_HEAVY;
    this->isBreakingProp = false;
    thisx->colChkInfo.health = 30;
    thisx->gravity = -1.0f;
    this->switchFlag = IK_GET_SWITCH_FLAG(thisx);
    thisx->params = IK_GET_ARMOR_TYPE(thisx);

    if (thisx->params == IK_TYPE_NABOORU) {
        thisx->colChkInfo.health += 20;
        thisx->naviEnemyId = NAVI_ENEMY_IRON_KNUCKLE_NABOORU;
    } else {
        Actor_SetScale(thisx, 0.012f);
        thisx->naviEnemyId = NAVI_ENEMY_IRON_KNUCKLE;
        Actor_ChangeCategory(play, &play->actorCtx, thisx, ACTORCAT_ENEMY);
    }

    blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p2StartColor[0] = blureInit.p2StartColor[1] =
        blureInit.p2StartColor[2] = blureInit.p1EndColor[0] = blureInit.p1EndColor[1] = blureInit.p2EndColor[0] =
            blureInit.p2EndColor[1] = blureInit.p2EndColor[2] = 255;

    blureInit.p2StartColor[3] = 64;
    blureInit.p1StartColor[3] = 200;
    blureInit.p1StartColor[2] = blureInit.p1EndColor[2] = 150;
    blureInit.p1EndColor[3] = blureInit.p2EndColor[3] = 0;

    blureInit.elemDuration = 8;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 2;

    Effect_Add(play, &this->blureIdx, EFFECT_BLURE1, 0, 0, &blureInit);
    EnIk_SetupStandUp(this);

    if (this->switchFlag != 0xFF) {
        if (Flags_GetSwitch(play, this->switchFlag)) {
            Actor_Kill(thisx);
        }
    } else if (thisx->params != 0 && Flags_GetClear(play, play->roomCtx.curRoom.num)) {
        Actor_Kill(thisx);
    }
}

s32 EnIk_HandleBlocking(EnIk* this, PlayState* play) {
    if (((this->armorStatusFlag != 0) || (this->actor.params == IK_TYPE_NABOORU)) &&
        (func_800354B4(play, &this->actor, 100.0f, 0x2710, 0x4000, this->actor.shape.rot.y) != 0) &&
        (play->gameplayFrames & 1)) {
        EnIk_SetupStopAndBlock(this);
        return true;
    } else {
        return false;
    }
}

Actor* EnIk_FindBreakableProp(PlayState* play, Actor* actor) {
    Actor* prop = play->actorCtx.actorLists[ACTORCAT_PROP].head;

    while (prop != NULL) {
        if ((prop == actor) || (prop->id != ACTOR_BG_JYA_IRONOBJ)) {
            prop = prop->next;
            continue;
        } else if (Actor_ActorAIsFacingAndNearActorB(actor, prop, 80.0f, 0x2710)) {
            return prop;
        }

        prop = prop->next;
    }

    return NULL;
}

void EnIk_SetupStandUp(EnIk* this) {
    f32 endFrame = Animation_GetLastFrame(&gIronKnuckleStandUpAnim);
    f32 startFrame;

    if (this->actor.params >= IK_TYPE_BLACK) {
        startFrame = endFrame - 1.0f;
    } else {
        startFrame = 0.0f;
    }

    Animation_Change(&this->skelAnime, &gIronKnuckleStandUpAnim, 0.0f, startFrame, endFrame, ANIMMODE_ONCE, 0.0f);
    this->unk_2F8 = 3;
    this->actor.speed = 0.0f;
    EnIk_SetupAction(this, EnIk_StandUp);
}

void EnIk_StandUp(EnIk* this, PlayState* play) {
    Vec3f sparksPos;

    if (this->bodyCollider.base.acFlags & AC_HIT) {
        sparksPos = this->actor.world.pos;
        Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_ARMOR_HIT);
        sparksPos.y += 30.0f;
        func_8003424C(play, &sparksPos);
        this->skelAnime.playSpeed = 1.0f;
        func_800F5ACC(NA_BGM_MINI_BOSS);
    }

    if (this->skelAnime.curFrame == 5.0f) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_WAKEUP);
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        this->actor.flags |= ACTOR_FLAG_0 | ACTOR_FLAG_2;
        EnIk_SetupWalkOrRun(this);
    }
}

void EnIk_SetupIdle(EnIk* this) {
    f32 endFrame = Animation_GetLastFrame(&object_ik_Anim_00DD50);

    this->actor.flags |= ACTOR_FLAG_0 | ACTOR_FLAG_2;
    this->unk_2F8 = 4;
    this->actor.speed = 0.0f;
    Animation_Change(&this->skelAnime, &object_ik_Anim_00DD50, 0.0f, 0.0f, endFrame, ANIMMODE_LOOP, 4.0f);
    EnIk_SetupAction(this, EnIk_Idle);
}

void EnIk_Idle(EnIk* this, PlayState* play) {
    s32 detectionThreshold = (this->armorStatusFlag == 0) ? 0xAAA : 0x3FFC;
    s16 yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if ((ABS(yawDiff) <= detectionThreshold) && (this->actor.xzDistToPlayer < 100.0f) &&
        (ABS(this->actor.yDistToPlayer) < 150.0f)) {
        if ((play->gameplayFrames & 1)) {
            EnIk_SetupVerticalAttack(this);
        } else {
            EnIk_SetupDoubleHorizontalAttack(this);
        }
    } else if ((ABS(yawDiff) <= 0x4000) && (ABS(this->actor.yDistToPlayer) < 150.0f)) {
        EnIk_SetupWalkOrRun(this);
    } else {
        EnIk_SetupWalkOrRun(this);
    }

    EnIk_HandleBlocking(this, play);
    SkelAnime_Update(&this->skelAnime);
}

void EnIk_SetupWalkOrRun(EnIk* this) {
    this->unk_2F8 = 5;

    if (this->armorStatusFlag == 0) {
        Animation_Change(&this->skelAnime, &gIronKnuckleWalkAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gIronKnuckleWalkAnim), ANIMMODE_LOOP, -4.0f);
        this->actor.speed = 0.9f;
    } else {
        Animation_Change(&this->skelAnime, &gIronKnuckleRunAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gIronKnuckleRunAnim), ANIMMODE_LOOP, -4.0f);
        Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_DASH);
        this->actor.speed = 2.5f;
    }

    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnIk_SetupAction(this, EnIk_WalkOrRun);
}

void EnIk_WalkOrRun(EnIk* this, PlayState* play) {
    s16 temp_t0;
    s16 targetYaw;
    s16 yawDiff;
    s16 footstepFrame1;
    s16 footstepFrame2;
    s16 stepVal;

    if (this->armorStatusFlag == 0) {
        temp_t0 = 0xAAA;
        stepVal = 0x320;
        footstepFrame1 = 0;
        footstepFrame2 = 16;
    } else {
        temp_t0 = 0x3FFC;
        stepVal = 0x4B0;
        footstepFrame1 = 2;
        footstepFrame2 = 9;
    }

    targetYaw = this->actor.wallYaw - this->actor.shape.rot.y;

    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (ABS(targetYaw) >= 0x4000)) {
        targetYaw = (this->actor.yawTowardsPlayer > 0) ? this->actor.wallYaw - 0x4000 : this->actor.wallYaw + 0x4000;
        Math_SmoothStepToS(&this->actor.world.rot.y, targetYaw, 1, stepVal, 0);
    } else {
        Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, stepVal, 0);
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if ((ABS(yawDiff) <= temp_t0) && (this->actor.xzDistToPlayer < 100.0f)) {
        if (ABS(this->actor.yDistToPlayer) < 150.0f) {
            if (play->gameplayFrames & 1) {
                EnIk_SetupVerticalAttack(this);
            } else {
                EnIk_SetupDoubleHorizontalAttack(this);
            }
        }
    }

    if (EnIk_FindBreakableProp(play, &this->actor) != NULL) {
        EnIk_SetupDoubleHorizontalAttack(this);
        this->isBreakingProp = true;
    } else {
        temp_t0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

        if (ABS(temp_t0) > 0x4000) {
            this->unk_300--;

            if (this->unk_300 == 0) {
                EnIk_SetupSingleHorizontalAttack(this);
            }
        } else {
            this->unk_300 = 40;
        }
    }

    EnIk_HandleBlocking(this, play);
    SkelAnime_Update(&this->skelAnime);

    if (((s16)this->skelAnime.curFrame == footstepFrame1) || ((s16)this->skelAnime.curFrame == footstepFrame2)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_WALK);
    }
}

void EnIk_SetupVerticalAttack(EnIk* this) {
    f32 endFrame = Animation_GetLastFrame(&gIronKnuckleVerticalAttackAnim);

    this->unk_2FF = 1;
    this->unk_2F8 = 6;
    this->actor.speed = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleVerticalAttackAnim, 1.5f, 0.0f, endFrame, ANIMMODE_ONCE, -4.0f);
    EnIk_SetupAction(this, EnIk_VerticalAttack);
}

void EnIk_VerticalAttack(EnIk* this, PlayState* play) {
    Vec3f sparksPos;

    if (this->skelAnime.curFrame == 15.0f) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_SWING_AXE);
    } else if (this->skelAnime.curFrame == 21.0f) {
        sparksPos.x = this->actor.world.pos.x + Math_SinS(this->actor.shape.rot.y + 0x6A4) * 70.0f;
        sparksPos.z = this->actor.world.pos.z + Math_CosS(this->actor.shape.rot.y + 0x6A4) * 70.0f;
        sparksPos.y = this->actor.world.pos.y;

        Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_HIT_GND);
        Camera_RequestQuake(&play->mainCamera, 2, 25, 5);
        Rumble_Request(this->actor.xzDistToPlayer, 255, 20, 150);
        CollisionCheck_SpawnShieldParticles(play, &sparksPos);
    }

    if ((this->skelAnime.curFrame > 17.0f) && (this->skelAnime.curFrame < 23.0f)) {
        this->unk_2FE = 1;
    } else {
        if ((this->armorStatusFlag != 0) && (this->skelAnime.curFrame < 10.0f)) {
            Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x5DC, 0);
            this->actor.shape.rot.y = this->actor.world.rot.y;
        }
        this->unk_2FE = 0;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        EnIk_SetupPullOutAxe(this);
    }
}

void EnIk_SetupPullOutAxe(EnIk* this) {
    f32 endFrame = Animation_GetLastFrame(&gIronKnuckleAxeStuckAnim);

    this->unk_2FE = 0;
    this->animationTimer = (s8)endFrame;
    this->unk_2F8 = 7;
    this->unk_2FF = this->unk_2FE;
    Animation_Change(&this->skelAnime, &gIronKnuckleAxeStuckAnim, 1.0f, 0.0f, endFrame, ANIMMODE_LOOP, -4.0f);
    Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_PULLOUT);
    EnIk_SetupAction(this, EnIk_PullOutAxe);
}

void EnIk_PullOutAxe(EnIk* this, PlayState* play) {
    f32 endFrame;

    if (SkelAnime_Update(&this->skelAnime) || (--this->animationTimer == 0)) {
        if (this->unk_2F8 == 8) {
            EnIk_SetupIdle(this);
        } else {
            endFrame = Animation_GetLastFrame(&gIronKnuckleRecoverFromVerticalAttackAnim);
            this->unk_2F8 = 8;
            Animation_Change(&this->skelAnime, &gIronKnuckleRecoverFromVerticalAttackAnim, 1.5f, 0.0f, endFrame,
                             ANIMMODE_ONCE_INTERP, -4.0f);
        }
    }
}

// Happens when Player is in front of Iron Knuckle or when Iron Knuckle encounters ACTOR_BG_JYA_IRONOBJ
void EnIk_SetupDoubleHorizontalAttack(EnIk* this) {
    f32 endFrame = Animation_GetLastFrame(&gIronKnuckleHorizontalAttackAnim);

    this->unk_2FF = 2;
    this->unk_300 = 0;
    this->unk_2F8 = 6;
    this->actor.speed = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleHorizontalAttackAnim, 0.0f, 0.0f, endFrame, ANIMMODE_ONCE_INTERP,
                     -6.0f);
    this->isBreakingProp = false;
    EnIk_SetupAction(this, EnIk_DoubleHorizontalAttack);
}

void EnIk_DoubleHorizontalAttack(EnIk* this, PlayState* play) {
    f32 playSpeed;

    this->unk_300 += 0x1C2;
    playSpeed = Math_SinS(this->unk_300);
    this->skelAnime.playSpeed = ABS(playSpeed);

    if (this->skelAnime.curFrame > 11.0f) {
        this->unk_2FF = 3;
    }

    if (((this->skelAnime.curFrame > 1.0f) && (this->skelAnime.curFrame < 9.0f)) ||
        ((this->skelAnime.curFrame > 13.0f) && (this->skelAnime.curFrame < 18.0f))) {
        if (!this->isBreakingProp && (this->armorStatusFlag != 0) && (this->skelAnime.curFrame < 10.0f)) {
            Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x5DC, 0);
            this->actor.shape.rot.y = this->actor.world.rot.y;
        }

        if (this->unk_2FE < 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_SWING_AXE);
        }

        this->unk_2FE = 1;
    } else {
        this->unk_2FE = 0;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        EnIk_SetupRecoverFromHorizontalAttack(this);
    }
}

void EnIk_SetupRecoverFromHorizontalAttack(EnIk* this) {
    f32 endFrame = Animation_GetLastFrame(&gIronKnuckleRecoverFromHorizontalAttackAnim);

    this->unk_2FF = this->unk_2FE = 0;
    this->unk_2F8 = 8;
    Animation_Change(&this->skelAnime, &gIronKnuckleRecoverFromHorizontalAttackAnim, 1.5f, 0.0f, endFrame,
                     ANIMMODE_ONCE_INTERP, -4.0f);
    EnIk_SetupAction(this, EnIk_RecoverFromHorizontalAttack);
}

void EnIk_RecoverFromHorizontalAttack(EnIk* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnIk_SetupIdle(this);
        EnIk_HandleBlocking(this, play);
    }
}

// Attack pattern when player is behind Iron Knuckle or attacks Iron Knuckle from behind
void EnIk_SetupSingleHorizontalAttack(EnIk* this) {
    f32 endFrame = Animation_GetLastFrame(&gIronKnuckleHorizontalAttackAnim);

    this->unk_2F8 = 1;
    this->unk_2FF = 3;
    this->actor.speed = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleHorizontalAttackAnim, 0.5f, 13.0f, endFrame, ANIMMODE_ONCE_INTERP,
                     -4.0f);
    EnIk_SetupAction(this, EnIk_SingleHorizontalAttack);
}

void EnIk_SingleHorizontalAttack(EnIk* this, PlayState* play) {
    Math_StepUntilS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 0x7D0);
    this->actor.shape.rot.y = this->actor.world.rot.y;

    if ((this->skelAnime.curFrame > 13.0f) && (this->skelAnime.curFrame < 18.0f)) {
        if (this->unk_2FE < 0) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_SWING_AXE);
        }
        this->unk_2FE = 1;
    } else {
        this->unk_2FE = 0;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        EnIk_SetupRecoverFromHorizontalAttack(this);
        EnIk_HandleBlocking(this, play);
    }
}

void EnIk_SetupStopAndBlock(EnIk* this) {
    f32 endFrame = Animation_GetLastFrame(&gIronKnuckleBlockAnim);

    this->unk_2FE = 0;
    this->unk_2F8 = 9;
    this->actor.speed = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleBlockAnim, 1.0f, 0.0f, endFrame, ANIMMODE_ONCE_INTERP, -4.0f);
    EnIk_SetupAction(this, EnIk_StopAndBlock);
}

void EnIk_StopAndBlock(EnIk* this, PlayState* play) {
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->shieldCollider.base);

    if (SkelAnime_Update(&this->skelAnime)) {
        if ((ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) <= 0x4000) &&
            (this->actor.xzDistToPlayer < 100.0f) && (ABS(this->actor.yDistToPlayer) < 150.0f)) {
            if ((play->gameplayFrames & 1)) {
                EnIk_SetupVerticalAttack(this);
            } else {
                EnIk_SetupDoubleHorizontalAttack(this);
            }
        } else {
            EnIk_SetupIdle(this);
        }
    }
}

void EnIk_SetupReactToAttack(EnIk* this) {
    s16 yaw;
    s16 yawDiff;

    yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->bodyCollider.base.ac->world.pos);
    this->unk_2F8 = 0;
    yawDiff = yaw - this->actor.shape.rot.y;

    if (ABS(yawDiff) <= 0x4000) {
        Animation_Change(&this->skelAnime, &gIronKnuckleFrontHitAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gIronKnuckleFrontHitAnim), ANIMMODE_ONCE, -4.0f);
        this->actor.speed = -6.0f;
    } else {
        Animation_Change(&this->skelAnime, &gIronKnuckleBackHitAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gIronKnuckleBackHitAnim), ANIMMODE_ONCE, -4.0f);
        this->actor.speed = 6.0f;
    }

    this->unk_2FE = 0;
    EnIk_SetupAction(this, EnIk_ReactToAttack);
}

void EnIk_ReactToAttack(EnIk* this, PlayState* play) {
    Math_SmoothStepToF(&this->actor.speed, 0.0f, 1.0f, 1.0f, 0.0f);

    if (BodyBreak_SpawnParts(&this->actor, &this->bodyBreak, play, this->actor.params + 4)) {
        this->bodyBreak.val = BODYBREAK_STATUS_FINISHED;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        if (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) <= 0x4000) {
            EnIk_SetupIdle(this);
            EnIk_HandleBlocking(this, play);
        } else {
            EnIk_SetupSingleHorizontalAttack(this);
        }
    }
}

void EnIk_SetupDie(EnIk* this) {
    f32 endFrame = Animation_GetLastFrame(&gIronKnuckleDeathAnim);

    this->unk_2FE = 0;
    this->unk_2F8 = 2;
    this->actor.speed = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleDeathAnim, 1.0f, 0.0f, endFrame, ANIMMODE_ONCE, -4.0f);
    this->animationTimer = 24;
    Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_DEAD);
    Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_CUTBODY);
    EnIk_SetupAction(this, EnIk_Die);
}

void EnIk_Die(EnIk* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        if ((this->actor.colChkInfo.health == 0) && (this->animationTimer != 0)) {
            s32 i;
            Vec3f pos;
            Vec3f sp7C = { 0.0f, 0.5f, 0.0f };

            this->animationTimer--;

            for (i = 0xC - (this->animationTimer >> 1); i >= 0; i--) {
                pos.x = this->actor.world.pos.x + Rand_CenteredFloat(120.0f);
                pos.z = this->actor.world.pos.z + Rand_CenteredFloat(120.0f);
                pos.y = this->actor.world.pos.y + 20.0f + Rand_CenteredFloat(50.0f);

                EffectSsDeadDb_Spawn(play, &pos, &sp7C, &sp7C, 100, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
            }

            if (this->animationTimer == 0) {
                Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, 0xB0);

                if (this->switchFlag != 0xFF) {
                    Flags_SetSwitch(play, this->switchFlag);
                }

                Actor_Kill(&this->actor);
            }
        }
    } else if (this->skelAnime.curFrame == 23.0f) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_WALK);
    }
}

void EnIk_UpdateDamage(EnIk* this, PlayState* play) {
    f32 frames;
    s16 pad;
    u8 prevHealth;
    s32 damageEffect;
    Vec3f sparksPos;

    if ((this->unk_2F8 == 3) || (this->unk_2F8 == 2)) {
        return;
    }

    if (this->shieldCollider.base.acFlags & AC_BOUNCED) {
        frames = Animation_GetLastFrame(&gIronKnuckleBlockAnim) - 2.0f;

        if (this->skelAnime.curFrame < frames) {
            this->skelAnime.curFrame = frames;
        }

        this->shieldCollider.base.acFlags &= ~AC_BOUNCED;
        this->bodyCollider.base.acFlags &= ~AC_HIT;
    } else if (this->bodyCollider.base.acFlags & AC_HIT) {
        sparksPos = this->actor.world.pos;
        sparksPos.y += 50.0f;

        Actor_SetDropFlag(&this->actor, &this->bodyCollider.info, true);

        this->damageEffect = this->actor.colChkInfo.damageEffect;
        this->bodyCollider.base.acFlags &= ~AC_HIT;

        if ((this->damageEffect == EN_IK_DMGEFF_NONE) || (this->damageEffect == EN_IK_DMGEFF_SPARKS_NO_DMG) ||
            ((this->armorStatusFlag == 0) && (this->damageEffect == EN_IK_DMGEFF_PROJECTILE))) {
            if (this->damageEffect != EN_IK_DMGEFF_NONE) {
                // spawn sparks and don't damage
                CollisionCheck_SpawnShieldParticlesMetal(play, &sparksPos);
            }
            return;
        }

        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 12);

        prevHealth = this->actor.colChkInfo.health;
        Actor_ApplyDamage(&this->actor);

        if (this->actor.params != IK_TYPE_NABOORU) {
            if ((prevHealth > 10) && (this->actor.colChkInfo.health <= 10)) {
                this->armorStatusFlag = ARMOR_BROKEN;
                BodyBreak_Alloc(&this->bodyBreak, 3, play);
            }
        } else if (this->actor.colChkInfo.health <= 10) {
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_BOSS);
            SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 20, NA_SE_EN_LAST_DAMAGE);
            if (this->switchFlag != 0xFF) {
                Flags_SetSwitch(play, this->switchFlag);
            }
            return;
        } else if (prevHealth == 50) {
            Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_ENEMY);
        }

        if (this->actor.colChkInfo.health == 0) {
            EnIk_SetupDie(this);
            Enemy_StartFinishingBlow(play, &this->actor);
            return;
        }

        Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x7D0, 0);

        if ((this->actor.params == IK_TYPE_NABOORU) && (Rand_ZeroOne() < 0.5f)) {
            if (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) > 0x4000) {
                EnIk_SetupSingleHorizontalAttack(this);
            }
        }

        if ((this->actor.params != IK_TYPE_NABOORU) && (this->armorStatusFlag != 0)) {
            if ((prevHealth > 10) && (this->actor.colChkInfo.health <= 10)) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_ARMOR_OFF_DEMO);
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_DAMAGE);
                Actor_PlaySfx(&this->actor, NA_SE_EN_NUTS_CUTBODY);
            }

            EnIk_SetupReactToAttack(this);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_ARMOR_HIT);
            Actor_PlaySfx(&this->actor, NA_SE_EN_IRONNACK_DAMAGE);
            CollisionCheck_SpawnShieldParticles(play, &sparksPos);
        }
    }
}

void EnIk_UpdateEnemy(Actor* thisx, PlayState* play) {
    EnIk* this = (EnIk*)thisx;
    s32 pad;
    Player* player = GET_PLAYER(play);
    u8 prevInvincibilityTimer;

    this->drawArmorFlag = this->armorStatusFlag;
    EnIk_UpdateDamage(this, play);

    if ((this->actor.params == IK_TYPE_NABOORU) && (this->actor.colChkInfo.health <= 10)) {
        EnIk_StartDefeatCutscene(&this->actor, play);
    } else {
        this->actionFunc(this, play);

        if (this->axeCollider.base.atFlags & AT_HIT) {
            this->axeCollider.base.atFlags &= ~AT_HIT;

            if (this->axeCollider.base.at == &player->actor) {
                prevInvincibilityTimer = player->invincibilityTimer;

                if (player->invincibilityTimer <= 0) {
                    if (player->invincibilityTimer < -39) {
                        player->invincibilityTimer = 0;
                    } else {
                        player->invincibilityTimer = 0;
                        play->damagePlayer(play, -64);
                        this->unk_2FE = 0;
                    }
                }

                func_8002F71C(play, &this->actor, 8.0f, this->actor.yawTowardsPlayer, 8.0f);
                player->invincibilityTimer = prevInvincibilityTimer;
            }
        }

        Actor_MoveXZGravity(&this->actor);
        Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 30.0f, 30.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                    UPDBGCHECKINFO_FLAG_4);

        this->actor.focus.pos = this->actor.world.pos;
        this->actor.focus.pos.y += 45.0f;

        Collider_UpdateCylinder(&this->actor, &this->bodyCollider);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->bodyCollider.base);

        if ((this->actor.colChkInfo.health > 0) && (this->actor.colorFilterTimer == 0) && (this->unk_2F8 >= 2)) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->bodyCollider.base);
        }

        if (this->unk_2FE > 0) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->axeCollider.base);
        }

        if (this->unk_2F8 == 9) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->shieldCollider.base);
        }
    }
}

Gfx* EnIk_SetPrimEnvColors(GraphicsContext* gfxCtx, u8 primR, u8 primG, u8 primB, u8 envR, u8 envG, u8 envB) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = Graph_Alloc(gfxCtx, 4 * sizeof(Gfx));
    displayListHead = displayList;

    gDPPipeSync(displayListHead++);
    gDPSetPrimColor(displayListHead++, 0, 0, primR, primG, primB, 255);
    gDPSetEnvColor(displayListHead++, envR, envG, envB, 255);
    gSPEndDisplayList(displayListHead++);

    return displayList;
}

s32 EnIk_OverrideLimbDrawEnemy(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnIk* this = (EnIk*)thisx;

    if (limbIndex == IRON_KNUCKLE_LIMB_HELMET_ARMOR) {
        if (this->actor.params != IK_TYPE_NABOORU) {
            *dList = gIronKnuckleHelmetDL;
        }
    } else if (limbIndex == IRON_KNUCKLE_LIMB_HEAD) {
        if (this->actor.params != IK_TYPE_NABOORU) {
            *dList = gIronKnuckleGerudoHeadDL;
        }
    } else if ((limbIndex == IRON_KNUCKLE_LIMB_CHEST_ARMOR_FRONT) ||
               (limbIndex == IRON_KNUCKLE_LIMB_CHEST_ARMOR_BACK)) {
        if (this->drawArmorFlag & ARMOR_BROKEN) {
            *dList = NULL;
        }
    } else if ((limbIndex == IRON_KNUCKLE_LIMB_TORSO) || (limbIndex == IRON_KNUCKLE_LIMB_WAIST)) {
        if (!(this->drawArmorFlag & ARMOR_BROKEN)) {
            *dList = NULL;
        }
    }

    return false;
}

// unused
static Vec3f D_80A78470 = { 300.0f, 0.0f, 0.0f };

static Vec3f D_80A7847C[] = {
    { 800.0f, -200.0f, -5200.0f },
    { 0.0f, 0.0f, 0.0f },
    { -200.0f, -2200.0f, -200.0f },
    { -6000.0f, 2000.0f, -3000.0f },
};

static Vec3f D_80A784AC[] = {
    { -3000.0, -700.0, -5000.0 },
    { -3000.0, -700.0, 2000.0 },
    { 4000.0, -700.0, 2000.0 },
};

static Vec3f D_80A784D0[] = {
    { 4000.0, -700.0, 2000.0 },
    { 4000.0, -700.0, -5000.0 },
    { -3000.0, -700.0, -5000.0 },
};

void EnIk_PostLimbDrawEnemy(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Vec3f spF4;
    Vec3f spE8;
    EnIk* this = (EnIk*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ik_inFight.c", 1201);

    if (this->armorStatusFlag & ARMOR_BROKEN) {
        BodyBreak_SetInfo(&this->bodyBreak, limbIndex, IRON_KNUCKLE_LIMB_CHEST_ARMOR_FRONT,
                          IRON_KNUCKLE_LIMB_CHEST_ARMOR_BACK, IRON_KNUCKLE_LIMB_TORSO, dList,
                          BODYBREAK_OBJECT_SLOT_DEFAULT);
    }
    if (limbIndex == IRON_KNUCKLE_LIMB_HELMET_ARMOR) {
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_ik_inFight.c", 1217),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        if (this->actor.params != IK_TYPE_NABOORU) {
            gSPDisplayList(POLY_XLU_DISP++, gIronKnuckleHelmetMarkingDL);
        } else {
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016D88);
        }
    } else if (limbIndex == IRON_KNUCKLE_LIMB_AXE) {
        s32 i;
        Vec3f sp9C[3];
        Vec3f sp78[3];

        Matrix_MultVec3f(&D_80A7847C[0], &this->axeCollider.dim.quad[1]);
        Matrix_MultVec3f(&D_80A7847C[1], &this->axeCollider.dim.quad[0]);
        Matrix_MultVec3f(&D_80A7847C[2], &this->axeCollider.dim.quad[3]);
        Matrix_MultVec3f(&D_80A7847C[3], &this->axeCollider.dim.quad[2]);
        Collider_SetQuadVertices(&this->axeCollider, &this->axeCollider.dim.quad[0], &this->axeCollider.dim.quad[1],
                                 &this->axeCollider.dim.quad[2], &this->axeCollider.dim.quad[3]);
        Matrix_MultVec3f(&D_80A7847C[0], &spF4);
        Matrix_MultVec3f(&D_80A7847C[1], &spE8);
        if (this->unk_2FE > 0) {
            EffectBlure_AddVertex(Effect_GetByIndex(this->blureIdx), &spF4, &spE8);
        } else if (this->unk_2FE == 0) {
            EffectBlure_AddSpace(Effect_GetByIndex(this->blureIdx));
            this->unk_2FE = -1;
        }
        if (this->unk_2F8 == 9) {
            for (i = 0; i < ARRAY_COUNT(sp78); i++) {
                Matrix_MultVec3f(&D_80A784AC[i], &sp9C[i]);
                Matrix_MultVec3f(&D_80A784D0[i], &sp78[i]);
            }

            Collider_SetTrisVertices(&this->shieldCollider, 0, &sp9C[0], &sp9C[1], &sp9C[2]);
            Collider_SetTrisVertices(&this->shieldCollider, 1, &sp78[0], &sp78[1], &sp78[2]);
        }
    }

    switch (limbIndex) {
        case IRON_KNUCKLE_LIMB_UPPER_LEFT_PAULDRON:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_ik_inFight.c", 1270),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016F88);
            break;

        case IRON_KNUCKLE_LIMB_UPPER_RIGHT_PAULDRON:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_ik_inFight.c", 1275),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016EE8);
            break;

        case IRON_KNUCKLE_LIMB_CHEST_ARMOR_FRONT:
            if (!(this->drawArmorFlag & ARMOR_BROKEN)) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_ik_inFight.c", 1281),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, gIronKnuckleArmorRivetAndSymbolDL);
            }
            break;

        case IRON_KNUCKLE_LIMB_CHEST_ARMOR_BACK:
            if (!(this->drawArmorFlag & ARMOR_BROKEN)) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_ik_inFight.c", 1288),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016CD8);
            }
            break;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ik_inFight.c", 1294);
}

void EnIk_DrawEnemy(Actor* thisx, PlayState* play) {
    EnIk* this = (EnIk*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ik_inFight.c", 1309);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    if (this->actor.params == IK_TYPE_NABOORU) {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_SetPrimEnvColors(play->state.gfxCtx, 245, 225, 155, 30, 30, 0));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_SetPrimEnvColors(play->state.gfxCtx, 255, 40, 0, 40, 0, 0));
        gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_SetPrimEnvColors(play->state.gfxCtx, 255, 255, 255, 20, 40, 30));
    } else if (this->actor.params == IK_TYPE_SILVER) {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_SetPrimEnvColors(play->state.gfxCtx, 245, 255, 205, 30, 35, 0));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_SetPrimEnvColors(play->state.gfxCtx, 185, 135, 25, 20, 20, 0));
        gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_SetPrimEnvColors(play->state.gfxCtx, 255, 255, 255, 30, 40, 20));
    } else if (this->actor.params == IK_TYPE_BLACK) {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_SetPrimEnvColors(play->state.gfxCtx, 55, 65, 55, 0, 0, 0));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_SetPrimEnvColors(play->state.gfxCtx, 205, 165, 75, 25, 20, 0));
        gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_SetPrimEnvColors(play->state.gfxCtx, 205, 165, 75, 25, 20, 0));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_SetPrimEnvColors(play->state.gfxCtx, 255, 255, 255, 180, 180, 180));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_SetPrimEnvColors(play->state.gfxCtx, 225, 205, 115, 25, 20, 0));
        gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_SetPrimEnvColors(play->state.gfxCtx, 225, 205, 115, 25, 20, 0));
    }

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnIk_OverrideLimbDrawEnemy, EnIk_PostLimbDrawEnemy, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ik_inFight.c", 1351);
}

void EnIk_StartMinibossBgm(void) {
    func_800F5ACC(NA_BGM_MINI_BOSS);
}

// Cutscene: Nabooru Knuckle Wakes up
void EnIk_UpdateAction2Sfx(EnIk* this) {
    if (Animation_OnFrame(&this->skelAnime, 1.0f)) {
        Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_WAKEUP, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else if (Animation_OnFrame(&this->skelAnime, 33.0f)) {
        Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_WALK, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else if (Animation_OnFrame(&this->skelAnime, 68.0f) || Animation_OnFrame(&this->skelAnime, 80.0f)) {
        Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_ARMOR_DEMO, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else if (Animation_OnFrame(&this->skelAnime, 107.0f)) {
        Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_FINGER_DEMO, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else if (Animation_OnFrame(&this->skelAnime, 156.0f)) {
        Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_ARMOR_DEMO, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else if (Animation_OnFrame(&this->skelAnime, 188.0f)) {
        Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_WAVE_DEMO, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
}

// Cutscene: Summons Axe for Nabooru Knuckle
void EnIk_PlayAxeSpawnSfx(EnIk* this, PlayState* play, Vec3f* pos) {
    Audio_PlaySfxGeneral(NA_SE_EN_TWINROBA_TRANSFORM, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
}

void EnIk_SpawnAxeSmoke(EnIk* this, PlayState* play, Vec3f* pos) {
    static Vec3f sAxeSmokeEffectData[] = {
        { 1000.0, -1000.0, 1000.0 },  { 0.0, -1000.0, 0.0 },        { -1000.0, -5000.0, -4000.0 },
        { 1000.0, -5000.0, -3000.0 }, { -1000.0, 1000.0, -6000.0 }, { -1000.0, 3000.0, -5000.0 },
        { -800.0, 1000.0, -3000.0 },  { 0.0, -4000.0, -2000.0 },    { -1000.0, -2000.0, -6000.0 },
        { 1000.0, -3000.0, 0.0 },     { 2000.0, -2000.0, -4000.0 }, { -1000.0, 0.0, -6000.0 },
        { 1000.0, -2000.0, -2000.0 }, { 0.0, -2000.0, 2100.0 },     { 0.0, 0.0, 0.0 },
        { 1000.0, -1000.0, -6000.0 }, { 2000.0, 0.0, -3000.0 },     { -1000.0, -1000.0, -4000.0 },
        { 900.0, -800.0, 2700.0 },    { 720.0f, 900.0f, 2500.0f },
    };

    if (!this->isAxeSummoned) {
        s32 pad;
        Vec3f effectVelocity = { 0.0f, 0.0f, 0.0f };
        Vec3f effectAccel = { 0.0f, 0.3f, 0.0f };
        s32 i;

        for (i = ARRAY_COUNT(sAxeSmokeEffectData) - 1; i >= 0; i--) {
            Color_RGBA8 primColor = { 200, 200, 200, 255 };
            Color_RGBA8 envColor = { 150, 150, 150, 0 };
            s32 randColorOffset;
            Vec3f effectPos;

            Matrix_MultVec3f(&sAxeSmokeEffectData[i], &effectPos);
            randColorOffset = (Rand_ZeroOne() * 20.0f) - 10.0f;

            primColor.r += randColorOffset;
            primColor.g += randColorOffset;
            primColor.b += randColorOffset;

            envColor.r += randColorOffset;
            envColor.g += randColorOffset;
            envColor.b += randColorOffset;

            func_8002829C(play, &effectPos, &effectVelocity, &effectAccel, &primColor, &envColor,
                          (Rand_ZeroOne() * 60.0f) + 300.0f, 0);
        }

        this->isAxeSummoned = true;
        EnIk_PlayAxeSpawnSfx(this, play, pos);
    }
}

void EnIk_UpdateBgCheckInfo(EnIk* this, PlayState* play) {
    Actor_UpdateBgCheckInfo(play, &this->actor, 75.0f, 30.0f, 30.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
}

s32 EnIk_UpdateSkelAnime(EnIk* this) {
    return SkelAnime_Update(&this->skelAnime);
}

CsCmdActorCue* EnIk_GetCue(PlayState* play, s32 cueChannel) {
    if (play->csCtx.state != CS_STATE_IDLE) {
        return play->csCtx.actorCues[cueChannel];
    } else {
        return NULL;
    }
}

void EnIk_SetStartPosRotFromCue(EnIk* this, PlayState* play, s32 cueChannel) {
    CsCmdActorCue* cue = EnIk_GetCue(play, cueChannel);

    if (cue != NULL) {
        this->actor.world.pos.x = cue->startPos.x;
        this->actor.world.pos.y = cue->startPos.y;
        this->actor.world.pos.z = cue->startPos.z;

        this->actor.world.rot.y = this->actor.shape.rot.y = cue->rot.y;
    }
}

f32 EnIk_GetAnimCurFrame(Actor* thisx) {
    EnIk* this = (EnIk*)thisx;

    return this->skelAnime.curFrame;
}

// unused
void EnIk_SetupCsAction0(EnIk* this) {
    this->csAction = IK_CS_ACTION_0;
    this->csDrawMode = IK_CS_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

// Cutscene: Nabooru sitting and Kotake and Koume looking at her
void EnIk_SetupCsAction1(EnIk* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gIronKnuckleNabooruSummonAxeAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gIronKnuckleNabooruSummonAxeAnim), ANIMMODE_ONCE, 0.0f);
    EnIk_SetStartPosRotFromCue(this, play, 4);
    this->csAction = IK_CS_ACTION_1;
    this->csDrawMode = IK_CS_DRAW_INTRO;
    this->actor.shape.shadowAlpha = 255;
}

// Cutscene: Nabooru Knuckle starts to stand up
void EnIk_SetupCsAction2(EnIk* this) {
    Animation_Change(&this->skelAnime, &gIronKnuckleNabooruSummonAxeAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gIronKnuckleNabooruSummonAxeAnim), ANIMMODE_ONCE, 0.0f);
    this->csAction = IK_CS_ACTION_2;
    this->csDrawMode = IK_CS_DRAW_INTRO;
    this->isAxeSummoned = false;
    this->actor.shape.shadowAlpha = 255;
}

void EnIk_HandleEnemyChange(EnIk* this, PlayState* play, s32 animFinished) {
    if (animFinished && (EnIk_GetCue(play, 4) != NULL)) {
        EnIk_ChangeToEnemy(this, play);
    }
}

void EnIk_PlayArmorFallSfx(EnIk* this) {
    Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_STAGGER_DEMO, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
}

void EnIk_PlayDeathSfx(EnIk* this, PlayState* play) {
    static Vec3f D_80A78FA0;
    s32 pad[2];
    f32 wDest;

    SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &this->actor.world.pos, &D_80A78FA0, &wDest);
    Audio_PlaySfxGeneral(NA_SE_EN_IRONNACK_DEAD, &D_80A78FA0, 4, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
}

// Cutscene: starts after final hit to Nabooru
void EnIk_SetupCsAction3(EnIk* this, PlayState* play) {
    s32 pad[3];
    f32 endFrame = Animation_GetLastFrame(&gIronKnuckleNabooruDeathAnim);

    SkelAnime_InitFlex(play, &this->skelAnime, &gIronKnuckleDefeatSkel, NULL, this->jointTable, this->morphTable,
                       IRON_KNUCKLE_LIMB_MAX);
    Animation_Change(&this->skelAnime, &gIronKnuckleNabooruDeathAnim, 1.0f, 0.0f, endFrame, ANIMMODE_ONCE, 0.0f);
    this->csAction = IK_CS_ACTION_3;
    this->csDrawMode = IK_CS_DRAW_DEFEAT;
    EnIk_SetStartPosRotFromCue(this, play, 4);
    EnIk_PlayDeathSfx(this, play);
    this->actor.shape.shadowAlpha = 255;
}

// Cutscene: Armor falling off revealing Nabooru underneath
void EnIk_SetupCsAction4(EnIk* this, PlayState* play) {
    this->csAction = IK_CS_ACTION_4;
    this->csDrawMode = IK_CS_DRAW_DEFEAT;
    EnIk_PlayArmorFallSfx(this);
    this->actor.shape.shadowAlpha = 255;
}

// Cutscene: all the armor has fallen off
void EnIk_SetupCsAction5(EnIk* this, PlayState* play) {
    this->csAction = IK_CS_ACTION_5;
    this->csDrawMode = IK_CS_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

void EnIk_CsAction3(EnIk* this, PlayState* play) {
    EnIk_UpdateBgCheckInfo(this, play);
    EnIk_HandleCsCues(this, play);
}

void EnIk_CsAction4(EnIk* this, PlayState* play) {
    EnIk_UpdateSkelAnime(this);
    EnIk_UpdateBgCheckInfo(this, play);
    EnIk_HandleCsCues(this, play);
}

void EnIk_CsAction5(EnIk* this, PlayState* play) {
    if (EnIk_GetCue(play, 4) == NULL) {
        Actor_Kill(&this->actor);
    }
}

s32 EnIk_OverrideLimbDrawDefeat(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    if ((limbIndex == IRON_KNUCKLE_DEFEAT_LIMB_HELMET_ARMOR) ||
        (limbIndex == IRON_KNUCKLE_DEFEAT_LIMB_CHEST_ARMOR_FRONT) ||
        (limbIndex == IRON_KNUCKLE_DEFEAT_LIMB_CHEST_ARMOR_BACK)) {
        if (EnIk_GetAnimCurFrame(thisx) >= 30.0f) {
            *dList = NULL;
        }
    }

    return false;
}

void EnIk_PostLimbDrawDefeat(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 207);

    switch (limbIndex) {
        case IRON_KNUCKLE_DEFEAT_LIMB_HELMET_ARMOR: {
            EnIk* this = (EnIk*)thisx;

            if (EnIk_GetAnimCurFrame(&this->actor) < 30.0f) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 267),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016D88);
            }
        } break;

        case IRON_KNUCKLE_DEFEAT_LIMB_UPPER_LEFT_PAULDRON:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 274),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016F88);
            break;

        case IRON_KNUCKLE_DEFEAT_LIMB_UPPER_RIGHT_PAULDRON:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 280),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016EE8);
            break;

        case IRON_KNUCKLE_DEFEAT_LIMB_CHEST_ARMOR_FRONT: {
            EnIk* this = (EnIk*)thisx;

            if (EnIk_GetAnimCurFrame(&this->actor) < 30.0f) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 288),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, gIronKnuckleArmorRivetAndSymbolDL);
            }
        } break;

        case IRON_KNUCKLE_DEFEAT_LIMB_CHEST_ARMOR_BACK: {
            EnIk* this = (EnIk*)thisx;

            if (EnIk_GetAnimCurFrame(&this->actor) < 30.0f) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 297),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016CD8);
            }
        } break;
    }

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 304);
}

void EnIk_CsDrawDefeat(EnIk* this, PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad[2];

    OPEN_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 322);

    func_8002EBCC(&this->actor, play, 0);
    Gfx_SetupDL_25Opa(gfxCtx);
    Gfx_SetupDL_25Xlu(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_SetPrimEnvColors(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_SetPrimEnvColors(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_SetPrimEnvColors(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          EnIk_OverrideLimbDrawDefeat, EnIk_PostLimbDrawDefeat, this);

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 345);
}

void EnIk_HandleCsCues(EnIk* this, PlayState* play) {
    CsCmdActorCue* cue = EnIk_GetCue(play, 4);
    u32 nextCueId;
    u32 currentCueId;

    if (cue != NULL) {
        nextCueId = cue->id;
        currentCueId = this->cueId;

        if (nextCueId != currentCueId) {
            switch (nextCueId) {
                case 1:
                    EnIk_SetupCsAction0(this);
                    break;

                case 2:
                    EnIk_SetupCsAction1(this, play);
                    break;

                case 3:
                    EnIk_SetupCsAction2(this);
                    break;

                case 4:
                    EnIk_ChangeToEnemy(this, play);
                    break;

                case 5:
                    EnIk_SetupCsAction3(this, play);
                    break;

                case 6:
                    EnIk_SetupCsAction4(this, play);
                    break;

                case 7:
                    EnIk_SetupCsAction5(this, play);
                    break;

                default:
                    osSyncPrintf("En_Ik_inConfrontion_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }

            this->cueId = nextCueId;
        }
    }
}

void EnIk_CsAction0(EnIk* this, PlayState* play) {
    EnIk_HandleCsCues(this, play);
}

void EnIk_CsAction1(EnIk* this, PlayState* play) {
    EnIk_UpdateBgCheckInfo(this, play);
    EnIk_HandleCsCues(this, play);
}

void EnIk_CsAction2(EnIk* this, PlayState* play) {
    s32 animFinished;

    animFinished = EnIk_UpdateSkelAnime(this);
    EnIk_UpdateAction2Sfx(this);
    EnIk_UpdateBgCheckInfo(this, play);
    EnIk_HandleCsCues(this, play);
    EnIk_HandleEnemyChange(this, play, animFinished);
}

static EnIkActionFunc sCsActionFuncs[] = {
    EnIk_CsAction0, EnIk_CsAction1, EnIk_CsAction2, EnIk_CsAction3, EnIk_CsAction4, EnIk_CsAction5,
};

void EnIk_UpdateCutscene(Actor* thisx, PlayState* play) {
    EnIk* this = (EnIk*)thisx;

    if (this->csAction < 0 || this->csAction >= ARRAY_COUNT(sCsActionFuncs) || sCsActionFuncs[this->csAction] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    sCsActionFuncs[this->csAction](this, play);
}

s32 EnIk_OverrideLimbDrawIntro(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnIk* this = (EnIk*)thisx;
    f32 curFrame;

    switch (limbIndex) {
        case IRON_KNUCKLE_LIMB_AXE:
            curFrame = this->skelAnime.curFrame;
            if (curFrame < 120.0f) {
                *dList = NULL;
            } else {
                EnIk_SpawnAxeSmoke(this, play, pos);
            }
            break;

        case IRON_KNUCKLE_LIMB_WAIST:
        case IRON_KNUCKLE_LIMB_MAX:
            *dList = NULL;
            break;
    }

    return false;
}

void EnIk_PostLimbDrawIntro(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 571);

    switch (limbIndex) {
        case IRON_KNUCKLE_LIMB_HELMET_ARMOR:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 575),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016D88);
            break;

        case IRON_KNUCKLE_LIMB_UPPER_LEFT_PAULDRON:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 581),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016F88);
            break;

        case IRON_KNUCKLE_LIMB_UPPER_RIGHT_PAULDRON:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 587),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016EE8);
            break;

        case IRON_KNUCKLE_LIMB_CHEST_ARMOR_FRONT:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 593),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gIronKnuckleArmorRivetAndSymbolDL);
            break;

        case IRON_KNUCKLE_LIMB_CHEST_ARMOR_BACK:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 599),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016CD8);
            break;
    }

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 604);
}

void EnIk_CsDrawNothing(EnIk* this, PlayState* play) {
}

void EnIk_CsDrawIntro(EnIk* this, PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad[2];

    OPEN_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 630);

    func_8002EBCC(&this->actor, play, 0);
    Gfx_SetupDL_25Opa(gfxCtx);
    Gfx_SetupDL_25Xlu(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_SetPrimEnvColors(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_SetPrimEnvColors(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_SetPrimEnvColors(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawFlexOpa(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          EnIk_OverrideLimbDrawIntro, EnIk_PostLimbDrawIntro, this);

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 653);
}

static EnIkDrawFunc sCsDrawFuncs[] = { EnIk_CsDrawNothing, EnIk_CsDrawIntro, EnIk_CsDrawDefeat };

void EnIk_DrawCutscene(Actor* thisx, PlayState* play) {
    EnIk* this = (EnIk*)thisx;

    if (this->csDrawMode < 0 || this->csDrawMode >= ARRAY_COUNT(sCsDrawFuncs) ||
        sCsDrawFuncs[this->csDrawMode] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    sCsDrawFuncs[this->csDrawMode](this, play);
}

void EnIk_CsInit(EnIk* this, PlayState* play) {
    if (this->actor.params == IK_TYPE_NABOORU) {
        if (!GET_EVENTCHKINF(EVENTCHKINF_3B)) {
            this->actor.update = EnIk_UpdateCutscene;
            this->actor.draw = EnIk_DrawCutscene;
            Actor_SetScale(&this->actor, 0.01f);
        } else {
            EnIk_ChangeToEnemy(this, play);
            EnIk_StartMinibossBgm();
        }
    }

    osSyncPrintf("En_Ik_inConfrontion_Init : %d !!!!!!!!!!!!!!!!\n", this->actor.params);
}

void EnIk_ChangeToEnemy(EnIk* this, PlayState* play) {
    this->actor.update = EnIk_UpdateEnemy;
    this->actor.draw = EnIk_DrawEnemy;
    this->actor.flags |= ACTOR_FLAG_0 | ACTOR_FLAG_2;
    SET_EVENTCHKINF(EVENTCHKINF_3B);
    Actor_SetScale(&this->actor, 0.012f);
    EnIk_SetupIdle(this);
}

void EnIk_StartDefeatCutscene(Actor* thisx, PlayState* play) {
    EnIk* this = (EnIk*)thisx;

    if (!Play_InCsMode(play)) {
        this->actor.update = EnIk_UpdateCutscene;
        this->actor.draw = EnIk_DrawCutscene;
        Cutscene_SetScript(play, gSpiritBossNabooruKnuckleDefeatCs);
        gSaveContext.cutsceneTrigger = 1;
        Actor_SetScale(&this->actor, 0.01f);
        SET_EVENTCHKINF(EVENTCHKINF_3C);
        EnIk_SetupCsAction3(this, play);
    }
}

void EnIk_Init(Actor* thisx, PlayState* play) {
    EnIk* this = (EnIk*)thisx;
    s32 upperParams = IK_GET_UPPER_PARAMS(&this->actor);

    if (((IK_GET_ARMOR_TYPE(&this->actor) == IK_TYPE_NABOORU) && GET_EVENTCHKINF(EVENTCHKINF_3C)) ||
        (upperParams != 0 && Flags_GetSwitch(play, upperParams >> 8))) {
        Actor_Kill(&this->actor);
    } else {
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
        SkelAnime_InitFlex(play, &this->skelAnime, &gIronKnuckleSkel, &gIronKnuckleNabooruSummonAxeAnim,
                           this->jointTable, this->morphTable, IRON_KNUCKLE_LIMB_MAX);
        EnIk_InitImpl(&this->actor, play);
        EnIk_CsInit(this, play);
    }
}

ActorInit En_Ik_InitVars = {
    /**/ ACTOR_EN_IK,
    /**/ ACTORCAT_BOSS,
    /**/ FLAGS,
    /**/ OBJECT_IK,
    /**/ sizeof(EnIk),
    /**/ EnIk_Init,
    /**/ EnIk_Destroy,
    /**/ EnIk_UpdateCutscene,
    /**/ EnIk_DrawCutscene,
};
