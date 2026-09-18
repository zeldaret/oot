#include "z_en_dekubaba.h"

#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/gameplay_keep/shadow_circle.h"
#include "assets/objects/object_dekubaba/object_dekubaba.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE)

void EnDekubaba_Init(Actor* thisx, PlayState* play);
void EnDekubaba_Destroy(Actor* thisx, PlayState* play);
void EnDekubaba_Update(Actor* thisx, PlayState* play);
void EnDekubaba_Draw(Actor* thisx, PlayState* play);

void EnDekubaba_SetupWaitPlayerNear(EnDekubaba* this);
void EnDekubaba_WaitPlayerNear(EnDekubaba* this, PlayState* play);
void EnDekubaba_ExitGround(EnDekubaba* this, PlayState* play);
void EnDekubaba_EnterGround(EnDekubaba* this, PlayState* play);
void EnDekubaba_ChompAir(EnDekubaba* this, PlayState* play);
void EnDekubaba_Attack(EnDekubaba* this, PlayState* play);
void EnDekubaba_PrepareAttack(EnDekubaba* this, PlayState* play);
void EnDekubaba_RecoverFromAttackMiss(EnDekubaba* this, PlayState* play);
void EnDekubaba_Soothe(EnDekubaba* this, PlayState* play);
void EnDekubaba_Attacked(EnDekubaba* this, PlayState* play);
void EnDekubaba_Vulnerable(EnDekubaba* this, PlayState* play);
void EnDekubaba_Wobble(EnDekubaba* this, PlayState* play);
void EnDekubaba_DieDropStick(EnDekubaba* this, PlayState* play);
void EnDekubaba_Die(EnDekubaba* this, PlayState* play);
void EnDekubaba_DekuStick(EnDekubaba* this, PlayState* play);

static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

ActorProfile En_Dekubaba_Profile = {
    /**/ ACTOR_EN_DEKUBABA,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_DEKUBABA,
    /**/ sizeof(EnDekubaba),
    /**/ EnDekubaba_Init,
    /**/ EnDekubaba_Destroy,
    /**/ EnDekubaba_Update,
    /**/ EnDekubaba_Draw,
};

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_NONE, 0x08 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_ON | ATELEM_SFX_HARD,
            ACELEM_ON,
            OCELEM_ON,
        },
        { DEKUBABA_HEAD_LIMB_ROOT, { { 0, 100, 1000 }, 15 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 51, { { 0, 0, 1500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 52, { { 0, 0, 500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 53, { { 0, 0, 1500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 54, { { 0, 0, 500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 55, { { 0, 0, 1500 }, 8 }, 100 },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_NONE,
        },
        { 56, { { 0, 0, 500 }, 8 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_HIT6,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit),
    sJntSphElementsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 2, 25, 25, MASS_IMMOVABLE };

typedef enum EnDekubabaDamageReaction {
    EN_DEKUBABA_DMG_REACT_NONE,
    EN_DEKUBABA_DMG_REACT_STUN,
    EN_DEKUBABA_DMG_REACT_FIRE,
    EN_DEKUBABA_DMG_REACT_BOOMERANG = 0xE,
    EN_DEKUBABA_DMG_REACT_SWORD
} EnDekubabaDamageReaction;

static DamageTable sDamageTableNormal = {
    /* Deku nut      */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_STUN),
    /* Deku stick    */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Slingshot     */ DMG_ENTRY(1, EN_DEKUBABA_DMG_REACT_NONE),
    /* Explosive     */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Boomerang     */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_BOOMERANG),
    /* Normal arrow  */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Hookshot      */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Kokiri sword  */ DMG_ENTRY(1, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Master sword  */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Giant's Knife */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Fire arrow    */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_FIRE),
    /* Ice arrow     */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Light arrow   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unk arrow 1   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unk arrow 2   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unk arrow 3   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Fire magic    */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_FIRE),
    /* Ice magic     */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Light magic   */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Shield        */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Giant spin    */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Master spin   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Kokiri jump   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Giant jump    */ DMG_ENTRY(8, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Master jump   */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Unknown 1     */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unblockable   */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
};

static DamageTable sDamageTableBig = {
    /* Deku nut      */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_STUN),
    /* Deku stick    */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Slingshot     */ DMG_ENTRY(1, EN_DEKUBABA_DMG_REACT_NONE),
    /* Explosive     */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Boomerang     */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_BOOMERANG),
    /* Normal arrow  */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Hookshot      */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_STUN),
    /* Kokiri sword  */ DMG_ENTRY(1, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Master sword  */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Giant's Knife */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Fire arrow    */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_FIRE),
    /* Ice arrow     */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Light arrow   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unk arrow 1   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unk arrow 2   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unk arrow 3   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_NONE),
    /* Fire magic    */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_FIRE),
    /* Ice magic     */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Light magic   */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Shield        */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Giant spin    */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Master spin   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Kokiri jump   */ DMG_ENTRY(2, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Giant jump    */ DMG_ENTRY(8, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Master jump   */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_SWORD),
    /* Unknown 1     */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unblockable   */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, EN_DEKUBABA_DMG_REACT_NONE),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(lockOnArrowOffset, 1500, ICHAIN_STOP),
};

void EnDekubaba_Init(Actor* thisx, PlayState* play) {
    s32 i;
    EnDekubaba* this = (EnDekubaba*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 22.0f);
    SkelAnime_Init(play, &this->skelAnime, &gDekubabaHeadSkel, &gDekubabaChompAnim, this->jointTable, this->morphTable,
                   DEKUBABA_HEAD_LIMB_MAX);
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->colliderElements);
    if (this->actor.params == EN_DEKUBABA_TYPE_BIG) {
        this->scaleFac = 2.50f;
        for (i = 0; i < sJntSphInit.count; i++) {
            this->collider.elements[i].dim.worldSphere.radius = this->collider.elements[i].dim.modelSphere.radius =
                sJntSphElementsInit[i].dim.modelSphere.radius * 2.5f;
        }
        if (!LINK_IS_ADULT) {
            sDamageTableBig.table[27] = DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_NONE);
        }
        CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTableBig, &sColChkInfoInit);
        this->actor.colChkInfo.health = 4;
        this->actor.naviEnemyId = NAVI_ENEMY_BIG_DEKU_BABA;
        this->actor.attentionRangeType = ATTENTION_RANGE_2;
    } else { // EN_DEKUBABA_TYPE_NORMAL
        this->scaleFac = 1.0f;
        for (i = 0; i < sJntSphInit.count; i++) {
            this->collider.elements[i].dim.worldSphere.radius = this->collider.elements[i].dim.modelSphere.radius;
        }
        if (!LINK_IS_ADULT) {
            sDamageTableNormal.table[27] = DMG_ENTRY(4, EN_DEKUBABA_DMG_REACT_NONE);
        }
        CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTableNormal, &sColChkInfoInit);
        this->actor.naviEnemyId = NAVI_ENEMY_DEKU_BABA;
        this->actor.attentionRangeType = ATTENTION_RANGE_1;
    }
    EnDekubaba_SetupWaitPlayerNear(this);
    this->actionState = 0;
    this->homePos = this->actor.home.pos;
    this->floorPoly = NULL;
}

