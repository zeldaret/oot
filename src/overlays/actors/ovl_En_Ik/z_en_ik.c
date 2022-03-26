/*
 * File: z_en_ik.c
 * Overlay: ovl_En_Ik
 * Description: Iron Knuckle
 */

#include "z_en_ik.h"
#include "scenes/dungeons/jyasinboss/jyasinboss_scene.h"
#include "objects/object_ik/object_ik.h"
#include "vt.h"

#define FLAGS ACTOR_FLAG_4

typedef void (*EnIkDrawFunc)(struct EnIk*, GlobalContext*);

typedef enum {
    /* 0x00 */ ARMOR_UNBROKEN,
    /* 0x01 */ ARMOR_BROKEN
} EnIkArmorStatus;

typedef enum {
    /* 0x00 */ IK_INIT,
    /* 0x01 */ IK_ACTION_1,
    /* 0x02 */ IK_ACTION_2,
    /* 0x03 */ IK_ACTION_3,
    /* 0x04 */ IK_ACTION_4,
    /* 0x05 */ IK_ACTION_5

} EnIkAction;

typedef enum {
    /* 0x00 */ IK_DRAW_NOTHING,
    /* 0x01 */ IK_DRAW_1,
    /* 0x02 */ IK_DRAW_2
} EnIkDrawMode;

typedef enum {
    /* 0 */ IK_TYPE_NABOORU,
    /* 1 */ IK_TYPE_SITTING,
    /* 2 */ IK_TYPE_BLACK,
    /* 3 */ IK_TYPE_WHITE
} EnIkType;

void EnIk_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnIk_SetupStandup(EnIk* this);
void EnIk_Standup(EnIk* this, GlobalContext* globalCtx);
void EnIk_Idle(EnIk* this, GlobalContext* globalCtx);
void EnIk_SetupWalkOrRun(EnIk* this);
void EnIk_WalkOrRun(EnIk* this, GlobalContext* globalCtx);
void EnIk_SetupVerticleAttack(EnIk* this);
void EnIk_VerticleAttack(EnIk* this, GlobalContext* globalCtx);
void EnIk_SetupPulloutAxe(EnIk* this);
void EnIk_PulloutAxe(EnIk* this, GlobalContext* globalCtx);
void EnIk_SetupDoubleHorizontalAttack(EnIk* this);
void EnIk_DoubleHorizontalAttack(EnIk* this, GlobalContext* globalCtx);
void EnIk_SetupRecoverFromHorizontalAttack(EnIk* this);
void EnIk_RecoverFromHorizontalAttack(EnIk* this, GlobalContext* globalCtx);
void EnIk_SetupSingleHorizontalAttack(EnIk* this);
void EnIk_SingleHorizontalAttack(EnIk* this, GlobalContext* globalCtx);
void EnIk_SetupStopAndBlock(EnIk* this);
void EnIk_StopAndBlock(EnIk* this, GlobalContext* globalCtx);
void EnIk_ReactToAttack(EnIk* this, GlobalContext* globalCtx);
void EnIk_Death(EnIk* this, GlobalContext* globalCtx);
void func_80A75FA0(Actor* thisx, GlobalContext* globalCtx);
void EnIk_DrawParamType(Actor* thisx, GlobalContext* globalCtx);
void EnIk_UpdateCs_03(EnIk* this, GlobalContext* globalCtx);
void EnIk_UpdateCs_04(EnIk* this, GlobalContext* globalCtx);
void EnIk_UpdateCs_05(EnIk* this, GlobalContext* globalCtx);
void EnIk_CsNabooruDefeatDraw(EnIk* this, GlobalContext* globalCtx);
void EnIk_HandleSubscenesByNpcAction(EnIk* this, GlobalContext* globalCtx);
void EnIk_UpdateCs_00(EnIk* this, GlobalContext* globalCtx);
void EnIk_UpdateCs_01(EnIk* this, GlobalContext* globalCtx);
void EnIk_UpdateCs_02(EnIk* this, GlobalContext* globalCtx);
void EnIk_EmptyRoomDraw(EnIk* this, GlobalContext* globalCtx);
void EnIk_CsNabooruKnuckleIntroDraw(EnIk* this, GlobalContext* globalCtx);
void EnIk_CsAdvanceTo04(EnIk* this, GlobalContext* globalCtx);
void EnIk_CheckCsMode(Actor* thisx, GlobalContext* globalCtx);

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
    /* Deku nut      */ DMG_ENTRY(0, 0xD),
    /* Deku stick    */ DMG_ENTRY(2, 0xF),
    /* Slingshot     */ DMG_ENTRY(1, 0xE),
    /* Explosive     */ DMG_ENTRY(2, 0xF),
    /* Boomerang     */ DMG_ENTRY(0, 0xD),
    /* Normal arrow  */ DMG_ENTRY(2, 0xE),
    /* Hammer swing  */ DMG_ENTRY(2, 0xF),
    /* Hookshot      */ DMG_ENTRY(0, 0xD),
    /* Kokiri sword  */ DMG_ENTRY(1, 0xF),
    /* Master sword  */ DMG_ENTRY(2, 0xF),
    /* Giant's Knife */ DMG_ENTRY(4, 0xF),
    /* Fire arrow    */ DMG_ENTRY(2, 0xE),
    /* Ice arrow     */ DMG_ENTRY(2, 0xE),
    /* Light arrow   */ DMG_ENTRY(2, 0xE),
    /* Unk arrow 1   */ DMG_ENTRY(2, 0xE),
    /* Unk arrow 2   */ DMG_ENTRY(2, 0xE),
    /* Unk arrow 3   */ DMG_ENTRY(15, 0xE),
    /* Fire magic    */ DMG_ENTRY(0, 0x6),
    /* Ice magic     */ DMG_ENTRY(0, 0x6),
    /* Light magic   */ DMG_ENTRY(0, 0x6),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(1, 0xF),
    /* Giant spin    */ DMG_ENTRY(4, 0xF),
    /* Master spin   */ DMG_ENTRY(2, 0xF),
    /* Kokiri jump   */ DMG_ENTRY(2, 0xF),
    /* Giant jump    */ DMG_ENTRY(8, 0xF),
    /* Master jump   */ DMG_ENTRY(4, 0xF),
    /* Unknown 1     */ DMG_ENTRY(10, 0xF),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(4, 0xF),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = (EnIk*)thisx;

    if (Actor_FindNearby(globalCtx, &this->actor, ACTOR_EN_IK, ACTORCAT_ENEMY, 8000.0f) == NULL) {
        func_800F5B58();
    }

    Collider_DestroyTris(globalCtx, &this->shieldCollider);
    Collider_DestroyCylinder(globalCtx, &this->bodyCollider);
    Collider_DestroyQuad(globalCtx, &this->axeCollider);
}

