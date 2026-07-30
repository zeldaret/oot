#include "z_en_fish.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "printf.h"
#include "sfx.h"
#include "z_lib.h"
#include "item.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/gameplay_keep/gFishInAirAnim.h"
#include "assets/objects/gameplay_keep/gFishInWaterAnim.h"
#include "assets/objects/gameplay_keep/gameplay_keep_0x18610.h"

#define FLAGS 0

void EnFish_Init(Actor* thisx, PlayState* play);
void EnFish_Destroy(Actor* thisx, PlayState* play2);
void EnFish_Update(Actor* thisx, PlayState* play);
void EnFish_Draw(Actor* thisx, PlayState* play);

void EnFish_SetupStay________(EnFish* this);
void EnFish_Stay_______(EnFish* this, PlayState* play);
void EnFish_SetupFollowOtherFishIfAny________________(EnFish* this);
void EnFish_FollowOtherFishIfAny________________(EnFish* this, PlayState* play);
void EnFish_SetupSwimFastFollowOtherIfAnyFleePlayer____________(EnFish* this);
void EnFish_SwimFastFollowOtherIfAnyFleePlayer____________(EnFish* this, PlayState* play);
void EnFish_SetupFollowPlayer_____________(EnFish* this);
void EnFish_FollowPlayer______________(EnFish* this, PlayState* play);
void EnFish_SetupDropped(EnFish* this);
void EnFish_Dropped_(EnFish* this, PlayState* play);
void EnFish_SetupOnGround______(EnFish* this);
void EnFish_OnGround_________(EnFish* this, PlayState* play);
void EnFish_SetupInWater__(EnFish* this);
void EnFish_EventuallyDispawn___(EnFish* this, PlayState* play);
void EnFish_Setup1_80A16618(EnFish* this);
void EnFish_SwimTinyPond___(EnFish* this, PlayState* play);
void EnFish_JabuCutsceneCue1_(EnFish* this, PlayState* play);
void EnFish_JabuCutsceneCue2_(EnFish* this, PlayState* play);
void EnFish_JabuCutsceneUpdate____(EnFish* this, PlayState* play);
void EnFish_UpdateImpl_(EnFish* this, PlayState* play);
void EnFish_UpdateWaitReappear_(EnFish* this, PlayState* play);

static EnFish* sJabuCutsceneFish___ = NULL;
static f32 sJabuCutsceneOffsetY____ = 0.0f;
static f32 sJabuCutsceneOffsetYSpeed____ = 0.0f;

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 5 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit),
    sJntSphElementsInit,
};

ActorProfile En_Fish_Profile = {
    /**/ ACTOR_EN_FISH,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnFish),
    /**/ EnFish_Init,
    /**/ EnFish_Destroy,
    /**/ EnFish_Update,
    /**/ EnFish_Draw,
};

static InitChainEntry sInitChain[4] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 900, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 40, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 700, ICHAIN_STOP),
};

typedef struct struct_80A17080 {
    /* 0x0 */ f32 target;
    /* 0x4 */ f32 fraction;
    /* 0x8 */ f32 step;
} EnFishSpeedParams; // size = 0xC
static EnFishSpeedParams sStaySpeedParams = { 0.0f, 0.04f, 0.09f };
static EnFishSpeedParams sMoveSpeedParams = { 0.5f, 0.1f, 0.15f };

f32 EnFish_DistXZSq(Vec3f* posA, Vec3f* posB) {
    f32 dz;
    f32 dx;

    dx = posA->x - posB->x;
    dz = posA->z - posB->z;
    return SQ(dx) + SQ(dz);
}

void EnFish_ChangeAnimInWater(EnFish* this) {
    Animation_Change(&this->skelAnime, &gFishInWaterAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gFishInWaterAnim),
                     ANIMMODE_LOOP_INTERP, 2.0f);
}

void EnFish_ChangeAnimInAir(EnFish* this) {
    Animation_Change(&this->skelAnime, &gFishInAirAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gFishInAirAnim),
                     ANIMMODE_LOOP_INTERP, 2.0f);
}

