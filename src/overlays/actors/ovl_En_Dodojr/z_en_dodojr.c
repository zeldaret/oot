/*
 * File: z_en_dodojr.c
 * Overlay: ovl_En_Dodojr
 * Description: Baby Dodongo
 */

#include "z_en_dodojr.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"
#include "assets/objects/object_dodojr/object_dodojr.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE)

void EnDodojr_Init(Actor* thisx, PlayState* play);
void EnDodojr_Destroy(Actor* thisx, PlayState* play);
void EnDodojr_Update(Actor* thisx, PlayState* play);
void EnDodojr_Draw(Actor* thisx, PlayState* play);

void EnDodojr_WaitUnderground(EnDodojr* this, PlayState* play);
void EnDodojr_DropItem(EnDodojr* this, PlayState* play);
void EnDodojr_EmergeFromGround(EnDodojr* this, PlayState* play);
void EnDodojr_CrawlTowardsTarget(EnDodojr* this, PlayState* play);
void EnDodojr_StunnedBounce(EnDodojr* this, PlayState* play);
void EnDodojr_JumpAttackBounce(EnDodojr* this, PlayState* play);
void EnDodojr_Stunned(EnDodojr* this, PlayState* play);
void EnDodojr_SwallowBomb(EnDodojr* this, PlayState* play);
void EnDodojr_SwallowedBombDeathBounce(EnDodojr* this, PlayState* play);
void EnDodojr_SwallowedBombDeathSequence(EnDodojr* this, PlayState* play);
void EnDodojr_StandardDeathBounce(EnDodojr* this, PlayState* play);
void EnDodojr_Despawn(EnDodojr* this, PlayState* play);
void EnDodojr_DeathSequence(EnDodojr* this, PlayState* play);
void EnDodojr_WaitFreezeFrames(EnDodojr* this, PlayState* play);
void EnDodojr_EatBomb(EnDodojr* this, PlayState* play);

ActorProfile En_Dodojr_Profile = {
    /**/ ACTOR_EN_DODOJR,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_DODOJR,
    /**/ sizeof(EnDodojr),
    /**/ EnDodojr_Init,
    /**/ EnDodojr_Destroy,
    /**/ EnDodojr_Update,
    /**/ EnDodojr_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_HIT6,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x00, 0x08 },
        { 0xFFC5FFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 18, 20, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInit = { 1, 2, 25, 25, MASS_IMMOVABLE };

void EnDodojr_Init(Actor* thisx, PlayState* play) {
    EnDodojr* this = (EnDodojr*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 18.0f);
    SkelAnime_Init(play, &this->skelAnime, &object_dodojr_Skel_0020E0, &object_dodojr_Anim_0009D4, this->jointTable,
                   this->morphTable, 15);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, DamageTable_Get(4), &sColChkInit);

    this->actor.naviEnemyId = NAVI_ENEMY_BABY_DODONGO;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;

    Actor_SetScale(&this->actor, 0.02f);

    this->actionFunc = EnDodojr_WaitUnderground;
}