void EnIk_SetupAction(EnIk* this, EnIkActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80A74398(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = (EnIk*)thisx;
    s32 pad;
    EffectBlureInit1 blureInit;

    thisx->update = func_80A75FA0;
    thisx->draw = EnIk_DrawParamType;
    thisx->flags |= ACTOR_FLAG_10;

    Collider_InitCylinder(globalCtx, &this->bodyCollider);
    Collider_SetCylinder(globalCtx, &this->bodyCollider, thisx, &sCylinderInit);
    Collider_InitTris(globalCtx, &this->shieldCollider);
    Collider_SetTris(globalCtx, &this->shieldCollider, thisx, &sTrisInit, this->shieldColliderItems);
    Collider_InitQuad(globalCtx, &this->axeCollider);
    Collider_SetQuad(globalCtx, &this->axeCollider, thisx, &sQuadInit);

    thisx->colChkInfo.damageTable = &sDamageTable;
    thisx->colChkInfo.mass = MASS_HEAVY;
    this->isDestroyingIronObj = 0;
    thisx->colChkInfo.health = 30;
    thisx->gravity = -1.0f;
    this->switchFlags = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;

    if (thisx->params == 0) {
        thisx->colChkInfo.health += 20;
        thisx->naviEnemyId = 0x34;
    } else {
        Actor_SetScale(thisx, 0.012f);
        thisx->naviEnemyId = 0x35;
        Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_ENEMY);
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

    Effect_Add(globalCtx, &this->blureIdx, EFFECT_BLURE1, 0, 0, &blureInit);
    EnIk_SetupStandup(this);

    if (this->switchFlags != 0xFF) {
        if (Flags_GetSwitch(globalCtx, this->switchFlags)) {
            Actor_Kill(thisx);
        }
    } else if (thisx->params != 0 && Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        Actor_Kill(thisx);
    }
}

// Checks to see if action can be interrupted to block attack
s32 EnIk_ChangeAction(EnIk* this, GlobalContext* globalCtx) {
    if (((this->armorStatusFlag != ARMOR_UNBROKEN) || (this->actor.params == 0)) &&
        (func_800354B4(globalCtx, &this->actor, 100.0f, 0x2710, 0x4000, this->actor.shape.rot.y) != 0) &&
        (globalCtx->gameplayFrames & 1)) {
        EnIk_SetupStopAndBlock(this);
        return true;
    } else {
        return false;
    }
}

// Checks to see if the Actor is either the pillars or chairs (IronObj)
Actor* EnIk_CheckForIronObj(GlobalContext* globalCtx, Actor* actor) {
    Actor* prop = globalCtx->actorCtx.actorLists[ACTORCAT_PROP].head;

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

void EnIk_SetupStandup(EnIk* this) {
    f32 frames = Animation_GetLastFrame(&gIronKuckleStandUpAnim);
    f32 frame;

    if (this->actor.params >= 2) {
        frame = frames - 1.0f;
    } else {
        frame = 0.0f;
    }

    Animation_Change(&this->skelAnime, &gIronKuckleStandUpAnim, 0.0f, frame, frames, ANIMMODE_ONCE, 0.0f);
    this->unk_2F8 = 3;
    this->actor.speedXZ = 0.0f;
    EnIk_SetupAction(this, EnIk_Standup);
}

void EnIk_Standup(EnIk* this, GlobalContext* globalCtx) {
    Vec3f sp24;

    if (this->bodyCollider.base.acFlags & AC_HIT) {
        sp24 = this->actor.world.pos;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_ARMOR_HIT);
        sp24.y += 30.0f;
        func_8003424C(globalCtx, &sp24);
        this->skelAnime.playSpeed = 1.0f;
        func_800F5ACC(NA_BGM_MINI_BOSS);
    }
    if (this->skelAnime.curFrame == 5.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_WAKEUP);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        this->actor.flags |= ACTOR_FLAG_0 | ACTOR_FLAG_2;
        EnIk_SetupWalkOrRun(this);
    }
}

void EnIk_SetupIdle(EnIk* this) {
    f32 frames = Animation_GetLastFrame(&object_ik_Anim_00DD50);

    this->actor.flags |= ACTOR_FLAG_0 | ACTOR_FLAG_2;
    this->unk_2F8 = 4;
    this->actor.speedXZ = 0.0f;
    Animation_Change(&this->skelAnime, &object_ik_Anim_00DD50, 0.0f, 0.0f, frames, ANIMMODE_LOOP, 4.0f);
    EnIk_SetupAction(this, EnIk_Idle);
}

void EnIk_Idle(EnIk* this, GlobalContext* globalCtx) {
    s32 phi_a0 = (this->armorStatusFlag == ARMOR_UNBROKEN) ? 0xAAA : 0x3FFC;
    s16 yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if ((ABS(yawDiff) <= phi_a0) && (this->actor.xzDistToPlayer < 100.0f) &&
        (ABS(this->actor.yDistToPlayer) < 150.0f)) {
        if ((globalCtx->gameplayFrames & 1)) {
            EnIk_SetupVerticleAttack(this);
        } else {
            EnIk_SetupDoubleHorizontalAttack(this);
        }
    } else if ((ABS(yawDiff) <= 0x4000) && (ABS(this->actor.yDistToPlayer) < 150.0f)) {
        EnIk_SetupWalkOrRun(this);
    } else {
        EnIk_SetupWalkOrRun(this);
    }
    EnIk_ChangeAction(this, globalCtx);
    SkelAnime_Update(&this->skelAnime);
}

void EnIk_SetupWalkOrRun(EnIk* this) {
    this->unk_2F8 = 5;
    if (this->armorStatusFlag == ARMOR_UNBROKEN) {
        Animation_Change(&this->skelAnime, &gIronKuckleWalkAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gIronKuckleWalkAnim), ANIMMODE_LOOP, -4.0f);
        this->actor.speedXZ = 0.9f;
    } else {
        Animation_Change(&this->skelAnime, &gIronKuckleRunAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gIronKuckleRunAnim),
                         ANIMMODE_LOOP, -4.0f);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_DASH);
        this->actor.speedXZ = 2.5f;
    }
    this->actor.world.rot.y = this->actor.shape.rot.y;
    EnIk_SetupAction(this, EnIk_WalkOrRun);
}

