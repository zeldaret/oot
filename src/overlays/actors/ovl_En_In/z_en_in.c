#include "z_en_in.h"
#include "src/overlays/actors/ovl_En_Horse/z_en_horse.h"

#include "libc64/qrand.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "letterbox.h"
#include "printf.h"
#include "regs.h"
#include "segmented_address.h"
#include "sequence.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "versions.h"
#include "z_lib.h"
#include "audio.h"
#include "face_reaction.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_in/object_in.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnIn_Init(Actor* thisx, PlayState* play);
void EnIn_Destroy(Actor* thisx, PlayState* play);
void EnIn_Update(Actor* thisx, PlayState* play);
void EnIn_Draw(Actor* thisx, PlayState* play);

void EnIn_WaitForObject(EnIn* this, PlayState* play);
void EnIn_Racing(EnIn* this, PlayState* play);
void EnIn_StartRentalPeriod(EnIn* this, PlayState* play);
void EnIn_RentalPeriod(EnIn* this, PlayState* play);
void EnIn_OfferingRematch(EnIn* this, PlayState* play);
void EnIn_ClosingGate(EnIn* this, PlayState* play);
void EnIn_GuardingGate(EnIn* this, PlayState* play);
void EnIn_PlayerEscapesRanch(EnIn* this, PlayState* play);
void EnIn_EndRentalPeriod(EnIn* this, PlayState* play);
void EnIn_FinishClosingGate(EnIn* this, PlayState* play);
void EnIn_PlayerLostRace(EnIn* this, PlayState* play);
void EnIn_PlayerWonFirstRace(EnIn* this, PlayState* play);
void EnIn_PlayerWonSecondRace(EnIn* this, PlayState* play);
void EnIn_Idle(EnIn* this, PlayState* play);

ActorProfile En_In_Profile = {
    /**/ ACTOR_EN_IN,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_IN,
    /**/ sizeof(EnIn),
    /**/ EnIn_Init,
    /**/ EnIn_Destroy,
    /**/ EnIn_Update,
    /**/ EnIn_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000000, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 18, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

typedef enum EnInAnimation {
    /* 0 */ ENIN_ANIM_STANDING,
    /* 1 */ ENIN_ANIM_STANDING_MORPH,
    /* 2 */ ENIN_ANIM_STANDING_FOOT_FORWARD,
    /* 3 */ ENIN_ANIM_STANDING_FOOT_FORWARD_MORPH,
    /* 4 */ ENIN_ANIM_GLOATING,
    /* 5 */ ENIN_ANIM_RUNNING,
    /* 6 */ ENIN_ANIM_LOSING,
    /* 7 */ ENIN_ANIM_SLEEPING,
    /* 8 */ ENIN_ANIM_OBEDIENT,
    /* 9 */ ENIN_ANIM_WORKING
} EnInAnimation;

typedef enum EnInStartMode {
    /* 0 */ ENIN_START_MODE_NULL,
    /* 1 */ ENIN_START_MODE_WORKING,
    /* 2 */ ENIN_START_MODE_RUNNING_RANCH,
    /* 3 */ ENIN_START_MODE_SLEEPING,
    /* 4 */ ENIN_START_MODE_OBEDIENT
} EnInStartMode;

static AnimationFrameCountInfo sAnimationInfo[] = {
    { &gIngoStandingAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gIngoStandingAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gIngoStandingFootForwardAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gIngoStandingFootForwardAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gIngoGloatingAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gIngoRunningAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gIngoLosingAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gIngoSleepingAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gIngoObedientAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gIngoWorkingAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
};

static AnimationHeader* sHorsebackAnimations[] = {
    &gIngoHorsebackSlowRideAnim,       &gIngoHorsebackSittingForwardAnim, &gIngoHorsebackRearingAnim,
    &gIngoHorsebackLashingFastAnim,    &gIngoHorsebackLashingSlowAnim,    &gIngoHorsebackKickingAnim,
    &gIngoHorsebackSittingUprightAnim, &gIngoHorsebackWhoopingAnim,
};

static Gfx* sAdultEraDLs[] = {
    NULL,
    NULL,
    gIngoAdultEraLeftThighDL,
    gIngoAdultEraLeftLegDL,
    gIngoAdultEraLeftFootDL,
    gIngoAdultEraRightThighDL,
    gIngoAdultEraRightLegDL,
    gIngoAdultEraRightFootDL,
    gIngoAdultEraTorsoDL,
    gIngoAdultEraChestDL,
    gIngoAdultEraLeftShoulderDL,
    gIngoAdultEraLeftArmDL,
    gIngoAdultEraLeftHandDL,
    gIngoAdultEraRightShoulderDL,
    gIngoAdultEraRightArmDL,
    gIngoAdultEraRightHandDL,
    gIngoAdultEraHeadDL,
    gIngoAdultEraLeftEyebrowDL,
    gIngoAdultEraRightEyebrowDL,
    gIngoAdultEraMustacheDL,
};

u16 EnIn_GetTextIdChild(PlayState* play) {
    if (GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        if (GET_INFTABLE(INFTABLE_INGO_TALKED_TO_CHILD_LINK_AFTER_TALON_RETURNED)) {
            return 0x2046;
        } else {
            return 0x2045;
        }
    }
    if (GET_INFTABLE(INFTABLE_INGO_TALKED_TO_CHILD_LINK_BEFORE_TALON_RETURNED)) {
        return 0x2040;
    } else {
        return 0x203F;
    }
}

u16 EnIn_GetTextIdAdult(PlayState* play) {
    Player* player = GET_PLAYER(play);
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_INGO);

    if (textId != 0) {
        return textId;
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
        if (IS_DAY) {
            return 0x205F;
        } else {
            return 0x2057;
        }
    }
    if (IS_NIGHT) {
        return 0x204E;
    }
    switch (GET_EVENTINF_INGO_RACE_STATE()) {
        case INGO_RACE_STATE_HORSE_RENTAL_PERIOD:
            if (!(player->stateFlags1 & PLAYER_STATE1_23)) {
                return 0x2036;
            } else if (GET_EVENTCHKINF(EVENTCHKINF_1B)) {
                if (GET_INFTABLE(INFTABLE_A2)) {
                    return 0x2036;
                } else {
                    return 0x2038;
                }
            } else {
                return 0x2037;
            }
        case INGO_RACE_STATE_PLAYER_LOSE:
            if (GET_EVENTINF(EVENTINF_INGO_RACE_SECOND_RACE) || GET_EVENTINF(EVENTINF_INGO_RACE_LOST_ONCE)) {
                return 0x203E;
            } else {
                return 0x203D;
            }
        case INGO_RACE_STATE_FIRST_WIN:
            return 0x203A;
        case INGO_RACE_STATE_TRAPPED_WIN_UNUSED:
        case INGO_RACE_STATE_TRAPPED_WIN_EPONA:
            return 0x203C;
        case INGO_RACE_STATE_REMATCH:
            // Ask to race again after losing race
            return 0x205B;
        case INGO_RACE_STATE_RACING:
        default:
            if (GET_INFTABLE(INFTABLE_INGO_TALKED_TO_ADULT_LINK)) {
                // Pay to Ride
                return 0x2031;
            } else {
                // Adult Ingo first dialog, branches to pay to ride
                return 0x2030;
            }
    }
}

u16 EnIn_GetTextId(PlayState* play, Actor* thisx) {
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_INGO);

    if (textId != 0) {
        return textId;
    }
    if (!LINK_IS_ADULT) {
        return EnIn_GetTextIdChild(play);
    } else {
        return EnIn_GetTextIdAdult(play);
    }
}