void EnFish_Disappear_(EnFish* this) {
    this->reappearTimer = 400;
    Actor_SetScale(&this->actor, 0.001f);
    this->actor.draw = NULL;
}

void EnFish_SetupForJabuCutscene____(EnFish* this2) {
    EnFish* this = this2;

    if (sJabuCutsceneFish___ == NULL) {
        sJabuCutsceneFish___ = this;
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.draw = EnFish_Draw;
        this->actor.shape.rot.x = 0;
        this->actor.shape.rot.y = -0x6410;
        this->actor.shape.rot.z = 0x4000;
        this->actor.shape.yOffset = 600.0f;
        sJabuCutsceneOffsetY____ = 10.0f;
        sJabuCutsceneOffsetYSpeed____ = 0.0f;
        this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        EnFish_ChangeAnimInAir(this);
    }
}

void EnFish_JabuCutsceneClear____(EnFish* this) {
    sJabuCutsceneFish___ = NULL;
    sJabuCutsceneOffsetY____ = 0.0f;
    sJabuCutsceneOffsetYSpeed____ = 0.0f;
}

void EnFish_Init(Actor* thisx, PlayState* play) {
    EnFish* this = (EnFish*)thisx;
    s16 type;

    type = this->actor.params;
    Actor_ProcessInitChain(&this->actor, sInitChain);
    SkelAnime_InitFlex(play, &this->skelAnime, &gFishSkel, &gFishInWaterAnim, this->jointTable, this->morphTable, 7);
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->colliderElements);
    this->actor.colChkInfo.mass = 50;
    this->phase1 = (s16)(s32)(Rand_ZeroOne() * 65535.5f);
    this->phase2 = (s16)(s32)(Rand_ZeroOne() * 65535.5f);
    if (type == EN_FISH_TYPE_DROPPED) {
        this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 8.0f);
        EnFish_SetupDropped(this);
    } else if (type == EN_FISH_TYPE_1) {
        EnFish_Setup1_80A16618(this);
    } else {
        EnFish_SetupStay________(this);
    }
}

void EnFish_Destroy(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnFish* this = (EnFish*)thisx;

    Collider_DestroyJntSph(play, &this->collider);
}

void EnFish_UpdateBobbing_(EnFish* this) {
    this->actor.shape.yOffset += (Math_SinS(this->phase1) * 10.0f) + (Math_SinS(this->phase2) * 5.0f);
    this->actor.shape.yOffset = CLAMP(this->actor.shape.yOffset, -200.0f, 200.0f);
}

s32 EnFish_IsInRangeForCatch_(EnFish* this, PlayState* play) {
    s32 pad;
    Player* player;
    Vec3f playerPos;

    player = GET_PLAYER(play);
    if (this->actor.xzDistToPlayer < 32.0f) {
        // Add a slight offset towards the fish to the player position.
        playerPos.x = (Math_SinS(this->actor.yawTowardsPlayer + 0x8000) * 16.0f) + player->actor.world.pos.x;
        playerPos.y = player->actor.world.pos.y;
        playerPos.z = (Math_CosS(this->actor.yawTowardsPlayer + 0x8000) * 16.0f) + player->actor.world.pos.z;
        if (EnFish_DistXZSq(&playerPos, &this->actor.world.pos) <= SQ(20.0f)) {
            return true;
        }
    }
    return false;
}

s32 EnFish_IsCloseToPlayer__(EnFish* this, PlayState* play) {
    return this->actor.xzDistToPlayer < 60.0f;
}

void EnFish_SetupStay________(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->timer = Rand_S16Offset(5, 35);
    this->updBgCheckInfoFlags = 0;
    EnFish_ChangeAnimInWater(this);
    this->actionFunc = EnFish_Stay_______;
}

