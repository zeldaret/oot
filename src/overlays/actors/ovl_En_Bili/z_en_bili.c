#include "z_en_bili.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "rand.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "versions.h"
#include "z_en_item00.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"

#include "assets/objects/object_bl/object_bl.h"

#define FLAGS \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_IGNORE_QUAKE | ACTOR_FLAG_CAN_ATTACH_TO_ARROW)

void EnBili_Init(Actor* thisx, PlayState* play);
void EnBili_Destroy(Actor* thisx, PlayState* play);
void EnBili_Update(Actor* thisx, PlayState* play2);
void EnBili_Draw(Actor* thisx, PlayState* play);

void EnBili_SetupIdle(EnBili* this);
void EnBili_SetupSpawnedByBari(EnBili* this);
void EnBili_Idle(EnBili* this, PlayState* play);
void EnBili_SpawnedByBari(EnBili* this, PlayState* play);
void EnBili_Electrify(EnBili* this, PlayState* play);
void EnBili_AscendAway(EnBili* this, PlayState* play);
void EnBili_ApproachPlayer(EnBili* this, PlayState* play);
void EnBili_FleePlayer(EnBili* this, PlayState* play);
void EnBili_SlingshotKnockback(EnBili* this, PlayState* play);
void EnBili_Damaged(EnBili* this, PlayState* play);
void EnBili_Die(EnBili* this, PlayState* play);
void EnBili_Stunned(EnBili* this, PlayState* play);
void EnBili_Frozen(EnBili* this, PlayState* play);

ActorProfile En_Bili_Profile = {
    /**/ ACTOR_EN_BILI,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_BL,
    /**/ sizeof(EnBili),
    /**/ EnBili_Init,
    /**/ EnBili_Destroy,
    /**/ EnBili_Update,
    /**/ EnBili_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_HIT8,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, HIT_SPECIAL_EFFECT_ELECTRIC, 0x08 },
        { 0xFFCFFFFF, HIT_BACKLASH_ELECTRIC, 0x00 },
        ATELEM_ON | ATELEM_SFX_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 9, 28, -20, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 1, 9, 28, -20, 30 };

typedef enum EnBiliDamageReaction {
    EN_BILI_DMG_REACT_NONE,
    EN_BILI_DMG_REACT_STUN,
    EN_BILI_DMG_REACT_FIRE,
    EN_BILI_DMG_REACT_ICE,
    EN_BILI_DMG_REACT_SLINGSHOT = 0xE,
    EN_BILI_DMG_REACT_SWORD_SLASH
} EnBiliDamageReaction;

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, EN_BILI_DMG_REACT_STUN),
    /* Deku stick    */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Slingshot     */ DMG_ENTRY(0, EN_BILI_DMG_REACT_SLINGSHOT),
    /* Explosive     */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Boomerang     */ DMG_ENTRY(1, EN_BILI_DMG_REACT_NONE),
    /* Normal arrow  */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Hammer swing  */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Hookshot      */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Kokiri sword  */ DMG_ENTRY(1, EN_BILI_DMG_REACT_SWORD_SLASH),
    /* Master sword  */ DMG_ENTRY(2, EN_BILI_DMG_REACT_SWORD_SLASH),
    /* Giant's Knife */ DMG_ENTRY(4, EN_BILI_DMG_REACT_SWORD_SLASH),
    /* Fire arrow    */ DMG_ENTRY(4, EN_BILI_DMG_REACT_FIRE),
    /* Ice arrow     */ DMG_ENTRY(4, EN_BILI_DMG_REACT_ICE),
    /* Light arrow   */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Unk arrow 1   */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Unk arrow 2   */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Unk arrow 3   */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Fire magic    */ DMG_ENTRY(4, EN_BILI_DMG_REACT_FIRE),
    /* Ice magic     */ DMG_ENTRY(4, EN_BILI_DMG_REACT_ICE),
    /* Light magic   */ DMG_ENTRY(0, EN_BILI_DMG_REACT_NONE),
    /* Shield        */ DMG_ENTRY(0, EN_BILI_DMG_REACT_NONE),
    /* Mirror Ray    */ DMG_ENTRY(0, EN_BILI_DMG_REACT_NONE),
    /* Kokiri spin   */ DMG_ENTRY(1, EN_BILI_DMG_REACT_NONE),
    /* Giant spin    */ DMG_ENTRY(4, EN_BILI_DMG_REACT_NONE),
    /* Master spin   */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Kokiri jump   */ DMG_ENTRY(2, EN_BILI_DMG_REACT_NONE),
    /* Giant jump    */ DMG_ENTRY(8, EN_BILI_DMG_REACT_NONE),
    /* Master jump   */ DMG_ENTRY(4, EN_BILI_DMG_REACT_NONE),
    /* Unknown 1     */ DMG_ENTRY(0, EN_BILI_DMG_REACT_NONE),
    /* Unblockable   */ DMG_ENTRY(0, EN_BILI_DMG_REACT_NONE),
    /* Hammer jump   */ DMG_ENTRY(4, EN_BILI_DMG_REACT_NONE),
    /* Unknown 2     */ DMG_ENTRY(0, EN_BILI_DMG_REACT_NONE),
};
static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_BIRI, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 2000, ICHAIN_STOP),
};