s16 EnIn_UpdateTalkStateOnClosing(PlayState* play, Actor* thisx) {
    s32 talkState = NPC_TALK_STATE_IDLE;

    switch (thisx->textId) {
        case 0x2045:
            SET_INFTABLE(INFTABLE_INGO_TALKED_TO_CHILD_LINK_AFTER_TALON_RETURNED);
            break;
        case 0x203E:
            talkState = NPC_TALK_STATE_ACTION;
            break;
        case 0x203F:
            SET_EVENTCHKINF(EVENTCHKINF_11);
            SET_INFTABLE(INFTABLE_INGO_TALKED_TO_CHILD_LINK_BEFORE_TALON_RETURNED);
            break;
    }
    return talkState;
}

s16 EnIn_UpdateTalkStateOnChoice(PlayState* play, Actor* thisx) {
    EnIn* this = (EnIn*)thisx;
    s32 talkState = NPC_TALK_STATE_TALKING;

    switch (this->actor.textId) {
        case 0x2030:
        case 0x2031:
            if (play->msgCtx.choiceIndex == 1) {
                this->actor.textId = 0x2032;
            } else if (gSaveContext.save.info.playerData.rupees < 10) {
                this->actor.textId = 0x2033;
            } else {
                this->actor.textId = 0x2034;
            }
            Message_ContinueTextbox(play, this->actor.textId);
            SET_INFTABLE(INFTABLE_INGO_TALKED_TO_ADULT_LINK);
            break;
        case 0x2034:
            if (play->msgCtx.choiceIndex == 1) {
                Rupees_ChangeBy(-10);
                this->actor.textId = 0x205C;
            } else {
                this->actor.textId = 0x2035;
            }
            Message_ContinueTextbox(play, this->actor.textId);
            break;
        case 0x2036:
        case 0x2037:
            if (play->msgCtx.choiceIndex == 1) {
                talkState = NPC_TALK_STATE_ACTION;
            } else {
                this->actor.textId = 0x201F;
                Message_ContinueTextbox(play, this->actor.textId);
            }
            break;
        case 0x2038:
            if (play->msgCtx.choiceIndex == 0 && gSaveContext.save.info.playerData.rupees >= 50) {
                talkState = NPC_TALK_STATE_ACTION;
            } else {
                this->actor.textId = 0x2039;
                Message_ContinueTextbox(play, this->actor.textId);
                SET_INFTABLE(INFTABLE_A2);
            }
            break;
        case 0x205B:
            if (play->msgCtx.choiceIndex == 0 && gSaveContext.save.info.playerData.rupees >= 50) {
                talkState = NPC_TALK_STATE_ACTION;
            } else {
                Message_ContinueTextbox(play, this->actor.textId = 0x2039);
                SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_OFFER_RENTAL);
                CLEAR_EVENTINF(EVENTINF_INGO_RACE_LOST_ONCE);
                CLEAR_EVENTINF(EVENTINF_INGO_RACE_SECOND_RACE);
                this->actionFunc = EnIn_StartRentalPeriod;
            }
            break;
    }
    if (!gSaveContext.save.info.playerData.rupees) {}

    return talkState;
}