void EnIk_WalkOrRun(EnIk* this, GlobalContext* globalCtx) {
    s16 temp_t0;
    s16 targetStepVal;
    s16 yawDiff;
    s16 sp30;
    s16 sp2E;
    s16 stepVal;

    if (this->armorStatusFlag == ARMOR_UNBROKEN) {
        temp_t0 = 0xAAA;
        stepVal = 0x320;
        sp30 = 0;
        sp2E = 0x10;
    } else {
        temp_t0 = 0x3FFC;
        stepVal = 0x4B0;
        sp30 = 2;
        sp2E = 9;
    }
    targetStepVal = this->actor.wallYaw - this->actor.shape.rot.y;
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) && (ABS(targetStepVal) >= 0x4000)) {
        targetStepVal =
            (this->actor.yawTowardsPlayer > 0) ? this->actor.wallYaw - 0x4000 : this->actor.wallYaw + 0x4000;
        Math_SmoothStepToS(&this->actor.world.rot.y, targetStepVal, 1, stepVal, 0);
    } else {
        Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, stepVal, 0);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(yawDiff) <= temp_t0) && (this->actor.xzDistToPlayer < 100.0f)) {
        if (ABS(this->actor.yDistToPlayer) < 150.0f) {
            if ((globalCtx->gameplayFrames & 1)) {
                EnIk_SetupVerticleAttack(this);
            } else {
                EnIk_SetupDoubleHorizontalAttack(this);
            }
        }
    }
    if (EnIk_CheckForIronObj(globalCtx, &this->actor) != NULL) {
        EnIk_SetupDoubleHorizontalAttack(this);
        this->isDestroyingIronObj = 1;
    } else {
        temp_t0 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (ABS(temp_t0) > 0x4000) {
            this->unk_300--;
            if (this->unk_300 == 0) {
                EnIk_SetupSingleHorizontalAttack(this);
            }
        } else {
            this->unk_300 = 0x28;
        }
    }
    EnIk_ChangeAction(this, globalCtx);
    SkelAnime_Update(&this->skelAnime);
    if ((sp30 == (s16)this->skelAnime.curFrame) || (sp2E == (s16)this->skelAnime.curFrame)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_WALK);
    }
}

void EnIk_SetupVerticleAttack(EnIk* this) {
    f32 frames = Animation_GetLastFrame(&gIronKnuckleVerticleAttackAnim);

    this->unk_2FF = 1;
    this->unk_2F8 = 6;
    this->actor.speedXZ = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleVerticleAttackAnim, 1.5f, 0.0f, frames, ANIMMODE_ONCE, -4.0f);
    EnIk_SetupAction(this, EnIk_VerticleAttack);
}

void EnIk_VerticleAttack(EnIk* this, GlobalContext* globalCtx) {
    Vec3f sp2C;

    if (this->skelAnime.curFrame == 15.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_SWING_AXE);
    } else if (this->skelAnime.curFrame == 21.0f) {
        sp2C.x = this->actor.world.pos.x + Math_SinS(this->actor.shape.rot.y + 0x6A4) * 70.0f;
        sp2C.z = this->actor.world.pos.z + Math_CosS(this->actor.shape.rot.y + 0x6A4) * 70.0f;
        sp2C.y = this->actor.world.pos.y;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_HIT_GND);
        Camera_AddQuake(&globalCtx->mainCamera, 2, 0x19, 5);
        func_800AA000(this->actor.xzDistToPlayer, 0xFF, 0x14, 0x96);
        CollisionCheck_SpawnShieldParticles(globalCtx, &sp2C);
    }

    if ((this->skelAnime.curFrame > 17.0f) && (this->skelAnime.curFrame < 23.0f)) {
        this->unk_2FE = 1;
    } else {
        if ((this->armorStatusFlag != ARMOR_UNBROKEN) && (this->skelAnime.curFrame < 10.0f)) {
            Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x5DC, 0);
            this->actor.shape.rot.y = this->actor.world.rot.y;
        }
        this->unk_2FE = 0;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        EnIk_SetupPulloutAxe(this);
    }
}

void EnIk_SetupPulloutAxe(EnIk* this) {
    f32 frames = Animation_GetLastFrame(&gIronKnuckleAxeStuckAnim);

    this->unk_2FE = 0;
    this->animationTimer = (s8)frames;
    this->unk_2F8 = 7;
    this->unk_2FF = this->unk_2FE;
    Animation_Change(&this->skelAnime, &gIronKnuckleAxeStuckAnim, 1.0f, 0.0f, frames, ANIMMODE_LOOP, -4.0f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_PULLOUT);
    EnIk_SetupAction(this, EnIk_PulloutAxe);
}

void EnIk_PulloutAxe(EnIk* this, GlobalContext* globalCtx) {
    f32 frames;

    if (SkelAnime_Update(&this->skelAnime) || (--this->animationTimer == 0)) {
        if (this->unk_2F8 == 8) {
            EnIk_SetupIdle(this);
        } else {
            frames = Animation_GetLastFrame(&gIronKnuckleRecoverFromVerticleAttackAnim);
            this->unk_2F8 = 8;
            Animation_Change(&this->skelAnime, &gIronKnuckleRecoverFromVerticleAttackAnim, 1.5f, 0.0f, frames,
                             ANIMMODE_ONCE_INTERP, -4.0f);
        }
    }
}

// Happens when Player is in front of Iron Knuckle or when Iron Knuckle encounters ACTOR_BG_JYA_IRONOBJ
void EnIk_SetupDoubleHorizontalAttack(EnIk* this) {
    f32 frames = Animation_GetLastFrame(&gIronKnuckleHorizontalAttackAnim);

    this->unk_2FF = 2;
    this->unk_300 = 0;
    this->unk_2F8 = 6;
    this->actor.speedXZ = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleHorizontalAttackAnim, 0.0f, 0.0f, frames, ANIMMODE_ONCE_INTERP,
                     -6.0f);
    this->isDestroyingIronObj = 0;
    EnIk_SetupAction(this, EnIk_DoubleHorizontalAttack);
}