void EnBili_Init(Actor* thisx, PlayState* play) {
    EnBili* this = (EnBili*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 17.0f);
    this->actor.shape.shadowAlpha = 155;
    SkelAnime_Init(play, &this->skelAnime, &gBiriSkel, &gBiriMainAnim, this->jointTable, this->morphTable,
                   BIRI_LIMB_MAX);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->playFlySfx = false;
    if (this->actor.params == EN_BILI_TYPE_NORMAL) {
        EnBili_SetupIdle(this);
    } else {
        EnBili_SetupSpawnedByBari(this);
    }
}

void EnBili_Destroy(Actor* thisx, PlayState* play) {
    EnBili* this = (EnBili*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnBili_SetupIdle(EnBili* this) {
    this->actor.speed = 0.7f;
    this->collider.elem.acDmgInfo.hitBacklash = HIT_BACKLASH_ELECTRIC;
    this->timer = 32;
    this->actor.home.pos.y = this->actor.world.pos.y;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->collider.base.atFlags |= AT_ON;
    this->collider.base.acFlags |= AC_ON;
    this->actionFunc = EnBili_Idle;
}

void EnBili_SetupSpawnedByBari(EnBili* this) {
    Animation_PlayLoop(&this->skelAnime, &gBiriMainAnim);
    this->timer = 25;
    this->actor.velocity.y = 6.0f;
    this->actor.gravity = -0.3f;
    this->actor.speed = 3.0f;
    this->collider.base.atFlags &= ~AT_ON;
    this->actionFunc = EnBili_SpawnedByBari;
}

void EnBili_SetupElectrify(EnBili* this) {
    Animation_PlayLoop(&this->skelAnime, &gBiriElectrifyAnim);
    this->timer = 10;
    this->actionFunc = EnBili_Electrify;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = -1.0f;
}

void EnBili_SetupAscendAway(EnBili* this) {
    Animation_PlayOnce(&this->skelAnime, &gBiriAscendAwayAnim);
    this->collider.base.atFlags &= ~AT_ON;
    this->actionFunc = EnBili_AscendAway;
    this->actor.speed = 0.0f;
    this->actor.velocity.y = 0.0f;
}

void EnBili_SetupApproachPlayer(EnBili* this) {
    this->actor.speed = 1.2f;
    this->actionFunc = EnBili_ApproachPlayer;
}

void EnBili_SetupFleePlayer(EnBili* this) {
    Animation_PlayLoop(&this->skelAnime, &gBiriMainAnim);
    this->timer = 96;
    this->actor.speed = 0.9f;
    this->actor.home.pos.y = this->actor.world.pos.y;
    this->collider.base.atFlags |= AT_ON;
    this->actionFunc = EnBili_FleePlayer;
}

void EnBili_SetupSlingshotKnockback(EnBili* this) {
    if (this->skelAnime.animation != &gBiriMainAnim) {
        Animation_PlayLoop(&this->skelAnime, &gBiriMainAnim);
    }
    this->actor.world.rot.y = Actor_WorldYawTowardPoint(&this->actor, &this->collider.base.ac->prevPos) + 0x8000;
    this->actor.world.rot.x = Actor_WorldPitchTowardPoint(&this->actor, &this->collider.base.ac->prevPos);
    this->actionFunc = EnBili_SlingshotKnockback;
    this->actor.speed = 5.0f;
}

void EnBili_SetupDamaged(EnBili* this) {
    if (this->actionFunc == EnBili_AscendAway) {
        Animation_PlayLoop(&this->skelAnime, &gBiriMainAnim);
    }
    this->timer = 20;
    this->collider.base.atFlags &= ~AT_ON;
    this->collider.base.acFlags &= ~AC_ON;
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    this->actor.speed = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_XLU, 20);
    this->actionFunc = EnBili_Damaged;
}

void EnBili_SetupDie(EnBili* this) {
    this->timer = 18;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actionFunc = EnBili_Die;
    this->actor.speed = 0.0f;
}

void EnBili_SetupStunned(EnBili* this) {
    this->timer = 80;
    this->collider.elem.acDmgInfo.hitBacklash = HIT_BACKLASH_NONE;
    this->actor.gravity = -1.0f;
    this->actor.speed = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 150, COLORFILTER_BUFFLAG_XLU, 80);
    Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->collider.base.atFlags &= ~AT_ON;
    this->actionFunc = EnBili_Stunned;
}

