/*
 * File: z_en_md.c
 * Overlay: ovl_En_Md
 * Description: Mido
 */

#include "z_en_md.h"
#include "assets/objects/object_md/object_md.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"

#define FLAGS                                                                                  \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_UPDATE_DURING_OCARINA)

void EnMd_Init(Actor* thisx, PlayState* play);
void EnMd_Destroy(Actor* thisx, PlayState* play);
void EnMd_Update(Actor* thisx, PlayState* play);
void EnMd_Draw(Actor* thisx, PlayState* play);

void EnMd_Idle(EnMd* this, PlayState* play);
void EnMd_Watch(EnMd* this, PlayState* play);
void EnMd_BlockPath(EnMd* this, PlayState* play);
void EnMd_ListenToOcarina(EnMd* this, PlayState* play);
void EnMd_Walk(EnMd* this, PlayState* play);

ActorProfile En_Md_Profile = {
    /**/ ACTOR_EN_MD,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_MD,
    /**/ sizeof(EnMd),
    /**/ EnMd_Init,
    /**/ EnMd_Destroy,
    /**/ EnMd_Update,
    /**/ EnMd_Draw,
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
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 36, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

typedef enum EnMdAnimSequence {
    /* 0x0 */ ENMD_ANIM_SEQ_NONE,
    /* 0x1 */ ENMD_ANIM_SEQ_IDLE_TO_HALT,        // hands on hips -> halt gesture
    /* 0x2 */ ENMD_ANIM_SEQ_HALT_TO_CURIOUS,     // halt gesture -> tilted head
    /* 0x3 */ ENMD_ANIM_SEQ_WALK_AWAY,           // stop halt gesture -> start walking -> walking
    /* 0x4 */ ENMD_ANIM_SEQ_TWITCH_IDLE_UNUSED,  // start walking -> hands on hips; never set
    /* 0x5 */ ENMD_ANIM_SEQ_HALT_TO_IDLE,        // halt gesture -> hands on hips
    /* 0x6 */ ENMD_ANIM_SEQ_SURPRISE_TO_ANNOYED, // slightly raise arms from hips -> look away
    /* 0x7 */ ENMD_ANIM_SEQ_SURPRISE_TO_IDLE,    // lower slightly raised arms to hips -> hands on hips
    /* 0x8 */ ENMD_ANIM_SEQ_CURIOUS_TO_ANNOYED,  // tilted head and *slam* -> looking away
    /* 0x9 */ ENMD_ANIM_SEQ_ANNOYED_TO_HALT,     // looking away -> halt gesture
    /* 0xA */ ENMD_ANIM_SEQ_IDLE_TO_ANNOYED,     // hands on hips -> looking away
    /* 0xB */ ENMD_ANIM_SEQ_STOP_WALKING         // stop walking -> hands on hips
} EnMdAnimSequence;

typedef enum EnMdAnimIndex {
    /*  0 */ ENMD_ANIM_INDEX_IDLE_DEFAULT,       // hands on hips; default idle
    /*  1 */ ENMD_ANIM_INDEX_IDLE_UNUSED,        // hands on hips; never set
    /*  2 */ ENMD_ANIM_INDEX_IDLE_TO_HALT,       // hands on hips -> halt gesture
    /*  3 */ ENMD_ANIM_INDEX_HALT,               // halt gesture
    /*  4 */ ENMD_ANIM_INDEX_HALT_TO_CURIOUS,    // halt gesture -> tilted head
    /*  5 */ ENMD_ANIM_INDEX_CURIOUS,            // tilted head
    /*  6 */ ENMD_ANIM_INDEX_ANNOYED,            // looking away
    /*  7 */ ENMD_ANIM_INDEX_IDLE_TO_WALK,       // hands on hips -> walking
    /*  8 */ ENMD_ANIM_INDEX_WALK,               // walking
    /*  9 */ ENMD_ANIM_INDEX_IDLE_TO_SURPISE,    // hands on hips -> slightly raised arms
    /* 10 */ ENMD_ANIM_INDEX_IDLE,               // hands on hips
    /* 11 */ ENMD_ANIM_INDEX_CURIOUS_TO_ANNOYED, // tilted head -> looking away
    /* 12 */ ENMD_ANIM_INDEX_ANNOYED_TO_HALT,    // looking away -> halt gesture
    /* 13 */ ENMD_ANIM_INDEX_IDLE_TO_ANNOYED     // hands on hips -> looking away
} EnMdAnimIndex;

static AnimationInfo sAnimationInfo[] = {
    { &gMidoIdleAnim, 0.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { &gMidoIdleAnim, 0.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -10.0f },
    { &gMidoIdleToHaltAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { &gMidoHaltAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { &gMidoHaltToCuriousAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { &gMidoCuriousAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { &gMidoAnnoyedAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { &gMidoIdleToWalkAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { &gMidoWalkAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { &gMidoIdleToSurpriseAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { &gMidoIdleAnim, 0.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -8.0f },
    { &gMidoCuriousToAnnoyedAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { &gMidoAnnoyedToHaltAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { &gMidoIdleToAnnoyedAnim, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
};

void EnMd_ReverseAnimation(EnMd* this) {
    f32 startFrame;

    startFrame = this->skelAnime.startFrame;
    this->skelAnime.startFrame = this->skelAnime.endFrame;
    this->skelAnime.curFrame = this->skelAnime.endFrame;
    this->skelAnime.endFrame = startFrame;
    this->skelAnime.playSpeed = -1.0f;
}

void EnMd_UpdateAnimSequence_IdleToHalt(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_HALT);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_HALT);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_HaltToCurious(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_HALT_TO_CURIOUS);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_CURIOUS);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_WalkAway(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_HALT);
            EnMd_ReverseAnimation(this);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_WALK);
                this->animSequenceEntry++;
            } else {
                break;
            }
            FALLTHROUGH;
        case 2:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_WALK);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_TwitchIdle_Unused(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_WALK);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_HaltToIdle(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_HALT);
            EnMd_ReverseAnimation(this);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_SurpriseToAnnoyed(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_SURPISE);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_ANNOYED);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_SurpriseToIdle(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_SURPISE);
            EnMd_ReverseAnimation(this);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_CuriousToAnnoyed(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_CURIOUS_TO_ANNOYED);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_ANNOYED);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_AnnoyedToHalt(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_ANNOYED_TO_HALT);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_HALT);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_IdleToAnnoyed(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_ANNOYED);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_ANNOYED);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_StopWalking(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_WALK);
            EnMd_ReverseAnimation(this);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_SetAnimSequence(EnMd* this, u8 state) {
    this->animSequence = state;
    this->animSequenceEntry = 0;
}

void EnMd_UpdateAnimSequence(EnMd* this) {
    switch (this->animSequence) {
        case ENMD_ANIM_SEQ_IDLE_TO_HALT:
            EnMd_UpdateAnimSequence_IdleToHalt(this);
            break;
        case ENMD_ANIM_SEQ_HALT_TO_CURIOUS:
            EnMd_UpdateAnimSequence_HaltToCurious(this);
            break;
        case ENMD_ANIM_SEQ_WALK_AWAY:
            EnMd_UpdateAnimSequence_WalkAway(this);
            break;
        case ENMD_ANIM_SEQ_TWITCH_IDLE_UNUSED:
            // unreachable
            EnMd_UpdateAnimSequence_TwitchIdle_Unused(this);
            break;
        case ENMD_ANIM_SEQ_HALT_TO_IDLE:
            EnMd_UpdateAnimSequence_HaltToIdle(this);
            break;
        case ENMD_ANIM_SEQ_SURPRISE_TO_ANNOYED:
            EnMd_UpdateAnimSequence_SurpriseToAnnoyed(this);
            break;
        case ENMD_ANIM_SEQ_SURPRISE_TO_IDLE:
            EnMd_UpdateAnimSequence_SurpriseToIdle(this);
            break;
        case ENMD_ANIM_SEQ_CURIOUS_TO_ANNOYED:
            EnMd_UpdateAnimSequence_CuriousToAnnoyed(this);
            break;
        case ENMD_ANIM_SEQ_ANNOYED_TO_HALT:
            EnMd_UpdateAnimSequence_AnnoyedToHalt(this);
            break;
        case ENMD_ANIM_SEQ_IDLE_TO_ANNOYED:
            EnMd_UpdateAnimSequence_IdleToAnnoyed(this);
            break;
        case ENMD_ANIM_SEQ_STOP_WALKING:
            EnMd_UpdateAnimSequence_StopWalking(this);
    }
}

void EnMd_UpdateAnimSequence_WithTalking(EnMd* this) {
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        switch (this->actor.textId) {
            case 0x102F:
                if ((this->messageEntry == 0) && (this->animSequence != ENMD_ANIM_SEQ_IDLE_TO_HALT)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_IDLE_TO_HALT);
                }
                if ((this->messageEntry == 2) && (this->animSequence != ENMD_ANIM_SEQ_HALT_TO_CURIOUS)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_HALT_TO_CURIOUS);
                }
                if ((this->messageEntry == 5) && (this->animSequence != ENMD_ANIM_SEQ_CURIOUS_TO_ANNOYED)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_CURIOUS_TO_ANNOYED);
                }
                if ((this->messageEntry == 11) && (this->animSequence != ENMD_ANIM_SEQ_ANNOYED_TO_HALT)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_ANNOYED_TO_HALT);
                }
                break;
            case 0x1033:
                if ((this->messageEntry == 0) && (this->animSequence != ENMD_ANIM_SEQ_IDLE_TO_HALT)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_IDLE_TO_HALT);
                }
                if ((this->messageEntry == 1) && (this->animSequence != ENMD_ANIM_SEQ_HALT_TO_CURIOUS)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_HALT_TO_CURIOUS);
                }
                if ((this->messageEntry == 5) && (this->animSequence != ENMD_ANIM_SEQ_IDLE_TO_ANNOYED)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_IDLE_TO_ANNOYED);
                }
                if ((this->messageEntry == 7) && (this->animSequence != ENMD_ANIM_SEQ_ANNOYED_TO_HALT)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_ANNOYED_TO_HALT);
                }
                break;
            case 0x1030:
            case 0x1034:
            case 0x1045:
                if ((this->messageEntry == 0) && (this->animSequence != ENMD_ANIM_SEQ_IDLE_TO_HALT)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_IDLE_TO_HALT);
                }
                break;
            case 0x1046:
                if ((this->messageEntry == 0) && (this->animSequence != ENMD_ANIM_SEQ_SURPRISE_TO_ANNOYED)) {
                    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_SURPRISE_TO_ANNOYED);
                }
                break;
        }
    } else if (this->skelAnime.animation != &gMidoIdleAnim) {
        Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
        EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_NONE);
    }

    EnMd_UpdateAnimSequence(this);
}

