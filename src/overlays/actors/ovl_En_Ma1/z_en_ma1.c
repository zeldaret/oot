/*
 * File: z_en_ma1.c
 * Overlay: En_Ma1
 * Description: Child Malon
 */

#include "z_en_ma1.h"
#include "assets/objects/object_ma1/object_ma1.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3 | ACTOR_FLAG_4 | ACTOR_FLAG_5 | ACTOR_FLAG_25)

void EnMa1_Init(Actor* thisx, PlayState* play);
void EnMa1_Destroy(Actor* thisx, PlayState* play);
void EnMa1_Update(Actor* thisx, PlayState* play);
void EnMa1_Draw(Actor* thisx, PlayState* play);

void EnMa1_Idle(EnMa1* this, PlayState* play);
void EnMa1_GiveWeirdEgg(EnMa1* this, PlayState* play);
void EnMa1_FinishGivingWeirdEgg(EnMa1* this, PlayState* play);
void EnMa1_IdleTeachSong(EnMa1* this, PlayState* play);
void EnMa1_StartTeachSong(EnMa1* this, PlayState* play);
void EnMa1_TeachSong(EnMa1* this, PlayState* play);
void EnMa1_WaitForPlayback(EnMa1* this, PlayState* play);
void EnMa1_DoNothing(EnMa1* this, PlayState* play);

ActorProfile En_Ma1_Profile = {
    /**/ ACTOR_EN_MA1,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_MA1,
    /**/ sizeof(EnMa1),
    /**/ EnMa1_Init,
    /**/ EnMa1_Destroy,
    /**/ EnMa1_Update,
    /**/ EnMa1_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 18, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

typedef enum EnMa1Animation {
    /* 0 */ MALON_ANIM_IDLE_NOMORPH,
    /* 1 */ MALON_ANIM_IDLE,
    /* 2 */ MALON_ANIM_SING_NOMORPH,
    /* 3 */ MALON_ANIM_SING
} EnMa1Animation;

static AnimationFrameCountInfo sAnimationInfo[] = {
    { &gMalonChildIdleAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gMalonChildIdleAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gMalonChildSingAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gMalonChildSingAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
};

u16 EnMa1_GetTextId(PlayState* play, Actor* thisx) {
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_MALON);

    if (textId != 0) {
        return textId;
    }
    if (CHECK_QUEST_ITEM(QUEST_SONG_EPONA)) {
        return 0x204A;
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_CAN_LEARN_EPONAS_SONG)) {
        return 0x2049;
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_TALKED_TO_CHILD_MALON_AT_RANCH)) {
        if (GET_INFTABLE(INFTABLE_TOLD_EPONA_IS_SCARED)) {
            return 0x2049;
        } else {
            return 0x2048;
        }
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        return 0x2047;
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_RECEIVED_WEIRD_EGG)) {
        return 0x2044;
    }
    if (GET_INFTABLE(INFTABLE_TALKED_TO_MALON_FIRST_TIME)) {
        if (GET_INFTABLE(INFTABLE_MALON_SPAWNED_AT_HYRULE_CASTLE)) {
            return 0x2043;
        } else {
            return 0x2042;
        }
    }
    return 0x2041;
}

s16 EnMa1_UpdateTalkState(PlayState* play, Actor* thisx) {
    s16 talkState = NPC_TALK_STATE_TALKING;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_CLOSING:
            switch (thisx->textId) {
                case 0x2041:
                    SET_INFTABLE(INFTABLE_TALKED_TO_MALON_FIRST_TIME);
                    SET_EVENTCHKINF(EVENTCHKINF_TALKED_TO_MALON_FIRST_TIME);
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
                case 0x2043:
                    talkState = NPC_TALK_STATE_TALKING;
                    break;
                case 0x2047:
                    SET_EVENTCHKINF(EVENTCHKINF_TALKED_TO_CHILD_MALON_AT_RANCH);
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
                case 0x2048:
                    SET_INFTABLE(INFTABLE_TOLD_EPONA_IS_SCARED);
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
                case 0x2049:
                    SET_EVENTCHKINF(EVENTCHKINF_CAN_LEARN_EPONAS_SONG);
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
                case 0x2061:
                    talkState = NPC_TALK_STATE_ACTION;
                    break;
                default:
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
            }
            break;
        case TEXT_STATE_CHOICE:
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                talkState = NPC_TALK_STATE_ACTION;
            }
            break;
        case TEXT_STATE_DONE:
            if (Message_ShouldAdvance(play)) {
                talkState = NPC_TALK_STATE_ITEM_GIVEN;
            }
            break;
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
        case TEXT_STATE_DONE_FADING:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            talkState = NPC_TALK_STATE_TALKING;
            break;
    }
    return talkState;
}