void EnBili_SetupFrozen(EnBili* this, PlayState* play) {
    s32 i;
    Vec3f effPos;

    if (!(this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW)) {
        this->actor.gravity = -1.0f;
    }
    this->actor.velocity.y = 0.0f;
    effPos.y = this->actor.world.pos.y - 15.0f;
    for (i = 0; i < 8; i++) {
        effPos.x = ((i & 1) ? 7.0f : -7.0f) + this->actor.world.pos.x;
        effPos.y += 2.5f;
        effPos.z = ((i & 4) ? 7.0f : -7.0f) + this->actor.world.pos.z;
        EffectSsEnIce_SpawnFlyingVec3f(play, &this->actor, &effPos, 150, 150, 150, 250, 235, 245, 255,
                                       (Rand_ZeroOne() * 0.2f) + 0.7f);
    }
    this->actor.speed = 0.0f;
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 150, COLORFILTER_BUFFLAG_XLU, 10);
    this->collider.base.atFlags &= ~AT_ON;
    this->collider.base.acFlags &= ~AC_ON;
    this->timer = 300;
    this->actionFunc = EnBili_Frozen;
}

void EnBili_UpdateTentaclesTexIndex(EnBili* this) {
    s16 n;
    s16 animCurFrame = this->skelAnime.curFrame;

    if (this->actionFunc == EnBili_Electrify) {
        n = 3 - animCurFrame;
        this->tentaclesTexIndex = (ABS(n) + 5) % 8;
    } else if (this->actionFunc == EnBili_AscendAway) {
        n = animCurFrame >> 1;
        if (animCurFrame < 10) {
            if (n >= 4) {
                this->tentaclesTexIndex = 3;
            } else {
                this->tentaclesTexIndex = n;
            }
        } else if (animCurFrame < 19) {
            n = 17 - animCurFrame;
            this->tentaclesTexIndex = CLAMP_MIN(n, 0) >> 1;
        } else if (animCurFrame < 37) {
            this->tentaclesTexIndex = ((36 - animCurFrame) / 3) + 2;
        } else {
            this->tentaclesTexIndex = (40 - animCurFrame) >> 1;
        }
    } else {
        this->tentaclesTexIndex = animCurFrame >> 1;
    }
}