void EnIk_DoubleHorizontalAttack(EnIk* this, GlobalContext* globalCtx) {
    f32 temp_f0;

    this->unk_300 += 0x1C2;
    temp_f0 = Math_SinS(this->unk_300);
    this->skelAnime.playSpeed = ABS(temp_f0);

    if (this->skelAnime.curFrame > 11.0f) {
        this->unk_2FF = 3;
    }
    if (((this->skelAnime.curFrame > 1.0f) && (this->skelAnime.curFrame < 9.0f)) ||
        ((this->skelAnime.curFrame > 13.0f) && (this->skelAnime.curFrame < 18.0f))) {
        if ((this->isDestroyingIronObj == 0) && (this->armorStatusFlag != ARMOR_UNBROKEN) &&
            (this->skelAnime.curFrame < 10.0f)) {
            Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x5DC, 0);
            this->actor.shape.rot.y = this->actor.world.rot.y;
        }
        if (this->unk_2FE < 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_SWING_AXE);
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
    f32 frames = Animation_GetLastFrame(&gIronKnuckleRecoverFromHorizontalAnim);

    this->unk_2FF = this->unk_2FE = 0;
    this->unk_2F8 = 8;
    Animation_Change(&this->skelAnime, &gIronKnuckleRecoverFromHorizontalAnim, 1.5f, 0.0f, frames, ANIMMODE_ONCE_INTERP,
                     -4.0f);
    EnIk_SetupAction(this, EnIk_RecoverFromHorizontalAttack);
}

void EnIk_RecoverFromHorizontalAttack(EnIk* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnIk_SetupIdle(this);
        EnIk_ChangeAction(this, globalCtx);
    }
}

// Attack pattern when player is behind Iron Knuckle or attacks Iron Knuckle from behind
void EnIk_SetupSingleHorizontalAttack(EnIk* this) {
    f32 frames = Animation_GetLastFrame(&gIronKnuckleHorizontalAttackAnim);

    this->unk_2F8 = 1;
    this->unk_2FF = 3;
    this->actor.speedXZ = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleHorizontalAttackAnim, 0.5f, 13.0f, frames, ANIMMODE_ONCE_INTERP,
                     -4.0f);
    EnIk_SetupAction(this, EnIk_SingleHorizontalAttack);
}

void EnIk_SingleHorizontalAttack(EnIk* this, GlobalContext* globalCtx) {
    Math_StepUntilS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 0x7D0);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if ((this->skelAnime.curFrame > 13.0f) && (this->skelAnime.curFrame < 18.0f)) {
        if (this->unk_2FE < 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_SWING_AXE);
        }
        this->unk_2FE = 1;
    } else {
        this->unk_2FE = 0;
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        EnIk_SetupRecoverFromHorizontalAttack(this);
        EnIk_ChangeAction(this, globalCtx);
    }
}

void EnIk_SetupStopAndBlock(EnIk* this) {
    f32 frames = Animation_GetLastFrame(&gIronKnuckleBlockAnim);

    this->unk_2FE = 0;
    this->unk_2F8 = 9;
    this->actor.speedXZ = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleBlockAnim, 1.0f, 0.0f, frames, ANIMMODE_ONCE_INTERP, -4.0f);
    EnIk_SetupAction(this, EnIk_StopAndBlock);
}

void EnIk_StopAndBlock(EnIk* this, GlobalContext* globalCtx) {
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->shieldCollider.base);
    if (SkelAnime_Update(&this->skelAnime)) {
        if ((ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) <= 0x4000) &&
            (this->actor.xzDistToPlayer < 100.0f) && (ABS(this->actor.yDistToPlayer) < 150.0f)) {
            if ((globalCtx->gameplayFrames & 1)) {
                EnIk_SetupVerticleAttack(this);
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
        Animation_Change(&this->skelAnime, &gIronKuckleFrontHitAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gIronKuckleFrontHitAnim), ANIMMODE_ONCE, -4.0f);
        this->actor.speedXZ = -6.0f;
    } else {
        Animation_Change(&this->skelAnime, &gIronKuckleBackHitAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gIronKuckleBackHitAnim), ANIMMODE_ONCE, -4.0f);
        this->actor.speedXZ = 6.0f;
    }
    this->unk_2FE = 0;
    EnIk_SetupAction(this, EnIk_ReactToAttack);
}

void EnIk_ReactToAttack(EnIk* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 1.0f, 0.0f);
    if (BodyBreak_SpawnParts(&this->actor, &this->bodyBreak, globalCtx, this->actor.params + 4)) {
        this->bodyBreak.val = BODYBREAK_STATUS_FINISHED;
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        if (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) <= 0x4000) {
            EnIk_SetupIdle(this);
            EnIk_ChangeAction(this, globalCtx);
        } else {
            EnIk_SetupSingleHorizontalAttack(this);
        }
    }
}

void EnIk_SetupDeath(EnIk* this) {
    f32 frames = Animation_GetLastFrame(&gIronKnuckleDeathAnim);

    this->unk_2FE = 0;
    this->unk_2F8 = 2;
    this->actor.speedXZ = 0.0f;
    Animation_Change(&this->skelAnime, &gIronKnuckleDeathAnim, 1.0f, 0.0f, frames, ANIMMODE_ONCE, -4.0f);
    this->animationTimer = 24;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_DEAD);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_CUTBODY);
    EnIk_SetupAction(this, EnIk_Death);
}

void EnIk_Death(EnIk* this, GlobalContext* globalCtx) {
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
                EffectSsDeadDb_Spawn(globalCtx, &pos, &sp7C, &sp7C, 100, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, true);
            }
            if (this->animationTimer == 0) {
                Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0xB0);
                if (this->switchFlags != 0xFF) {
                    Flags_SetSwitch(globalCtx, this->switchFlags);
                }
                Actor_Kill(&this->actor);
            }
        }
    } else if (this->skelAnime.curFrame == 23.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_WALK);
    }
}