void EnFish_Stay_______(EnFish* this, PlayState* play) {
    EnFish_UpdateBobbing_(this);
    Math_SmoothStepToF(&this->actor.speed, 0.0f, 0.05f, 0.3f, 0.0f);
    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speed * 1.4f) + 0.8f, 2.0f);
    SkelAnime_Update(&this->skelAnime);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->timer <= 0) {
        EnFish_SetupFollowOtherFishIfAny________________(this);
    } else if (this->actor.child == &this->actor) {
        EnFish_SetupFollowPlayer_____________(this);
    } else if (EnFish_IsCloseToPlayer__(this, play)) {
        EnFish_SetupSwimFastFollowOtherIfAnyFleePlayer____________(this);
    }
}

void EnFish_SetupFollowOtherFishIfAny________________(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->timer = Rand_S16Offset(15, 45);
    this->updBgCheckInfoFlags = 0;
    EnFish_ChangeAnimInWater(this);
    this->actionFunc = EnFish_FollowOtherFishIfAny________________;
}

void EnFish_FollowOtherFishIfAny________________(EnFish* this, PlayState* play) {
    s32 pad;

    EnFish_UpdateBobbing_(this);
    Math_SmoothStepToF(&this->actor.speed, 1.8f, 0.08f, 0.4f, 0.0f);
    if ((EnFish_DistXZSq(&this->actor.world.pos, &this->actor.home.pos) > SQ(80.0f)) || (this->timer < 4)) {
        Math_StepToAngleS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos),
                          0xBB8);
    } else if ((this->actor.child != NULL) && (this->actor.child != &this->actor)) {
        Math_StepToAngleS(&this->actor.world.rot.y,
                          Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.child->world.pos), 0xBB8);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speed * 1.5f) + 0.8f, 4.0f);
    SkelAnime_Update(&this->skelAnime);
    if (this->timer <= 0) {
        EnFish_SetupStay________(this);
    } else if (this->actor.child == &this->actor) {
        EnFish_SetupFollowPlayer_____________(this);
    } else if (EnFish_IsCloseToPlayer__(this, play)) {
        EnFish_SetupSwimFastFollowOtherIfAnyFleePlayer____________(this);
    }
}

void EnFish_SetupSwimFastFollowOtherIfAnyFleePlayer____________(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->timer = Rand_S16Offset(10, 40);
    this->updBgCheckInfoFlags = 0;
    EnFish_ChangeAnimInWater(this);
    this->actionFunc = EnFish_SwimFastFollowOtherIfAnyFleePlayer____________;
}

void EnFish_SwimFastFollowOtherIfAnyFleePlayer____________(EnFish* this, PlayState* play) {
    s16 frames;
    s16 yaw;
    s32 pad2;
    s16 pad;
    s16 isCloseToPlayer__;

    EnFish_UpdateBobbing_(this);
    isCloseToPlayer__ = EnFish_IsCloseToPlayer__(this, play);
    Math_SmoothStepToF(&this->actor.speed, 4.2f, 0.08f, 1.4f, 0.0f);
    if (EnFish_DistXZSq(&this->actor.world.pos, &this->actor.home.pos) > SQ(160.0f)) {
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 0xBB8);
    } else if ((this->actor.child != NULL) && (this->actor.child != &this->actor)) {
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.child->world.pos);
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 0x7D0);
    } else if (isCloseToPlayer__) {
        frames = play->state.frames;
        if (play) {}
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
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 0x7D0);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speed * 1.5f) + 0.8f, 4.0f);
    SkelAnime_Update(&this->skelAnime);
    if ((this->timer <= 0) || !isCloseToPlayer__) {
        EnFish_SetupStay________(this);
    } else if (this->actor.child == &this->actor) {
        EnFish_SetupFollowPlayer_____________(this);
    }
}

void EnFish_SetupFollowPlayer_____________(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    EnFish_ChangeAnimInWater(this);
    this->timer = Rand_S16Offset(0xA, 0x28);
    this->updBgCheckInfoFlags = 0;
    this->actionFunc = EnFish_FollowPlayer______________;
}

