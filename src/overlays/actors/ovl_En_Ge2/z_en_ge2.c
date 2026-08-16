#include "z_en_ge2.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "effect.h"
#include "horse.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_gla/object_gla.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnGe2_Init(Actor* thisx, PlayState* play);
void EnGe2_Destroy(Actor* thisx, PlayState* play);
void EnGe2_Update(Actor* thisx, PlayState* play);
void EnGe2_Draw(Actor* thisx, PlayState* play);

s32 EnGe2_AreAllCarpentersRescued(void);
void EnGe2_PlayerCaught(EnGe2* this, PlayState* play);
void EnGe2_PlayerCaughtRun(EnGe2* this, PlayState* play);
void EnGe2_PlayerCaughtTurn(EnGe2* this, PlayState* play);
void EnGe2_Faint(EnGe2* this, PlayState* play);
void EnGe2_PatrolAlerted(EnGe2* this, PlayState* play);
void EnGe2_PatrolTurnAround(EnGe2* this, PlayState* play);
void EnGe2_PatrolWalk(EnGe2* this, PlayState* play);
void EnGe2_Static(EnGe2* this, PlayState* play);
void EnGe2_LookAtPlayer(EnGe2* this, PlayState* play);
void EnGe2_WaitTalk(EnGe2* this, PlayState* play);
void EnGe2_UpdateFriendly(Actor* thisx, PlayState* play);
void EnGe2_UpdateTalking(Actor* thisx, PlayState* play);
void EnGe2_UpdateStunned(Actor* thisx, PlayState* play2);

#define EN_GE2_STATE_FLAG_NO_SKELANIME_UPDATE (1 << 1)
#define EN_GE2_STATE_FLAG_2 (1 << 2)
#define EN_GE2_STATE_FLAG_PLAYER_CAUGHT (1 << 3)
#define EN_GE2_STATE_FLAG_4 (1 << 4)

ActorProfile En_Ge2_Profile = {
    /**/ ACTOR_EN_GE2,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GLA,
    /**/ sizeof(EnGe2),
    /**/ EnGe2_Init,
    /**/ EnGe2_Destroy,
    /**/ EnGe2_Update,
    /**/ EnGe2_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x000007A2, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 20, 60, 0, { 0, 0, 0 } },
};

typedef enum EnGe2Action {
    /* 0 */ EN_GE2_ACTION_PATROL_WALK,
    /* 1 */ EN_GE2_ACTION_PATROL_TURN_AROUND,
    /* 2 */ EN_GE2_ACTION_PATROL_ALERTED,
    /* 3 */ EN_GE2_ACTION_FAINT,
    /* 4 */ EN_GE2_ACTION_PLAYER_CAUGHT_TURN,
    /* 5 */ EN_GE2_ACTION_PLAYER_CAUGHT_RUN,
    /* 6 */ EN_GE2_ACTION_PLAYER_CAUGHT,
    /* 7 */ EN_GE2_ACTION_STATIC,
    /* 8 */ EN_GE2_ACTION_LOOK_AT_PLAYER,
    /* 9 */ EN_GE2_ACTION_MAX
} EnGe2Action;