void EnDodojr_Destroy(Actor* thisx, PlayState* play) {
    EnDodojr* this = (EnDodojr*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnDodojr_DoSwallowedBombEffects(EnDodojr* this) {
    Actor_PlaySfx(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
    Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_OPA, 8);
}

void EnDodojr_SpawnLargeDust(EnDodojr* this, PlayState* play, s32 count) {
    Color_RGBA8 prim = { 170, 130, 90, 255 };
    Color_RGBA8 env = { 100, 60, 20, 0 };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    Vec3f pos;
    s16 angle = ((Rand_ZeroOne() - 0.5f) * 65536.0f);
    s32 i;

    pos.y = this->dustPos.y;

    for (i = count; i >= 0; i--, angle += (s16)(0x10000 / count)) {
        accel.x = (Rand_ZeroOne() - 0.5f) * 4.0f;
        accel.z = (Rand_ZeroOne() - 0.5f) * 4.0f;

        pos.x = (Math_SinS(angle) * 22.0f) + this->dustPos.x;
        pos.z = (Math_CosS(angle) * 22.0f) + this->dustPos.z;

        func_8002836C(play, &pos, &velocity, &accel, &prim, &env, 120, 40, 10);
    }
}

void EnDodojr_SpawnSmallDust(EnDodojr* this, PlayState* play, Vec3f* arg2) {
    Color_RGBA8 prim = { 170, 130, 90, 255 };
    Color_RGBA8 env = { 100, 60, 20, 0 };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    Vec3f pos;
    s16 angle = ((Rand_ZeroOne() - 0.5f) * 65536.0f);

    pos.y = this->actor.floorHeight;

    accel.x = (Rand_ZeroOne() - 0.5f) * 2;
    accel.z = (Rand_ZeroOne() - 0.5f) * 2;

    pos.x = (Math_SinS(angle) * 11.0f) + arg2->x;
    pos.z = (Math_CosS(angle) * 11.0f) + arg2->z;

    func_8002836C(play, &pos, &velocity, &accel, &prim, &env, 100, 60, 8);
}

s32 EnDodojr_UpdateBounces(EnDodojr* this, PlayState* play) {
    if (this->actor.velocity.y >= 0.0f) {
        return false;
    }

    if (this->counter == 0) {
        return false;
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_GND);
        this->dustPos = this->actor.world.pos;
        EnDodojr_SpawnLargeDust(this, play, 10);
        this->actor.velocity.y = 10.0f / (4 - this->counter);
        this->counter--;

        if (this->counter == 0) {
            this->actor.velocity.y = 0.0f;
            return true;
        }
    }

    return false;
}

void EnDodojr_SetupCrawlTowardsTarget(EnDodojr* this) {
    f32 lastFrame = Animation_GetLastFrame(&object_dodojr_Anim_000860);

    Animation_Change(&this->skelAnime, &object_dodojr_Anim_000860, 1.8f, 0.0f, lastFrame, ANIMMODE_LOOP_INTERP, -10.0f);
    this->actor.velocity.y = 0.0f;
    this->actor.speed = 2.6f;
    this->actor.gravity = -0.8f;
}

void EnDodojr_SetupFlipBounce(EnDodojr* this) {
    f32 lastFrame = Animation_GetLastFrame(&object_dodojr_Anim_0004A0);

    Animation_Change(&this->skelAnime, &object_dodojr_Anim_0004A0, 1.0f, 0.0f, lastFrame, ANIMMODE_ONCE, -10.0f);
    this->actor.speed = 0.0f;
    this->actor.velocity.x = 0.0f;
    this->actor.velocity.z = 0.0f;
    this->actor.gravity = -0.8f;

    if (this->counter == 0) {
        this->counter = 3;
        this->actor.velocity.y = 10.0f;
    }
}

void EnDodojr_SetupSwallowedBombDeathSequence(EnDodojr* this) {
    f32 lastFrame = Animation_GetLastFrame(&object_dodojr_Anim_0005F0);

    Animation_Change(&this->skelAnime, &object_dodojr_Anim_0005F0, 1.0f, 0.0f, lastFrame, ANIMMODE_LOOP, 0.0f);
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -0.8f;
}

void EnDodojr_SetupJumpAttackBounce(EnDodojr* this) {
    f32 lastFrame = Animation_GetLastFrame(&object_dodojr_Anim_000724);

    Animation_Change(&this->skelAnime, &object_dodojr_Anim_000724, 1.0f, 0.0f, lastFrame, ANIMMODE_LOOP, -10.0f);
    this->actor.gravity = -0.8f;
    this->counter = 3;
    this->actor.velocity.y = 10.0f;
}

void EnDodojr_SetupDespawn(EnDodojr* this) {
    this->actor.shape.shadowDraw = NULL;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.home.pos = this->actor.world.pos;
    this->actor.speed = 0.0f;
    this->actor.gravity = -0.8f;
    this->timer = 30;
    this->dustPos = this->actor.world.pos;
}

void EnDodojr_SetupEatBomb(EnDodojr* this) {
    Animation_Change(&this->skelAnime, &object_dodojr_Anim_000724, 1.0f, 8.0f, 12.0f, ANIMMODE_ONCE, 0.0f);
    Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_EAT);
    this->actor.speed = 0.0f;
    this->actor.velocity.x = 0.0f;
    this->actor.velocity.z = 0.0f;
    this->actor.gravity = -0.8f;
}