s16 EnMd_TrackMessageState(EnMd* this, PlayState* play) {
    s16 messageState = Message_GetState(&play->msgCtx);

    if ((this->messageState == TEXT_STATE_AWAITING_NEXT) || (this->messageState == TEXT_STATE_EVENT) ||
        (this->messageState == TEXT_STATE_CLOSING) || (this->messageState == TEXT_STATE_DONE_HAS_NEXT)) {
        if (this->messageState != messageState) {
            this->messageEntry++;
        }
    }

    this->messageState = messageState;
    return messageState;
}

u16 EnMd_GetTextIdKokiriForest(PlayState* play, EnMd* this) {
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_MIDO);

    if (textId != 0) {
        return textId;
    }

    this->messageEntry = 0;
    this->messageState = TEXT_STATE_NONE;

    if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
        return 0x1045;
    }

    if (GET_EVENTCHKINF(EVENTCHKINF_04)) {
        return 0x1034;
    }

    if ((CUR_EQUIP_VALUE(EQUIP_TYPE_SHIELD) == EQUIP_VALUE_SHIELD_DEKU) &&
        (CUR_EQUIP_VALUE(EQUIP_TYPE_SWORD) == EQUIP_VALUE_SWORD_KOKIRI)) {
        return 0x1033;
    }

    if (GET_INFTABLE(INFTABLE_0C)) {
        return 0x1030;
    }

    return 0x102F;
}