void func_80A75C38(EnIk* this, GlobalContext* globalCtx) {
    f32 frames;
    u8 pad;
    u8 pad2;
    u8 prevHealth;
    s32 damageEffect;
    Vec3f sp38;

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
        return;
    }
    if (!(this->bodyCollider.base.acFlags & AC_HIT)) {
        return;
    }
    sp38 = this->actor.world.pos;
    sp38.y += 50.0f;
    Actor_SetDropFlag(&this->actor, &this->bodyCollider.info, 1);
    damageEffect = this->actor.colChkInfo.damageEffect;
    this->unk_2FD = damageEffect & 0xFF;
    this->bodyCollider.base.acFlags &= ~AC_HIT;

    if (1) {}

    if ((this->unk_2FD == 0) || (this->unk_2FD == 0xD) ||
        ((this->armorStatusFlag == ARMOR_UNBROKEN) && (this->unk_2FD == 0xE))) {
        if (this->unk_2FD != 0) {
            CollisionCheck_SpawnShieldParticlesMetal(globalCtx, &sp38);
        }
        return;
    }
    Actor_SetColorFilter(&this->actor, 0x4000, 0xFF, 0, 0xC);
    prevHealth = this->actor.colChkInfo.health;
    Actor_ApplyDamage(&this->actor);
    if (this->actor.params != 0) {
        if ((prevHealth > 10) && (this->actor.colChkInfo.health <= 10)) {
            this->armorStatusFlag = ARMOR_BROKEN;
            BodyBreak_Alloc(&this->bodyBreak, 3, globalCtx);
        }
    } else if (this->actor.colChkInfo.health <= 10) {
        Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_BOSS);
        SoundSource_PlaySfxAtFixedWorldPos(globalCtx, &this->actor.world.pos, 20, NA_SE_EN_LAST_DAMAGE);
        if (this->switchFlags != 0xFF) {
            Flags_SetSwitch(globalCtx, this->switchFlags);
        }
        return;
    } else if (prevHealth == 50) {
        Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_ENEMY);
    }

    if (this->actor.colChkInfo.health == 0) {
        EnIk_SetupDeath(this);
        Enemy_StartFinishingBlow(globalCtx, &this->actor);
        return;
    }
    Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 1, 0x7D0, 0);
    if ((this->actor.params == 0) && (Rand_ZeroOne() < 0.5f)) {
        if (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) > 0x4000) {
            EnIk_SetupSingleHorizontalAttack(this);
        }
    }
    if ((this->actor.params != 0) && (this->armorStatusFlag != ARMOR_UNBROKEN)) {
        if ((prevHealth > 10) && (this->actor.colChkInfo.health <= 10)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_ARMOR_OFF_DEMO);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_DAMAGE);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_CUTBODY);
        }
        EnIk_SetupReactToAttack(this);
        return;
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_ARMOR_HIT);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_DAMAGE);
    CollisionCheck_SpawnShieldParticles(globalCtx, &sp38);
}

void func_80A75FA0(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = (EnIk*)thisx;
    s32 pad;
    Player* player = GET_PLAYER(globalCtx);
    u8 prevInvincibilityTimer;

    this->drawArmorFlag = this->armorStatusFlag;
    func_80A75C38(this, globalCtx);
    if ((this->actor.params == 0) && (this->actor.colChkInfo.health <= 10)) {
        EnIk_CheckCsMode(&this->actor, globalCtx);
        return;
    }
    this->actionFunc(this, globalCtx);
    if (this->axeCollider.base.atFlags & AT_HIT) {
        this->axeCollider.base.atFlags &= ~AT_HIT;
        if (&player->actor == this->axeCollider.base.at) {
            prevInvincibilityTimer = player->invincibilityTimer;
            if (player->invincibilityTimer <= 0) {
                if (player->invincibilityTimer < -39) {
                    player->invincibilityTimer = 0;
                } else {
                    player->invincibilityTimer = 0;
                    globalCtx->damagePlayer(globalCtx, -64);
                    this->unk_2FE = 0;
                }
            }
            func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.yawTowardsPlayer, 8.0f);
            player->invincibilityTimer = prevInvincibilityTimer;
        }
    }
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 45.0f;
    Collider_UpdateCylinder(&this->actor, &this->bodyCollider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bodyCollider.base);
    if ((this->actor.colChkInfo.health > 0) && (this->actor.colorFilterTimer == 0) && (this->unk_2F8 >= 2)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->bodyCollider.base);
    }
    if (this->unk_2FE > 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->axeCollider.base);
    }
    if (this->unk_2F8 == 9) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->shieldCollider.base);
    }
}

Gfx* EnIk_UpdateDisplayList(GraphicsContext* gfxCtx, u8 primR, u8 primG, u8 primB, u8 envR, u8 envG, u8 envB) {
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

s32 EnIk_OverrideLimbDraw3(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnIk* this = (EnIk*)thisx;

    if (limbIndex == 12) {
        if (this->actor.params != 0) {
            *dList = object_ik_DL_018E78;
        }
    } else if (limbIndex == 13) {
        if (this->actor.params != 0) {
            *dList = object_ik_DL_019100;
        }
    } else if ((limbIndex == 26) || (limbIndex == 27)) {
        if (this->drawArmorFlag & 1) {
            *dList = NULL;
        }
    } else if ((limbIndex == 28) || (limbIndex == 29)) {
        if (!(this->drawArmorFlag & 1)) {
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

void EnIk_PostLimbDraw3(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Vec3f spF4;
    Vec3f spE8;
    EnIk* this = (EnIk*)thisx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1201);

    if (this->armorStatusFlag & 1) {
        BodyBreak_SetInfo(&this->bodyBreak, limbIndex, 26, 27, 28, dList, BODYBREAK_OBJECT_DEFAULT);
    }
    if (limbIndex == 12) {
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1217),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        if (this->actor.params != 0) {
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_019E08);
        } else {
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016D88);
        }
    } else if (limbIndex == 17) {
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
        case 22:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1270),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016F88);
            break;
        case 24:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1275),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016EE8);
            break;
        case 26:
            if (!(this->drawArmorFlag & 1)) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1281),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016BE0);
            }
            break;
        case 27:
            if (!(this->drawArmorFlag & 1)) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1288),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016CD8);
            }
            break;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1294);
}

// Draw and Update Display list depending on Iron Knuckle param type
void EnIk_DrawParamType(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = (EnIk*)thisx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1309);

    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);

    if (this->actor.params == IK_TYPE_NABOORU) {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 245, 225, 155, 30, 30, 0));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 255, 40, 0, 40, 0, 0));
        gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 255, 255, 255, 20, 40, 30));
    } else if (this->actor.params == IK_TYPE_SITTING) {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 245, 255, 205, 30, 35, 0));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 185, 135, 25, 20, 20, 0));
        gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 255, 255, 255, 30, 40, 20));
    } else if (this->actor.params == IK_TYPE_BLACK) {
        gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 55, 65, 55, 0, 0, 0));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 205, 165, 75, 25, 20, 0));
        gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 205, 165, 75, 25, 20, 0));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 255, 255, 255, 180, 180, 180));
        gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 225, 205, 115, 25, 20, 0));
        gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_UpdateDisplayList(globalCtx->state.gfxCtx, 225, 205, 115, 25, 20, 0));
    }
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnIk_OverrideLimbDraw3, EnIk_PostLimbDraw3, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ik_inFight.c", 1351);
}