s16 EnIn_UpdateTalkStateOnEvent(PlayState* play, Actor* thisx) {
    s32 talkState = NPC_TALK_STATE_TALKING;

    if (thisx->textId == 0x2035) {
        Rupees_ChangeBy(-10);
        thisx->textId = 0x205C;
        Message_ContinueTextbox(play, thisx->textId);
    } else {
        talkState = NPC_TALK_STATE_ACTION;
    }
    return talkState;
}

s16 EnIn_UpdateTalkState(PlayState* play, Actor* thisx) {
    s16 talkState = NPC_TALK_STATE_TALKING;

    PRINTF("message_check->(%d[%x])\n", Message_GetState(&play->msgCtx), thisx->textId);
    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
            break;
        case TEXT_STATE_CLOSING:
            talkState = EnIn_UpdateTalkStateOnClosing(play, thisx);
            break;
        case TEXT_STATE_DONE_FADING:
            break;
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play)) {
                talkState = EnIn_UpdateTalkStateOnChoice(play, thisx);
            }
            break;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                talkState = EnIn_UpdateTalkStateOnEvent(play, thisx);
            }
            break;
        case TEXT_STATE_DONE:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            break;
    }
    return talkState;
}

void EnIn_UpdateTracking(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 trackingMode;

    if (this->skelAnime.animation == &gIngoRunningAnim || this->skelAnime.animation == &gIngoLosingAnim ||
        this->skelAnime.animation == &gIngoSleepingAnim) {
        trackingMode = NPC_TRACKING_NONE;
    } else {
        trackingMode = NPC_TRACKING_PLAYER_AUTO_TURN;
    }
    if (this->actionFunc == EnIn_RentalPeriod) {
        trackingMode = NPC_TRACKING_FULL_BODY;
    }
    if (this->actionFunc == EnIn_EndRentalPeriod) {
        this->interactInfo.trackPos = play->view.eye;
        this->interactInfo.yOffset = 60.0f;
    } else {
        this->interactInfo.trackPos = player->actor.world.pos;
        this->interactInfo.yOffset = 16.0f;
    }
    Npc_TrackPoint(&this->actor, &this->interactInfo, 1, trackingMode);
}

void EnIn_Stagger(SkelAnime* skelAnime, EnIn* this, PlayState* play) {
    if (skelAnime->baseTransl.y < skelAnime->jointTable[0].y) {
        skelAnime->movementFlags |= ANIM_FLAG_UPDATE_XZ | ANIM_FLAG_UPDATE_Y;
        AnimTaskQueue_AddActorMovement(play, &this->actor, skelAnime, 1.0f);
    }
}

void EnIn_ChangeAnim(EnIn* this, s32 index) {
    Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationInfo[index].animation), sAnimationInfo[index].mode,
                     sAnimationInfo[index].morphFrames);
}

s32 EnIn_StartingRace(EnIn* this, PlayState* play) {
    if (this->actor.params != 1 || this->actor.shape.rot.z != 1 || !LINK_IS_ADULT) {
        return false;
    }
    this->horsebackAnimationIdx = ENIN_HORSE_ANIM_SITTING_FORWARD;
    this->collider.base.ocFlags1 &= ~OC1_ON;
    Animation_Change(&this->skelAnime, sHorsebackAnimations[this->horsebackAnimationIdx], 1.0f, 0.0f,
                     Animation_GetLastFrame(sHorsebackAnimations[this->horsebackAnimationIdx]), ANIMMODE_ONCE, 0.0f);
    this->actionFunc = EnIn_Racing;
    return true;
}

s32 EnIn_GetStartMode(EnIn* this, PlayState* play) {
    if (play->sceneId == SCENE_LON_LON_RANCH && LINK_IS_CHILD && IS_DAY && this->actor.shape.rot.z == 1 &&
        !GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        return ENIN_START_MODE_WORKING;
    }
    if (play->sceneId == SCENE_STABLE && LINK_IS_CHILD && IS_DAY && this->actor.shape.rot.z == 3 &&
        GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        return ENIN_START_MODE_WORKING;
    }
    if (play->sceneId == SCENE_STABLE && LINK_IS_CHILD && IS_NIGHT) {
        if ((this->actor.shape.rot.z == 2) && !GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
            return ENIN_START_MODE_WORKING;
        }
        if ((this->actor.shape.rot.z == 4) && GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
            return ENIN_START_MODE_WORKING;
        }
    }
    if (play->sceneId == SCENE_LON_LON_RANCH && LINK_IS_ADULT && IS_DAY) {
        if ((this->actor.shape.rot.z == 5) && !GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
            return ENIN_START_MODE_RUNNING_RANCH;
        }
        if ((this->actor.shape.rot.z == 7) && GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
            return ENIN_START_MODE_OBEDIENT;
        }
    }
    if (play->sceneId == SCENE_LON_LON_BUILDINGS && LINK_IS_ADULT && IS_NIGHT) {
        if (this->actor.shape.rot.z == 6 && !GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
            return ENIN_START_MODE_SLEEPING;
        }
        if (this->actor.shape.rot.z == 8 && GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
            return ENIN_START_MODE_SLEEPING;
        }
    }
    return ENIN_START_MODE_NULL;
}

