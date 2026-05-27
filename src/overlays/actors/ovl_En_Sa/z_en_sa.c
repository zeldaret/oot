#include "z_en_sa.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"

#include "attributes.h"
#include "gfx.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "face_reaction.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_sa/object_sa.h"
#include "assets/scenes/overworld/spot04/spot04_scene.h"
#include "assets/scenes/overworld/spot05/spot05_scene.h"

#define FLAGS                                                                                  \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_UPDATE_DURING_OCARINA)

typedef enum SariaType {
    /* 0 */ SARIA_TYPE_NONE,           // Null; actor killed immediately
    /* 1 */ SARIA_TYPE_STANDING,       // In her house or outside Link's after greeting him
    /* 2 */ SARIA_TYPE_MEADOW_PLAYING, // After teaching Saria's Song
    /* 3 */ SARIA_TYPE_UNUSED,         // Never returned by type selector function
    /* 4 */ SARIA_TYPE_GREETING,       // Greeting Link
    /* 5 */ SARIA_TYPE_MEADOW_WAITING  // In the Sacred Forest Meadow, waiting to teach Saria's Song
} SariaType;

void EnSa_Init(Actor* thisx, PlayState* play);
void EnSa_Destroy(Actor* thisx, PlayState* play);
void EnSa_Update(Actor* thisx, PlayState* play);
void EnSa_Draw(Actor* thisx, PlayState* play);

void EnSa_Idle(EnSa* this, PlayState* play);
void EnSa_TalkInForestMeadow(EnSa* this, PlayState* play);
void EnSa_AwaitTeachingSariasSong(EnSa* this, PlayState* play);
void EnSa_HandleCutscene(EnSa* this, PlayState* play);
void EnSa_BecomeIdle(EnSa* this, PlayState* play);

typedef enum SariaEyes {
    /* 0 */ SARIA_EYE_OPEN,
    /* 1 */ SARIA_EYE_HALF,
    /* 2 */ SARIA_EYE_CLOSED,
    /* 3 */ SARIA_EYE_SURPRISED,
    /* 4 */ SARIA_EYE_SAD
} SariaEyes;

typedef enum SariaMouth {
    /* 0 */ SARIA_MOUTH_CLOSED2,
    /* 1 */ SARIA_MOUTH_SMILING_OPEN,
    /* 2 */ SARIA_MOUTH_FROWNING,
    /* 3 */ SARIA_MOUTH_SURPRISED,
    /* 4 */ SARIA_MOUTH_CLOSED
} SariaMouth;