static void (*sActionFuncs[EN_GE2_ACTION_MAX])(EnGe2*, PlayState*) = {
    EnGe2_PatrolWalk,       // EN_GE2_ACTION_PATROL_WALK
    EnGe2_PatrolTurnAround, // EN_GE2_ACTION_PATROL_TURN_AROUND
    EnGe2_PatrolAlerted,    // EN_GE2_ACTION_PATROL_ALERTED
    EnGe2_Faint,            // EN_GE2_ACTION_FAINT
    EnGe2_PlayerCaughtTurn, // EN_GE2_ACTION_PLAYER_CAUGHT_TURN
    EnGe2_PlayerCaughtRun,  // EN_GE2_ACTION_PLAYER_CAUGHT_RUN
    EnGe2_PlayerCaught,     // EN_GE2_ACTION_PLAYER_CAUGHT
    EnGe2_Static,           // EN_GE2_ACTION_STATIC
    EnGe2_LookAtPlayer,     // EN_GE2_ACTION_LOOK_AT_PLAYER
};
static AnimationHeader* sAnims[EN_GE2_ACTION_MAX] = {
    &gObjectGlaWalkAnim,  // EN_GE2_ACTION_PATROL_WALK
    &gObjectGlaIdleAnim,  // EN_GE2_ACTION_PATROL_TURN_AROUND
    &gObjectGlaIdleAnim,  // EN_GE2_ACTION_PATROL_ALERTED
    &gObjectGlaFaintAnim, // EN_GE2_ACTION_FAINT
    &gObjectGlaIdleAnim,  // EN_GE2_ACTION_PLAYER_CAUGHT_TURN
    &gObjectGlaRunAnim,   // EN_GE2_ACTION_PLAYER_CAUGHT_RUN
    &gObjectGlaIdleAnim,  // EN_GE2_ACTION_PLAYER_CAUGHT
    &gObjectGlaIdleAnim,  // EN_GE2_ACTION_STATIC
    &gObjectGlaIdleAnim,  // EN_GE2_ACTION_LOOK_AT_PLAYER
};
static u8 sAnimModes[EN_GE2_ACTION_MAX] = {
    ANIMMODE_LOOP, // EN_GE2_ACTION_PATROL_WALK
    ANIMMODE_ONCE, // EN_GE2_ACTION_PATROL_TURN_AROUND
    ANIMMODE_LOOP, // EN_GE2_ACTION_PATROL_ALERTED
    ANIMMODE_ONCE, // EN_GE2_ACTION_FAINT
    ANIMMODE_LOOP, // EN_GE2_ACTION_PLAYER_CAUGHT_TURN
    ANIMMODE_LOOP, // EN_GE2_ACTION_PLAYER_CAUGHT_RUN
    ANIMMODE_LOOP, // EN_GE2_ACTION_PLAYER_CAUGHT
    ANIMMODE_LOOP, // EN_GE2_ACTION_STATIC
    ANIMMODE_ONCE, // EN_GE2_ACTION_LOOK_AT_PLAYER
};

void EnGe2_SetupAction(EnGe2* this, s32 action) {
    this->actionFunc = sActionFuncs[action];
    Animation_Change(&this->skelAnime, sAnims[action], 1.0f, 0.0f, Animation_GetLastFrame(sAnims[action]),
                     sAnimModes[action], -8.0f);
    this->stateFlags &= ~EN_GE2_STATE_FLAG_NO_SKELANIME_UPDATE;
}

void EnGe2_Init(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gObjectGlaSkel, NULL, this->jointTable, this->morphTable,
                       OBJECT_GLA_LIMB_MAX);
    Animation_PlayLoop(&this->skelAnime, &gObjectGlaWalkAnim);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    if (play->sceneId == SCENE_GERUDO_VALLEY) {
        this->actor.cullingVolumeDistance = 1000.0f;
    } else {
        this->actor.cullingVolumeDistance = 1200.0f;
    }
    this->detectionYRange = (this->actor.world.rot.z + 1) * 40.0f;
    this->actor.world.rot.z = 0;
    this->actor.shape.rot.z = 0;
    switch (PARAMS_GET_S(thisx->params, 0, 8)) {
        case EN_GE2_TYPE_PATROL:
            EnGe2_SetupAction(this, EN_GE2_ACTION_PATROL_WALK);
            if (EnGe2_AreAllCarpentersRescued()) {
                this->actor.update = EnGe2_UpdateFriendly;
                this->actor.attentionRangeType = ATTENTION_RANGE_6;
            }
            break;

        case EN_GE2_TYPE_STATIC:
            EnGe2_SetupAction(this, EN_GE2_ACTION_STATIC);
            if (EnGe2_AreAllCarpentersRescued()) {
                this->actor.update = EnGe2_UpdateFriendly;
                this->actor.attentionRangeType = ATTENTION_RANGE_6;
            }
            break;

        case EN_GE2_TYPE_GERUDOS_CARD_GIVER:
            EnGe2_SetupAction(this, EN_GE2_ACTION_LOOK_AT_PLAYER);
            this->actor.update = EnGe2_UpdateTalking;
            this->actionFunc = EnGe2_WaitTalk;
            this->actor.attentionRangeType = ATTENTION_RANGE_6;
            break;

        default:
            ASSERT(0, "0", "../z_en_ge2.c", 418);
            break;
    }
    this->stateFlags = 0;
    this->unk_304 = 0;
    this->patrolTimer = 0;
    this->playerNoise = 0;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
    this->targetYaw = this->actor.world.rot.y;
    this->patrolTime = PARAMS_GET_S(thisx->params, 8, 8) * 10;
}