void EnDekubaba_Destroy(Actor* thisx, PlayState* play) {
    EnDekubaba* this = (EnDekubaba*)thisx;

    Collider_DestroyJntSph(play, &this->collider);
}

void EnDekubaba_DisableStemColliderAC(EnDekubaba* this) {
    s32 i;

    for (i = 1; i < ARRAY_COUNT(this->colliderElements); i++) {
        this->collider.elements[i].base.acElemFlags &= ~ACELEM_ON;
    }
}

void EnDekubaba_SetupWaitPlayerNear(EnDekubaba* this) {
    ColliderJntSphElement* elem;
    s32 i;

    this->stemPartsRot[0] = this->stemPartsRot[1] = this->stemPartsRot[2] = this->actor.shape.rot.x = -0x4000;
    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actor.world.pos.y = this->actor.home.pos.y + (14.0f * this->scaleFac);
    Actor_SetScale(&this->actor, this->scaleFac * 0.01f * 0.5f);
    this->collider.base.colMaterial = COL_MATERIAL_HARD;
    this->collider.base.acFlags |= AC_HARD;
    this->actionState = 45;
    for (i = 1; i < ARRAY_COUNT(this->colliderElements); i++) {
        elem = &this->collider.elements[i];
        elem->dim.worldSphere.center.x = this->actor.world.pos.x;
        elem->dim.worldSphere.center.y = (s16)this->actor.world.pos.y - 7;
        elem->dim.worldSphere.center.z = this->actor.world.pos.z;
    }
    this->actionFunc = EnDekubaba_WaitPlayerNear;
}

void EnDekubaba_SetupExitGround(EnDekubaba* this) {
    s32 i;

    Animation_Change(&this->skelAnime, &gDekubabaChompAnim, Animation_GetLastFrame(&gDekubabaChompAnim) * (1.0f / 15),
                     0.0f, Animation_GetLastFrame(&gDekubabaChompAnim), ANIMMODE_ONCE, 0.0f);
    this->actionState = 15;
    for (i = 2; i < ARRAY_COUNT(this->colliderElements); i++) {
        this->collider.elements[i].base.ocElemFlags |= OCELEM_ON;
    }
    this->collider.base.colMaterial = COL_MATERIAL_HIT6;
    this->collider.base.acFlags &= ~AC_HARD;
    Actor_PlaySfx(&this->actor, NA_SE_EN_DUMMY482);
    this->actionFunc = EnDekubaba_ExitGround;
}

void EnDekubaba_SetupEnterGround(EnDekubaba* this) {
    s32 i;

    Animation_Change(&this->skelAnime, &gDekubabaChompAnim, -1.5f, Animation_GetLastFrame(&gDekubabaChompAnim), 0.0f,
                     ANIMMODE_ONCE, -3.0f);
    this->actionState = 15;
    for (i = 2; i < ARRAY_COUNT(this->colliderElements); i++) {
        this->collider.elements[i].base.ocElemFlags &= ~OCELEM_ON;
    }
    this->actionFunc = EnDekubaba_EnterGround;
}

void EnDekubaba_SetupChompAir(EnDekubaba* this) {
    this->actionState = Animation_GetLastFrame(&gDekubabaChompAnim) * 2;
    Animation_MorphToLoop(&this->skelAnime, &gDekubabaChompAnim, -3.0f);
    this->actionFunc = EnDekubaba_ChompAir;
}

void EnDekubaba_SetupPrepareAttack(EnDekubaba* this) {
    this->actionState = 8;
    this->actionFunc = EnDekubaba_PrepareAttack;
    this->skelAnime.playSpeed = 0.0f;
}

void EnDekubaba_SetupAttack(EnDekubaba* this) {
    Animation_PlayOnce(&this->skelAnime, &gDekubabaIdleAnim);
    this->actionState = 0;
    this->actionFunc = EnDekubaba_Attack;
}

void EnDekubaba_SetupRecoverFromAttackMiss(EnDekubaba* this) {
    Animation_Change(&this->skelAnime, &gDekubabaIdleAnim, 1.0f, 15.0f, Animation_GetLastFrame(&gDekubabaIdleAnim),
                     ANIMMODE_ONCE, -3.0f);
    this->actionState = 0;
    this->actionFunc = EnDekubaba_RecoverFromAttackMiss;
}

void EnDekubaba_SetupSoothe(EnDekubaba* this) {
    this->actionState = 9;
    this->collider.base.acFlags |= AC_ON;
    this->actionFunc = EnDekubaba_Soothe;
    this->skelAnime.playSpeed = -1.0f;
}

typedef enum EnDekubabaAttackedType {
    EN_DEKUBABA_ATTACKED_TYPE_STRENGTHENED,
    EN_DEKUBABA_ATTACKED_TYPE_WEAKENED,
    EN_DEKUBABA_ATTACKED_TYPE_STUNNED
} EnDekubabaAttackedType;

void EnDekubaba_SetupAttacked(EnDekubaba* this, s32 type) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gDekubabaIdleAnim, -5.0f);
    this->actionState = type;
    this->collider.base.acFlags &= ~AC_ON;
    Actor_SetScale(&this->actor, this->scaleFac * 0.01f);
    if (type == EN_DEKUBABA_ATTACKED_TYPE_STUNNED) {
        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 155, COLORFILTER_BUFFLAG_OPA, 62);
    } else {
        Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 42);
    }
    this->actionFunc = EnDekubaba_Attacked;
}