ActorProfile En_Sa_Profile = {
    /**/ ACTOR_EN_SA,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_SA,
    /**/ sizeof(EnSa),
    /**/ EnSa_Init,
    /**/ EnSa_Destroy,
    /**/ EnSa_Update,
    /**/ EnSa_Draw,
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
    { 20, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

typedef enum EnSaAnimation1 {
    /*  0 */ ENSA_ANIM1_WAIT_ARMS_TO_SIDE,
    /*  1 */ ENSA_ANIM1_LOOK_UP_ARMS_EXTENDED,
    /*  2 */ ENSA_ANIM1_WAVE,
    /*  3 */ ENSA_ANIM1_RUN,
    /*  4 */ ENSA_ANIM1_MOVE_ARMS_TO_SIDE,
    /*  5 */ ENSA_ANIM1_LOOK_OVER_SHOULDER,
    /*  6 */ ENSA_ANIM1_PLAYING_OCARINA,
    /*  7 */ ENSA_ANIM1_STOP_PLAYING_OCARINA,
    /*  8 */ ENSA_ANIM1_OCARINA_TO_MOUTH,
    /*  9 */ ENSA_ANIM1_LINK_LEARNED_SARIAS_SONG,
    /* 10 */ ENSA_ANIM1_RETURN_TO_OCARINA,
    /* 11 */ ENSA_ANIM1_START_PLAYING_OCARINA
} EnSaAnimation1;

static AnimationFrameCountInfo sAnimationInfo1[] = {
    { &gSariaWaitArmsToSideAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gSariaLookUpArmExtendedAnim, 1.0f, ANIMMODE_ONCE, -10.0f },
    { &gSariaWaveAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gSariaRunAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gSariaWaitArmsToSideAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gSariaLookOverShoulderAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gSariaPlayingOcarinaAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gSariaStopPlayingOcarinaAnim, 1.0f, ANIMMODE_ONCE, -10.0f },
    { &gSariaOcarinaToMouthAnim, 1.0f, ANIMMODE_ONCE, -10.0f },
    { &gSariaLinkLearnedSariasSongAnim, 1.0f, ANIMMODE_ONCE, -10.0f },
    { &gSariaReturnToOcarinaAnim, 1.0f, ANIMMODE_ONCE, -10.0f },
    { &gSariaPlayingOcarinaAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
};

typedef enum EnSaAnimation2 {
    /* 0 */ ENSA_ANIM2_TRANS_HANDS_SIDE_CHEST_SIDE,
    /* 1 */ ENSA_ANIM2_TRANS_HANDS_SIDE_TO_BACK,
    /* 2 */ ENSA_ANIM2_RIGHT_ARM_EXTENDED_WAIT,
    /* 3 */ ENSA_ANIM2_HANDS_OUT,
    /* 4 */ ENSA_ANIM2_STAND_HANDS_ON_HIPS,
    /* 5 */ ENSA_ANIM2_EXTEND_RIGHT_ARM,
    /* 6 */ ENSA_ANIM2_TRANS_HANDS_SIDE_TO_HIPS,
    /* 7 */ ENSA_ANIM2_BEHIND_BACK_WAIT,
    /* 8 */ ENSA_ANIM2_HANDS_ON_FACE,
    /* 9 */ ENSA_ANIM2_WAIT_ARMS_TO_SIDE
} EnSaAnimation2;

static AnimationInfo sAnimationInfo2[] = {
    { &gSariaTransitionHandsSideToChestToSideAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { &gSariaTransitionHandsSideToBackAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -4.0f },
    { &gSariaRightArmExtendedWaitAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { &gSariaHandsOutAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { &gSariaStandHandsOnHipsAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { &gSariaExtendRightArmAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { &gSariaTransitionHandsSideToHipsAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { &gSariaHandsBehindBackWaitAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { &gSariaHandsOnFaceAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { &gSariaWaitArmsToSideAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -8.0f },
};

typedef enum EnSaAnimGroup {
    /* 0 */ ENSA_ANIMGROUP_NONE,
    /* 1 */ ENSA_ANIMGROUP_EXTEND_RIGHT_HAND,
    /* 2 */ ENSA_ANIMGROUP_HANDS_TO_FACE,
    /* 3 */ ENSA_ANIMGROUP_HANDS_BEHIND_BACK,
    /* 4 */ ENSA_ANIMGROUP_HANDS_OUT_FROM_BEHIND_BACK,
    /* 5 */ ENSA_ANIMGROUP_HANDS_ON_HIPS,
    /* 6 */ ENSA_ANIMGROUP_HANDS_OFF_HIPS,
    /* 7 */ ENSA_ANIMGROUP_HAND_TO_CHEST
} EnSaAnimGroup;

s16 EnSa_UpdateTextState(EnSa* this, PlayState* play) {
    s16 textState = Message_GetState(&play->msgCtx);

    if (this->prevTextState == TEXT_STATE_AWAITING_NEXT || this->prevTextState == TEXT_STATE_EVENT ||
        this->prevTextState == TEXT_STATE_CLOSING || this->prevTextState == TEXT_STATE_DONE_HAS_NEXT) {
        if (textState != this->prevTextState) {
            this->messageIndex++;
        }
    }
    this->prevTextState = textState;
    return textState;
}

u16 EnSa_GetTextId(PlayState* play, Actor* thisx) {
    EnSa* this = (EnSa*)thisx;
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_SARIA);

    if (textId != 0) {
        return textId;
    }
    if (CHECK_QUEST_ITEM(QUEST_SONG_SARIA)) {
        return 0x10AD;
    }
    if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
        this->messageIndex = 0;
        this->prevTextState = TEXT_STATE_NONE;
        if (GET_INFTABLE(INFTABLE_SARIA_SPOKE_IN_HER_HOUSE)) {
            return 0x1048;
        } else {
            return 0x1047;
        }
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_MIDO_DENIED_DEKU_TREE_ACCESS)) {
        this->messageIndex = 0;
        this->prevTextState = TEXT_STATE_NONE;
        if (GET_INFTABLE(INFTABLE_SARIA_TOLD_ABOUT_MIDO)) {
            return 0x1032;
        } else {
            return 0x1031;
        }
    }
    if (GET_INFTABLE(INFTABLE_SARIA_GREETED_LINK)) {
        this->messageIndex = 0;
        this->prevTextState = TEXT_STATE_NONE;
        if (GET_INFTABLE(INFTABLE_SARIA_NOTICED_FAIRY)) {
            return 0x1003;
        } else {
            return 0x1002;
        }
    }
    return 0x1001;
}

s16 EnSa_UpdateTalkState(PlayState* play, Actor* thisx) {
    s16 talkState = NPC_TALK_STATE_TALKING;
    EnSa* this = (EnSa*)thisx;

    switch (EnSa_UpdateTextState(this, play)) {
        case TEXT_STATE_CLOSING:
            switch (this->actor.textId) {
                case 0x1002:
                    SET_INFTABLE(INFTABLE_SARIA_NOTICED_FAIRY);
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
                case 0x1031:
                    SET_EVENTCHKINF(EVENTCHKINF_SARIA_WAS_TOLD_ABOUT_MIDO);
                    SET_INFTABLE(INFTABLE_SARIA_TOLD_ABOUT_MIDO);
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
                case 0x1047:
                    SET_INFTABLE(INFTABLE_SARIA_SPOKE_IN_HER_HOUSE);
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
                default:
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
            }
            break;
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
        case TEXT_STATE_DONE_FADING:
        case TEXT_STATE_CHOICE:
        case TEXT_STATE_EVENT:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            break;
    }
    return talkState;
}

void EnSa_UpdateTalking(EnSa* this, PlayState* play) {
    if (play->sceneId != SCENE_SACRED_FOREST_MEADOW ||
        ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) < 0x1555 ||
        this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, this->collider.dim.radius + 30.0f,
                          EnSa_GetTextId, EnSa_UpdateTalkState);
    }
}

f32 EnSa_ReverseAnimation(EnSa* this) {
    f32 endFrame = this->skelAnime.endFrame;
    f32 startFrame = this->skelAnime.startFrame;

    this->skelAnime.startFrame = endFrame;
    this->skelAnime.curFrame = endFrame;
    this->skelAnime.endFrame = startFrame;
    this->skelAnime.playSpeed = -1.0f;
    return startFrame;
}

void EnSa_ExtendRightHand(EnSa* this) {
    switch (this->animPhase) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_HANDS_OUT);
            this->animPhase++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_RIGHT_ARM_EXTENDED_WAIT);
                this->animPhase++;
            }
            break;
    }
}

void EnSa_HandsToFace(EnSa* this) {
    switch (this->animPhase) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_HANDS_ON_FACE);
            this->animPhase++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_WAIT_ARMS_TO_SIDE);
                this->animPhase++;
            }
            break;
    }
}