u16 EnMd_GetTextIdMidosHouse(PlayState* play, EnMd* this) {
    this->messageEntry = 0;
    this->messageState = TEXT_STATE_NONE;

    if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
        return 0x1028;
    }

    return 0x1046;
}

u16 EnMd_GetTextIdLostWoods(PlayState* play, EnMd* this) {
    this->messageEntry = 0;
    this->messageState = TEXT_STATE_NONE;

    if (GET_EVENTCHKINF(EVENTCHKINF_48)) {
        if (GET_INFTABLE(INFTABLE_19)) {
            return 0x1071;
        }
        return 0x1070;
    }

    if (GET_EVENTCHKINF(EVENTCHKINF_0A)) {
        return 0x1068;
    }

    if (GET_INFTABLE(INFTABLE_15)) {
        return 0x1061;
    }

    return 0x1060;
}

u16 EnMd_GetTextId(PlayState* play, Actor* thisx) {
    EnMd* this = (EnMd*)thisx;

    switch (play->sceneId) {
        case SCENE_KOKIRI_FOREST:
            return EnMd_GetTextIdKokiriForest(play, this);
        case SCENE_MIDOS_HOUSE:
            return EnMd_GetTextIdMidosHouse(play, this);
        case SCENE_LOST_WOODS:
            return EnMd_GetTextIdLostWoods(play, this);
        default:
            return 0;
    }
}