void EnIk_StartMusic(void) {
    func_800F5ACC(NA_BGM_MINI_BOSS);
}

// Cutscene: Nabooru Knuckle Wakes up
// Various SFX played, indicated by the framecount.
void EnIk_CsPlaySfx_NabooruKnuckleWakeUp(EnIk* this) {
    if (Animation_OnFrame(&this->skelAnime, 1.0f)) {
        Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_WAKEUP, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    } else if (Animation_OnFrame(&this->skelAnime, 33.0f)) {
        Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_WALK, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    } else if (Animation_OnFrame(&this->skelAnime, 68.0f) || Animation_OnFrame(&this->skelAnime, 80.0f)) {
        Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_ARMOR_DEMO, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    } else if (Animation_OnFrame(&this->skelAnime, 107.0f)) {
        Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_FINGER_DEMO, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    } else if (Animation_OnFrame(&this->skelAnime, 156.0f)) {
        Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_ARMOR_DEMO, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    } else if (Animation_OnFrame(&this->skelAnime, 188.0f)) {
        Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_WAVE_DEMO, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    }
}

// Cutscene: Summons Axe for Nabooru Knuckle
// Sfx is played after the Iron Knuckle snaps fingers
void EnIk_CsPlaySfx_SummonAxe(EnIk* this, GlobalContext* globalCtx, Vec3f* pos) {
    Audio_PlaySoundGeneral(NA_SE_EN_TWINROBA_TRANSFORM, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                           &D_801333E8);
}

void EnIk_SpawnAxeSmoke(EnIk* this, GlobalContext* globalCtx, Vec3f* pos) {
    static Vec3f sAxeSmokeEffectData[] = {
        { 1000.0, -1000.0, 1000.0 },  { 0.0, -1000.0, 0.0 },        { -1000.0, -5000.0, -4000.0 },
        { 1000.0, -5000.0, -3000.0 }, { -1000.0, 1000.0, -6000.0 }, { -1000.0, 3000.0, -5000.0 },
        { -800.0, 1000.0, -3000.0 },  { 0.0, -4000.0, -2000.0 },    { -1000.0, -2000.0, -6000.0 },
        { 1000.0, -3000.0, 0.0 },     { 2000.0, -2000.0, -4000.0 }, { -1000.0, 0.0, -6000.0 },
        { 1000.0, -2000.0, -2000.0 }, { 0.0, -2000.0, 2100.0 },     { 0.0, 0.0, 0.0 },
        { 1000.0, -1000.0, -6000.0 }, { 2000.0, 0.0, -3000.0 },     { -1000.0, -1000.0, -4000.0 },
        { 900.0, -800.0, 2700.0 },    { 720.0f, 900.0f, 2500.0f },
    };

    if (this->isAxeSummoned == 0) {
        s32 pad;
        Vec3f effectVelocity = { 0.0f, 0.0f, 0.0f };
        Vec3f effectAccel = { 0.0f, 0.3f, 0.0f };
        s32 i;

        for (i = ARRAY_COUNT(sAxeSmokeEffectData) - 1; i >= 0; i--) {
            Color_RGBA8 primColor = { 200, 200, 200, 255 };
            Color_RGBA8 envColor = { 150, 150, 150, 0 };
            s32 temp_v0;
            Vec3f effectPos;

            Matrix_MultVec3f(&sAxeSmokeEffectData[i], &effectPos);
            temp_v0 = (Rand_ZeroOne() * 20.0f) - 10.0f;
            primColor.r += temp_v0;
            primColor.g += temp_v0;
            primColor.b += temp_v0;
            envColor.r += temp_v0;
            envColor.g += temp_v0;
            envColor.b += temp_v0;
            func_8002829C(globalCtx, &effectPos, &effectVelocity, &effectAccel, &primColor, &envColor,
                          (Rand_ZeroOne() * 60.0f) + 300.0f, 0);
        }

        this->isAxeSummoned = 1;
        EnIk_CsPlaySfx_SummonAxe(this, globalCtx, pos);
    }
}

void EnIk_UpdateBgCheckInfo(EnIk* this, GlobalContext* globalCtx) {
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
}

s32 EnIk_CheckSkelAnim(EnIk* this) {
    return SkelAnime_Update(&this->skelAnime);
}

CsCmdActorAction* EnIk_GetNpcAction(GlobalContext* globalCtx, s32 actionIdx) {
    if (globalCtx->csCtx.state != CS_STATE_IDLE) {
        return globalCtx->csCtx.npcActions[actionIdx];
    } else {
        return NULL;
    }
}

void EnIk_MoveNpcToPos(EnIk* this, GlobalContext* globalCtx, s32 actionIdx) {
    CsCmdActorAction* npcAction = EnIk_GetNpcAction(globalCtx, actionIdx);

    if (npcAction != NULL) {
        this->actor.world.pos.x = npcAction->startPos.x;
        this->actor.world.pos.y = npcAction->startPos.y;
        this->actor.world.pos.z = npcAction->startPos.z;
        this->actor.world.rot.y = this->actor.shape.rot.y = npcAction->rot.y;
    }
}

f32 EnIk_CurFrame(Actor* thisx) {
    EnIk* this = (EnIk*)thisx;

    return this->skelAnime.curFrame;
}

// unused
void EnIk_CsAdvanceTo01(EnIk* this) {
    this->action = IK_INIT;
    this->drawMode = IK_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

// Cutscene: Nabooru sitting and Kotake and Koume looking at her
void EnIk_CsAdvanceTo02(EnIk* this, GlobalContext* globalCtx) {
    Animation_Change(&this->skelAnime, &gIronKuckleNabooruSummonAxeAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gIronKuckleNabooruSummonAxeAnim), ANIMMODE_ONCE, 0.0f);
    EnIk_MoveNpcToPos(this, globalCtx, 4);
    this->action = 1;
    this->drawMode = 1;
    this->actor.shape.shadowAlpha = 0xFF;
}