void EnSa_HandsBehindBack(EnSa* this) {
    switch (this->animPhase) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_TRANS_HANDS_SIDE_TO_BACK);
            this->animPhase++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_BEHIND_BACK_WAIT);
                this->animPhase++;
            }
            break;
    }
}

void EnSa_HandsOutFromBehindBack(EnSa* this) {
    switch (this->animPhase) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_TRANS_HANDS_SIDE_TO_BACK);
            EnSa_ReverseAnimation(this);
            this->animPhase++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_WAIT_ARMS_TO_SIDE);
                this->animPhase++;
            }
            break;
    }
}

void EnSa_HandsOnHips(EnSa* this) {
    switch (this->animPhase) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_TRANS_HANDS_SIDE_TO_HIPS);
            this->animPhase++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_STAND_HANDS_ON_HIPS);
                this->animPhase++;
            }
            break;
    }
}

void EnSa_HandsOffHips(EnSa* this) {
    switch (this->animPhase) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_TRANS_HANDS_SIDE_TO_HIPS);
            EnSa_ReverseAnimation(this);
            this->animPhase++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_WAIT_ARMS_TO_SIDE);
                this->animPhase++;
            }
            break;
    }
}

void EnSa_HandToChest(EnSa* this) {
    switch (this->animPhase) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_EXTEND_RIGHT_ARM);
            this->animPhase++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo2, ENSA_ANIM2_TRANS_HANDS_SIDE_CHEST_SIDE);
                this->animPhase++;
            }
            break;
    }
}