void EnFish_FollowPlayer______________(EnFish* this, PlayState* play) {
    s32 pad;
    Player* player;
    s32 pad2;
    Vec3f playerPos;
    s16 yaw;
    s16 angle;

    player = GET_PLAYER(play);
    EnFish_UpdateBobbing_(this);
    Math_SmoothStepToF(&this->actor.speed, 1.8f, 0.1f, 0.5f, 0.0f);
    if (EnFish_DistXZSq(&this->actor.world.pos, &this->actor.home.pos) > SQ(80.0f)) {
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 0xBB8);
    } else {
        if ((s16)play->state.frames & 0x40) {
            angle = (this->actor.yawTowardsPlayer + 0x9000);
        } else {
            angle = (this->actor.yawTowardsPlayer + 0x7000);
        }
        // Add a slight offset approximately towards the fish to the player position.
        playerPos.x = (Math_SinS(angle) * 20.0f) + player->actor.world.pos.x;
        playerPos.y = player->actor.world.pos.y;
        playerPos.z = (Math_CosS(angle) * 20.0f) + player->actor.world.pos.z;
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &playerPos);
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 0xBB8);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speed * 1.5f) + 0.8f, 4.0f);
    SkelAnime_Update(&this->skelAnime);
    if (this->timer <= 0) {
        EnFish_SetupStay________(this);
    }
}

void EnFish_SetupDropped(EnFish* this) {
    this->actor.gravity = -1.0f;
    this->actor.minVelocityY = -10.0f;
    this->actor.shape.yOffset = 0.0f;
    EnFish_ChangeAnimInAir(this);
    this->updBgCheckInfoFlags = UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2;
    this->actionFunc = EnFish_Dropped_;
    this->timer = 300;
}

void EnFish_Dropped_(EnFish* this, PlayState* play) {
    Math_SmoothStepToF(&this->actor.speed, 0.0f, 0.1f, 0.1f, 0.0f);
    Math_StepToAngleS(&this->actor.world.rot.x, 0x4000, 0x64);
    Math_StepToAngleS(&this->actor.world.rot.z, -0x4000, 0x64);
    this->actor.shape.rot.x = this->actor.world.rot.x;
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->actor.shape.rot.z = this->actor.world.rot.z;
    SkelAnime_Update(&this->skelAnime);
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->timer = 400;
        EnFish_SetupOnGround______(this);
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_WATER) {
        EnFish_SetupInWater__(this);
    } else if ((this->timer <= 0) && (this->actor.params == EN_FISH_TYPE_DROPPED) &&
               (this->actor.floorHeight < (BGCHECK_Y_MIN + 10.0f))) {
        PRINTF_COLOR_WARNING();
        PRINTF("BG 抜け？ Actor_delete します(%s %d)\n", "../z_en_sakana.c", 822);
        PRINTF_RST();
        Actor_Kill(&this->actor);
    }
}

void EnFish_SetupOnGround______(EnFish* this) {
    s32 pad[2];
    s32 playLeapSfx;
    f32 rng;

    this->actor.gravity = -1.0f;
    this->actor.minVelocityY = -10.0f;
    rng = Rand_ZeroOne();
    if (rng < 0.1f) {
        this->actor.velocity.y = (Rand_ZeroOne() * 3.0f) + 2.5f;
        playLeapSfx = true;
    } else if (rng < 0.2f) {
        this->actor.velocity.y = (Rand_ZeroOne() * 1.2f) + 0.2f;
        playLeapSfx = true;
    } else {
        this->actor.velocity.y = 0.0f;
        if (Rand_ZeroOne() < 0.2f) {
            playLeapSfx = true;
        } else {
            playLeapSfx = false;
        }
    }
    this->actor.shape.yOffset = 300.0f;
    EnFish_ChangeAnimInAir(this);
    this->actionFunc = EnFish_OnGround_________;
    this->updBgCheckInfoFlags = UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2;
    if (playLeapSfx && (this->actor.draw != NULL)) {
        Actor_PlaySfx(&this->actor, NA_SE_EV_FISH_LEAP);
    }
}