void EnGe2_Destroy(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

s32 EnGe2_GetPlayerNoiseLevel(PlayState* play, EnGe2* this) {
    f32 xzRangeFac;

    if (!IS_DAY) {
        xzRangeFac = 0.75f;
    } else {
        xzRangeFac = 1.5f;
    }
    if ((250.0f * xzRangeFac) < this->actor.xzDistToPlayer) {
        return 0;
    }
    if (this->actor.xzDistToPlayer < 50.0f) {
        return 2;
    }
    if (func_8002DDE4(play)) {
        return 1;
    }
    return 0;
}

s32 EnGe2_CanSeePlayer(PlayState* play, EnGe2* this, Vec3f* headPos, s16 yaw, f32 yRange) {
    Player* player = GET_PLAYER(play);
    Vec3f pos;
    CollisionPoly* poly;
    f32 xzRangeFac;
    s16 relYawTowardsPlayer;

    if (!IS_DAY) {
        xzRangeFac = 0.75f;
    } else {
        xzRangeFac = 1.5f;
    }
    if ((250.0f * xzRangeFac) < this->actor.xzDistToPlayer) {
        return false;
    }
    if (yRange < ABS(this->actor.yDistToPlayer)) {
        return false;
    }
    relYawTowardsPlayer = this->actor.yawTowardsPlayer - yaw;
    if (ABS(relYawTowardsPlayer) > 0x2000) {
        return false;
    }
    if (BgCheck_AnyLineTest1(&play->colCtx, headPos, &player->bodyPartsPos[PLAYER_BODYPART_HEAD], &pos, &poly, false)) {
        return false;
    }
    return true;
}

s32 EnGe2_AreAllCarpentersRescued(void) {
    if (GET_EVENTCHKINF_CARPENTERS_ALL_RESCUED2()) {
        return true;
    } else {
        return false;
    }
}

void EnGe2_PlayerCaught(EnGe2* this, PlayState* play) {
    if (this->timer > 0) {
        this->timer--;
    } else {
        Horse_ResetHorseData(play);
        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            play->nextEntranceIndex = ENTR_GERUDO_VALLEY_1;
        } else if (GET_EVENTCHKINF(EVENTCHKINF_C7)) {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_18;
        } else {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_17;
        }
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    }
}

void EnGe2_PlayerCaughtRun(EnGe2* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 2, 0x400, 0x100);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->actor.xzDistToPlayer < 50.0f) {
        EnGe2_SetupAction(this, EN_GE2_ACTION_PLAYER_CAUGHT);
        this->actor.speed = 0.0f;
    }
    if (this->timer > 0) {
        this->timer--;
    } else {
        Horse_ResetHorseData(play);
        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            play->nextEntranceIndex = ENTR_GERUDO_VALLEY_1;
        } else if (GET_EVENTCHKINF(EVENTCHKINF_C7)) {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_18;
        } else {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_17;
        }
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    }
}

void EnGe2_PlayerCaughtTurn(EnGe2* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 2, 0x400, 0x100);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->actor.world.rot.y == this->actor.yawTowardsPlayer) {
        EnGe2_SetupAction(this, EN_GE2_ACTION_PLAYER_CAUGHT_RUN);
        this->timer = 50;
        this->actor.speed = 4.0f;
    }
}

void EnGe2_Faint(EnGe2* this, PlayState* play) {
    static Vec3f sEffVel = { 0.0f, -0.05f, 0.0f };
    static Vec3f sEffAccel = { 0.0f, -0.025f, 0.0f };
    static Color_RGBA8 sEffPrimColor = { 255, 255, 255, 0 };
    static Color_RGBA8 sEffEnvColor = { 255, 150, 0, 0 };
    s32 angle;
    Vec3f effPos;

    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    if (this->stateFlags & EN_GE2_STATE_FLAG_NO_SKELANIME_UPDATE) {
        angle = play->state.frames * 0x2800;
        effPos.x = this->actor.focus.pos.x + (Math_CosS(angle) * 5.0f);
        effPos.y = this->actor.focus.pos.y + 10.0f;
        effPos.z = this->actor.focus.pos.z + (Math_SinS(angle) * 5.0f);
        EffectSsKiraKira_SpawnDispersed(play, &effPos, &sEffVel, &sEffAccel, &sEffPrimColor, &sEffEnvColor, 1000, 16);
    }
}