void EnIn_UpdateEyes(EnIn* this) {
    if (this->eyeIndex != 3) {
        if (DECR(this->blinkTimer) == 0) {
            this->eyeIndex++;
            if (this->eyeIndex >= 3) {
                this->blinkTimer = Rand_S16Offset(30, 30);
                this->eyeIndex = 0;
            }
        }
    }
}

void EnIn_Fidget(EnIn* this, PlayState* play) {
    s32 i;
    u32 f = 0;

    if (this->skelAnime.animation != &gIngoWorkingAnim) {
        f = play->gameplayFrames;
    }
    for (i = 0; i < ARRAY_COUNT(this->fidgetVec); i++) {
        this->fidgetVec[i].y = (FIDGET_FREQ_Y + FIDGET_FREQ_LIMB * i) * f;
        this->fidgetVec[i].z = (FIDGET_FREQ_Z + FIDGET_FREQ_LIMB * i) * f;
    }
}

void EnIn_StartTransition(EnIn* this, PlayState* play, s32 index, u32 transitionType) {
    s16 entrances[] = { ENTR_LON_LON_RANCH_8, ENTR_LON_LON_RANCH_6, ENTR_LON_LON_RANCH_0 };

    play->nextEntranceIndex = entrances[index];
    if (index == 2) {
        gSaveContext.nextCutsceneIndex = CS_INDEX_0;
    }
    play->transitionType = transitionType;
    play->transitionTrigger = TRANS_TRIGGER_START;
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_8);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
    if (index == 0) {
        R_EXITED_SCENE_RIDING_HORSE = false;
    }
    gSaveContext.timerState = TIMER_STATE_OFF;
}

void EnIn_RentalTimeExpired(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f subCamAt;
    Vec3f subCamEye;
    Vec3s zeroVec = { 0, 0, 0 };

    this->subCamId = Play_CreateSubCamera(play);
    Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
    Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
    subCamAt.x = this->actor.world.pos.x;
    subCamAt.y = this->actor.world.pos.y + 60.0f;
    subCamAt.z = this->actor.world.pos.z;
    subCamEye.x = subCamAt.x;
    subCamEye.y = subCamAt.y - 22.0f;
    subCamEye.z = subCamAt.z + 40.0f;
    Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.world.pos, &subCamEye);
    this->interactInfo.headRot = zeroVec;
    this->interactInfo.torsoRot = zeroVec;
    Message_StartTextbox(play, 0x2025, NULL);
    this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
    player->actor.world.pos = this->actor.world.pos;
    player->actor.world.pos.x += 100.0f * Math_SinS(this->actor.shape.rot.y);
    player->actor.world.pos.z += 100.0f * Math_CosS(this->actor.shape.rot.y);
    if (player->rideActor != NULL) {
        player->rideActor->world.pos = player->actor.world.pos;
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    Letterbox_SetSizeTarget(32);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING_ALT);
}

static s32 sIsObedient = false;

void EnIn_Init(Actor* thisx, PlayState* play) {
    EnIn* this = (EnIn*)thisx;
    RespawnData* respawn = &gSaveContext.respawn[RESPAWN_MODE_DOWN];
    Vec3f respawnPos;

    this->requiredObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_IN);
    if (this->requiredObjectSlot < 0 && this->actor.params > 0) {
        this->actionFunc = NULL;
        Actor_Kill(&this->actor);
        return;
    }
    respawnPos = respawn->pos;
    // hardcoded coords for lon lon entrance
    if (!sIsObedient && respawnPos.x == 1107.0f && respawnPos.y == 0.0f && respawnPos.z == -3740.0f) {
        gSaveContext.eventInf[EVENTINF_INDEX_HORSES] = 0;
        sIsObedient = true;
    }
    this->actionFunc = EnIn_WaitForObject;
}

void EnIn_Destroy(Actor* thisx, PlayState* play) {
    EnIn* this = (EnIn*)thisx;

    if (this->actionFunc != NULL && this->actionFunc != EnIn_WaitForObject) {
        Collider_DestroyCylinder(play, &this->collider);
    }
}