s32 EnMa1_ShouldSpawn(EnMa1* this, PlayState* play) {
    if ((this->actor.shape.rot.z == 3) && (gSaveContext.sceneLayer == 5)) {
        return true;
    }

    if (!LINK_IS_CHILD) {
        return false;
    }

    if (((play->sceneId == SCENE_MARKET_NIGHT) || (play->sceneId == SCENE_MARKET_DAY)) &&
        !GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE) &&
        !GET_INFTABLE(INFTABLE_MALON_SPAWNED_AT_HYRULE_CASTLE)) {
        return true;
    }

    if ((play->sceneId == SCENE_HYRULE_CASTLE) && !GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        if (GET_INFTABLE(INFTABLE_MALON_SPAWNED_AT_HYRULE_CASTLE)) {
            return true;
        } else {
            SET_INFTABLE(INFTABLE_MALON_SPAWNED_AT_HYRULE_CASTLE);
            return false;
        }
    }

    if ((play->sceneId == SCENE_LON_LON_BUILDINGS) && IS_NIGHT &&
        GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        return true;
    }

    if (play->sceneId != SCENE_LON_LON_RANCH) {
        return false;
    }

    if ((this->actor.shape.rot.z == 3) && IS_DAY && GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        return true;
    }

    return false;
}

void EnMa1_UpdateEyes(EnMa1* this) {
    if (DECR(this->blinkTimer) == 0) {
        this->eyeIndex++;
        if (this->eyeIndex >= 3) {
            this->blinkTimer = Rand_S16Offset(30, 30);
            this->eyeIndex = 0;
        }
    }
}

void EnMa1_ChangeAnim(EnMa1* this, s32 index) {
    f32 frameCount = Animation_GetLastFrame(sAnimationInfo[index].animation);

    Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, 1.0f, 0.0f, frameCount,
                     sAnimationInfo[index].mode, sAnimationInfo[index].morphFrames);
}

void EnMa1_UpdateTracking(EnMa1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 trackingMode;

    if ((this->interactInfo.talkState == NPC_TALK_STATE_IDLE) && (this->skelAnime.animation == &gMalonChildSingAnim)) {
        trackingMode = NPC_TRACKING_NONE;
    } else {
        trackingMode = NPC_TRACKING_PLAYER_AUTO_TURN;
    }

    this->interactInfo.trackPos = player->actor.world.pos;
    this->interactInfo.trackPos.y -= -10.0f;

    Npc_TrackPoint(&this->actor, &this->interactInfo, 0, trackingMode);
}

void EnMa1_UpdateSinging(EnMa1* this) {
    if (this->skelAnime.animation == &gMalonChildSingAnim) {
        if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
            if (this->singingDisabled) {
                this->singingDisabled = false;
                Audio_ToggleMalonSinging(false);
            }
        } else {
            if (!this->singingDisabled) {
                this->singingDisabled = true;
                Audio_ToggleMalonSinging(true);
            }
        }
    }
}

void EnMa1_Init(Actor* thisx, PlayState* play) {
    EnMa1* this = (EnMa1*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 18.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gMalonChildSkel, NULL, NULL, NULL, 0);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, DamageTable_Get(22), &sColChkInfoInit);

    if (!EnMa1_ShouldSpawn(this, play)) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.targetMode = 6;
    this->interactInfo.talkState = NPC_TALK_STATE_IDLE;

    if (!GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE) || CHECK_QUEST_ITEM(QUEST_SONG_EPONA)) {
        this->actionFunc = EnMa1_Idle;
        EnMa1_ChangeAnim(this, MALON_ANIM_SING_NOMORPH);
    } else {
        this->actionFunc = EnMa1_IdleTeachSong;
        EnMa1_ChangeAnim(this, MALON_ANIM_SING_NOMORPH);
    }
}

void EnMa1_Destroy(Actor* thisx, PlayState* play) {
    EnMa1* this = (EnMa1*)thisx;

    SkelAnime_Free(&this->skelAnime, play);
    Collider_DestroyCylinder(play, &this->collider);
}

void EnMa1_Idle(EnMa1* this, PlayState* play) {
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        if (this->skelAnime.animation != &gMalonChildIdleAnim) {
            EnMa1_ChangeAnim(this, MALON_ANIM_IDLE);
        }
    } else {
        if (this->skelAnime.animation != &gMalonChildSingAnim) {
            EnMa1_ChangeAnim(this, MALON_ANIM_SING);
        }
    }

    if ((play->sceneId == SCENE_HYRULE_CASTLE) && GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
        Actor_Kill(&this->actor);
    } else if (!GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE) || CHECK_QUEST_ITEM(QUEST_SONG_EPONA)) {
        if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
            this->actionFunc = EnMa1_GiveWeirdEgg;
            play->msgCtx.stateTimer = 4;
            play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
        }
    }
}

void EnMa1_GiveWeirdEgg(EnMa1* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnMa1_FinishGivingWeirdEgg;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_WEIRD_EGG, 120.0f, 10.0f);
    }
}

void EnMa1_FinishGivingWeirdEgg(EnMa1* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ITEM_GIVEN) {
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        this->actionFunc = EnMa1_Idle;
        SET_EVENTCHKINF(EVENTCHKINF_RECEIVED_WEIRD_EGG);
        play->msgCtx.msgMode = MSGMODE_TEXT_CLOSING;
    }
}