s32 EnDodojr_CheckNearbyBombs(EnDodojr* this, PlayState* play) {
    Actor* bomb;
    Vec3f maxBombRange = { 99999.0f, 99999.0f, 99999.0f };
    s32 foundBomb = false;
    f32 xDist;
    f32 yDist;
    f32 zDist;

    bomb = play->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;
    this->bomb = NULL;

    while (bomb != NULL) {
        if ((bomb->params != 0) || (bomb->parent != NULL) || (bomb->update == NULL)) {
            bomb = bomb->next;
            continue;
        }

        if (bomb->id != ACTOR_EN_BOM) {
            bomb = bomb->next;
            continue;
        }

        xDist = bomb->world.pos.x - this->actor.world.pos.x;
        yDist = bomb->world.pos.y - this->actor.world.pos.y;
        zDist = bomb->world.pos.z - this->actor.world.pos.z;

        if ((fabsf(xDist) >= fabsf(maxBombRange.x)) || (fabsf(yDist) >= fabsf(maxBombRange.y)) ||
            (fabsf(zDist) >= fabsf(maxBombRange.z))) {
            bomb = bomb->next;
            continue;
        }

        this->bomb = bomb;
        maxBombRange = bomb->world.pos;
        foundBomb = true;
        bomb = bomb->next;
    }

    return foundBomb;
}

s32 EnDodojr_TryEatBomb(EnDodojr* this) {
    if (this->bomb == NULL) {
        return false;
    } else if (this->bomb->parent != NULL) {
        return false;
    } else if (Math_Vec3f_DistXYZ(&this->actor.world.pos, &this->bomb->world.pos) > 30.0f) {
        return false;
    } else {
        this->bomb->parent = &this->actor;
        return true;
    }
}

void EnDodojr_UpdateCrawl(EnDodojr* this, PlayState* play) {
    f32 angles[] = { 0.0f, 210.0f, 60.0f, 270.0f, 120.0f, 330.0f, 180.0f, 30.0f, 240.0f, 90.0f, 300.0f, 150.0f };
    s32 pad;
    Player* player = GET_PLAYER(play);
    Vec3f crawlTargetPos;
    s16 angleIndex;

    if ((this->bomb == NULL) || (this->bomb->update == NULL) ||
        ((this->bomb != NULL) && (this->bomb->parent != NULL))) {
        EnDodojr_CheckNearbyBombs(this, play);
    }

    if (this->bomb != NULL) {
        crawlTargetPos = this->bomb->world.pos;
    } else {
        crawlTargetPos = player->actor.world.pos;
    }

    if (Math_Vec3f_DistXYZ(&this->actor.world.pos, &crawlTargetPos) > 80.0f) {
        angleIndex =
            (s16)(this->actor.home.pos.x + this->actor.home.pos.y + this->actor.home.pos.z + play->state.frames / 30) %
            12;
        angleIndex = ABS(angleIndex);
        crawlTargetPos.x += 80.0f * sinf(angles[angleIndex]);
        crawlTargetPos.z += 80.0f * cosf(angles[angleIndex]);
    }

    Math_SmoothStepToS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &crawlTargetPos), 10, 1000, 1);
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

s32 EnDodojr_IsPlayerWithinAttackRange(EnDodojr* this) {
    if (this->actor.xzDistToPlayer > 40.0f) {
        return false;
    } else {
        return true;
    }
}

void EnDodojr_SetupStandardDeathBounce(EnDodojr* this) {
    Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_DEAD);
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    EnDodojr_SetupFlipBounce(this);
    this->actionFunc = EnDodojr_StandardDeathBounce;
}