void EnBili_UpdateMovement(EnBili* this) {
    f32 playerY = this->actor.world.pos.y + this->actor.yDistToPlayer;
    f32 floorY;
    f32 targetY;
    f32 targetYOffset;

    if (this->actionFunc == EnBili_FleePlayer) {
        targetYOffset = 100.0f;
    } else {
        targetYOffset = 40.0f;
    }
    floorY = this->actor.floorHeight;
    targetY = MAX(playerY, floorY);
    Math_StepToF(&this->actor.home.pos.y, targetY + targetYOffset, 1.0f);
    this->actor.world.pos.y = (sinf(this->timer * 0.19634955f) * 3.0f) + this->actor.home.pos.y;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        this->actor.world.rot.y = this->actor.wallYaw;
    }
}

void EnBili_Idle(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    if (!(this->timer % 4)) {
        this->actor.world.rot.y += Rand_CenteredFloat(1820.0f);
    }
    EnBili_UpdateMovement(this);
    if (this->timer == 0) {
        this->timer = 32;
    }
    if ((this->actor.xzDistToPlayer < 160.0f) && (fabsf(this->actor.yDistToPlayer) < 45.0f)) {
        EnBili_SetupApproachPlayer(this);
    }
}

void EnBili_SpawnedByBari(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        EnBili_SetupIdle(this);
    }
}

void EnBili_Electrify(EnBili* this, PlayState* play) {
    static Color_RGBA8 sEffEnvColor = { 255, 255, 255, 255 };
    static Color_RGBA8 sEffPrimColor = { 200, 255, 255, 255 };
    s16 effYaw;
    Vec3f effPos;
    s32 i;

    for (i = 0; i < 4; i++) {
        if (!((this->timer + (i << 1)) % 4)) {
            effYaw = (s16)Rand_CenteredFloat(12288.0f) + (i * 0x4000) + 0x2000;
            effPos.x = Rand_CenteredFloat(5.0f) + this->actor.world.pos.x;
            effPos.y = (Rand_ZeroOne() * 5.0f) + this->actor.world.pos.y + 2.5f;
            effPos.z = Rand_CenteredFloat(5.0f) + this->actor.world.pos.z;
            EffectSsLightning_Spawn(play, &effPos, &sEffEnvColor, &sEffPrimColor, 15, effYaw, 6, 2);
        }
    }
    SkelAnime_Update(&this->skelAnime);
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_BIRI_SPARK - SFX_FLAG);
    if (this->timer != 0) {
        this->timer--;
    }
    this->actor.velocity.y *= -1.0f;
    if ((this->timer == 0) && Animation_OnFrame(&this->skelAnime, 0.0f)) {
        if (this->actor.params == EN_BILI_TYPE_DIE_AFTER_ELECTRIFY) {
            EnBili_SetupDie(this);
        } else {
            EnBili_SetupAscendAway(this);
        }
    }
}

void EnBili_AscendAway(EnBili* this, PlayState* play) {
    s32 animFinished;
    f32 animCurFrame;

    animFinished = SkelAnime_Update(&this->skelAnime);
    animCurFrame = this->skelAnime.curFrame;
    if (Animation_OnFrame(&this->skelAnime, 9.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_BIRI_JUMP);
    }
    if (animCurFrame > 9.0f) {
        Math_ApproachF(&this->actor.world.pos.y, this->actor.world.pos.y + this->actor.yDistToPlayer + 100.0f, 0.5f,
                       5.0f);
    }
    if (animFinished) {
        EnBili_SetupFleePlayer(this);
    }
}

void EnBili_ApproachPlayer(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 2, 0x71C);
    if (this->timer != 0) {
        this->timer--;
    }
    EnBili_UpdateMovement(this);
    if (this->timer == 0) {
        this->timer = 32;
    }
    if (this->actor.xzDistToPlayer > 200.0f) {
        EnBili_SetupIdle(this);
    }
}

void EnBili_FleePlayer(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer + 0x8000, 0x38E);
    EnBili_UpdateMovement(this);
    if (this->timer == 0) {
        EnBili_SetupIdle(this);
    }
}