void EnSa_SetAnimGroup(EnSa* this, u8 animGroup) {
    this->animGroup = animGroup;
    this->animPhase = 0;
}

void EnSa_Animate(EnSa* this) {
    switch (this->animGroup) {
        case ENSA_ANIMGROUP_EXTEND_RIGHT_HAND:
            EnSa_ExtendRightHand(this);
            break;
        case ENSA_ANIMGROUP_HANDS_TO_FACE:
            EnSa_HandsToFace(this);
            break;
        case ENSA_ANIMGROUP_HANDS_BEHIND_BACK:
            EnSa_HandsBehindBack(this);
            break;
        case ENSA_ANIMGROUP_HANDS_OUT_FROM_BEHIND_BACK:
            EnSa_HandsOutFromBehindBack(this);
            break;
        case ENSA_ANIMGROUP_HANDS_ON_HIPS:
            EnSa_HandsOnHips(this);
            break;
        case ENSA_ANIMGROUP_HANDS_OFF_HIPS:
            EnSa_HandsOffHips(this);
            break;
        case ENSA_ANIMGROUP_HAND_TO_CHEST:
            EnSa_HandToChest(this);
            break;
    }
}

void EnSa_ChangeAnim(EnSa* this, s32 index) {
    Animation_Change(&this->skelAnime, sAnimationInfo1[index].animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationInfo1[index].animation), sAnimationInfo1[index].mode,
                     sAnimationInfo1[index].morphFrames);
}

SariaType EnSa_GetType(EnSa* this, PlayState* play) {
    if (gSaveContext.save.cutsceneIndex >= CS_INDEX_0 && gSaveContext.save.cutsceneIndex != CS_INDEX_D) {
        if (play->sceneId == SCENE_KOKIRI_FOREST) {
            return SARIA_TYPE_GREETING;
        }
        if (play->sceneId == SCENE_SACRED_FOREST_MEADOW) {
            return SARIA_TYPE_MEADOW_WAITING;
        }
    }
    if (play->sceneId == SCENE_SARIAS_HOUSE && !LINK_IS_ADULT &&
        INV_CONTENT(ITEM_OCARINA_FAIRY) == ITEM_OCARINA_FAIRY && !GET_EVENTCHKINF(EVENTCHKINF_40)) {
        return SARIA_TYPE_STANDING;
    }
    if (play->sceneId == SCENE_SACRED_FOREST_MEADOW && GET_EVENTCHKINF(EVENTCHKINF_40)) {
        return CHECK_QUEST_ITEM(QUEST_SONG_SARIA) ? SARIA_TYPE_MEADOW_PLAYING : SARIA_TYPE_MEADOW_WAITING;
    }
    if (play->sceneId == SCENE_KOKIRI_FOREST && !CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
        if (GET_INFTABLE(INFTABLE_SARIA_GREETED_LINK)) {
            return SARIA_TYPE_STANDING;
        }
        return SARIA_TYPE_GREETING;
    }
    return SARIA_TYPE_NONE;
}