s32 EnDodojr_CheckDamaged(EnDodojr* this, PlayState* play) {
    if ((this->actionFunc == EnDodojr_SwallowBomb) || (this->actionFunc == EnDodojr_SwallowedBombDeathBounce) ||
        (this->actionFunc == EnDodojr_SwallowedBombDeathSequence) || (this->actionFunc == EnDodojr_Despawn) ||
        (this->actionFunc == EnDodojr_StandardDeathBounce) || (this->actionFunc == EnDodojr_DeathSequence) ||
        (this->actionFunc == EnDodojr_DropItem)) {
        return false;
    }

    if (play->actorCtx.unk_02 != 0) {
        if (this->actionFunc != EnDodojr_WaitUnderground) {
            if (this->actionFunc == EnDodojr_EmergeFromGround) {
                this->actor.shape.shadowDraw = ActorShadow_DrawCircle;
            }

            EnDodojr_SetupStandardDeathBounce(this);
        }
        return false;
    }

    if (!(this->collider.base.acFlags & AC_HIT)) {
        return false;
    } else {
        this->collider.base.acFlags &= ~AC_HIT;

        if ((this->actionFunc == EnDodojr_WaitUnderground) || (this->actionFunc == EnDodojr_EmergeFromGround)) {
            this->actor.shape.shadowDraw = ActorShadow_DrawCircle;
        }

        if ((this->actor.colChkInfo.damageEffect == 0) && (this->actor.colChkInfo.damage != 0)) {
            Enemy_StartFinishingBlow(play, &this->actor);
            this->freezeFrameTimer = 2;
            this->actionFunc = EnDodojr_WaitFreezeFrames;
            return true;
        }

        if ((this->actor.colChkInfo.damageEffect == 1) && (this->actionFunc != EnDodojr_Stunned) &&
            (this->actionFunc != EnDodojr_StunnedBounce)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
            this->stunTimer = 120;
            Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 200, COLORFILTER_BUFFLAG_OPA, 120);
            EnDodojr_SetupFlipBounce(this);
            this->actionFunc = EnDodojr_StunnedBounce;
        }

        return false;
    }
}

void EnDodojr_UpdateCollider(EnDodojr* this, PlayState* play) {
    Collider_UpdateCylinder(&this->actor, &this->collider);

    if ((this->actionFunc != EnDodojr_WaitUnderground) && (this->actionFunc != EnDodojr_DropItem)) {
        if ((this->actionFunc == EnDodojr_EmergeFromGround) || (this->actionFunc == EnDodojr_CrawlTowardsTarget) ||
            (this->actionFunc == EnDodojr_JumpAttackBounce)) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }

        if ((this->actionFunc == EnDodojr_EmergeFromGround) || (this->actionFunc == EnDodojr_CrawlTowardsTarget) ||
            (this->actionFunc == EnDodojr_StunnedBounce) || (this->actionFunc == EnDodojr_Stunned) ||
            (this->actionFunc == EnDodojr_JumpAttackBounce)) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }

        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

void EnDodojr_WaitUnderground(EnDodojr* this, PlayState* play) {
    f32 lastFrame = Animation_GetLastFrame(&object_dodojr_Anim_000860);
    Player* player = GET_PLAYER(play);
    f32 dist;

    if (!(this->actor.xzDistToPlayer >= 320.0f)) {
        dist = this->actor.world.pos.y - player->actor.world.pos.y;

        if (!(dist >= 40.0f)) {
            Animation_Change(&this->skelAnime, &object_dodojr_Anim_000860, 1.8f, 0.0f, lastFrame, ANIMMODE_LOOP_INTERP,
                             -10.0f);
            Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_UP);
            this->actor.world.pos.y -= 60.0f;
            this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            this->actor.world.rot.x -= 0x4000;
            this->actor.shape.rot.x = this->actor.world.rot.x;
            this->dustPos = this->actor.world.pos;
            //! @bug floorHeight is always 0 at this point, so the dust is consistently drawn at y=0
            this->dustPos.y = this->actor.floorHeight;
            this->actionFunc = EnDodojr_EmergeFromGround;
        }
    }
}

void EnDodojr_EmergeFromGround(EnDodojr* this, PlayState* play) {
    f32 sp2C;

    Math_SmoothStepToS(&this->actor.shape.rot.x, 0, 4, 0x3E8, 0x64);
    sp2C = this->actor.shape.rot.x;
    sp2C /= 16384.0f;
    this->actor.world.pos.y = this->actor.home.pos.y + (60.0f * sp2C);
    EnDodojr_SpawnLargeDust(this, play, 3);

    if (sp2C == 0.0f) {
        this->actor.shape.shadowDraw = ActorShadow_DrawCircle;
        this->actor.world.rot.x = this->actor.shape.rot.x;
        this->actor.speed = 2.6f;
        this->actionFunc = EnDodojr_CrawlTowardsTarget;
    }
}