void EnGe2_PatrolAlerted(EnGe2* this, PlayState* play) {
    s32 playerNoise;

    this->actor.speed = 0.0f;
    if (this->stateFlags & EN_GE2_STATE_FLAG_4) {
        this->stateFlags &= ~EN_GE2_STATE_FLAG_4;
    } else {
        playerNoise = EnGe2_GetPlayerNoiseLevel(play, this);
        if (playerNoise != 0) {
            this->timer = 100;
            this->patrolAlertedYaw = this->actor.yawTowardsPlayer;
            if (this->playerNoise < playerNoise) {
                this->playerNoise = playerNoise;
            }
        } else if (this->actor.world.rot.y == this->patrolAlertedYaw) {
            this->playerNoise = 0;
            EnGe2_SetupAction(this, EN_GE2_ACTION_PATROL_TURN_AROUND);
            return;
        }
    }
    switch (this->playerNoise) {
        case 1:
            Math_SmoothStepToS(&this->actor.world.rot.y, this->patrolAlertedYaw, 2, 0x200, 0x100);
            break;

        case 2:
            Math_SmoothStepToS(&this->actor.world.rot.y, this->patrolAlertedYaw, 2, 0x600, 0x180);
            break;
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

void EnGe2_PatrolTurnAround(EnGe2* this, PlayState* play) {
    s32 playerNoise;

    this->actor.speed = 0.0f;
    playerNoise = EnGe2_GetPlayerNoiseLevel(play, this);
    if (playerNoise != 0) {
        EnGe2_SetupAction(this, EN_GE2_ACTION_PATROL_ALERTED);
        this->timer = 100;
        this->playerNoise = playerNoise;
        this->patrolAlertedYaw = this->actor.yawTowardsPlayer;
    } else if (this->stateFlags & EN_GE2_STATE_FLAG_NO_SKELANIME_UPDATE) {
        Math_SmoothStepToS(&this->actor.world.rot.y, this->targetYaw, 2, 0x400, 0x200);
        this->actor.shape.rot.y = this->actor.world.rot.y;
    }
    if (this->actor.shape.rot.y == this->targetYaw) {
        EnGe2_SetupAction(this, EN_GE2_ACTION_PATROL_WALK);
    }
}

void EnGe2_PatrolWalk(EnGe2* this, PlayState* play) {
    u8 playerNoise;

    playerNoise = EnGe2_GetPlayerNoiseLevel(play, this);
    if (playerNoise != 0) {
        this->actor.speed = 0.0f;
        EnGe2_SetupAction(this, EN_GE2_ACTION_PATROL_ALERTED);
        this->timer = 100;
        this->playerNoise = playerNoise;
        this->patrolAlertedYaw = this->actor.yawTowardsPlayer;
    } else if (this->patrolTimer >= this->patrolTime) {
        this->patrolTimer = 0;
        this->targetYaw += 0x8000;
        EnGe2_SetupAction(this, EN_GE2_ACTION_PATROL_TURN_AROUND);
        this->actor.speed = 0.0f;
    } else {
        this->patrolTimer++;
        this->actor.speed = 2.0f;
    }
}

void EnGe2_Static(EnGe2* this, PlayState* play) {
    Math_SmoothStepToS(&this->actor.world.rot.y, this->targetYaw, 2, 0x400, 0x200);
}

void EnGe2_TrackPlayer(EnGe2* this, PlayState* play) {
    s16 relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    s32 pad;

    if (ABS(relYawTowardsPlayer) <= 0x4000) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 6, 0xFA0, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    } else {
        if (relYawTowardsPlayer < 0) {
            Math_SmoothStepToS(&this->headRot.y, -0x2000, 6, 0x1838, 0x100);
        } else {
            Math_SmoothStepToS(&this->headRot.y, 0x2000, 6, 0x1838, 0x100);
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 12, 0x3E8, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
    }
}

void EnGe2_TrackPlayerIfNear(EnGe2* this, PlayState* play) {
    s16 relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if ((ABS(relYawTowardsPlayer) <= 0x4300) && (this->actor.xzDistToPlayer < 200.0f)) {
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->headRot.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->headRot.y, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->torsoRot.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->torsoRot.y, 0, 6, 0x1838, 0x64);
    }
}

void EnGe2_WaitTalkEnd(EnGe2* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        switch (PARAMS_GET_S(this->actor.params, 0, 8)) {
            case EN_GE2_TYPE_PATROL:
                EnGe2_SetupAction(this, EN_GE2_ACTION_PATROL_TURN_AROUND);
                break;

            case EN_GE2_TYPE_STATIC:
                EnGe2_SetupAction(this, EN_GE2_ACTION_STATIC);
                break;

            case EN_GE2_TYPE_GERUDOS_CARD_GIVER:
                this->actionFunc = EnGe2_LookAtPlayer;
                break;
        }
        this->actor.update = EnGe2_UpdateFriendly;
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    }
    EnGe2_TrackPlayer(this, play);
}