// Cutscene: Nabooru Knuckle starts to stand up
void EnIk_CsAdvanceTo03(EnIk* this) {
    Animation_Change(&this->skelAnime, &gIronKuckleNabooruSummonAxeAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gIronKuckleNabooruSummonAxeAnim), ANIMMODE_ONCE, 0.0f);
    this->action = 2;
    this->drawMode = 1;
    this->isAxeSummoned = 0;
    this->actor.shape.shadowAlpha = 0xFF;
}

// Waits for previous axe summoning anim to finish before advancing cutscene
void EnIk_WaitForAxeSummon(EnIk* this, GlobalContext* globalCtx, s32 skelAnimStatus) {
    if (skelAnimStatus && (EnIk_GetNpcAction(globalCtx, 4) != NULL)) {
        EnIk_CsAdvanceTo04(this, globalCtx);
    }
}

// Cutscene: After defeating Nabooru, she staggers forward
// Sfx is played when you defeat Iron Knuckle Nabooru
void EnIk_CsPlaySfx_ArmorFallingOff(EnIk* this) {
    Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_STAGGER_DEMO, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                           &D_801333E8);
}

// Cutscene: When you defeat Nabooru Knuckle
// Sfx is played when you defeat Iron Knuckle Nabooru
void EnIk_CsPlaySfx_NabooruKnucleDefeat(EnIk* this, GlobalContext* globalCtx) {
    static Vec3f D_80A78FA0;
    s32 pad[2];
    f32 wDest;

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->viewProjectionMtxF, &this->actor.world.pos, &D_80A78FA0, &wDest);
    Audio_PlaySoundGeneral(NA_SE_EN_IRONNACK_DEAD, &D_80A78FA0, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

// Cutscene: starts after final hit to Nabooru
void EnIk_CsAdvanceTo05(EnIk* this, GlobalContext* globalCtx) {
    s32 pad[3];
    f32 frames = Animation_GetLastFrame(&gIronKuckleNabooruDeathAnim);

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_ik_Skel_0205C0, NULL, this->jointTable, this->morphTable,
                       30);
    Animation_Change(&this->skelAnime, &gIronKuckleNabooruDeathAnim, 1.0f, 0.0f, frames, ANIMMODE_ONCE, 0.0f);
    this->action = 3;
    this->drawMode = 2;
    EnIk_MoveNpcToPos(this, globalCtx, 4);
    EnIk_CsPlaySfx_NabooruKnucleDefeat(this, globalCtx);
    this->actor.shape.shadowAlpha = 0xFF;
}

// Cutscene: Armor falling off revealing Nabooru underneath
void EnIk_CsAdvanceTo06(EnIk* this, GlobalContext* globalCtx) {
    this->action = 4;
    this->drawMode = 2;
    EnIk_CsPlaySfx_ArmorFallingOff(this);
    this->actor.shape.shadowAlpha = 0xFF;
}

// Cutscene: all the armor has fallen off
void EnIk_CsAdvanceTo07(EnIk* this, GlobalContext* globalCtx) {
    this->action = 5;
    this->drawMode = IK_DRAW_NOTHING;
    this->actor.shape.shadowAlpha = 0;
}

void EnIk_UpdateCs_03(EnIk* this, GlobalContext* globalCtx) {
    EnIk_UpdateBgCheckInfo(this, globalCtx);
    EnIk_HandleSubscenesByNpcAction(this, globalCtx);
}

void EnIk_UpdateCs_04(EnIk* this, GlobalContext* globalCtx) {
    EnIk_CheckSkelAnim(this);
    EnIk_UpdateBgCheckInfo(this, globalCtx);
    EnIk_HandleSubscenesByNpcAction(this, globalCtx);
}

void EnIk_UpdateCs_05(EnIk* this, GlobalContext* globalCtx) {
    if (EnIk_GetNpcAction(globalCtx, 4) == NULL) {
        Actor_Kill(&this->actor);
    }
}

s32 EnIk_OverrideLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnIk* this = (EnIk*)thisx;

    if ((limbIndex == 13) || (limbIndex == 26) || (limbIndex == 27)) {
        if (EnIk_CurFrame(&this->actor) >= 30.0f) {
            *dList = NULL;
        }
    }

    return false;
}

void EnIk_PostLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 207);

    switch (limbIndex) {
        case 13: {
            EnIk* this = (EnIk*)thisx;

            if (EnIk_CurFrame(&this->actor) < 30.0f) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 267),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016D88);
            }
        } break;
        case 22:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 274),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016F88);
            break;
        case 24:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 280),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016EE8);
            break;
        case 26: {
            EnIk* this = (EnIk*)thisx;

            if (EnIk_CurFrame(&this->actor) < 30.0f) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 288),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016BE0);
            }
        } break;
        case 27: {
            EnIk* this = (EnIk*)thisx;

            if (EnIk_CurFrame(&this->actor) < 30.0f) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inAwake.c", 297),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016CD8);
            }
        } break;
    }
    CLOSE_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 304);
}