void EnSa_UpdateTrackingMode(EnSa* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 trackingMode = NPC_TRACKING_PLAYER_AUTO_TURN;

    if (play->sceneId == SCENE_KOKIRI_FOREST) {
        trackingMode = (this->actionFunc == EnSa_HandleCutscene) ? NPC_TRACKING_NONE : NPC_TRACKING_FULL_BODY;
    }
    if (play->sceneId == SCENE_SACRED_FOREST_MEADOW) {
        trackingMode = (this->skelAnime.animation == &gSariaPlayingOcarinaAnim) ? NPC_TRACKING_NONE : NPC_TRACKING_HEAD;
    }
    if (play->sceneId == SCENE_SACRED_FOREST_MEADOW && this->actionFunc == EnSa_Idle &&
        this->skelAnime.animation == &gSariaStopPlayingOcarinaAnim) {
        trackingMode = NPC_TRACKING_NONE;
    }
    if (play->sceneId == SCENE_SACRED_FOREST_MEADOW && this->actionFunc == EnSa_HandleCutscene &&
        this->skelAnime.animation == &gSariaOcarinaToMouthAnim) {
        trackingMode = NPC_TRACKING_NONE;
    }
    this->interactInfo.trackPos = player->actor.world.pos;
    this->interactInfo.yOffset = 4.0f;
    Npc_TrackPoint(&this->actor, &this->interactInfo, 2, trackingMode);
}

s32 EnSa_EyesStayClosed(EnSa* this) {
    if (this->skelAnime.animation != &gSariaPlayingOcarinaAnim &&
        this->skelAnime.animation != &gSariaOcarinaToMouthAnim) {
        return false;
    }
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        return false;
    }
    this->blinkTimer = 0;
    if (this->rightEyeIndex != SARIA_EYE_CLOSED) {
        return false;
    }
    return true;
}

void EnSa_Blink(EnSa* this) {
    s16 blinkTimer;

    if (!EnSa_EyesStayClosed(this)) {
        if (this->blinkTimer == 0) {
            blinkTimer = 0;
        } else {
            this->blinkTimer--;
            blinkTimer = this->blinkTimer;
        }
        if (blinkTimer == 0) {
            this->rightEyeIndex++;
            if (this->rightEyeIndex < SARIA_EYE_SURPRISED) {
                this->leftEyeIndex = this->rightEyeIndex;
            } else {
                this->blinkTimer = Rand_S16Offset(30, 30);
                this->leftEyeIndex = SARIA_EYE_OPEN;
                this->rightEyeIndex = this->leftEyeIndex;
            }
        }
    }
}

void EnSa_CopyCueStartPos(CsCmdActorCue* cue, Vec3f* dst) {
    dst->x = cue->startPos.x;
    dst->y = cue->startPos.y;
    dst->z = cue->startPos.z;
}

void EnSa_CopyCueEndPos(CsCmdActorCue* cue, Vec3f* dst) {
    dst->x = cue->endPos.x;
    dst->y = cue->endPos.y;
    dst->z = cue->endPos.z;
}

void EnSa_Init(Actor* thisx, PlayState* play) {
    EnSa* this = (EnSa*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 12.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gSariaSkel, NULL, this->jointTable, this->morphTable, 17);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);

    switch (EnSa_GetType(this, play)) {
        case SARIA_TYPE_MEADOW_PLAYING:
            EnSa_ChangeAnim(this, ENSA_ANIM1_START_PLAYING_OCARINA);
            this->actionFunc = EnSa_Idle;
            break;
        case SARIA_TYPE_MEADOW_WAITING:
            EnSa_ChangeAnim(this, ENSA_ANIM1_START_PLAYING_OCARINA);
            this->actionFunc = EnSa_AwaitTeachingSariasSong;
            break;
        case SARIA_TYPE_STANDING:
            this->actor.gravity = -1.0f;
            EnSa_ChangeAnim(this, ENSA_ANIM1_WAIT_ARMS_TO_SIDE);
            this->actionFunc = EnSa_Idle;
            break;
        case SARIA_TYPE_GREETING:
            this->cueId = 0;
            this->actor.gravity = -1.0f;
            play->csCtx.script = SEGMENTED_TO_VIRTUAL(gKokiriForestSariaGreetingCs);
            gSaveContext.cutsceneTrigger = 1;
            EnSa_ChangeAnim(this, ENSA_ANIM1_MOVE_ARMS_TO_SIDE);
            this->actionFunc = EnSa_HandleCutscene;
            break;
        case SARIA_TYPE_UNUSED:
            this->cueId = 0;
            this->actor.gravity = -1.0f;
            EnSa_ChangeAnim(this, ENSA_ANIM1_WAIT_ARMS_TO_SIDE);
            this->actionFunc = EnSa_HandleCutscene;
            break;
        case SARIA_TYPE_NONE:
            Actor_Kill(&this->actor);
            return;
    }

    Actor_SetScale(&this->actor, 0.01f);

    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    this->alpha = 255;
    this->initRot = this->actor.shape.rot;

    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_ELF, this->actor.world.pos.x,
                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, FAIRY_KOKIRI);
}