void EnDekubaba_SetupDieDropStick(EnDekubaba* this) {
    this->actionState = 0;
    this->skelAnime.playSpeed = 0.0f;
    this->actor.gravity = -0.8f;
    this->actor.velocity.y = 4.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y + 0x8000;
    this->actor.speed = this->scaleFac * 3.0f;
    this->collider.base.acFlags &= ~AC_ON;
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED;
    this->actionFunc = EnDekubaba_DieDropStick;
}

void EnDekubaba_SetupDie(EnDekubaba* this) {
    Animation_Change(&this->skelAnime, &gDekubabaChompAnim, -1.5f, Animation_GetLastFrame(&gDekubabaChompAnim), 0.0f,
                     ANIMMODE_ONCE, -3.0f);
    this->collider.base.acFlags &= ~AC_ON;
    this->actionFunc = EnDekubaba_Die;
}

void EnDekubaba_SetupVulnerable(EnDekubaba* this) {
    s32 i;

    for (i = 1; i < ARRAY_COUNT(this->colliderElements); i++) {
        this->collider.elements[i].base.acElemFlags |= ACELEM_ON;
    }
    if (this->actionState == EN_DEKUBABA_ATTACKED_TYPE_WEAKENED) {
        Animation_Change(&this->skelAnime, &gDekubabaChompAnim, 4.0f, 0.0f, Animation_GetLastFrame(&gDekubabaChompAnim),
                         ANIMMODE_LOOP, -3.0f);
        this->actionState = 40;
    } else { // EN_DEKUBABA_ATTACKED_TYPE_STUNNED
        Animation_Change(&this->skelAnime, &gDekubabaChompAnim, 0.0f, 0.0f, Animation_GetLastFrame(&gDekubabaChompAnim),
                         ANIMMODE_LOOP, -3.0f);
        this->actionState = 60;
    }
    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.y = this->actor.home.pos.y + (60.0f * this->scaleFac);
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actionFunc = EnDekubaba_Vulnerable;
}

void EnDekubaba_SetupWobble(EnDekubaba* this) {
    this->wobbleTarget = -0x6000;
    this->stemPartsRot[2] = -0x5000;
    this->stemPartsRot[1] = -0x4800;
    EnDekubaba_DisableStemColliderAC(this);
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 255, COLORFILTER_BUFFLAG_OPA, 35);
    this->collider.base.acFlags &= ~AC_ON;
    this->actionFunc = EnDekubaba_Wobble;
}

void EnDekubaba_SetupDekuStick(EnDekubaba* this, PlayState* play) {
    Actor_SetScale(&this->actor, 0.03f);
    this->actor.shape.rot.x -= 0x4000;
    this->actor.shape.yOffset = 1000.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.shape.shadowScale = 3.0f;
    Actor_ChangeCategory(play, &play->actorCtx, &this->actor, ACTORCAT_MISC);
    this->actor.flags &= ~ACTOR_FLAG_DRAW_CULLING_DISABLED;
    this->actionState = 200;
    this->actionFunc = EnDekubaba_DekuStick;
}

void EnDekubaba_WaitPlayerNear(EnDekubaba* this, PlayState* play) {
    if (this->actionState != 0) {
        this->actionState--;
    }
    this->actor.world.pos.x = this->actor.home.pos.x;
    this->actor.world.pos.z = this->actor.home.pos.z;
    this->actor.world.pos.y = this->actor.home.pos.y + (14.0f * this->scaleFac);
    if ((this->actionState == 0) && (this->actor.xzDistToPlayer < (200.0f * this->scaleFac)) &&
        (fabsf(this->actor.yDistToPlayer) < (30.0f * this->scaleFac))) {
        EnDekubaba_SetupExitGround(this);
    }
}

void EnDekubaba_ExitGround(EnDekubaba* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 dxz;
    f32 dy;
    f32 dx;
    f32 dz;

    if (this->actionState != 0) {
        this->actionState--;
    }
    SkelAnime_Update(&this->skelAnime);

    this->actor.scale.x = this->actor.scale.y = this->actor.scale.z =
        this->scaleFac * 0.01f * (0.5f + (((15 - this->actionState) * 0.5f) / 15.0f));
    Math_ScaledStepToS(&this->actor.shape.rot.x, 0x1800, 0x800);

    dy = (sinf(CLAMP_MAX(((15 - this->actionState)) * (1.0f / 15), 0.7f) * M_PI) * 32.0f) + 14.0f;

    if (this->actor.shape.rot.x < -0x38E3) {
        dxz = 0.0f;
    } else if (this->actor.shape.rot.x < -0x238E) {
        Math_ScaledStepToS(&this->stemPartsRot[0], -0x5555, 0x38E);
        dxz = 20.0f * Math_CosS(this->stemPartsRot[0]);
    } else if (this->actor.shape.rot.x < -0xE38) {
        Math_ScaledStepToS(&this->stemPartsRot[0], -0xAAA, 0x38E);
        Math_ScaledStepToS(&this->stemPartsRot[1], -0x5555, 0x38E);
        Math_ScaledStepToS(&this->stemPartsRot[2], -0x5555, 0x222);
        dxz = (20.0f * (Math_CosS(this->stemPartsRot[0]) + Math_CosS(this->stemPartsRot[1]))) +
              (((dy - (20.0f * (-Math_SinS(this->stemPartsRot[0]) - Math_SinS(this->stemPartsRot[1])))) *
                Math_CosS(this->stemPartsRot[2])) /
               -Math_SinS(this->stemPartsRot[2]));
    } else {
        Math_ScaledStepToS(&this->stemPartsRot[0], -0xAAA, 0x38E);
        Math_ScaledStepToS(&this->stemPartsRot[1], -0x31C7, 0x222);
        Math_ScaledStepToS(&this->stemPartsRot[2], -0x5555, 0x222);
        dxz = (20.0f * (Math_CosS(this->stemPartsRot[0]) + Math_CosS(this->stemPartsRot[1]))) +
              (((dy - (20.0f * (-Math_SinS(this->stemPartsRot[0]) - Math_SinS(this->stemPartsRot[1])))) *
                Math_CosS(this->stemPartsRot[2])) /
               -Math_SinS(this->stemPartsRot[2]));
    }

    if (this->actionState < 10) {
        Math_ApproachS(&this->actor.shape.rot.y, Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos), 2,
                       0xE38);
    }

    this->actor.world.pos.y = this->actor.home.pos.y + (dy * this->scaleFac);
    dx = dxz * this->scaleFac * Math_SinS(this->actor.shape.rot.y);
    dz = dxz;
    dz = dz * this->scaleFac * Math_CosS(this->actor.shape.rot.y);
    this->actor.world.pos.x = this->actor.home.pos.x + dx;
    this->actor.world.pos.z = this->actor.home.pos.z + dz;
    EffectSsHahen_SpawnBurst(play, &this->actor.home.pos, this->scaleFac * 3.0f, 0, this->scaleFac * 12.0f,
                             this->scaleFac * 5.0f, 1, -1, 10, NULL);
    if (this->actionState == 0) {
        if (Math_Vec3f_DistXZ(&this->actor.home.pos, &player->actor.world.pos) < (240.0f * this->scaleFac)) {
            EnDekubaba_SetupPrepareAttack(this);
        } else {
            EnDekubaba_SetupEnterGround(this);
        }
    }
}