void EnGe2_LookAtPlayer(EnGe2* this, PlayState* play) {
    EnGe2_TrackPlayerIfNear(this, play);
}

void EnGe2_GiveGerudosCard(EnGe2* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnGe2_WaitTalkEnd;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void EnGe2_Talking(EnGe2* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->actionFunc = EnGe2_GiveGerudosCard;
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void EnGe2_WaitTalk(EnGe2* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnGe2_Talking;
    } else {
        this->actor.textId = 0x6004;
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        Actor_OfferTalkExchange(&this->actor, play, 300.0f, 300.0f, EXCH_ITEM_NONE);
    }
    EnGe2_TrackPlayerIfNear(this, play);
}

void EnGe2_SetupPlayerCaught(EnGe2* this, PlayState* play) {
    this->stateFlags |= EN_GE2_STATE_FLAG_PLAYER_CAUGHT;
    this->actor.speed = 0.0f;
    EnGe2_SetupAction(this, EN_GE2_ACTION_PLAYER_CAUGHT_TURN);
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_95);
    Sfx_PlaySfxCentered(NA_SE_SY_FOUND);
    Message_StartTextbox(play, 0x6000, &this->actor);
}

void EnGe2_UpdateImplPre(EnGe2* this, PlayState* play) {
    s32 pad[2];

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    if (!(this->stateFlags & EN_GE2_STATE_FLAG_NO_SKELANIME_UPDATE) && SkelAnime_Update(&this->skelAnime)) {
        this->stateFlags |= EN_GE2_STATE_FLAG_NO_SKELANIME_UPDATE;
    }
}

void EnGe2_UpdateImplPost(EnGe2* this, PlayState* play) {
    Actor_MoveXZGravity(&this->actor);
    if (DECR(this->eyeTimer) == 0) {
        this->eyeTimer = Rand_S16Offset(60, 60);
    }
    this->eyeTexIndex = this->eyeTimer;
    if (this->eyeTexIndex >= 3) {
        this->eyeTexIndex = 0;
    }
}

void EnGe2_UpdateFriendly(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;

    EnGe2_UpdateImplPre(this, play);
    this->actionFunc(this, play);
    if (Actor_TalkOfferAccepted(thisx, play)) {
        if (PARAMS_GET_S(thisx->params, 0, 8) == EN_GE2_TYPE_PATROL) {
            thisx->speed = 0.0f;
            EnGe2_SetupAction(this, EN_GE2_ACTION_LOOK_AT_PLAYER);
        }
        this->actionFunc = EnGe2_WaitTalkEnd;
        thisx->update = EnGe2_UpdateTalking;
    } else {
        thisx->textId = 0x6005;
        if (thisx->xzDistToPlayer < 100.0f) {
            Actor_OfferTalk(thisx, play, 100.0f);
        }
    }
    EnGe2_UpdateImplPost(this, play);
}

void EnGe2_UpdateTalking(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;

    this->stateFlags |= EN_GE2_STATE_FLAG_4;
    EnGe2_UpdateImplPre(this, play);
    this->actionFunc(this, play);
    EnGe2_UpdateImplPost(this, play);
}