void EnSa_Destroy(Actor* thisx, PlayState* play) {
    EnSa* this = (EnSa*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnSa_Idle(EnSa* this, PlayState* play) {
    if (play->sceneId == SCENE_KOKIRI_FOREST) {
        if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
            switch (this->actor.textId) {
                case 0x1002:
                    if (this->messageIndex == 0 && this->animGroup != ENSA_ANIMGROUP_EXTEND_RIGHT_HAND) {
                        EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_EXTEND_RIGHT_HAND);
                        this->mouthIndex = SARIA_MOUTH_SMILING_OPEN;
                    }
                    if (this->messageIndex == 2 && this->animGroup != ENSA_ANIMGROUP_HANDS_TO_FACE) {
                        EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_HANDS_TO_FACE);
                        this->mouthIndex = SARIA_MOUTH_SMILING_OPEN;
                    }
                    if (this->messageIndex == 5) {
                        this->mouthIndex = SARIA_MOUTH_CLOSED2;
                    }
                    break;
                case 0x1003:
                    if (this->messageIndex == 0 && this->animGroup != ENSA_ANIMGROUP_HANDS_OUT_FROM_BEHIND_BACK) {
                        EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_HANDS_OUT_FROM_BEHIND_BACK);
                    }
                    break;
                case 0x1031:
                    if (this->messageIndex == 0 && this->animGroup != ENSA_ANIMGROUP_HANDS_OUT_FROM_BEHIND_BACK &&
                        this->skelAnime.animation == &gSariaHandsBehindBackWaitAnim) {
                        EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_HANDS_OUT_FROM_BEHIND_BACK);
                        this->mouthIndex = SARIA_MOUTH_SURPRISED;
                    }
                    if (this->messageIndex == 2 && this->animGroup != ENSA_ANIMGROUP_HANDS_ON_HIPS) {
                        EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_HANDS_ON_HIPS);
                        this->mouthIndex = SARIA_MOUTH_FROWNING;
                    }
                    if (this->messageIndex == 4 && this->animGroup != ENSA_ANIMGROUP_HANDS_OFF_HIPS) {
                        EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_HANDS_OFF_HIPS);
                        this->mouthIndex = SARIA_MOUTH_CLOSED2;
                    }
                    break;
                case 0x1032:
                    if (this->messageIndex == 0 && this->animGroup != ENSA_ANIMGROUP_HANDS_OUT_FROM_BEHIND_BACK &&
                        this->skelAnime.animation == &gSariaHandsBehindBackWaitAnim) {
                        EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_HANDS_OUT_FROM_BEHIND_BACK);
                    }
                    break;
                case 0x1047:
                    if (this->messageIndex == 1 && this->animGroup != ENSA_ANIMGROUP_HAND_TO_CHEST) {
                        EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_HAND_TO_CHEST);
                    }
                    break;
                case 0x1048:
                    if (this->messageIndex == 0 && this->animGroup != ENSA_ANIMGROUP_HAND_TO_CHEST) {
                        EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_HAND_TO_CHEST);
                    }
                    break;
            }
        } else if (!CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) &&
                   (GET_INFTABLE(INFTABLE_SARIA_NOTICED_FAIRY) || GET_INFTABLE(INFTABLE_SARIA_TOLD_ABOUT_MIDO))) {
            if (this->animGroup != ENSA_ANIMGROUP_HANDS_BEHIND_BACK) {
                EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_HANDS_BEHIND_BACK);
            }
        } else {
            EnSa_SetAnimGroup(this, ENSA_ANIMGROUP_NONE);
        }
        EnSa_Animate(this);
    }
    if (this->skelAnime.animation == &gSariaStopPlayingOcarinaAnim) {
        this->skelAnime.playSpeed = -1.0f;
        if ((s32)this->skelAnime.curFrame == 0) {
            EnSa_ChangeAnim(this, ENSA_ANIM1_PLAYING_OCARINA);
        }
    }
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE && play->sceneId == SCENE_SACRED_FOREST_MEADOW) {
        Animation_Change(&this->skelAnime, &gSariaStopPlayingOcarinaAnim, 1.0f, 0.0f, 10.0f, ANIMMODE_ONCE, -10.0f);
        this->actionFunc = EnSa_TalkInForestMeadow;
    }
}