// This function does not actually wait since it waits for OBJECT_IN,
// but the object is already loaded at this point from being set in the ActorProfile data
void EnIn_WaitForObject(EnIn* this, PlayState* play) {
    s32 staySpawned = false;

    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot) || this->actor.params <= 0) {
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
        SkelAnime_InitFlex(play, &this->skelAnime, &gIngoSkel, NULL, this->jointTable, this->morphTable, 20);
        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
        CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
        if (EnIn_StartingRace(this, play)) {
            WRITE_EVENTINF_INGO_RACE_0F(0);
            return;
        }
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.attentionRangeType = ATTENTION_RANGE_6;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        this->actionFunc = EnIn_Idle;

        switch (EnIn_GetStartMode(this, play)) {
            case ENIN_START_MODE_WORKING:
                EnIn_ChangeAnim(this, ENIN_ANIM_WORKING);
                this->actionFunc = EnIn_Idle;
                break;
            case ENIN_START_MODE_SLEEPING:
                EnIn_ChangeAnim(this, ENIN_ANIM_SLEEPING);
                this->actionFunc = EnIn_Idle;
                if (!GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
                    this->actor.params = 5;
                }
                break;
            case ENIN_START_MODE_OBEDIENT:
                EnIn_ChangeAnim(this, ENIN_ANIM_OBEDIENT);
                this->eyeIndex = 3;
                this->actionFunc = EnIn_Idle;
                break;
            case ENIN_START_MODE_NULL:
                Actor_Kill(&this->actor);
                break;
            default: // ENIN_START_MODE_RUNNING_RANCH
                switch (GET_EVENTINF_INGO_RACE_STATE()) {
                    case INGO_RACE_STATE_OFFER_RENTAL:
                    case INGO_RACE_STATE_RACING:
                    case INGO_RACE_STATE_PLAYER_LOSE:
                    case INGO_RACE_STATE_FIRST_WIN:
                    case INGO_RACE_STATE_REMATCH:
                        if (this->actor.params == 2) {
                            staySpawned = true;
                        }
                        break;
                    case INGO_RACE_STATE_HORSE_RENTAL_PERIOD:
                        if (this->actor.params == 3) {
                            staySpawned = true;
                        }
                        break;
                    case INGO_RACE_STATE_TRAPPED_WIN_UNUSED:
                    case INGO_RACE_STATE_TRAPPED_WIN_EPONA:
                        if (this->actor.params == 4) {
                            staySpawned = true;
                        }
                        break;
                }
                if (staySpawned != true) {
                    Actor_Kill(&this->actor);
                    return;
                }
                switch (GET_EVENTINF_INGO_RACE_STATE()) {
                    case INGO_RACE_STATE_OFFER_RENTAL:
                    case INGO_RACE_STATE_RACING:
                        EnIn_ChangeAnim(this, ENIN_ANIM_STANDING_FOOT_FORWARD);
                        this->actionFunc = EnIn_StartRentalPeriod;
                        gSaveContext.eventInf[EVENTINF_INDEX_HORSES] = 0;
                        break;
                    case INGO_RACE_STATE_HORSE_RENTAL_PERIOD:
                        this->actor.attentionRangeType = ATTENTION_RANGE_3;
                        EnIn_ChangeAnim(this, ENIN_ANIM_STANDING_FOOT_FORWARD);
                        this->actionFunc = EnIn_RentalPeriod;
                        Interface_SetTimer(60);
                        break;
                    case INGO_RACE_STATE_PLAYER_LOSE:
                        EnIn_ChangeAnim(this, ENIN_ANIM_GLOATING);
                        this->actionFunc = EnIn_PlayerLostRace;
                        break;
                    case INGO_RACE_STATE_FIRST_WIN:
                        EnIn_ChangeAnim(this, ENIN_ANIM_LOSING);
                        this->losingScreamTimer = 8;
                        this->actionFunc = EnIn_PlayerWonFirstRace;
                        break;
                    case INGO_RACE_STATE_TRAPPED_WIN_UNUSED:
                    case INGO_RACE_STATE_TRAPPED_WIN_EPONA:
                        this->actor.attentionRangeType = ATTENTION_RANGE_3;
                        EnIn_ChangeAnim(this, ENIN_ANIM_LOSING);
                        this->losingScreamTimer = 8;
                        this->actionFunc = EnIn_PlayerWonSecondRace;
                        break;
                    case INGO_RACE_STATE_REMATCH:
                        EnIn_ChangeAnim(this, ENIN_ANIM_STANDING_FOOT_FORWARD);
                        this->actionFunc = EnIn_OfferingRematch;
                        break;
                }
        }
    }
}