void EnDekubaba_EnterGround(EnDekubaba* this, PlayState* play) {
    f32 dxz;
    f32 dy;
    f32 dx;
    f32 dz;

    if (this->actionState != 0) {
        this->actionState--;
    }
    SkelAnime_Update(&this->skelAnime);
    this->actor.scale.x = this->actor.scale.y = this->actor.scale.z =
        this->scaleFac * 0.01f * (0.5f + (this->actionState * (1.0f / 30)));
    Math_ScaledStepToS(&this->actor.shape.rot.x, -0x4000, 0x300);
    dy = (sinf(CLAMP_MAX(this->actionState * 0.033f, 0.7f) * M_PI) * 32.0f) + 14.0f;
    if (this->actor.shape.rot.x < -0x38E3) {
        dxz = 0.0f;
    } else if (this->actor.shape.rot.x < -0x238E) {
        Math_ScaledStepToS(&this->stemPartsRot[0], -0x4000, 0x555);
        dxz = Math_CosS(this->stemPartsRot[0]) * 20.0f;
    } else if (this->actor.shape.rot.x < -0xE38) {
        Math_ScaledStepToS(&this->stemPartsRot[0], -0x5555, 0x555);
        Math_ScaledStepToS(&this->stemPartsRot[1], -0x4000, 0x555);
        Math_ScaledStepToS(&this->stemPartsRot[2], -0x4000, 0x333);
        dxz = (20.0f * (Math_CosS(this->stemPartsRot[0]) + Math_CosS(this->stemPartsRot[1]))) +
              (((dy - (20.0f * (-Math_SinS(this->stemPartsRot[0]) - Math_SinS(this->stemPartsRot[1])))) *
                Math_CosS(this->stemPartsRot[2])) /
               -Math_SinS(this->stemPartsRot[2]));
    } else {
        Math_ScaledStepToS(&this->stemPartsRot[0], -0x5555, 0x555);
        Math_ScaledStepToS(&this->stemPartsRot[1], -0x5555, 0x333);
        Math_ScaledStepToS(&this->stemPartsRot[2], -0x4000, 0x333);
        dxz = (20.0f * (Math_CosS(this->stemPartsRot[0]) + Math_CosS(this->stemPartsRot[1]))) +
              (((dy - (20.0f * (-Math_SinS(this->stemPartsRot[0]) - Math_SinS(this->stemPartsRot[1])))) *
                Math_CosS(this->stemPartsRot[2])) /
               -Math_SinS(this->stemPartsRot[2]));
    }
    this->actor.world.pos.y = this->actor.home.pos.y + (dy * this->scaleFac);
    dx = dxz * this->scaleFac * Math_SinS(this->actor.shape.rot.y);
    dz = dxz * this->scaleFac * Math_CosS(this->actor.shape.rot.y);
    this->actor.world.pos.x = this->actor.home.pos.x + dx;
    this->actor.world.pos.z = this->actor.home.pos.z + dz;
    EffectSsHahen_SpawnBurst(play, &this->actor.home.pos, this->scaleFac * 3.0f, 0, this->scaleFac * 12.0f,
                             this->scaleFac * 5.0f, 1, -1, 10, NULL);
    if (this->actionState == 0) {
        EnDekubaba_SetupWaitPlayerNear(this);
    }
}

void EnDekubaba_ComputeHeadPos(EnDekubaba* this) {
    f32 dxz;

    dxz = (Math_CosS(this->stemPartsRot[0]) + Math_CosS(this->stemPartsRot[1]) + Math_CosS(this->stemPartsRot[2])) *
          20.0f;
    this->actor.world.pos.x = this->actor.home.pos.x + (dxz * this->scaleFac * Math_SinS(this->actor.shape.rot.y));
    this->actor.world.pos.y =
        this->actor.home.pos.y -
        ((Math_SinS(this->stemPartsRot[0]) + Math_SinS(this->stemPartsRot[1]) + Math_SinS(this->stemPartsRot[2])) *
         20.0f * this->scaleFac);
    this->actor.world.pos.z = this->actor.home.pos.z + (dxz * this->scaleFac * Math_CosS(this->actor.shape.rot.y));
}

void EnDekubaba_ChompAir(EnDekubaba* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f) || Animation_OnFrame(&this->skelAnime, 12.0f)) {
        if (this->actor.params == EN_DEKUBABA_TYPE_BIG) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_MOUTH);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_JR_MOUTH);
        }
    }
    if (this->actionState != 0) {
        this->actionState--;
    }
    Math_ApproachS(&this->actor.shape.rot.y, Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos), 2,
                   (this->actionState % 5) * 0x222);
    if (this->actionState < 10) {
        this->stemPartsRot[0] += 0x16C;
        this->stemPartsRot[1] += 0x16C;
        this->stemPartsRot[2] += 0xB6;
        this->actor.shape.rot.x += 0x222;
    } else if (this->actionState < 20) {
        this->stemPartsRot[0] -= 0x16C;
        this->stemPartsRot[1] += 0x111;
        this->actor.shape.rot.x += 0x16C;
    } else if (this->actionState < 30) {
        this->stemPartsRot[1] -= 0x111;
        this->actor.shape.rot.x -= 0xB6;
    } else {
        this->stemPartsRot[1] -= 0xB6;
        this->stemPartsRot[2] += 0xB6;
        this->actor.shape.rot.x -= 0x16C;
    }
    EnDekubaba_ComputeHeadPos(this);
    if (Math_Vec3f_DistXZ(&this->actor.home.pos, &player->actor.world.pos) > (240.0f * this->scaleFac)) {
        EnDekubaba_SetupEnterGround(this);
    } else if ((this->actionState == 0) || (this->actor.xzDistToPlayer < (80.0f * this->scaleFac))) {
        EnDekubaba_SetupPrepareAttack(this);
    }
}