void EnDodojr_CrawlTowardsTarget(EnDodojr* this, PlayState* play) {
    Actor_UpdateVelocityXZGravity(&this->actor);
    EnDodojr_SpawnSmallDust(this, play, &this->actor.world.pos);

    if (DECR(this->crawlSfxTimer) == 0) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_MOVE);
        this->crawlSfxTimer = 5;
    }

    if (EnDodojr_TryEatBomb(this)) {
        EnDodojr_SetupEatBomb(this);
        this->actionFunc = EnDodojr_EatBomb;
        return;
    }

    EnDodojr_UpdateCrawl(this, play);

    if (EnDodojr_IsPlayerWithinAttackRange(this)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_CRY);
        EnDodojr_SetupJumpAttackBounce(this);
        this->actionFunc = EnDodojr_JumpAttackBounce;
    }

    if (this->actor.bgCheckFlags & BGCHECKFLAG_WALL) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_M_DOWN);
        EnDodojr_SetupDespawn(this);
        this->actionFunc = EnDodojr_Despawn;
    }
}

void EnDodojr_EatBomb(EnDodojr* this, PlayState* play) {
    EnBom* bomb;

    if (((s16)this->skelAnime.curFrame - 8) < 4) {
        bomb = (EnBom*)this->bomb;
        bomb->timer++;
        this->bomb->world.pos = this->headPos;
    } else {
        Actor_PlaySfx(&this->actor, NA_SE_EN_DODO_K_DRINK);
        Actor_Kill(this->bomb);
        this->timer = 24;
        this->counter = 0;
        this->actionFunc = EnDodojr_SwallowBomb;
    }
}

void EnDodojr_SwallowBomb(EnDodojr* this, PlayState* play) {
    if (DECR(this->timer) == 0) {
        EnDodojr_DoSwallowedBombEffects(this);
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
        EnDodojr_SetupFlipBounce(this);
        this->actionFunc = EnDodojr_SwallowedBombDeathBounce;
    }
}

void EnDodojr_SwallowedBombDeathBounce(EnDodojr* this, PlayState* play) {
    // Scale up briefly to expand from the swallowed bomb exploding.
    this->rootScale = 1.2f;
    this->rootScale *= ((f32)this->actor.colorFilterTimer / 8);
    Actor_UpdateVelocityXZGravity(&this->actor);

    if (EnDodojr_UpdateBounces(this, play)) {
        this->timer = 60;
        EnDodojr_SetupSwallowedBombDeathSequence(this);
        this->counter = 7;
        this->actionFunc = EnDodojr_SwallowedBombDeathSequence;
    }
}

void EnDodojr_SwallowedBombDeathSequence(EnDodojr* this, PlayState* play) {
    EnDodojr_DeathSequence(this, play);
}

void EnDodojr_StunnedBounce(EnDodojr* this, PlayState* play) {
    Actor_UpdateVelocityXZGravity(&this->actor);

    if (EnDodojr_UpdateBounces(this, play)) {
        EnDodojr_SetupSwallowedBombDeathSequence(this);
        this->actionFunc = EnDodojr_Stunned;
    }

    Math_SmoothStepToS(&this->actor.shape.rot.y, 0, 4, 1000, 10);
    this->actor.world.rot.x = this->actor.shape.rot.x;
    this->actor.colorFilterTimer = this->stunTimer;
}

void EnDodojr_Stunned(EnDodojr* this, PlayState* play) {
    if (DECR(this->stunTimer) != 0) {
        if (this->stunTimer < 30) {
            // Shake back and forth to indicate recovering from stun.
            if ((this->stunTimer & 1) != 0) {
                this->actor.world.pos.x += 1.5f;
                this->actor.world.pos.z += 1.5f;
            } else {
                this->actor.world.pos.x -= 1.5f;
                this->actor.world.pos.z -= 1.5f;
            }

            return;
        }
    } else {
        EnDodojr_SetupCrawlTowardsTarget(this);
        this->actionFunc = EnDodojr_CrawlTowardsTarget;
    }
}