s16 EnMd_UpdateTalkState(PlayState* play, Actor* thisx) {
    EnMd* this = (EnMd*)thisx;
    switch (EnMd_TrackMessageState(this, play)) {
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
        case TEXT_STATE_DONE_FADING:
        case TEXT_STATE_CHOICE:
        case TEXT_STATE_DONE:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            return NPC_TALK_STATE_TALKING;
        case TEXT_STATE_CLOSING:
            switch (this->actor.textId) {
                case 0x1028:
                    SET_EVENTCHKINF(EVENTCHKINF_0F);
                    break;
                case 0x102F:
                    SET_EVENTCHKINF(EVENTCHKINF_MIDO_DENIED_DEKU_TREE_ACCESS);
                    SET_INFTABLE(INFTABLE_0C);
                    break;
                case 0x1060:
                    SET_INFTABLE(INFTABLE_15);
                    break;
                case 0x1070:
                    SET_INFTABLE(INFTABLE_19);
                    break;
                case 0x1033:
                case 0x1067:
                    return NPC_TALK_STATE_ACTION;
            }
            return NPC_TALK_STATE_IDLE;
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                return NPC_TALK_STATE_ACTION;
            }
            FALLTHROUGH;
        default:
            return NPC_TALK_STATE_TALKING;
    }
}

u8 EnMd_ShouldSpawn(EnMd* this, PlayState* play) {
    if (play->sceneId == SCENE_KOKIRI_FOREST) {
        if (!GET_EVENTCHKINF(EVENTCHKINF_1C) && !GET_EVENTCHKINF(EVENTCHKINF_40)) {
            return 1;
        }
    }

    if (play->sceneId == SCENE_MIDOS_HOUSE) {
        if (GET_EVENTCHKINF(EVENTCHKINF_1C) || GET_EVENTCHKINF(EVENTCHKINF_40)) {
            if (!LINK_IS_ADULT) {
                return 1;
            }
        }
    }

    if (play->sceneId == SCENE_LOST_WOODS) {
        return 1;
    }

    return 0;
}

void EnMd_UpdateEyes(EnMd* this) {
    if (DECR(this->blinkTimer) == 0) {
        this->eyeTexIndex++;
        if (this->eyeTexIndex > 2) {
            this->blinkTimer = Rand_S16Offset(30, 30);
            this->eyeTexIndex = 0;
        }
    }
}