void EnDekubaba_Attack(EnDekubaba* this, PlayState* play) {
    static Color_RGBA8 sEffPrimColor = { 105, 255, 105, 255 };
    static Color_RGBA8 sEffEnvColor = { 150, 250, 150, 0 };
    s32 lyingDown;
    s16 stepBase;
    Vec3f effVel;

    SkelAnime_Update(&this->skelAnime);
    if (this->actionState == 0) {
        if (Animation_OnFrame(&this->skelAnime, 1.0f)) {
            if (this->actor.params == EN_DEKUBABA_TYPE_BIG) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_ATTACK);
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_JR_ATTACK);
            }
        }
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0, 0x222);
        stepBase = this->skelAnime.curFrame * 10.0f;
        lyingDown = true;
        lyingDown &= Math_ScaledStepToS(&this->stemPartsRot[0], -0xE38, stepBase + 0x38E);
        lyingDown &= Math_ScaledStepToS(&this->stemPartsRot[1], -0xE38, stepBase + 0x71C);
        lyingDown &= Math_ScaledStepToS(&this->stemPartsRot[2], -0xE38, stepBase + 0xE38);
        if (lyingDown) {
            Animation_PlayLoopSetSpeed(&this->skelAnime, &gDekubabaChompAnim, 4.0f);
            effVel.x = Math_SinS(this->actor.shape.rot.y) * 5.0f;
            effVel.y = 0.0f;
            effVel.z = Math_CosS(this->actor.shape.rot.y) * 5.0f;
            func_8002829C(play, &this->actor.world.pos, &effVel, &sZeroVec, &sEffPrimColor, &sEffEnvColor, 1,
                          this->scaleFac * 100.0f);
            this->actionState = 1;
            this->collider.base.acFlags |= AC_ON;
        }
    } else if (this->actionState > 10) {
        EnDekubaba_SetupRecoverFromAttackMiss(this);
    } else {
        this->actionState++;
        if ((this->actionState >= 4) && !Actor_IsFacingPlayer(&this->actor, 0x16C)) {
            Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 15, 0x71C);
        }
        if (Animation_OnFrame(&this->skelAnime, 0.0f) || Animation_OnFrame(&this->skelAnime, 12.0f)) {
            if (this->actor.params == EN_DEKUBABA_TYPE_BIG) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_MOUTH);
            } else {
                Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_JR_MOUTH);
            }
        }
    }
    EnDekubaba_ComputeHeadPos(this);
}

void EnDekubaba_PrepareAttack(EnDekubaba* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->actionState != 0) {
        this->actionState--;
    }
    Math_SmoothStepToS(&this->actor.shape.rot.x, 0x1800, 2, 0xE38, 0x71C);
    Math_ApproachS(&this->actor.shape.rot.y, Math_Vec3f_Yaw(&this->actor.home.pos, &player->actor.world.pos), 2, 0xE38);
    Math_ScaledStepToS(&this->stemPartsRot[0], 0xAAA, 0x444);
    Math_ScaledStepToS(&this->stemPartsRot[1], -0x4718, 0x888);
    Math_ScaledStepToS(&this->stemPartsRot[2], -0x6AA4, 0x888);
    if (this->actionState == 0) {
        EnDekubaba_SetupAttack(this);
    }
    EnDekubaba_ComputeHeadPos(this);
}

void EnDekubaba_RecoverFromAttackMiss(EnDekubaba* this, PlayState* play) {
    Vec3f effPos;
    f32 dx;
    f32 dz;
    s32 i;

    SkelAnime_Update(&this->skelAnime);
    if (this->actionState == 0) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x93E, 0x38E);
        Math_ScaledStepToS(&this->stemPartsRot[0], -0x888, 0x16C);
        Math_ScaledStepToS(&this->stemPartsRot[1], -0x888, 0x16C);
        if (Math_ScaledStepToS(&this->stemPartsRot[2], -0x888, 0x16C) != 0) {
            dx = Math_SinS(this->actor.shape.rot.y) * 30.0f * this->scaleFac;
            dz = Math_CosS(this->actor.shape.rot.y) * 30.0f * this->scaleFac;
            effPos = this->actor.home.pos;
            for (i = 0; i < 3; i++) {
                func_800286CC(play, &effPos, &sZeroVec, &sZeroVec, this->scaleFac * 500.0f, this->scaleFac * 50.0f);
                effPos.x += dx;
                effPos.z += dz;
            }
            this->actionState = 1;
        }
    } else if (this->actionState == 11) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x93E, 0x200);
        Math_ScaledStepToS(&this->stemPartsRot[0], -0xAAA, 0x200);
        Math_ScaledStepToS(&this->stemPartsRot[2], -0x5C71, 0x200);
        if (Math_ScaledStepToS(&this->stemPartsRot[1], 0x238C, 0x200)) {
            this->actionState = 12;
        }
    } else if (this->actionState == 18) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x2AA8, 0xAAA);
        if (Math_ScaledStepToS(&this->stemPartsRot[0], 0x1554, 0x5B0)) {
            this->actionState = 25;
        }
        Math_ScaledStepToS(&this->stemPartsRot[1], -0x38E3, 0xAAA);
        Math_ScaledStepToS(&this->stemPartsRot[2], -0x5C71, 0x2D8);
    } else if (this->actionState == 25) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, -0x5550, 0xAAA);
        if (Math_ScaledStepToS(&this->stemPartsRot[0], -0x6388, 0x93E)) {
            this->actionState = 26;
        }
        Math_ScaledStepToS(&this->stemPartsRot[1], -0x3FFC, 0x4FA);
        Math_ScaledStepToS(&this->stemPartsRot[2], -0x238C, 0x444);
    } else if (this->actionState == 26) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x1800, 0x93E);
        if (Math_ScaledStepToS(&this->stemPartsRot[0], -0x1555, 0x71C)) {
            this->actionState = 27;
        }
        Math_ScaledStepToS(&this->stemPartsRot[1], -0x38E3, 0x2D8);
        Math_ScaledStepToS(&this->stemPartsRot[2], -0x5C71, 0x5B0);
    } else if (this->actionState >= 27) {
        this->actionState++;
        if (this->actionState > 30) {
            if (this->actor.xzDistToPlayer < (80.0f * this->scaleFac)) {
                EnDekubaba_SetupPrepareAttack(this);
            } else {
                EnDekubaba_SetupChompAir(this);
            }
        }
    } else {
        this->actionState++;
        if (this->actionState == 10) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_SCRAPE);
        }
        if (this->actionState >= 12) {
            Math_ScaledStepToS(&this->stemPartsRot[2], -0x5C71, 0x88);
        }
    }
    EnDekubaba_ComputeHeadPos(this);
}