void EnFish_OnGround_________(EnFish* this, PlayState* play) {
    s16 targetRotX;
    s16 pad;
    s16 frames;

    frames = play->state.frames;
    Math_SmoothStepToF(&this->actor.speed, Rand_ZeroOne() * 0.2f, 0.1f, 0.1f, 0.0f);
    targetRotX = (s16)(s32)((s16)((((frames >> 5) & 2) | ((frames >> 2) & 1)) * 0x800) * 0.3f);
    if (frames & 4) {
        targetRotX *= -1;
    }
    Math_StepToAngleS(&this->actor.world.rot.x, targetRotX, 0xFA0);
    Math_StepToAngleS(&this->actor.world.rot.z, 0x4000, 0x3E8);
    this->actor.world.rot.y +=
        (s16)(s32)(((Math_SinS(this->phase1) * 2000.0f) + (Math_SinS(this->phase2) * 1000.0f)) * Rand_ZeroOne());
    this->actor.shape.rot = this->actor.world.rot;
    SkelAnime_Update(&this->skelAnime);
    if (this->timer <= 0) {
        Actor_Kill(&this->actor);
        return;
    }
    if (this->timer <= 60) {
        if (frames & 4) {
            this->actor.draw = EnFish_Draw;
        } else {
            this->actor.draw = NULL;
        }
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_WATER) {
        EnFish_SetupInWater__(this);
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        EnFish_SetupOnGround______(this);
    }
}

void EnFish_SetupInWater__(EnFish* this) {
    this->actor.home.pos = this->actor.world.pos;
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->actor.shape.yOffset = 0.0f;
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    this->timer = 200;
    EnFish_ChangeAnimInWater(this);
    this->actionFunc = EnFish_EventuallyDispawn___;
    this->updBgCheckInfoFlags = UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2;
}

void EnFish_EventuallyDispawn___(EnFish* this, PlayState* play) {
    s32 pad;

    Math_SmoothStepToF(&this->actor.speed, 2.8f, 0.1f, 0.4f, 0.0f);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) || !(this->actor.bgCheckFlags & BGCHECKFLAG_WATER)) {
        this->actor.home.rot.y = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        this->actor.speed *= 0.5f;
    }
    Math_StepToAngleS(&this->actor.world.rot.x, 0, 0x5DC);
    Math_StepToAngleS(&this->actor.world.rot.y, this->actor.home.rot.y, 0xBB8);
    Math_StepToAngleS(&this->actor.world.rot.z, 0, 0x3E8);
    this->actor.shape.rot = this->actor.world.rot;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 4.0f, 2.0f);
    } else {
        Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 10.0f, 2.0f);
    }
    if (this->timer < 100) {
        Actor_SetScale(&this->actor, this->actor.scale.x * 0.982f);
    }
    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speed * 1.5f) + 1.0f, 4.0f);
    SkelAnime_Update(&this->skelAnime);
    if (this->timer <= 0) {
        Actor_Kill(&this->actor);
    }
}

void EnFish_Setup1_80A16618(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->timer = Rand_S16Offset(5, 0x23);
    this->updBgCheckInfoFlags = 0;
    EnFish_ChangeAnimInWater(this);
    this->actionFunc = EnFish_SwimTinyPond___;
}

void EnFish_SwimTinyPond___(EnFish* this, PlayState* play) {
    s32 pad2;
    u32 frames;
    EnFishSpeedParams* speedParams;
    s32 pad3;
    f32 animPlaySpeedBoost;
    s32 pad;

    frames = play->gameplayFrames;
    if (this->actor.xzDistToPlayer < 60.0f) {
        if (this->timer < 12) {
            speedParams = &sMoveSpeedParams;
        } else {
            speedParams = &sStaySpeedParams;
        }
    } else {
        if (this->timer < 4) {
            speedParams = &sMoveSpeedParams;
        } else {
            speedParams = &sStaySpeedParams;
        }
    }
    EnFish_UpdateBobbing_(this);
    Math_SmoothStepToF(&this->actor.speed, speedParams->target, speedParams->fraction, speedParams->step, 0.0f);
    animPlaySpeedBoost = 0.0f;
    if (EnFish_DistXZSq(&this->actor.world.pos, &this->actor.home.pos) > SQ(15.0f)) {
        if (!Math_ScaledStepToS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos),
                                0xC8)) {
            animPlaySpeedBoost = 0.5f;
        }
    } else if (this->timer < 4) {
        if (!Math_ScaledStepToS(&this->actor.world.rot.y, frames * 0x80, 0x64)) {
            animPlaySpeedBoost = 0.5f;
        }
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    //! @bug swapped min and max clamp bounds
    this->skelAnime.playSpeed = CLAMP((this->actor.speed * 1.2f) + 0.2f + animPlaySpeedBoost, 1.5f, 0.5);
    SkelAnime_Update(&this->skelAnime);
    if (this->timer <= 0) {
        this->timer = Rand_S16Offset(5, 80);
    }
}