void EnMa1_IdleTeachSong(EnMa1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        if (this->skelAnime.animation != &gMalonChildIdleAnim) {
            EnMa1_ChangeAnim(this, MALON_ANIM_IDLE);
        }
    } else {
        if (this->skelAnime.animation != &gMalonChildSingAnim) {
            EnMa1_ChangeAnim(this, MALON_ANIM_SING);
        }
    }

    if (GET_EVENTCHKINF(EVENTCHKINF_CAN_LEARN_EPONAS_SONG)) {
        if (player->stateFlags2 & PLAYER_STATE2_24) {
            player->stateFlags2 |= PLAYER_STATE2_25;
            player->unk_6A8 = &this->actor;
            this->actor.textId = 0x2061;
            Message_StartTextbox(play, this->actor.textId, NULL);
            this->interactInfo.talkState = NPC_TALK_STATE_TALKING;
            this->actor.flags |= ACTOR_FLAG_16;
            this->actionFunc = EnMa1_StartTeachSong;
        } else if (this->actor.xzDistToPlayer < 30.0f + this->collider.dim.radius) {
            player->stateFlags2 |= PLAYER_STATE2_23;
        }
    }
}

void EnMa1_StartTeachSong(EnMa1* this, PlayState* play) {
    GET_PLAYER(play)->stateFlags2 |= PLAYER_STATE2_23;
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_MALON);
        Message_StartOcarina(play, OCARINA_ACTION_TEACH_EPONA);
        this->actor.flags &= ~ACTOR_FLAG_16;
        this->actionFunc = EnMa1_TeachSong;
    }
}

void EnMa1_TeachSong(EnMa1* this, PlayState* play) {
    GET_PLAYER(play)->stateFlags2 |= PLAYER_STATE2_23;
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_SONG_DEMO_DONE) {
        Message_StartOcarina(play, OCARINA_ACTION_PLAYBACK_EPONA);
        this->actionFunc = EnMa1_WaitForPlayback;
    }
}

void EnMa1_WaitForPlayback(EnMa1* this, PlayState* play) {
    GET_PLAYER(play)->stateFlags2 |= PLAYER_STATE2_23;
    if (play->msgCtx.ocarinaMode == OCARINA_MODE_03) {
        play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
        gSaveContext.nextCutsceneIndex = 0xFFF1;
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_WAVE, TCC_WHITE, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
        this->actionFunc = EnMa1_DoNothing;
    }
}

void EnMa1_DoNothing(EnMa1* this, PlayState* play) {
}

void EnMa1_Update(Actor* thisx, PlayState* play) {
    EnMa1* this = (EnMa1*)thisx;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);

    SkelAnime_Update(&this->skelAnime);
    EnMa1_UpdateEyes(this);

    this->actionFunc(this, play);

    if (this->actionFunc != EnMa1_DoNothing) {
        Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, this->collider.dim.radius + 30.0f,
                          EnMa1_GetTextId, EnMa1_UpdateTalkState);
    }

    EnMa1_UpdateSinging(this);
    EnMa1_UpdateTracking(this, play);
}

s32 EnMa1_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnMa1* this = (EnMa1*)thisx;
    Vec3s limbRot;

    if ((limbIndex == CHILD_MALON_LIMB_LEFT_THIGH) || (limbIndex == CHILD_MALON_LIMB_RIGHT_THIGH)) {
        *dList = NULL;
    }
    if (limbIndex == CHILD_MALON_LIMB_HEAD) {
        Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        limbRot = this->interactInfo.headRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == CHILD_MALON_LIMB_CHEST) {
        limbRot = this->interactInfo.torsoRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(-limbRot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(-limbRot.x), MTXMODE_APPLY);
    }
    return false;
}

void EnMa1_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnMa1* this = (EnMa1*)thisx;
    Vec3f offset = { 800.0f, 0.0f, 0.0f };

    if (limbIndex == CHILD_MALON_LIMB_HEAD) {
        Matrix_MultVec3f(&offset, &this->actor.focus.pos);
    }
}

void EnMa1_Draw(Actor* thisx, PlayState* play) {
    static void* sMouthTextures[] = {
        gMalonChildNeutralMouthTex,
        gMalonChildSmilingMouthTex,
        gMalonChildTalkingMouthTex,
    };
    static void* sEyeTextures[] = {
        gMalonChildEyeOpenTex,
        gMalonChildEyeHalfTex,
        gMalonChildEyeClosedTex,
    };
    EnMa1* this = (EnMa1*)thisx;
    Camera* activeCam;
    f32 distFromCamEye;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ma1.c", 1226);

    activeCam = GET_ACTIVE_CAM(play);
    distFromCamEye = Math_Vec3f_DistXZ(&this->actor.world.pos, &activeCam->eye);
    Audio_UpdateMalonSinging(distFromCamEye, NA_BGM_LONLON);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthTextures[this->mouthIndex]));
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnMa1_OverrideLimbDraw, EnMa1_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ma1.c", 1261);
}