void EnDodojr_JumpAttackBounce(EnDodojr* this, PlayState* play) {
    this->actor.flags |= ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;
    Actor_UpdateVelocityXZGravity(&this->actor);

    if (EnDodojr_UpdateBounces(this, play)) {
        EnDodojr_SetupCrawlTowardsTarget(this);
        this->actionFunc = EnDodojr_CrawlTowardsTarget;
    }
}

void EnDodojr_Despawn(EnDodojr* this, PlayState* play) {
    f32 burrowStep;

    Math_SmoothStepToS(&this->actor.shape.rot.x, 0x4000, 4, 1000, 100);

    if (DECR(this->timer) != 0) {
        burrowStep = (30 - this->timer) / 30.0f;
        this->actor.world.pos.y = this->actor.home.pos.y - (60.0f * burrowStep);
    } else {
        Actor_Kill(&this->actor);
    }

    EnDodojr_SpawnLargeDust(this, play, 3);
}

void EnDodojr_StandardDeathBounce(EnDodojr* this, PlayState* play) {
    Actor_UpdateVelocityXZGravity(&this->actor);
    Math_SmoothStepToS(&this->actor.shape.rot.y, 0, 4, 1000, 10);
    this->actor.world.rot.x = this->actor.shape.rot.x;

    if (EnDodojr_UpdateBounces(this, play)) {
        this->timer = 60;
        EnDodojr_SetupSwallowedBombDeathSequence(this);
        this->counter = 7;
        this->actionFunc = EnDodojr_DeathSequence;
    }
}

void EnDodojr_DeathSequence(EnDodojr* this, PlayState* play) {
    EnBom* bomb;

    if (this->counter != 0) {
        if (this->actor.colorFilterTimer == 0) {
            Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_RED, 200, COLORFILTER_BUFFLAG_OPA, this->counter);
            this->counter--;
        }
    } else {
        bomb = (EnBom*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_BOM, this->actor.world.pos.x,
                                   this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, BOMB_BODY);

        if (bomb != NULL) {
            bomb->timer = 0;
        }

        this->timer = 8;
        this->actionFunc = EnDodojr_DropItem;
    }
}

void EnDodojr_DropItem(EnDodojr* this, PlayState* play) {
    if (DECR(this->timer) == 0) {
        Item_DropCollectibleRandom(play, NULL, &this->actor.world.pos, 0x40);
        Actor_Kill(&this->actor);
    }
}

void EnDodojr_WaitFreezeFrames(EnDodojr* this, PlayState* play) {
    if (DECR(this->freezeFrameTimer) == 0) {
        EnDodojr_SetupStandardDeathBounce(this);
    }
}

void EnDodojr_Update(Actor* thisx, PlayState* play) {
    EnDodojr* this = (EnDodojr*)thisx;

    SkelAnime_Update(&this->skelAnime);
    Actor_MoveXZGravity(&this->actor);
    EnDodojr_CheckDamaged(this, play);

    if (this->actionFunc != EnDodojr_WaitUnderground) {
        Actor_UpdateBgCheckInfo(play, &this->actor, this->collider.dim.radius, this->collider.dim.height, 0.0f,
                                UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    }

    this->actionFunc(this, play);
    Actor_SetFocus(&this->actor, 10.0f);
    EnDodojr_UpdateCollider(this, play);
}

s32 EnDodojr_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnDodojr* this = (EnDodojr*)thisx;
    Vec3f D_809F7F64 = { 480.0f, 620.0f, 0.0f };

    if (limbIndex == 1) {
        Matrix_Scale((this->rootScale * 0.5f) + 1.0f, this->rootScale + 1.0f, (this->rootScale * 0.5f) + 1.0f,
                     MTXMODE_APPLY);
    }

    if (limbIndex == 4) {
        Matrix_MultVec3f(&D_809F7F64, &this->headPos);
    }

    return false;
}

void EnDodojr_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
}

void EnDodojr_Draw(Actor* thisx, PlayState* play) {
    EnDodojr* this = (EnDodojr*)thisx;

    if ((this->actionFunc != EnDodojr_WaitUnderground) && (this->actionFunc != EnDodojr_DropItem)) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnDodojr_OverrideLimbDraw,
                          EnDodojr_PostLimbDraw, &this->actor);
    }
}