// Called during the cutscene after last hit on nabooru
void EnIk_CsNabooruDefeatDraw(EnIk* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad[2];

    OPEN_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 322);

    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    func_80093D84(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_UpdateDisplayList(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_UpdateDisplayList(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_UpdateDisplayList(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          EnIk_OverrideLimbDraw2, EnIk_PostLimbDraw2, this);

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inAwake.c", 345);
}

void EnIk_HandleSubscenesByNpcAction(EnIk* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction = EnIk_GetNpcAction(globalCtx, 4);

    if (npcAction != NULL) {
        s32 action = npcAction->action;
        s32 currentNpcAction = this->npcAction;

        if (action != currentNpcAction) {
            switch (action) {
                case 1:
                    EnIk_CsAdvanceTo01(this);
                    break;
                case 2:
                    EnIk_CsAdvanceTo02(this, globalCtx);
                    break;
                case 3:
                    EnIk_CsAdvanceTo03(this);
                    break;
                case 4:
                    EnIk_CsAdvanceTo04(this, globalCtx);
                    break;
                case 5:
                    EnIk_CsAdvanceTo05(this, globalCtx);
                    break;
                case 6:
                    EnIk_CsAdvanceTo06(this, globalCtx);
                    break;
                case 7:
                    EnIk_CsAdvanceTo07(this, globalCtx);
                    break;
                default:
                    osSyncPrintf("En_Ik_inConfrontion_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
            }

            this->npcAction = action;
        }
    }
}

void EnIk_UpdateCs_00(EnIk* this, GlobalContext* globalCtx) {
    EnIk_HandleSubscenesByNpcAction(this, globalCtx);
}

void EnIk_UpdateCs_01(EnIk* this, GlobalContext* globalCtx) {
    EnIk_UpdateBgCheckInfo(this, globalCtx);
    EnIk_HandleSubscenesByNpcAction(this, globalCtx);
}

void EnIk_UpdateCs_02(EnIk* this, GlobalContext* globalCtx) {
    s32 skelAnimStatus;

    skelAnimStatus = EnIk_CheckSkelAnim(this);
    EnIk_CsPlaySfx_NabooruKnuckleWakeUp(this);
    EnIk_UpdateBgCheckInfo(this, globalCtx);
    EnIk_HandleSubscenesByNpcAction(this, globalCtx);
    EnIk_WaitForAxeSummon(this, globalCtx, skelAnimStatus);
}

static EnIkActionFunc sActionFuncs[] = {
    EnIk_UpdateCs_00, EnIk_UpdateCs_01, EnIk_UpdateCs_02, EnIk_UpdateCs_03, EnIk_UpdateCs_04, EnIk_UpdateCs_05,
};

void EnIk_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = (EnIk*)thisx;

    if (this->action < 0 || this->action >= ARRAY_COUNT(sActionFuncs) || sActionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    sActionFuncs[this->action](this, globalCtx);
}

s32 EnIk_OverrideLimbDraw1(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnIk* this = (EnIk*)thisx;
    f32 curFrame;

    switch (limbIndex) {
        case 17:
            curFrame = this->skelAnime.curFrame;
            if (curFrame < 120.0f) {
                *dList = NULL;
            } else {
                EnIk_SpawnAxeSmoke(this, globalCtx, pos);
            }
            break;
        case 29:
        case 30:
            *dList = NULL;
            break;
    }

    return false;
}

void EnIk_PostLimbDraw1(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 571);

    switch (limbIndex) {
        case 12:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 575),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016D88);
            break;
        case 22:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 581),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016F88);
            break;
        case 24:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 587),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016EE8);
            break;
        case 26:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 593),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016BE0);
            break;
        case 27:
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_ik_inConfrontion.c", 599),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_ik_DL_016CD8);
            break;
    }

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 604);
}

// Called after defeating Nabooru, draws the empty room
void EnIk_EmptyRoomDraw(EnIk* this, GlobalContext* globalCtx) {
}

// Called in the Intro Cutscene with Kotake and Koume
void EnIk_CsNabooruKnuckleIntroDraw(EnIk* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad[2];

    OPEN_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 630);

    func_8002EBCC(&this->actor, globalCtx, 0);
    func_80093D18(gfxCtx);
    func_80093D84(gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, EnIk_UpdateDisplayList(gfxCtx, 245, 225, 155, 30, 30, 0));
    gSPSegment(POLY_OPA_DISP++, 0x09, EnIk_UpdateDisplayList(gfxCtx, 255, 40, 0, 40, 0, 0));
    gSPSegment(POLY_OPA_DISP++, 0x0A, EnIk_UpdateDisplayList(gfxCtx, 255, 255, 255, 20, 40, 30));
    SkelAnime_DrawFlexOpa(globalCtx, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                          EnIk_OverrideLimbDraw1, EnIk_PostLimbDraw1, this);

    CLOSE_DISPS(gfxCtx, "../z_en_ik_inConfrontion.c", 653);
}

static EnIkDrawFunc sDrawFuncs[] = { EnIk_EmptyRoomDraw, EnIk_CsNabooruKnuckleIntroDraw, EnIk_CsNabooruDefeatDraw };

void EnIk_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = (EnIk*)thisx;

    if (this->drawMode < 0 || this->drawMode >= ARRAY_COUNT(sDrawFuncs) || sDrawFuncs[this->drawMode] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }

    sDrawFuncs[this->drawMode](this, globalCtx);
}

void EnIk_InConfrontationInit(EnIk* this, GlobalContext* globalCtx) {
    if (this->actor.params == 0) {
        if (!(gSaveContext.eventChkInf[3] & 0x800)) {
            this->actor.update = EnIk_Update;
            this->actor.draw = EnIk_Draw;
            Actor_SetScale(&this->actor, 0.01f);
        } else {
            EnIk_CsAdvanceTo04(this, globalCtx);
            EnIk_StartMusic();
        }
    }
    osSyncPrintf("En_Ik_inConfrontion_Init : %d !!!!!!!!!!!!!!!!\n", this->actor.params);
}

// Cutscene the axe was summoned and walks away from chair
void EnIk_CsAdvanceTo04(EnIk* this, GlobalContext* globalCtx) {
    this->actor.update = func_80A75FA0;
    this->actor.draw = EnIk_DrawParamType;
    this->actor.flags |= ACTOR_FLAG_0 | ACTOR_FLAG_2;
    gSaveContext.eventChkInf[3] |= 0x800;
    Actor_SetScale(&this->actor, 0.012f);
    EnIk_SetupIdle(this);
}

void EnIk_CheckCsMode(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = (EnIk*)thisx;

    if (!Gameplay_InCsMode(globalCtx)) {
        this->actor.update = EnIk_Update;
        this->actor.draw = EnIk_Draw;
        Cutscene_SetSegment(globalCtx, gSpiritBossNabooruKnuckleDefeatCs);
        gSaveContext.cutsceneTrigger = 1;
        Actor_SetScale(&this->actor, 0.01f);
        gSaveContext.eventChkInf[3] |= 0x1000;
        EnIk_CsAdvanceTo05(this, globalCtx);
    }
}

void EnIk_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = (EnIk*)thisx;
    s32 flag = this->actor.params & 0xFF00;

    if (((this->actor.params & 0xFF) == 0 && (gSaveContext.eventChkInf[3] & 0x1000)) ||
        (flag != 0 && Flags_GetSwitch(globalCtx, flag >> 8))) {
        Actor_Kill(&this->actor);
    } else {
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_ik_Skel_01E178, &gIronKuckleNabooruSummonAxeAnim,
                           this->jointTable, this->morphTable, 30);
        func_80A74398(&this->actor, globalCtx);
        EnIk_InConfrontationInit(this, globalCtx);
    }
}

const ActorInit En_Ik_InitVars = {
    ACTOR_EN_IK,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_IK,
    sizeof(EnIk),
    (ActorFunc)EnIk_Init,
    (ActorFunc)EnIk_Destroy,
    (ActorFunc)EnIk_Update,
    (ActorFunc)EnIk_Draw,
};