void EnBili_SlingshotKnockback(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Math_StepToF(&this->actor.speed, 0.0f, 0.3f)) {
        this->actor.world.rot.y += 0x8000;
        EnBili_SetupIdle(this);
    }
}

void EnBili_Damaged(EnBili* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW) {
        this->actor.colorFilterTimer = 20;
    } else {
        if (this->timer != 0) {
            this->timer--;
        }
        if (this->timer == 0) {
            EnBili_SetupDie(this);
        }
    }
}

void EnBili_Die(EnBili* this, PlayState* play) {
    static Vec3f sEffVel = { 0.0f, 0.0f, 0.0f };
    static Vec3f sEffAccel = { 0.0f, 0.0f, 0.0f };
    s16 effScale;
    Vec3f effPos;
    s32 i;

    if (this->actor.draw != NULL) {
        if (!(this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW)) {
            this->actor.draw = NULL;
            Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos,
                                       COLLECTIBLE_DROP_RANDOM_PARAMS(COLLECTIBLE_DROP_TABLE_5, false));
        } else {
            return;
        }
    }
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer != 0) {
        for (i = 0; i < 2; i++) {
            effPos.x = (Rand_ZeroOne() * 10.0f) + this->actor.world.pos.x - 5.0f;
            effPos.y = (Rand_ZeroOne() * 5.0f) + this->actor.world.pos.y - 2.5f;
            effPos.z = (Rand_ZeroOne() * 10.0f) + this->actor.world.pos.z - 5.0f;
            sEffVel.y = Rand_ZeroOne() + 1.0f;
            effScale = Rand_S16Offset(40, 40);
            if (Rand_ZeroOne() < 0.7f) {
                EffectSsDtBubble_SpawnColorProfile(play, &effPos, &sEffVel, &sEffAccel, effScale, 25, 2, 1);
            } else {
                EffectSsDtBubble_SpawnColorProfile(play, &effPos, &sEffVel, &sEffAccel, effScale, 25, 0, 1);
            }
        }
    } else {
        Actor_Kill(&this->actor);
    }
    if (this->timer == 14) {
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 40, NA_SE_EN_BIRI_BUBLE);
    }
}

void EnBili_Stunned(EnBili* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
    }
    if (this->timer == 0) {
        EnBili_SetupIdle(this);
    }
}

void EnBili_Frozen(EnBili* this, PlayState* play) {
    if (this->timer != 0) {
        this->timer--;
    }
    if (!(this->actor.flags & ACTOR_FLAG_ATTACHED_TO_ARROW)) {
        this->actor.gravity = -1.0f;
    }
#if OOT_VERSION < NTSC_1_1
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) || (this->actor.floorHeight == BGCHECK_Y_MIN)) {
#else
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) || (this->actor.floorHeight == BGCHECK_Y_MIN)) {
#endif
        this->actor.colorFilterTimer = 0;
        EnBili_SetupDie(this);
    } else {
        this->actor.colorFilterTimer = 10;
    }
}

void EnBili_CheckCollide(EnBili* this, PlayState* play) {
    if ((this->actor.colChkInfo.health != 0) && (this->collider.base.acFlags & AC_HIT)) {
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlag(&this->actor, &this->collider.elem, true);
        if ((this->actor.colChkInfo.damageReaction != EN_BILI_DMG_REACT_NONE) || (this->actor.colChkInfo.damage != 0)) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_BIRI_DEAD);
                Enemy_StartFinishingBlow(play, &this->actor);
                this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            }
            if (this->actor.colChkInfo.damageReaction == EN_BILI_DMG_REACT_STUN) {
                if (this->actionFunc != EnBili_Stunned) {
                    EnBili_SetupStunned(this);
                }
            } else if (this->actor.colChkInfo.damageReaction == EN_BILI_DMG_REACT_SWORD_SLASH) {
                if (this->actionFunc != EnBili_Stunned) {
                    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_XLU, 10);
                    if (this->actor.colChkInfo.health == 0) {
                        this->actor.params = EN_BILI_TYPE_DIE_AFTER_ELECTRIFY;
                    }
                    EnBili_SetupElectrify(this);
                } else {
                    EnBili_SetupDamaged(this);
                }
            } else if (this->actor.colChkInfo.damageReaction == EN_BILI_DMG_REACT_FIRE) {
                EnBili_SetupDamaged(this);
                this->timer = 2;
            } else if (this->actor.colChkInfo.damageReaction == EN_BILI_DMG_REACT_ICE) {
                EnBili_SetupFrozen(this, play);
            } else if (this->actor.colChkInfo.damageReaction == EN_BILI_DMG_REACT_SLINGSHOT) {
                EnBili_SetupSlingshotKnockback(this);
            } else {
                EnBili_SetupDamaged(this);
            }
            if (this->collider.elem.acHitElem->atDmgInfo.dmgFlags & DMG_ARROW) {
                this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
            }
        }
    }
}