void EnMd_UpdateTalking(EnMd* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 absYawDiff;
    s16 trackingMode;
    s16 canUpdateTalking;
    s16 yawDiff;

    if (this->actor.xzDistToPlayer < 170.0f) {
        yawDiff = (f32)this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        absYawDiff = ABS(yawDiff);

        trackingMode =
            absYawDiff <= Npc_GetTrackingPresetMaxPlayerYaw(2) ? NPC_TRACKING_HEAD_AND_TORSO : NPC_TRACKING_NONE;
        canUpdateTalking = true;
    } else {
        trackingMode = NPC_TRACKING_NONE;
        canUpdateTalking = false;
    }

    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        trackingMode = NPC_TRACKING_FULL_BODY;
    }

    if (this->actionFunc == EnMd_Walk) {
        trackingMode = NPC_TRACKING_NONE;
        canUpdateTalking = false;
    }
    if (this->actionFunc == EnMd_Watch) {
        trackingMode = NPC_TRACKING_FULL_BODY;
        canUpdateTalking = true;
    }

    if ((play->csCtx.state != CS_STATE_IDLE) || gDebugCamEnabled) {
        this->interactInfo.trackPos = play->view.eye;
        this->interactInfo.yOffset = 40.0f;
        trackingMode = NPC_TRACKING_HEAD_AND_TORSO;
    } else {
        this->interactInfo.trackPos = player->actor.world.pos;
        this->interactInfo.yOffset = (gSaveContext.save.linkAge > 0) ? 0.0f : -18.0f;
    }

    Npc_TrackPoint(&this->actor, &this->interactInfo, 2, trackingMode);
    if (this->actionFunc != EnMd_ListenToOcarina) {
        if (canUpdateTalking) {
            Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, this->collider.dim.radius + 30.0f,
                              EnMd_GetTextId, EnMd_UpdateTalkState);
        }
    }
}

u8 EnMd_FollowPath(EnMd* this, PlayState* play) {
    Path* path;
    Vec3s* pointPos;
    f32 pathDiffX;
    f32 pathDiffZ;

    if (ENMD_GET_PATH_INDEX_NOSHIFT(this) == (ENMD_PATH_NONE << 8)) {
        return 0;
    }

    path = &play->pathList[ENMD_GET_PATH_INDEX(this)];
    pointPos = SEGMENTED_TO_VIRTUAL(path->points);
    pointPos += this->waypoint;

    pathDiffX = pointPos->x - this->actor.world.pos.x;
    pathDiffZ = pointPos->z - this->actor.world.pos.z;
    Math_SmoothStepToS(&this->actor.world.rot.y, Math_FAtan2F(pathDiffX, pathDiffZ) * (65536.0f / (2 * M_PI)), 4, 4000,
                       1);

    if ((SQ(pathDiffX) + SQ(pathDiffZ)) < 100.0f) {
        this->waypoint++;
        if (this->waypoint >= path->count) {
            this->waypoint = 0;
        }
        return 1;
    }
    return 0;
}

u8 EnMd_SetMovedPos(EnMd* this, PlayState* play) {
    Path* path;
    Vec3s* lastPointPos;

    if (ENMD_GET_PATH_INDEX_NOSHIFT(this) == (ENMD_PATH_NONE << 8)) {
        return 0;
    }

    path = &play->pathList[ENMD_GET_PATH_INDEX(this)];
    lastPointPos = SEGMENTED_TO_VIRTUAL(path->points);
    lastPointPos += path->count - 1;

    this->actor.world.pos.x = lastPointPos->x;
    this->actor.world.pos.y = lastPointPos->y;
    this->actor.world.pos.z = lastPointPos->z;

    return 1;
}

void EnMd_UpdateAlphaByDistance(EnMd* this, PlayState* play) {
    f32 radius;

    if (play->sceneId != SCENE_MIDOS_HOUSE) {
        radius = (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && !GET_EVENTCHKINF(EVENTCHKINF_1C) &&
                  (play->sceneId == SCENE_KOKIRI_FOREST))
                     ? 100.0f
                     : 400.0f;
        this->alpha = Actor_UpdateAlphaByDistance(&this->actor, play, this->alpha, radius);
        this->actor.shape.shadowAlpha = this->alpha;
    } else {
        this->alpha = 255;
        this->actor.shape.shadowAlpha = this->alpha;
    }
}