void EnSa_TalkInForestMeadow(EnSa* this, PlayState* play) {
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        return;
    }

    Animation_Change(&this->skelAnime, &gSariaStopPlayingOcarinaAnim, 0.0f, 10.0f, 0.0f, ANIMMODE_ONCE, -10.0f);
    this->actionFunc = EnSa_Idle;
}

void EnSa_AwaitTeachingSariasSong(EnSa* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (!(player->actor.world.pos.z >= -2220.0f) && !Play_InCsMode(play)) {
        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gMeadowSariasSongCs);
        gSaveContext.cutsceneTrigger = 1;
        this->actionFunc = EnSa_HandleCutscene;
    }
}

void EnSa_HandleCutscene(EnSa* this, PlayState* play) {
    s16 stepTimer;
    Vec3f startPos;
    Vec3f endPos;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    CsCmdActorCue* cue;
    f32 duration;
    f32 gravity;

    if (play->csCtx.state == CS_STATE_IDLE) {
        this->actionFunc = EnSa_BecomeIdle;
        return;
    }

    cue = play->csCtx.actorCues[1];

    if (cue != NULL) {
        EnSa_CopyCueStartPos(cue, &startPos);
        EnSa_CopyCueEndPos(cue, &endPos);

        if (this->cueId == 0) {
            this->actor.world.pos = startPos;
        }
        if (this->cueId != cue->id) {
            switch (cue->id) {
                case 2:
                    this->mouthIndex = SARIA_MOUTH_SMILING_OPEN;
                    break;
                case 9:
                    this->mouthIndex = SARIA_MOUTH_SMILING_OPEN;
                    break;
                default:
                    this->mouthIndex = SARIA_MOUTH_CLOSED2;
                    break;
            }
            EnSa_ChangeAnim(this, cue->id);
            this->cueId = cue->id;
        }

        if (stepTimer) {}

        if (cue->id == 3) {
            if (this->stepTimer == 0) {
                stepTimer = 0;
            } else {
                this->stepTimer--;
                stepTimer = this->stepTimer;
            }
            if (stepTimer == 0) {
                SFX_PLAY_AT_POS(&this->actor.projectedPos, NA_SE_PL_WALK_GROUND + SURFACE_SFX_OFFSET_DIRT);
                this->stepTimer = 8;
            }
        }
        this->actor.shape.rot.x = cue->rot.x;
        this->actor.shape.rot.y = cue->rot.y;
        this->actor.shape.rot.z = cue->rot.z;
        this->actor.velocity = zeroVec;

        if (play->csCtx.curFrame < cue->endFrame) {
            duration = cue->endFrame - cue->startFrame;
            this->actor.velocity.x = (endPos.x - startPos.x) / duration;
            this->actor.velocity.y = (endPos.y - startPos.y) / duration;
            gravity = this->actor.gravity;
            if (play->sceneId == SCENE_SACRED_FOREST_MEADOW) {
                gravity = 0.0f;
            }
            this->actor.velocity.y += gravity;
            if (this->actor.velocity.y < this->actor.minVelocityY) {
                this->actor.velocity.y = this->actor.minVelocityY;
            }
            this->actor.velocity.z = (endPos.z - startPos.z) / duration;
        }
    }
}