void EnBili_Update(Actor* thisx, PlayState* play2) {
    EnBili* this = (EnBili*)thisx;
    PlayState* play = play2;

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        EnBili_SetupElectrify(this);
    }
    EnBili_CheckCollide(this, play);
    this->actionFunc(this, play);
    if (this->actionFunc != EnBili_Die) {
        EnBili_UpdateTentaclesTexIndex(this);
        if (Animation_OnFrame(&this->skelAnime, 9.0f) &&
            ((this->actionFunc == EnBili_Idle) || (this->actionFunc == EnBili_FleePlayer) ||
             (this->actionFunc == EnBili_ApproachPlayer) || (this->actionFunc == EnBili_SlingshotKnockback))) {
            if (this->playFlySfx) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_BIRI_FLY);
                this->playFlySfx = false;
            } else {
                this->playFlySfx = true;
            }
        }
        if (this->actionFunc == EnBili_SlingshotKnockback) {
            Actor_MoveXYZ(&this->actor);
        } else {
            Actor_MoveXZGravity(&this->actor);
        }
        Actor_UpdateBgCheckInfo(play, &this->actor, 5.0f, this->collider.dim.radius, this->collider.dim.height,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_1 | UPDBGCHECKINFO_FLAG_2);
        Collider_UpdateCylinder(&this->actor, &this->collider);
        if (this->collider.base.atFlags & AT_ON) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }
        if (this->collider.base.acFlags & AC_ON) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        Actor_SetFocus(&this->actor, 0.0f);
    }
}

void EnBili_GetHoodLimbScale(EnBili* this, f32 frame, Vec3f* scale) {
    f32 f;

    if (this->actionFunc == EnBili_Electrify) {
        scale->y = 1.0f - (sinf((M_PI * 0.16667f) * frame) * 0.26f);
    } else if (this->actionFunc == EnBili_AscendAway) {
        if (frame <= 8.0f) {
            scale->y = (cosf((M_PI / 8) * frame) * 0.15f) + 0.85f;
        } else if (frame <= 18.0f) {
            f = cosf((frame - 8.0f) * (M_PI / 10));
            scale->y = 1.0f - (0.3f * f);
            scale->x = (0.2f * f) + 0.8f;
        } else {
            f = cosf((frame - 18.0f) * (M_PI * 0.0227f));
            scale->y = (0.31f * f) + 1.0f;
            scale->x = 1.0f - (0.4f * f);
        }
        scale->z = scale->x;
    } else if (this->actionFunc == EnBili_Stunned) {
        f = sinf(this->timer * (M_PI / 10)) * 0.08f;
        scale->x -= f;
        scale->y += f;
        scale->z -= f;
    } else {
        scale->y = (cosf((M_PI / 8) * frame) * 0.13f) + 0.87f;
    }
}