void EnGe2_Update(Actor* thisx, PlayState* play) {
    EnGe2* this = (EnGe2*)thisx;

    EnGe2_UpdateImplPre(this, play);
    if ((this->stateFlags & EN_GE2_STATE_FLAG_2) || (this->stateFlags & EN_GE2_STATE_FLAG_PLAYER_CAUGHT)) {
        this->actionFunc(this, play);
    } else if (this->collider.base.acFlags & AC_HIT) {
        if ((this->collider.elem.acHitElem != NULL) &&
            (this->collider.elem.acHitElem->atDmgInfo.dmgFlags & DMG_HOOKSHOT)) {
            //! @bug duration parameter is larger than 255 which messes with the internal bitpacking of the
            //! colorfilter.
            //! Because of the duration being tracked as an unsigned byte it ends up being truncated to 144
            Actor_SetColorFilter(&this->actor, COLORFILTER_COLORFLAG_BLUE, 120, COLORFILTER_BUFFLAG_OPA, 400);
            this->actor.update = EnGe2_UpdateStunned;
            return;
        }
        EnGe2_SetupAction(this, EN_GE2_ACTION_FAINT);
        this->timer = 100;
        this->stateFlags |= EN_GE2_STATE_FLAG_2;
        this->actor.speed = 0.0f;
        Actor_PlaySfx(&this->actor, NA_SE_VO_SK_CRASH);
    } else {
        this->actionFunc(this, play);
        if (EnGe2_CanSeePlayer(play, this, &this->actor.focus.pos, this->actor.shape.rot.y, this->detectionYRange)) {
            PRINTF(VT_FGCOL(GREEN) "発見!!!!!!!!!!!!\n" VT_RST);
            EnGe2_SetupPlayerCaught(this, play);
        }
        if ((PARAMS_GET_S(this->actor.params, 0, 8) == EN_GE2_TYPE_STATIC) && (this->actor.xzDistToPlayer < 100.0f)) {
            PRINTF(VT_FGCOL(GREEN) "発見!!!!!!!!!!!!\n" VT_RST);
            EnGe2_SetupPlayerCaught(this, play);
        }
    }
    if (!(this->stateFlags & EN_GE2_STATE_FLAG_2) && ((PARAMS_GET_S(this->actor.params, 0, 8) == EN_GE2_TYPE_PATROL) ||
                                                      (PARAMS_GET_S(this->actor.params, 0, 8) == EN_GE2_TYPE_STATIC))) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
    EnGe2_UpdateImplPost(this, play);
    if (EnGe2_AreAllCarpentersRescued() && !(this->stateFlags & EN_GE2_STATE_FLAG_2)) {
        this->actor.update = EnGe2_UpdateFriendly;
        this->actor.attentionRangeType = ATTENTION_RANGE_6;
    }
}

void EnGe2_UpdateStunned(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnGe2* this = (EnGe2*)thisx;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    if ((this->collider.base.acFlags & AC_HIT) &&
        ((this->collider.elem.acHitElem == NULL) ||
         !(this->collider.elem.acHitElem->atDmgInfo.dmgFlags & DMG_HOOKSHOT))) {
        this->actor.colorFilterTimer = 0;
        EnGe2_SetupAction(this, EN_GE2_ACTION_FAINT);
        this->timer = 100;
        this->stateFlags |= EN_GE2_STATE_FLAG_2;
        this->actor.speed = 0.0f;
        Actor_PlaySfx(&this->actor, NA_SE_VO_SK_CRASH);
    }
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    if (EnGe2_AreAllCarpentersRescued()) {
        this->actor.update = EnGe2_UpdateFriendly;
        this->actor.attentionRangeType = ATTENTION_RANGE_6;
        this->actor.colorFilterTimer = 0;
    } else if (this->actor.colorFilterTimer == 0) {
        this->actor.update = EnGe2_Update;
    }
}

s32 EnGe2_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGe2* this = (EnGe2*)thisx;

    if (limbIndex == OBJECT_GLA_LIMB_HEAD_ROOT) {
        rot->x += this->headRot.y;
        rot->z += this->headRot.x;
    }
    return false;
}

void EnGe2_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f sFocusOffset = { 600.0f, 700.0f, 0.0f };
    EnGe2* this = (EnGe2*)thisx;

    if (limbIndex == OBJECT_GLA_LIMB_HEAD) {
        Matrix_MultVec3f(&sFocusOffset, &this->actor.focus.pos);
    }
}

void EnGe2_Draw(Actor* thisx, PlayState* play) {
    static void* sEyeTextures[] = {
        gObjectGlaEyeOpenTex,
        gObjectGlaEyeHalfTex,
        gObjectGlaEyeClosedTex,
    };
    EnGe2* this = (EnGe2*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge2.c", 1274);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
    func_8002EBCC(&this->actor, play, 0);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnGe2_OverrideLimbDraw, EnGe2_PostLimbDraw, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge2.c", 1291);
}