void EnMd_Init(Actor* thisx, PlayState* play) {
    EnMd* this = (EnMd*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 24.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gMidoSkel, NULL, this->jointTable, this->morphTable, ENMD_LIMB_MAX);

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    if (!EnMd_ShouldSpawn(this, play)) {
        Actor_Kill(&this->actor);
        return;
    }

    Animation_ChangeByInfo(&this->skelAnime, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_DEFAULT);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->alpha = 255;
    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_ELF, this->actor.world.pos.x,
                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, FAIRY_KOKIRI);

    if (((play->sceneId == SCENE_KOKIRI_FOREST) && !GET_EVENTCHKINF(EVENTCHKINF_04)) ||
        ((play->sceneId == SCENE_KOKIRI_FOREST) && GET_EVENTCHKINF(EVENTCHKINF_04) &&
         CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) ||
        ((play->sceneId == SCENE_LOST_WOODS) && !GET_EVENTCHKINF(EVENTCHKINF_0A))) {
        this->actor.home.pos = this->actor.world.pos;
        this->actionFunc = EnMd_BlockPath;
        return;
    }

    if (play->sceneId != SCENE_MIDOS_HOUSE) {
        EnMd_SetMovedPos(this, play);
    }

    this->actionFunc = EnMd_Idle;
}

void EnMd_Destroy(Actor* thisx, PlayState* play) {
    EnMd* this = (EnMd*)thisx;
    Collider_DestroyCylinder(play, &this->collider);
}

void EnMd_Idle(EnMd* this, PlayState* play) {
    if (this->skelAnime.animation == &gMidoIdleAnim) {
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, ENMD_LIMB_MAX);
    } else if ((this->interactInfo.talkState == NPC_TALK_STATE_IDLE) &&
               (this->animSequence != ENMD_ANIM_SEQ_SURPRISE_TO_IDLE)) {
        EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_SURPRISE_TO_IDLE);
    }

    EnMd_UpdateAnimSequence_WithTalking(this);
}

void EnMd_Watch(EnMd* this, PlayState* play) {
    if (this->skelAnime.animation == &gMidoIdleAnim) {
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, ENMD_LIMB_MAX);
    }
    EnMd_UpdateAnimSequence(this);
}

void EnMd_BlockPath(EnMd* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 temp;
    Actor* actorToBlock = &GET_PLAYER(play)->actor;
    s16 yaw;

    EnMd_UpdateAnimSequence_WithTalking(this);

    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        this->actor.shape.rot.y = this->actor.yawTowardsPlayer;

        yaw = Math_Vec3f_Yaw(&this->actor.home.pos, &actorToBlock->world.pos);

        this->actor.world.pos.x = this->actor.home.pos.x;
        this->actor.world.pos.x += 60.0f * Math_SinS(yaw);

        this->actor.world.pos.z = this->actor.home.pos.z;
        this->actor.world.pos.z += 60.0f * Math_CosS(yaw);

        temp = fabsf((f32)this->actor.yawTowardsPlayer - yaw) * 0.001f * 3.0f;
        this->skelAnime.playSpeed = CLAMP(temp, 1.0f, 3.0f);
    }

    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && !GET_EVENTCHKINF(EVENTCHKINF_1C) &&
            (play->sceneId == SCENE_KOKIRI_FOREST)) {
            play->msgCtx.msgMode = MSGMODE_PAUSED;
        }

        if (play->sceneId == SCENE_KOKIRI_FOREST) {
            SET_EVENTCHKINF(EVENTCHKINF_04);
        }
        if (play->sceneId == SCENE_LOST_WOODS) {
            SET_EVENTCHKINF(EVENTCHKINF_0A);
        }

        EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_WALK_AWAY);
        EnMd_UpdateAnimSequence(this);
        this->waypoint = 1;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        this->actionFunc = EnMd_Walk;
        this->actor.speed = 1.5f;
        return;
    }

    if (this->skelAnime.animation == &gMidoIdleAnim) {
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, ENMD_LIMB_MAX);
    }

    if ((this->interactInfo.talkState == NPC_TALK_STATE_IDLE) && (play->sceneId == SCENE_LOST_WOODS)) {
        if (player->stateFlags2 & PLAYER_STATE2_24) {
            player->stateFlags2 |= PLAYER_STATE2_25;
            player->unk_6A8 = &this->actor;
            Message_StartOcarina(play, OCARINA_ACTION_CHECK_SARIA);
            this->actionFunc = EnMd_ListenToOcarina;
            return;
        }

        if (this->actor.xzDistToPlayer < (30.0f + this->collider.dim.radius)) {
            player->stateFlags2 |= PLAYER_STATE2_23;
        }
    }
}