void EnDekubaba_Soothe(EnDekubaba* this, PlayState* play) {
    s32 remains;

    SkelAnime_Update(&this->skelAnime);
    if (this->actionState >= 9) {
        remains = 0;
        remains |= Math_SmoothStepToS(&this->actor.shape.rot.x, 0x1800, 1, 0x11C6, 0x71C);
        remains |= Math_SmoothStepToS(&this->stemPartsRot[0], -0x1555, 1, 0xAAA, 0x71C);
        remains |= Math_SmoothStepToS(&this->stemPartsRot[1], -0x38E3, 1, 0xE38, 0x71C);
        remains |= Math_SmoothStepToS(&this->stemPartsRot[2], -0x5C71, 1, 0x11C6, 0x71C);
        if (remains == 0) {
            this->actionState = 8;
        }
    } else {
        if (this->actionState != 0) {
            this->actionState--;
        }
        if (this->actionState == 0) {
            EnDekubaba_SetupChompAir(this);
        }
    }
    EnDekubaba_ComputeHeadPos(this);
}

void EnDekubaba_Attacked(EnDekubaba* this, PlayState* play) {
    s32 isUpright;

    SkelAnime_Update(&this->skelAnime);
    isUpright = true;
    isUpright &= Math_ScaledStepToS(&this->actor.shape.rot.x, -0x4000, 0xE38);
    isUpright &= Math_ScaledStepToS(&this->stemPartsRot[0], -0x4000, 0xE38);
    isUpright &= Math_ScaledStepToS(&this->stemPartsRot[1], -0x4000, 0xE38);
    isUpright &= Math_ScaledStepToS(&this->stemPartsRot[2], -0x4000, 0xE38);
    if (isUpright) {
        if (this->actor.colChkInfo.health == 0) {
            EnDekubaba_SetupDie(this);
        } else {
            this->collider.base.acFlags |= AC_ON;
            if (this->actionState == EN_DEKUBABA_ATTACKED_TYPE_STRENGTHENED) {
                if (this->actor.xzDistToPlayer < (80.0f * this->scaleFac)) {
                    EnDekubaba_SetupPrepareAttack(this);
                } else {
                    EnDekubaba_SetupSoothe(this);
                }
            } else {
                EnDekubaba_SetupVulnerable(this);
            }
        }
    }
    EnDekubaba_ComputeHeadPos(this);
}

void EnDekubaba_Vulnerable(EnDekubaba* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->actionState != 0) {
        this->actionState--;
    }
    if (this->actionState == 0) {
        EnDekubaba_DisableStemColliderAC(this);
        if (this->actor.xzDistToPlayer < (80.0f * this->scaleFac)) {
            EnDekubaba_SetupPrepareAttack(this);
        } else {
            EnDekubaba_SetupSoothe(this);
        }
    }
}

void EnDekubaba_Wobble(EnDekubaba* this, PlayState* play) {
    s16 temp_v0;

    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.shape.rot.x, this->stemPartsRot[0], 0x71C);
    Math_ScaledStepToS(&this->stemPartsRot[0], this->stemPartsRot[1], 0x71C);
    Math_ScaledStepToS(&this->stemPartsRot[1], this->stemPartsRot[2], 0x71C);
    if (Math_ScaledStepToS(&this->stemPartsRot[2], this->wobbleTarget, 0x71C)) {
        this->wobbleTarget = (s16)(s32)(-16384.0f - ((this->wobbleTarget + 0x4000) * 0.8f));
    }
    temp_v0 = this->wobbleTarget + 0x4000;
    if (ABS(temp_v0) < 0x100) {
        this->collider.base.acFlags |= AC_ON;
        if (this->actor.xzDistToPlayer < (80.0f * this->scaleFac)) {
            EnDekubaba_SetupPrepareAttack(this);
        } else {
            EnDekubaba_SetupSoothe(this);
        }
    }
    EnDekubaba_ComputeHeadPos(this);
}

void EnDekubaba_DieDropStick(EnDekubaba* this, PlayState* play) {
    s32 i;
    Vec3f effPos;
    f32 dx;
    f32 dz;
    f32 dy;

    Math_StepToF(&this->actor.speed, 0.0f, this->scaleFac * 0.1f);
    if (this->actionState == 0) {
        Math_ScaledStepToS(&this->actor.shape.rot.x, 0x4800, 0x71C);
        Math_ScaledStepToS(&this->stemPartsRot[0], 0x4800, 0x71C);
        Math_ScaledStepToS(&this->stemPartsRot[1], 0x4800, 0x71C);
        EffectSsHahen_SpawnBurst(play, &this->actor.world.pos, this->scaleFac * 3.0f, 0, this->scaleFac * 12.0f,
                                 this->scaleFac * 5.0f, 1, -1, 10, NULL);
        if ((this->actor.scale.x > 0.005f) &&
            ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) || (this->actor.bgCheckFlags & BGCHECKFLAG_WALL))) {
            this->actor.scale.x = this->actor.scale.y = this->actor.scale.z = 0.0f;
            this->actor.speed = 0.0f;
            this->actor.flags &= ~(ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE);
            EffectSsHahen_SpawnBurst(play, &this->actor.world.pos, this->scaleFac * 3.0f, 0, this->scaleFac * 12.0f,
                                     this->scaleFac * 5.0f, 15, -1, 10, NULL);
        }
        if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
            this->actionState = 1;
        }
    } else if (this->actionState == 1) {
        effPos = this->actor.world.pos;
        dy = Math_SinS(this->actor.shape.rot.x) * 20.0f;
        dx = -20.0f * Math_CosS(this->actor.shape.rot.x) * Math_SinS(this->actor.shape.rot.y);
        dz = -20.0f * Math_CosS(this->actor.shape.rot.x) * Math_CosS(this->actor.shape.rot.y);
        for (i = 0; i < 4; i++) {
            func_800286CC(play, &effPos, &sZeroVec, &sZeroVec, 500, 50);
            effPos.x += dx;
            effPos.y += dy;
            effPos.z += dz;
        }
        func_800286CC(play, &this->actor.home.pos, &sZeroVec, &sZeroVec, this->scaleFac * 500.0f,
                      this->scaleFac * 100.0f);
        EnDekubaba_SetupDekuStick(this, play);
    }
}