void EnFish_JabuCutsceneCue1_(EnFish* this, PlayState* play) {
    f32 sp24;
    f32 sp20;

    sp24 = Math_SinS(this->phase1);
    sp20 = Math_SinS(this->phase2);
    sJabuCutsceneOffsetY____ += sJabuCutsceneOffsetYSpeed____;
    if (sJabuCutsceneOffsetY____ <= 1.0f) {
        sJabuCutsceneOffsetY____ = 1.0f;
        if (Rand_ZeroOne() < 0.1f) {
            sJabuCutsceneOffsetYSpeed____ = (Rand_ZeroOne() * 3.0f) + 2.0f;
            Actor_PlaySfx(&this->actor, NA_SE_EV_FISH_LEAP);
        } else {
            sJabuCutsceneOffsetYSpeed____ = 0.0f;
        }
    } else {
        sJabuCutsceneOffsetYSpeed____ -= 0.4f;
    }
    this->skelAnime.playSpeed = ((sp24 + sp20) * 0.5f) + 2.0f;
    SkelAnime_Update(&this->skelAnime);
}

void EnFish_JabuCutsceneCue2_(EnFish* this, PlayState* play) {
    s32 pad;
    f32 sp28;
    f32 sp24;

    sp28 = Math_SinS(this->phase1);
    sp24 = Math_SinS(this->phase2);
    this->actor.shape.rot.x -= 0x1F4;
    this->actor.shape.rot.z += 0x64;
    Math_StepToF(&sJabuCutsceneOffsetY____, 0.0f, 1.0f);
    this->skelAnime.playSpeed = ((sp28 + sp24) * 0.5f) + 2.0f;
    SkelAnime_Update(&this->skelAnime);
}

void EnFish_JabuCutsceneUpdate____(EnFish* this, PlayState* play) {
    f32 factor;
    s32 pad;
    CsCmdActorCue* cue;
    Vec3f startPos;
    Vec3f endPos;
    s32 pad2;
    s32 bgId;

    if (play) {}
    if (play) {}

    cue = play->csCtx.actorCues[1];
    if (cue == NULL) {
        if (1) {}
        PRINTF("Warning : dousa 3 消滅 が呼ばれずにデモが終了した(%s %d)(arg_data 0x%04x)\n", "../z_en_sakana.c", 1169,
               this->actor.params);
        EnFish_JabuCutsceneClear____(this);
        Actor_Kill(&this->actor);
        return;
    }
    this->phase1 += 0x111;
    this->phase2 += 0x500;
    switch (cue->id) {
        case 1:
            EnFish_JabuCutsceneCue1_(this, play);
            break;

        case 2:
            EnFish_JabuCutsceneCue2_(this, play);
            break;

        case 3:
            PRINTF("デモ魚消滅\n");
            EnFish_JabuCutsceneClear____(this);
            Actor_Kill(&this->actor);
            return;

        default:
            PRINTF("不正なデモ動作(%s %d)(arg_data 0x%04x)\n", "../z_en_sakana.c", 1200, this->actor.params);
            break;
    }
    startPos.x = cue->startPos.x;
    startPos.y = cue->startPos.y;
    startPos.z = cue->startPos.z;
    endPos.x = cue->endPos.x;
    endPos.y = cue->endPos.y;
    endPos.z = cue->endPos.z;
    factor = Environment_LerpWeight(cue->endFrame, cue->startFrame, play->csCtx.curFrame);
    this->actor.world.pos.x = ((endPos.x - startPos.x) * factor) + startPos.x;
    this->actor.world.pos.y = ((endPos.y - startPos.y) * factor) + startPos.y + sJabuCutsceneOffsetY____;
    this->actor.world.pos.z = ((endPos.z - startPos.z) * factor) + startPos.z;
    this->actor.floorHeight =
        BgCheck_EntityRaycastDown4(&play->colCtx, &this->actor.floorPoly, &bgId, &this->actor, &this->actor.world.pos);
}