void EnBili_GetCoreLimbScale(EnBili* this, f32 frame, Vec3f* scale) {
    f32 f;

    if (this->actionFunc == EnBili_Electrify) {
        scale->y = (sinf((M_PI * 0.16667f) * frame) * 0.2f) + 1.0f;
    } else if (this->actionFunc == EnBili_AscendAway) {
        if (frame <= 8.0f) {
            scale->x = 1.125f - (cosf((M_PI / 8) * frame) * 0.125f);
        } else if (frame <= 18.0f) {
            f = cosf((frame - 8.0f) * (M_PI / 10));
            scale->x = (0.275f * f) + 0.975f;
            scale->y = 1.25f - (0.25f * f);
        } else {
            f = cosf((frame - 18.0f) * (M_PI * 0.0227f));
            scale->x = 1.0f - (0.3f * f);
            scale->y = (0.48f * f) + 1.0f;
        }
        scale->z = scale->x;
    } else if (this->actionFunc == EnBili_Stunned) {
        f = sinf(this->timer * (M_PI / 10)) * 0.08f;
        scale->x += f;
        scale->y -= f;
        scale->z += f;
    } else {
        scale->y = 1.1f - (cosf((M_PI / 8) * frame) * 0.1f);
    }
}

void EnBili_GetTentaclesLimbScale(EnBili* this, f32 frame, Vec3f* scale) {
    f32 f;

    if (this->actionFunc == EnBili_AscendAway) {
        if (frame <= 8.0f) {
            f = cosf((M_PI / 8) * frame);
            scale->x = 1.125f - (0.125f * f);
            scale->y = (0.3f * f) + 0.7f;
        } else if (frame <= 18.0f) {
            f = cosf((frame - 8.0f) * (M_PI / 10));
            scale->x = (0.325f * f) + 0.925f;
            scale->y = 0.95f - (0.55f * f);
        } else {
            f = cosf((frame - 18.0f) * (M_PI * 0.0227f));
            scale->x = 1.0f - (0.4f * f);
            scale->y = (0.52f * f) + 1.0f;
        }
        scale->z = scale->x;
    }
}

s32 EnBili_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                            Gfx** gfx) {
    EnBili* this = (EnBili*)thisx;
    Vec3f scale = { 1.0f, 1.0f, 1.0f };
    f32 animCurFrame = this->skelAnime.curFrame;

    if (limbIndex == BIRI_LIMB_HOOD) {
        EnBili_GetHoodLimbScale(this, animCurFrame, &scale);
    } else if (limbIndex == BIRI_LIMB_CORE) {
        EnBili_GetCoreLimbScale(this, animCurFrame, &scale);
    } else if (limbIndex == BIRI_LIMB_TENTACLES) {
        EnBili_GetTentaclesLimbScale(this, animCurFrame, &scale);
        rot->y = Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) - this->actor.shape.rot.y + 0x8000;
    }
    Matrix_Scale(scale.x, scale.y, scale.z, MTXMODE_APPLY);
    return false;
}

static void* sTentaclesTextures[8] = {
    gBiriTentacle0Tex, gBiriTentacle1Tex, gBiriTentacle2Tex, gBiriTentacle3Tex,
    gBiriTentacle4Tex, gBiriTentacle5Tex, gBiriTentacle6Tex, gBiriTentacle7Tex,
};
#include "assets/overlays/ovl_En_Bili/ovl_En_Bili.c"

void EnBili_Draw(Actor* thisx, PlayState* play) {
    EnBili* this = (EnBili*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_bili.c", 1521);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    this->tentaclesTexIndex = CLAMP_MAX(this->tentaclesTexIndex, ARRAY_COUNT(sTentaclesTextures) - 1);
    gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(sTentaclesTextures[this->tentaclesTexIndex]));
    if ((this->actionFunc == EnBili_Electrify) && (this->timer & 1)) {
        gSPSegment(POLY_XLU_DISP++, 9, sBiriCoreInvertTexCombinerDL);
    } else {
        gSPSegment(POLY_XLU_DISP++, 9, sBiriCoreNormalCombinerDL);
    }
    POLY_XLU_DISP = SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnBili_OverrideLimbDraw,
                                   NULL, this, POLY_XLU_DISP);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_bili.c", 1552);
}