void EnDekubaba_Die(EnDekubaba* this, PlayState* play) {
    Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y, this->scaleFac * 5.0f);
    if (Math_StepToF(&this->actor.scale.x, this->scaleFac * 0.1f * 0.01f, this->scaleFac * 0.1f * 0.01f)) {
        func_800286CC(play, &this->actor.home.pos, &sZeroVec, &sZeroVec, this->scaleFac * 500.0f,
                      this->scaleFac * 100.0f);
        if (this->actor.dropFlag == 0) {
            Item_DropCollectible(play, &this->actor.world.pos, ITEM00_NUTS);
            if (this->actor.params == EN_DEKUBABA_TYPE_BIG) {
                Item_DropCollectible(play, &this->actor.world.pos, ITEM00_NUTS);
                Item_DropCollectible(play, &this->actor.world.pos, ITEM00_NUTS);
            }
        } else {
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                       COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_3, false));
        }
        Actor_Kill(&this->actor);
    }
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    this->actor.shape.rot.z += 0x1C70;
    EffectSsHahen_SpawnBurst(play, &this->actor.home.pos, this->scaleFac * 3.0f, 0, this->scaleFac * 12.0f,
                             this->scaleFac * 5.0f, 1, -1, 10, NULL);
}

void EnDekubaba_DekuStick(EnDekubaba* this, PlayState* play) {
    if (this->actionState != 0) {
        this->actionState--;
    }
    if (Actor_HasParent(&this->actor, play) || (this->actionState == 0)) {
        Actor_Kill(&this->actor);
    } else {
        Actor_OfferGetItemNearby(&this->actor, play, GI_DEKU_STICKS_1);
    }
}

void EnDekubaba_CheckCollide(EnDekubaba* this, PlayState* play) {
    f32 scale;
    s32 newHealth;
    s32 i;

    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlagJntSph(&this->actor, &this->collider, true);
        if ((this->collider.base.colMaterial != COL_MATERIAL_HARD) &&
            (((this->actor.colChkInfo.damageReaction != EN_DEKUBABA_DMG_REACT_NONE)) ||
             (this->actor.colChkInfo.damage != 0))) {
            newHealth = this->actor.colChkInfo.health - this->actor.colChkInfo.damage;
            if (this->actionFunc != EnDekubaba_Vulnerable) {
                if ((this->actor.colChkInfo.damageReaction == EN_DEKUBABA_DMG_REACT_BOOMERANG) ||
                    (this->actor.colChkInfo.damageReaction == EN_DEKUBABA_DMG_REACT_STUN)) {
                    if (this->actor.colChkInfo.damageReaction == EN_DEKUBABA_DMG_REACT_BOOMERANG) {
                        newHealth = this->actor.colChkInfo.health;
                    }
                    EnDekubaba_SetupAttacked(this, EN_DEKUBABA_ATTACKED_TYPE_STUNNED);
                } else if (this->actionFunc == EnDekubaba_RecoverFromAttackMiss) {
                    if (newHealth <= 0) {
                        newHealth = 1;
                    }
                    EnDekubaba_SetupAttacked(this, EN_DEKUBABA_ATTACKED_TYPE_WEAKENED);
                } else {
                    EnDekubaba_SetupAttacked(this, EN_DEKUBABA_ATTACKED_TYPE_STRENGTHENED);
                }
            } else if ((this->actor.colChkInfo.damageReaction == EN_DEKUBABA_DMG_REACT_BOOMERANG) ||
                       (this->actor.colChkInfo.damageReaction == EN_DEKUBABA_DMG_REACT_SWORD)) {
                if (newHealth > 0) {
                    EnDekubaba_SetupWobble(this);
                } else {
                    EnDekubaba_SetupDieDropStick(this);
                }
            } else if (this->actor.colChkInfo.damageReaction != EN_DEKUBABA_DMG_REACT_STUN) {
                EnDekubaba_SetupAttacked(this, EN_DEKUBABA_ATTACKED_TYPE_STRENGTHENED);
            } else {
                return;
            }
            if (newHealth < 0) {
                this->actor.colChkInfo.health = 0;
            } else {
                this->actor.colChkInfo.health = newHealth;
            }
            if (this->actor.colChkInfo.damageReaction == EN_DEKUBABA_DMG_REACT_FIRE) {
                scale = this->scaleFac * 70.0f;
                for (i = 0; i < 4; i++) {
                    EffectSsEnFire_SpawnVec3f(play, &this->actor, &this->actor.world.pos, scale, 0, 0, i);
                }
            }
        } else {
            return;
        }
    } else if ((play->actorCtx.unk_02 != 0) && (this->collider.base.colMaterial != COL_MATERIAL_HARD) &&
               (this->actionFunc != EnDekubaba_Vulnerable) && (this->actionFunc != EnDekubaba_Attacked) &&
               (this->actor.colChkInfo.health != 0)) {
        this->actor.colChkInfo.health--;
        this->actor.dropFlag = 0;
        EnDekubaba_SetupAttacked(this, EN_DEKUBABA_ATTACKED_TYPE_WEAKENED);
    } else {
        return;
    }
    if (this->actor.colChkInfo.health != 0) {
        if (this->actionState == 2) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_DAMAGE);
        }
    } else {
        Enemy_StartFinishingBlow(play, &this->actor);
        if (this->actor.params == EN_DEKUBABA_TYPE_BIG) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_DEAD);
        } else {
            Actor_PlaySfx(&this->actor, NA_SE_EN_DEKU_JR_DEAD);
        }
    }
}