void EnFish_UpdateImpl_(EnFish* this, PlayState* play) {
    if (this->timer > 0) {
        this->timer--;
    }
    this->phase1 += 0x111;
    this->phase2 += 0x500;
    if ((this->actor.child != NULL) && (this->actor.child->update == NULL) && (this->actor.child != &this->actor)) {
        this->actor.child = NULL;
    }
    if ((this->actionFunc == NULL) || (this->actionFunc(this, play), (this->actor.update != NULL))) {
        Actor_MoveXZGravity(&this->actor);
        if (this->updBgCheckInfoFlags != 0) {
            Actor_UpdateBgCheckInfo(play, &this->actor, 17.5f, 4.0f, 0.0f, this->updBgCheckInfoFlags);
        }
        if (this->actor.xzDistToPlayer < 70.0f) {
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        }
        Actor_SetFocus(&this->actor, this->actor.shape.yOffset * 0.01f);
        if (Actor_HasParent(&this->actor, play)) {
            this->actor.parent = NULL;
            if (this->actor.params == EN_FISH_TYPE_DROPPED) {
                Actor_Kill(&this->actor);
            } else {
                EnFish_Disappear_(this);
            }
        } else if (EnFish_IsInRangeForCatch_(this, play)) {
            Actor_OfferGetItem(&this->actor, play, GI_MAX, 80.0f, 20.0f);
        }
    }
}

void EnFish_UpdateWaitReappear_(EnFish* this, PlayState* play) {
    f32 scale;

    if (this->actor.params == EN_FISH_TYPE_1) {
        Actor_Kill(&this->actor);
        return;
    }
    if ((this->actor.child != NULL) && (this->actor.child->update == NULL) && (this->actor.child != &this->actor)) {
        this->actor.child = NULL;
    }
    if ((this->actionFunc == NULL) || (this->actionFunc(this, play), (this->actor.update != NULL))) {
        Actor_MoveXZGravity(&this->actor);
        if (this->reappearTimer == 20) {
            this->actor.draw = EnFish_Draw;
        } else if (this->reappearTimer == 0) {
            Actor_SetScale(&this->actor, 0.01f);
        } else if (this->reappearTimer < 20) {
            scale = CLAMP_MAX(this->actor.scale.x + 0.001f, 0.01f);
            Actor_SetScale(&this->actor, scale);
        }
    }
}

void EnFish_Update(Actor* thisx, PlayState* play) {
    EnFish* this = (EnFish*)thisx;

    if ((sJabuCutsceneFish___ == NULL) && (this->actor.params == EN_FISH_TYPE_DROPPED) &&
        (play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[1] != NULL)) {
        EnFish_SetupForJabuCutscene____(this);
    }
    if ((sJabuCutsceneFish___ != NULL) && (sJabuCutsceneFish___ == this)) {
        EnFish_JabuCutsceneUpdate____(this, play);
    } else if (this->reappearTimer > 0) {
        this->reappearTimer--;
        EnFish_UpdateWaitReappear_(this, play);
    } else {
        EnFish_UpdateImpl_(this, play);
    }
}

void EnFish_Draw(Actor* thisx, PlayState* play) {
    EnFish* this = (EnFish*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, NULL);
    Collider_UpdateSpheres(0, &this->collider);
}