void EnIn_Racing(EnIn* this, PlayState* play) {
    if (this->skelAnime.animation == &gIngoHorsebackLashingFastAnim ||
        this->skelAnime.animation == &gIngoHorsebackLashingSlowAnim) {
        if (this->skelAnime.curFrame == 8.0f) {
            Audio_PlaySfxRandom(&this->actor.projectedPos, NA_SE_VO_IN_LASH_0,
                                NA_SE_VO_IN_LASH_1 - NA_SE_VO_IN_LASH_0 + 1);
        }
    }
    if (this->skelAnime.animation == &gIngoHorsebackWhoopingAnim && this->skelAnime.curFrame == 20.0f) {
        Actor_PlaySfx(&this->actor, NA_SE_VO_IN_CRY_0);
    }
    if (SkelAnime_Update(&this->skelAnime)) {
        this->horsebackAnimationIdx %= ENIN_HORSE_ANIM_MAX;
        this->unusedAnimationIdx = this->horsebackAnimationIdx;
        if (this->horsebackAnimationIdx == ENIN_HORSE_ANIM_LASHING_FAST ||
            this->horsebackAnimationIdx == ENIN_HORSE_ANIM_LASHING_SLOW) {
            SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_IT_LASH);
            if (Rand_ZeroOne() < 0.3f) {
                SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_IT_INGO_HORSE_NEIGH);
            }
        }
        Animation_Change(&this->skelAnime, sHorsebackAnimations[this->horsebackAnimationIdx], 1.0f, 0.0f,
                         Animation_GetLastFrame(sHorsebackAnimations[this->horsebackAnimationIdx]), ANIMMODE_ONCE,
                         -10.0f);
    }
}

void EnIn_Idle(EnIn* this, PlayState* play) {
}

void EnIn_StartRentalPeriod(EnIn* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        EnIn_StartTransition(this, play, 1, TRANS_TYPE_CIRCLE(TCA_NORMAL, TCC_BLACK, TCS_FAST));
        SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_HORSE_RENTAL_PERIOD);
        WRITE_EVENTINF_INGO_RACE_0F(1);
        CLEAR_INFTABLE(INFTABLE_A2);
        Environment_ForcePlaySequence(NA_BGM_HORSE);
        play->msgCtx.stateTimer = 0;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    }
}

void EnIn_RentalPeriod(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 entranceIndex;
    s32 transitionType;

    if (!GET_EVENTCHKINF(EVENTCHKINF_1B) && (player->stateFlags1 & PLAYER_STATE1_23)) {
        SET_INFTABLE(INFTABLE_AB);
    }
    if (gSaveContext.timerState == TIMER_STATE_STOP) {
        SFX_PLAY_CENTERED(NA_SE_SY_FOUND);
        EnIn_RentalTimeExpired(this, play);
        this->actionFunc = EnIn_EndRentalPeriod;
        gSaveContext.timerState = TIMER_STATE_OFF;
    } else if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        if (play->msgCtx.choiceIndex == 0) {
            if (gSaveContext.save.info.playerData.rupees < 50) {
                play->msgCtx.stateTimer = 4;
                play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
                this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
                return;
            }
            WRITE_EVENTINF_INGO_RACE_HORSETYPE(((EnHorse*)GET_PLAYER(play)->rideActor)->type);
            SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_RACING);
            entranceIndex = 2;
            transitionType = TRANS_TYPE_FADE_BLACK;
        } else {
            SFX_PLAY_CENTERED(NA_SE_SY_FOUND);
            if (!GET_EVENTCHKINF(EVENTCHKINF_1B)) {
                if (GET_INFTABLE(INFTABLE_AB)) {
                    SET_EVENTCHKINF(EVENTCHKINF_1B);
                    SET_INFTABLE(INFTABLE_AB);
                }
            }
            SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_OFFER_RENTAL);
            entranceIndex = 0;
            transitionType = TRANS_TYPE_CIRCLE(TCA_NORMAL, TCC_BLACK, TCS_FAST);
        }
        EnIn_StartTransition(this, play, entranceIndex, transitionType);
        play->msgCtx.stateTimer = 0;
        WRITE_EVENTINF_INGO_RACE_0F(1);
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    }
}

void EnIn_PlayerLostRace(EnIn* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    } else if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        Rupees_ChangeBy(-50);
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        EnIn_ChangeAnim(this, ENIN_ANIM_STANDING_FOOT_FORWARD_MORPH);
        this->actionFunc = EnIn_OfferingRematch;
        SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_REMATCH);
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        SET_EVENTINF_INGO_RACE_FLAG(EVENTINF_INGO_RACE_LOST_ONCE);
        if (!GET_EVENTINF(EVENTINF_INGO_RACE_SECOND_RACE)) {
            play->msgCtx.stateTimer = 4;
            play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        }
    }
}

void EnIn_OfferingRematch(EnIn* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        if ((play->msgCtx.choiceIndex == 0 && gSaveContext.save.info.playerData.rupees < 50) ||
            play->msgCtx.choiceIndex == 1) {
            SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_OFFER_RENTAL);
            this->actionFunc = EnIn_StartRentalPeriod;
        } else {
            EnIn_StartTransition(this, play, 2, TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST));
            SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_RACING);
            WRITE_EVENTINF_INGO_RACE_0F(1);
            play->msgCtx.stateTimer = 0;
            play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        }
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        CLEAR_EVENTINF(EVENTINF_INGO_RACE_LOST_ONCE);
        CLEAR_EVENTINF(EVENTINF_INGO_RACE_SECOND_RACE);
    }
}