void EnDekubaba_Update(Actor* thisx, PlayState* play) {
    EnDekubaba* this = (EnDekubaba*)thisx;
    s32 pad;

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        EnDekubaba_SetupSoothe(this);
    }
    EnDekubaba_CheckCollide(this, play);
    this->actionFunc(this, play);
    if (this->actionFunc == EnDekubaba_DieDropStick) {
        Actor_MoveXZGravity(&this->actor);
        Actor_UpdateBgCheckInfo(play, &this->actor, 10.0f, this->scaleFac * 15.0f, 10.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    } else if (this->actionFunc != EnDekubaba_DekuStick) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
        if (this->floorPoly == NULL) {
            this->floorPoly = this->actor.floorPoly;
        }
    }
    if (this->actionFunc == EnDekubaba_Attack) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        this->actor.flags |= ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;
    }
    if (this->collider.base.acFlags & AC_ON) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
    if (this->actionFunc != EnDekubaba_DekuStick) {
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

void EnDekubaba_DrawStem0(EnDekubaba* this, PlayState* play) {
    f32 scale;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2445);
    scale = this->scaleFac * 0.01f;
    Matrix_Translate(this->actor.home.pos.x, this->actor.home.pos.y + (-6.0f * this->scaleFac), this->actor.home.pos.z,
                     MTXMODE_NEW);
    Matrix_RotateZYX(this->stemPartsRot[0], this->actor.shape.rot.y, 0, MTXMODE_APPLY);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2461);
    gSPDisplayList(POLY_OPA_DISP++, gDekubabaStem0DL);
    Actor_SetFocus(&this->actor, 0.0f);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2468);
}

void EnDekubaba_DrawStem(EnDekubaba* this, PlayState* play) {
    static Gfx* sStemDLists[] = {
        gDekubabaStem0DL,
        gDekubabaStem1DL,
        gDekubabaStem2DL,
    };
    MtxF mf;
    f32 scale;
    f32 dxz;
    f32 spA4;
    s32 i;
    s32 nStemParts;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2487);
    if (this->actionFunc == EnDekubaba_DieDropStick) {
        nStemParts = 2;
    } else {
        nStemParts = 3;
    }
    scale = this->scaleFac * 0.01f;
    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
    Matrix_Get(&mf);
    if (this->actor.colorFilterTimer != 0) {
        spA4 = this->scaleFac * 20.0f;
        this->unk_164.x = this->actor.world.pos.x;
        this->unk_164.y = this->actor.world.pos.y - spA4;
        this->unk_164.z = this->actor.world.pos.z;
    }
    for (i = 0; i < nStemParts; i++) {
        mf.yw += 20.0f * Math_SinS(this->stemPartsRot[i]) * this->scaleFac;
        dxz = Math_CosS(this->stemPartsRot[i]) * 20.0f * this->scaleFac;
        mf.xw -= dxz * Math_SinS(this->actor.shape.rot.y);
        mf.zw -= dxz * Math_CosS(this->actor.shape.rot.y);
        Matrix_Put(&mf);
        Matrix_RotateZYX(this->stemPartsRot[i], this->actor.shape.rot.y, 0, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2533);
        gSPDisplayList(POLY_OPA_DISP++, sStemDLists[i]);
        Collider_UpdateSpheres(51 + (i * 2), &this->collider);
        Collider_UpdateSpheres(52 + (i * 2), &this->collider);
        if (i == 0) {
            if (this->actionFunc != EnDekubaba_Wobble) {
                this->actor.focus.pos.x = mf.xw;
                this->actor.focus.pos.y = mf.yw;
                this->actor.focus.pos.z = mf.zw;
            } else {
                this->actor.focus.pos.x = this->actor.home.pos.x;
                this->actor.focus.pos.y = this->actor.home.pos.y + (40.0f * this->scaleFac);
                this->actor.focus.pos.z = this->actor.home.pos.z;
            }
        }
        if ((i < 2) && (this->actor.colorFilterTimer != 0)) {
            this->unk_14C[i].x = mf.xw;
            this->unk_14C[i].y = mf.yw - spA4;
            this->unk_14C[i].z = mf.zw;
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2569);
}

void EnDekubaba_DrawStem2(EnDekubaba* this, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2579);
    Matrix_RotateZYX(this->stemPartsRot[2], this->actor.shape.rot.y, 0, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2586);
    gSPDisplayList(POLY_OPA_DISP++, gDekubabaStem2DL);
    Collider_UpdateSpheres(55, &this->collider);
    Collider_UpdateSpheres(56, &this->collider);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2596);
}

void EnDekubaba_DrawShadow(EnDekubaba* this, PlayState* play) {
    MtxF mf;
    f32 scale;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2692);
    Gfx_SetupDL_44Xlu(play->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 0, 0, 0, 255);
    func_80038A28(this->floorPoly, this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z, &mf);
    Matrix_Mult(&mf, MTXMODE_NEW);
    scale = this->scaleFac * 0.15f;
    Matrix_Scale(scale, 1.0f, scale, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2710);
    gSPDisplayList(POLY_XLU_DISP++, gCircleShadowDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2715);
}

void EnDekubaba_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnDekubaba* this = (EnDekubaba*)thisx;

    if (limbIndex == DEKUBABA_HEAD_LIMB_ROOT) {
        Collider_UpdateSpheres(limbIndex, &this->collider);
    }
}

void EnDekubaba_Draw(Actor* thisx, PlayState* play) {
    EnDekubaba* this = (EnDekubaba*)thisx;
    f32 scale;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2752);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    if (this->actionFunc != EnDekubaba_DekuStick) {
        SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, EnDekubaba_PostLimbDraw,
                          this);
        if (this->actionFunc == EnDekubaba_WaitPlayerNear) {
            EnDekubaba_DrawStem0(this, play);
        } else {
            EnDekubaba_DrawStem(this, play);
        }

        scale = this->scaleFac * 0.01f;
        Matrix_Translate(this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z, MTXMODE_NEW);
        Matrix_RotateY(BINANG_TO_RAD(this->actor.home.rot.y), MTXMODE_APPLY);
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2780);
        gSPDisplayList(POLY_OPA_DISP++, gDekubabaBaseLeavesDL);

        if (this->actionFunc == EnDekubaba_DieDropStick) {
            EnDekubaba_DrawStem2(this, play);
        }
        if (this->floorPoly != NULL) {
            EnDekubaba_DrawShadow(this, play);
        }
    } else {
        if ((this->actionState > 40) || (this->actionState & 1)) {
            Matrix_Translate(0.0f, 0.0f, 200.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_dekubaba.c", 2797);
            gSPDisplayList(POLY_OPA_DISP++, gDekubabaDekuStickDL);
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dekubaba.c", 2804);
}