void EnMd_ListenToOcarina(EnMd* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (play->msgCtx.ocarinaMode >= OCARINA_MODE_04) {
        this->actionFunc = EnMd_BlockPath;
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
    } else if (play->msgCtx.ocarinaMode == OCARINA_MODE_03) {
        Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        this->actor.textId = 0x1067;
        Actor_OfferTalk(&this->actor, play, this->collider.dim.radius + 30.0f);

        this->actionFunc = EnMd_BlockPath;
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
    } else {
        player->stateFlags2 |= PLAYER_STATE2_23;
    }
}

void EnMd_Walk(EnMd* this, PlayState* play) {
    Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, ENMD_LIMB_MAX);
    EnMd_UpdateAnimSequence(this);

    if (!(EnMd_FollowPath(this, play)) || (this->waypoint != 0)) {
        this->actor.shape.rot = this->actor.world.rot;
        return;
    }

    if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && !GET_EVENTCHKINF(EVENTCHKINF_1C) &&
        (play->sceneId == SCENE_KOKIRI_FOREST)) {
        Message_CloseTextbox(play);
        SET_EVENTCHKINF(EVENTCHKINF_1C);
        Actor_Kill(&this->actor);
        return;
    }

    EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_STOP_WALKING);

    this->skelAnime.playSpeed = 0.0f;
    this->actor.speed = 0.0f;
    this->actor.home.pos = this->actor.world.pos;
    this->actionFunc = EnMd_Watch;
}

void EnMd_Update(Actor* thisx, PlayState* play) {
    EnMd* this = (EnMd*)thisx;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);
    EnMd_UpdateEyes(this);
    EnMd_UpdateAlphaByDistance(this, play);
    Actor_MoveXZGravity(&this->actor);
    EnMd_UpdateTalking(this, play);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    this->actionFunc(this, play);
}

s32 EnMd_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnMd* this = (EnMd*)thisx;
    Vec3s limbRot;

    if (limbIndex == ENMD_LIMB_HEAD) {
        Matrix_Translate(1200.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        limbRot = this->interactInfo.headRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_Translate(-1200.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == ENMD_LIMB_TORSO) {
        limbRot = this->interactInfo.torsoRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_RotateY(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
    }

    if (((limbIndex == ENMD_LIMB_TORSO) || (limbIndex == ENMD_LIMB_LEFT_UPPER_ARM)) ||
        (limbIndex == ENMD_LIMB_RIGHT_UPPER_ARM)) {
        rot->y += Math_SinS(this->fidgetTableY[limbIndex]) * FIDGET_AMPLITUDE;
        rot->z += Math_CosS(this->fidgetTableZ[limbIndex]) * FIDGET_AMPLITUDE;
    }

    return false;
}

void EnMd_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnMd* this = (EnMd*)thisx;
    Vec3f vec = { 400.0f, 0.0f, 0.0f };

    if (limbIndex == ENMD_LIMB_HEAD) {
        Matrix_MultVec3f(&vec, &this->actor.focus.pos);
    }
}

void EnMd_Draw(Actor* thisx, PlayState* play) {
    static void* sEyeTextures[] = {
        gMidoEyeOpenTex,
        gMidoEyeHalfTex,
        gMidoEyeClosedTex,
    };
    EnMd* this = (EnMd*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_md.c", 1280);

    if (this->alpha == 255) {
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
        func_80034BA0(play, &this->skelAnime, EnMd_OverrideLimbDraw, EnMd_PostLimbDraw, &this->actor, this->alpha);
    } else if (this->alpha != 0) {
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
        func_80034CC4(play, &this->skelAnime, EnMd_OverrideLimbDraw, EnMd_PostLimbDraw, &this->actor, this->alpha);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_md.c", 1317);
}