void EnIn_PlayerWonFirstRace(EnIn* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        return;
    }
    if (this->losingScreamTimer != 0) {
        this->losingScreamTimer--;
        if (this->losingScreamTimer == 0) {
            Actor_PlaySfx(&this->actor, NA_SE_VO_IN_LOST);
        }
    }
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        EnIn_StartTransition(this, play, 2, TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST));
        SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_RACING);
        WRITE_EVENTINF_INGO_RACE_0F(1);
        play->msgCtx.stateTimer = 0;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        SET_EVENTINF_INGO_RACE_FLAG(EVENTINF_INGO_RACE_SECOND_RACE);
    }
}

void EnIn_PlayerWonSecondRace(EnIn* this, PlayState* play) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f subCamAt;
    Vec3f subCamEye;

    this->subCamId = Play_CreateSubCamera(play);
    this->returnToCamId = play->activeCamId;
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_WAIT);
    Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);

    this->subCamAtOffset.x = 0.0f;
    this->subCamAtOffset.y = 50.0f;
    this->subCamAtOffset.z = 0.0f;
    this->subCamEyeOffset.x = 0.0f;
    this->subCamEyeOffset.y = 50.0f;
    this->subCamEyeOffset.z = 50.0f;

    subCamAt = this->actor.world.pos;
    subCamEye = this->actor.world.pos;

    subCamAt.x += this->subCamAtOffset.x;
    subCamAt.y += this->subCamAtOffset.y;
    subCamAt.z += this->subCamAtOffset.z;

    subCamEye.x += this->subCamEyeOffset.x;
    subCamEye.y += this->subCamEyeOffset.y;
    subCamEye.z += this->subCamEyeOffset.z;

    Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    this->actor.textId = 0x203B;
    Message_StartTextbox(play, this->actor.textId, NULL);
    this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
    this->unk_1FC = 0;
    play->csCtx.curFrame = 0;
    Letterbox_SetSizeTarget(32);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING_ALT);
    this->actionFunc = EnIn_ClosingGate;
}

void EnIn_ClosingGate(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f subCamAt;
    Vec3f subCamEye;

    if (player->rideActor != NULL) {
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;
    if (this->actor.textId == 0x203B) {
        if (this->losingScreamTimer != 0) {
            this->losingScreamTimer--;
            if (this->losingScreamTimer == 0) {
                Actor_PlaySfx(&this->actor, NA_SE_VO_IN_LOST);
            }
        }
    }
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
            if (this->actor.textId == 0x203B) {
                this->actor.textId = 0x203C;
                Message_StartTextbox(play, this->actor.textId, NULL);
                this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
                EnIn_ChangeAnim(this, ENIN_ANIM_STANDING_FOOT_FORWARD_MORPH);
            } else {
                play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
                this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
            }
        }
    } else {
        if (play->csCtx.curFrame++ >= 50) {
            this->actionFunc = EnIn_FinishClosingGate;
            return;
        }
        if (play->csCtx.curFrame == 44) {
            Actor_PlaySfx(&this->actor, NA_SE_EV_RONRON_DOOR_CLOSE);
        }
        Math_SmoothStepToF(&this->subCamAtOffset.x, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamAtOffset.y, 50.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamAtOffset.z, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamEyeOffset.x, 0.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamEyeOffset.y, 150.0f, 0.06f, 10000.0f, 0.0f);
        Math_SmoothStepToF(&this->subCamEyeOffset.z, 300.0f, 0.06f, 10000.0f, 0.0f);

        subCamAt = this->actor.world.pos;
        subCamEye = this->actor.world.pos;

        subCamAt.x += this->subCamAtOffset.x;
        subCamAt.y += this->subCamAtOffset.y;
        subCamAt.z += this->subCamAtOffset.z;
        subCamEye.x += this->subCamEyeOffset.x;
        subCamEye.y += this->subCamEyeOffset.y;
        subCamEye.z += this->subCamEyeOffset.z;
        Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
    }
}

void EnIn_FinishClosingGate(EnIn* this, PlayState* play) {
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_ACTIVE);
    Play_ClearCamera(play, this->subCamId);
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
    this->actionFunc = EnIn_GuardingGate;
}

void EnIn_GuardingGate(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 yaw;
    Vec3f pos = this->actor.world.pos;

    pos.x += 90.0f * Math_SinS(this->actor.shape.rot.y);
    pos.z += 90.0f * Math_CosS(this->actor.shape.rot.y);
    yaw = Math_Vec3f_Yaw(&pos, &player->actor.world.pos);
    if (ABS(yaw) > 0x4000) {
        play->nextEntranceIndex = ENTR_HYRULE_FIELD_15;
        play->transitionTrigger = TRANS_TRIGGER_START;
        play->transitionType = TRANS_TYPE_FADE_WHITE_FAST;
        this->actionFunc = EnIn_PlayerEscapesRanch;
    } else if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        play->msgCtx.stateTimer = 4;
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    }
}

void EnIn_PlayerEscapesRanch(EnIn* this, PlayState* play) {
}