void EnSa_BecomeIdle(EnSa* this, PlayState* play) {
    if (play->sceneId == SCENE_SACRED_FOREST_MEADOW) {
        Item_Give(play, ITEM_SONG_SARIA);
        EnSa_ChangeAnim(this, ENSA_ANIM1_PLAYING_OCARINA);
    }

    if (play->sceneId == SCENE_KOKIRI_FOREST) {
        EnSa_ChangeAnim(this, ENSA_ANIM1_MOVE_ARMS_TO_SIDE);
        this->actor.world.pos = this->actor.home.pos;
        this->actor.world.rot = this->initRot;
        this->mouthIndex = SARIA_MOUTH_CLOSED2;
        SET_INFTABLE(INFTABLE_SARIA_GREETED_LINK);
    }

    this->actionFunc = EnSa_Idle;
}

void EnSa_Update(Actor* thisx, PlayState* play) {
    EnSa* this = (EnSa*)thisx;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);

    if (this->skelAnime.animation == &gSariaOcarinaToMouthAnim &&
        this->skelAnime.curFrame >= Animation_GetLastFrame(&gSariaOcarinaToMouthAnim)) {
        EnSa_ChangeAnim(this, ENSA_ANIM1_PLAYING_OCARINA);
    }

    if (this->actionFunc != EnSa_HandleCutscene) {
        this->alpha = Actor_UpdateAlphaByDistance(&this->actor, play, this->alpha, 400.0f);
    } else {
        this->alpha = 255;
    }

    this->actor.shape.shadowAlpha = this->alpha;

    if (this->actionFunc == EnSa_HandleCutscene) {
        this->actor.world.pos.x += this->actor.velocity.x;
        this->actor.world.pos.y += this->actor.velocity.y;
        this->actor.world.pos.z += this->actor.velocity.z;
    } else {
        Actor_UpdatePos(&this->actor);
    }

    if (play->sceneId != SCENE_SACRED_FOREST_MEADOW) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    }

    EnSa_Blink(this);
    this->actionFunc(this, play);
    EnSa_UpdateTalking(this, play);
    EnSa_UpdateTrackingMode(this, play);
}

s32 EnSa_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnSa* this = (EnSa*)thisx;
    s32 pad;
    Vec3s limbRot;

    if (limbIndex == 16) {
        Matrix_Translate(900.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        limbRot = this->interactInfo.headRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_Translate(-900.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }

    if (limbIndex == 9) {
        limbRot = this->interactInfo.torsoRot;
        Matrix_RotateY(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
    }

    if (play->sceneId == SCENE_SACRED_FOREST_MEADOW && limbIndex == 15) {
        *dList = gSariaRightHandAndOcarinaDL;
    }

    return 0;
}

void EnSa_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnSa* this = (EnSa*)thisx;
    Vec3f focusOffset = { 400.0, 0.0f, 0.0f };

    if (limbIndex == 16) {
        Matrix_MultVec3f(&focusOffset, &this->actor.focus.pos);
    }
}

void EnSa_Draw(Actor* thisx, PlayState* play) {
    static void* mouthTextures[] = {
        gSariaMouthClosed2Tex,  gSariaMouthSmilingOpenTex, gSariaMouthFrowningTex,
        gSariaMouthSuprisedTex, gSariaMouthClosedTex,
    };
    static void* eyeTextures[] = {
        gSariaEyeOpenTex, gSariaEyeHalfTex, gSariaEyeClosedTex, gSariaEyeSuprisedTex, gSariaEyeSadTex,
    };
    EnSa* this = (EnSa*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_sa.c", 1444);

    if (this->alpha == 255) {
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->rightEyeIndex]));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTextures[this->leftEyeIndex]));
        gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(mouthTextures[this->mouthIndex]));
        func_80034BA0(play, &this->skelAnime, EnSa_OverrideLimbDraw, EnSa_PostLimbDraw, &this->actor, this->alpha);
    } else if (this->alpha != 0) {
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->rightEyeIndex]));
        gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTextures[this->leftEyeIndex]));
        gSPSegment(POLY_XLU_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(mouthTextures[this->mouthIndex]));
        func_80034CC4(play, &this->skelAnime, EnSa_OverrideLimbDraw, EnSa_PostLimbDraw, &this->actor, this->alpha);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_sa.c", 1497);
}