void EnIn_EndRentalPeriod(EnIn* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (player->rideActor != NULL) {
        player->rideActor->freezeTimer = 10;
    }
    player->actor.freezeTimer = 10;

    if (this->interactInfo.talkState != NPC_TALK_STATE_ACTION) {
        return;
    }

    if (!GET_EVENTCHKINF(EVENTCHKINF_1B) && GET_INFTABLE(INFTABLE_AB)) {
        SET_EVENTCHKINF(EVENTCHKINF_1B);
        SET_INFTABLE(INFTABLE_AB);
    }

    EnIn_StartTransition(this, play, 0, TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST));
    SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_OFFER_RENTAL);
    WRITE_EVENTINF_INGO_RACE_0F(1);
    play->msgCtx.stateTimer = 4;
    play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
    this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
}

void EnIn_Update(Actor* thisx, PlayState* play) {
    ColliderCylinder* collider;
    EnIn* this = (EnIn*)thisx;

    if (this->actionFunc == EnIn_WaitForObject) {
        this->actionFunc(this, play);
        return;
    }
    collider = &this->collider;
    Collider_UpdateCylinder(&this->actor, collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &collider->base);
    if (this->actionFunc != EnIn_Racing) {
        SkelAnime_Update(&this->skelAnime);
        if (this->skelAnime.animation == &gIngoLosingAnim &&
            GET_EVENTINF_INGO_RACE_STATE() != INGO_RACE_STATE_TRAPPED_WIN_EPONA) {
            EnIn_Stagger(&this->skelAnime, this, play);
        }
        Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    }
    EnIn_UpdateEyes(this);
    this->actionFunc(this, play);
    if (this->actionFunc != EnIn_Racing) {
        EnIn_Fidget(this, play);
#if OOT_VERSION < PAL_1_0
        Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState,
                          ((this->actor.attentionRangeType == 6) ? 80.0f : 320.0f) + this->collider.dim.radius,
                          EnIn_GetTextId, EnIn_UpdateTalkState);
        if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
            this->prevTextState = this->textState;
            this->textState = Message_GetState(&play->msgCtx);
        }
#else
        if ((gSaveContext.subTimerSeconds < 6) && (gSaveContext.subTimerState != SUBTIMER_STATE_OFF) &&
            this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
            if (Actor_TalkOfferAccepted(&this->actor, play)) {}
        } else {
            Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState,
                              ((this->actor.attentionRangeType == 6) ? 80.0f : 320.0f) + this->collider.dim.radius,
                              EnIn_GetTextId, EnIn_UpdateTalkState);
            if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
                this->prevTextState = this->textState;
                this->textState = Message_GetState(&play->msgCtx);
            }
        }
#endif
        EnIn_UpdateTracking(this, play);
    }
}

s32 EnIn_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnIn* this = (EnIn*)thisx;
    Vec3s limbRot;

    if (this->actor.params > 0 && limbIndex != INGO_LIMB_HEAD) {
        if (sAdultEraDLs[limbIndex] != NULL) {
            *dList = sAdultEraDLs[limbIndex];
        }
    }
    if (limbIndex == INGO_LIMB_HEAD) {
        Matrix_Translate(1500.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        limbRot = this->interactInfo.headRot;
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_Translate(-1500.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == INGO_LIMB_CHEST) {
        limbRot = this->interactInfo.torsoRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_RotateY(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
    }
    if (limbIndex == INGO_LIMB_CHEST || limbIndex == INGO_LIMB_LEFT_SHOULDER || limbIndex == INGO_LIMB_RIGHT_SHOULDER) {
        rot->y += Math_SinS(this->fidgetVec[limbIndex].y) * 200.0f;
        rot->z += Math_CosS(this->fidgetVec[limbIndex].z) * 200.0f;
    }
    return 0;
}

void EnIn_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnIn* this = (EnIn*)thisx;
    Vec3f focusPos = { 1600.0, 0.0f, 0.0f };

    OPEN_DISPS(play->state.gfxCtx, "../z_en_in.c", 2335);

    if (limbIndex == INGO_LIMB_HEAD) {
        Matrix_MultVec3f(&focusPos, &this->actor.focus.pos);
        this->actor.focus.rot = this->actor.world.rot;
    }
    if (limbIndex == INGO_LIMB_LEFT_HAND && this->skelAnime.animation == &gIngoWorkingAnim) {
        gSPDisplayList(POLY_OPA_DISP++, gIngoChildEraBasketDL);
    }
    if (limbIndex == INGO_LIMB_RIGHT_HAND && this->skelAnime.animation == &gIngoWorkingAnim) {
        gSPDisplayList(POLY_OPA_DISP++, gIngoChildEraPitchForkDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_in.c", 2365);
}

void EnIn_Draw(Actor* thisx, PlayState* play) {
    static void* eyeTextures[] = { gIngoEyeOpenTex, gIngoEyeHalfTex, gIngoEyeClosedTex, gIngoEyeClosed2Tex };

    EnIn* this = (EnIn*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_in.c", 2384);
    if (this->actionFunc != EnIn_WaitForObject) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeIndex]));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(gIngoHeadGradient2Tex));
        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              EnIn_OverrideLimbDraw, EnIn_PostLimbDraw, &this->actor);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_in.c", 2416);
}
