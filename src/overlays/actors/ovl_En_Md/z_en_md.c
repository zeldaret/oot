#include "z_en_md.h"
#include "overlays/actors/ovl_En_Elf/z_en_elf.h"

#include "libc64/math64.h"
#include "attributes.h"
#include "gfx.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "face_reaction.h"
#include "ocarina.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_md/object_md.h"

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

extern AnimationHeader D_60002C8;
extern SkeletonHeader D_6007FB8;

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

ColliderCylinderInit D_80AAC310 = {
    { 0xA, 0, 0, 0x39, 0x20, 1 },
    { 0, { 0, 0, 0 }, { 0, 0, 0 }, 0, 0, 1 },
    { 0x24, 0x2E, 0, { 0, 0, 0 } },
};
CollisionCheckInfoInit2 D_80AAC33C = { 0, 0, 0, 0, 0xFF };

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
Vec3f D_80AAC498 = { 400.0f, 0.0f, 0.0f };
void* D_80AAC4A4[3] = {
    gMidoEyeOpenTex,
    gMidoEyeHalfTex,
    gMidoEyeClosedTex,
};

void EnMd_ReverseAnimation(EnMd* this) {
    f32 temp_fv0;
    f32 temp_fv1;

    temp_fv0 = this->unk14C.startFrame;
    temp_fv1 = this->unk14C.endFrame;
    this->unk14C.startFrame = temp_fv1;
    this->unk14C.curFrame = temp_fv1;
    this->unk14C.endFrame = temp_fv0;
    this->unk14C.playSpeed = -1.0f;
}

void EnMd_UpdateAnimSequence_IdleToHalt(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_HALT);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_HALT);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_HaltToCurious(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_HALT_TO_CURIOUS);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_CURIOUS);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_WalkAway(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_HALT);
            EnMd_ReverseAnimation(this);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_WALK);
                this->animSequenceEntry++;
            } else {
                break;
            }
            FALLTHROUGH;
        case 2:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_WALK);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_TwitchIdle_Unused(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_WALK);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_HaltToIdle(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_HALT);
            EnMd_ReverseAnimation(this);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_SurpriseToAnnoyed(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_SURPISE);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_ANNOYED);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_SurpriseToIdle(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_SURPISE);
            EnMd_ReverseAnimation(this);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_CuriousToAnnoyed(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_CURIOUS_TO_ANNOYED);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_ANNOYED);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_AnnoyedToHalt(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_ANNOYED_TO_HALT);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_HALT);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_IdleToAnnoyed(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_ANNOYED);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_ANNOYED);
                this->animSequenceEntry++;
            }
            break;
    }
}

void EnMd_UpdateAnimSequence_StopWalking(EnMd* this) {
    switch (this->animSequenceEntry) {
        case 0:
            Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_TO_WALK);
            EnMd_ReverseAnimation(this);
            this->animSequenceEntry++;
            FALLTHROUGH;
        case 1:
            if (Animation_OnFrame(&this->unk14C, this->unk14C.endFrame) != 0) {
                Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
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
        case 11:
            EnMd_UpdateAnimSequence_StopWalking(this);
            break;
        default:
            break;
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
                if ((this->messageEntry == 0xB) && (this->animSequence != ENMD_ANIM_SEQ_ANNOYED_TO_HALT)) {
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
    } else if (this->unk14C.animation != &gMidoIdleAnim) {
        Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE);
        EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_NONE);
    }
    EnMd_UpdateAnimSequence(this);
}

s16 EnMd_TrackMessageState(Actor* thisx, PlayState* play) {
    EnMd* this = (EnMd*)thisx;
    s16 messageState;

    messageState = Message_GetState(&play->msgCtx);
    if (((this->messageState == TEXT_STATE_AWAITING_NEXT) || (this->messageState == TEXT_STATE_EVENT) ||
         (this->messageState == TEXT_STATE_CLOSING) || (this->messageState == TEXT_STATE_DONE_HAS_NEXT)) &&
        (this->messageState != messageState)) {
        this->messageEntry++;
    }
    this->messageState = messageState;
    return messageState;
}

u16 func_80AAACF8(PlayState* play, EnMd* this) {
    u16 textId;

    textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_MIDO);
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

u16 func_80AAADE0(PlayState* play, EnMd* this) {
    this->messageEntry = 0;
    this->messageState = TEXT_STATE_NONE;
    if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
        return 0x1028;
    }
    return 0x1046;
}

u16 func_80AAAE14(PlayState* play, EnMd* this) {
    this->messageEntry = 0;
    this->messageState = TEXT_STATE_NONE;
    if (GET_EVENTCHKINF(EVENTCHKINF_48)) {
        if (GET_INFTABLE(INFTABLE_19)) {
            return 0x1071;
        } else {
            return 0x1070;
        }
    } else if (GET_EVENTCHKINF(EVENTCHKINF_0A)) {
        return 0x1068;
    } else if (GET_INFTABLE(INFTABLE_15)) {
        return 0x1061;
    } else {
        return 0x1060;
    }
}

u16 func_80AAAE94(PlayState* play, Actor* thisx) {
    EnMd* this = (EnMd*)thisx;

    switch (play->sceneId) {
        case SCENE_KOKIRI_FOREST:
            return func_80AAACF8(play, this);
        case SCENE_MIDOS_HOUSE:
            return func_80AAADE0(play, this);
        case SCENE_LOST_WOODS:
            return func_80AAAE14(play, this);
        default:
            return 0;
    }
}

s16 EnMd_UpdateTalkState(PlayState* play, Actor* thisx) {
    switch (EnMd_TrackMessageState(thisx, play)) {
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
            switch (thisx->textId) {
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
            break;
    }
    return NPC_TALK_STATE_TALKING;
}

s32 func_80AAB03C(EnMd* this, PlayState* play) {
    if ((play->sceneId == SCENE_KOKIRI_FOREST) && !GET_EVENTCHKINF(EVENTCHKINF_1C) &&
        !GET_EVENTCHKINF(EVENTCHKINF_40)) {
        return 1;
    } else if ((play->sceneId == SCENE_MIDOS_HOUSE) &&
               ((gSaveContext.save.info.eventChkInf[1] & 0x1000) || (gSaveContext.save.info.eventChkInf[4] & 1)) &&
               !LINK_IS_ADULT) {
        return 1;
    } else if (play->sceneId == SCENE_LOST_WOODS) {
        return 1;
    } else {
        return 0;
    }
}

void func_80AAB0E0(EnMd* arg0) {
    if (DECR(arg0->unk20C) == 0) {
        arg0->unk20E += 1;
        if (arg0->unk20E >= 3) {
            arg0->unk20C = Rand_S16Offset(0x1E, 0x1E);
            arg0->unk20E = 0;
        }
    }
}

void EnMd_UpdateTalking(EnMd* this, PlayState* play) {
    Player* temp_a2;
    s16 temp_v1;
    s16 temp_ft1;
    s16 canUpdateTalking;
    s16 trackingMode;

    temp_a2 = GET_PLAYER(play);
    if (this->actor.xzDistToPlayer < 170.0f) {
        temp_ft1 = (f32)this->actor.yawTowardsPlayer - (f32)this->actor.shape.rot.y;
        temp_v1 = ABS(temp_ft1);
        if (temp_v1 <= Npc_GetTrackingPresetMaxPlayerYaw(2)) {
            trackingMode = NPC_TRACKING_HEAD_AND_TORSO;
            canUpdateTalking = true;
        } else {
            trackingMode = NPC_TRACKING_NONE;
            canUpdateTalking = true;
        }
    } else {
        trackingMode = NPC_TRACKING_NONE;
        canUpdateTalking = false;
    }
    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        trackingMode = NPC_TRACKING_FULL_BODY;
    }
    if (this->unk190 == EnMd_Walk) {
        trackingMode = NPC_TRACKING_NONE;
        canUpdateTalking = false;
    }
    if (this->unk190 == EnMd_Watch) {
        trackingMode = NPC_TRACKING_FULL_BODY;
        canUpdateTalking = true;
    }
    if ((play->csCtx.state != CS_STATE_IDLE) || (gDebugCamEnabled != 0)) {
        this->interactInfo.trackPos = play->view.eye;
        this->interactInfo.yOffset = 40.0f;
        trackingMode = NPC_TRACKING_HEAD_AND_TORSO;
    } else {
        this->interactInfo.trackPos = temp_a2->actor.world.pos;
        if (gSaveContext.save.linkAge > 0) {
            this->interactInfo.yOffset = 0.0f;
        } else {
            this->interactInfo.yOffset = -18.0f;
        }
    }
    Npc_TrackPoint(&this->actor, &this->interactInfo, 2, trackingMode);
    if ((this->unk190 != EnMd_ListenToOcarina) && canUpdateTalking) {
        Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, this->unk194.dim.radius + 30.0f,
                          func_80AAAE94, EnMd_UpdateTalkState);
    }
}

s32 func_80AAB370(EnMd* this, PlayState* play) {
    Path* temp_a0;
    s32 pad;
    f32 temp_fa0;
    f32 temp_fa1;
    Vec3s* temp_v0;
    s32 temp_a2;

    temp_a2 = ENMD_GET_PATH_INDEX_NOSHIFT(this);
    if (temp_a2 == (ENMD_PATH_NONE << 8)) {
        return 0;
    }
    temp_a0 = &play->pathList[temp_a2 >> 8];
    temp_v0 = SEGMENTED_TO_VIRTUAL(temp_a0->points);
    temp_v0 += this->unk212;
    temp_fa0 = (f32)temp_v0->x - this->actor.world.pos.x;
    temp_fa1 = (f32)temp_v0->z - this->actor.world.pos.z;
    Math_SmoothStepToS(&this->actor.world.rot.y, (Math_FAtan2F(temp_fa0, temp_fa1) * 10430.378f), 4, 0xFA0, 1);
    if (((temp_fa0 * temp_fa0) + (temp_fa1 * temp_fa1)) < 100.0f) {
        this->unk212++;
        if (this->unk212 >= temp_a0->count) {
            this->unk212 = 0;
        }
        return 1;
    }
    return 0;
}

s32 func_80AAB4DC(EnMd* this, PlayState* play) {
    Path* temp_a1;
    s32 temp_v1;
    Vec3s* temp_a3;

    temp_v1 = ENMD_GET_PATH_INDEX_NOSHIFT(this);
    if (temp_v1 == (ENMD_PATH_NONE << 8)) {
        return 0;
    }
    temp_a1 = &play->pathList[temp_v1 >> 8];
    temp_a3 = SEGMENTED_TO_VIRTUAL(temp_a1->points);
    temp_a3 += temp_a1->count - 1;
    this->actor.world.pos.x = temp_a3->x;
    this->actor.world.pos.y = temp_a3->y;
    this->actor.world.pos.z = temp_a3->z;
    return 1;
}

void EnMd_UpdateAlphaByDistance(EnMd* this, PlayState* play) {
    f32 radius;

    if (play->sceneId != SCENE_MIDOS_HOUSE) {
        if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && !GET_EVENTCHKINF(EVENTCHKINF_1C) &&
            (play->sceneId == SCENE_KOKIRI_FOREST)) {
            radius = 100.0f;
        } else {
            radius = 400.0f;
        }
        this->unk210 = Actor_UpdateAlphaByDistance(&this->actor, play, this->unk210, radius);
        this->actor.shape.shadowAlpha = (u8)this->unk210;
    } else {
        this->unk210 = 255;
        this->actor.shape.shadowAlpha = (u8)this->unk210;
    }
}

void EnMd_Init(Actor* thisx, PlayState* play) {
    EnMd* this = (EnMd*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 24.0f);
    SkelAnime_InitFlex(play, &this->unk14C, &gMidoSkel, NULL, this->unk258, this->unk2BE, MIDO_LIMB_MAX);
    Collider_InitCylinder(play, &this->unk194);
    Collider_SetCylinder(play, &this->unk194, &this->actor, &D_80AAC310);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &D_80AAC33C);
    if (func_80AAB03C(this, play) == 0) {
        Actor_Kill(&this->actor);
        return;
    }
    Animation_ChangeByInfo(&this->unk14C, sAnimationInfo, ENMD_ANIM_INDEX_IDLE_DEFAULT);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->unk210 = 255;
    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_ELF, this->actor.world.pos.x,
                       this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, FAIRY_KOKIRI);
    if (((play->sceneId == SCENE_KOKIRI_FOREST) && !GET_EVENTCHKINF(EVENTCHKINF_04)) ||
        ((play->sceneId == SCENE_KOKIRI_FOREST) && GET_EVENTCHKINF(EVENTCHKINF_04) &&
         CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) ||
        ((play->sceneId == SCENE_LOST_WOODS) && !GET_EVENTCHKINF(EVENTCHKINF_0A))) {
        this->actor.home.pos = this->actor.world.pos;
        this->unk190 = EnMd_BlockPath;
    } else {
        if (play->sceneId != SCENE_MIDOS_HOUSE) {
            func_80AAB4DC(this, play);
        }
        this->unk190 = EnMd_Idle;
    }
}

void EnMd_Destroy(Actor* thisx, PlayState* play) {
    EnMd* this = (EnMd*)thisx;

    Collider_DestroyCylinder(play, &this->unk194);
}

void EnMd_Idle(EnMd* this, PlayState* play) {
    if (this->unk14C.animation == &gMidoIdleAnim) {
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, MIDO_LIMB_MAX);
    } else if ((this->interactInfo.talkState == NPC_TALK_STATE_IDLE) &&
               (this->animSequence != ENMD_ANIM_SEQ_SURPRISE_TO_IDLE)) {
        EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_SURPRISE_TO_IDLE);
    }
    EnMd_UpdateAnimSequence_WithTalking(this);
}

void EnMd_Watch(EnMd* this, PlayState* play) {
    if (this->unk14C.animation == &gMidoIdleAnim) {
        Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, MIDO_LIMB_MAX);
    }
    EnMd_UpdateAnimSequence(this);
}

void EnMd_BlockPath(EnMd* this, PlayState* play) {
    Player* sp2C;
    f32 temp_fv1;
    Player* sp24;
    s16 temp_v0_3;
    s32 temp_v0_4;

    sp2C = GET_PLAYER(play);
    sp24 = GET_PLAYER(play);
    EnMd_UpdateAnimSequence_WithTalking(this);
    if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
        this->actor.shape.rot.y = this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        temp_v0_3 = Math_Vec3f_Yaw(&this->actor.home.pos, &sp24->actor.world.pos);
        this->actor.world.pos.x = this->actor.home.pos.x;
        this->actor.world.pos.x += 60.0f * Math_SinS(temp_v0_3);
        this->actor.world.pos.z = this->actor.home.pos.z;
        this->actor.world.pos.z += 60.0f * Math_CosS(temp_v0_3);
        temp_fv1 = fabsf((f32)this->actor.yawTowardsPlayer - (f32)temp_v0_3) * 0.001f * 3.0f;
        this->unk14C.playSpeed = CLAMP(temp_fv1, 1.0f, 3.0f);
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
        this->unk212 = 1;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
        this->unk190 = EnMd_Walk;
        this->actor.speed = 1.5f;
    } else {
        if (this->unk14C.animation == &gMidoIdleAnim) {
            Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, MIDO_LIMB_MAX);
        }
        if ((this->interactInfo.talkState == NPC_TALK_STATE_IDLE) && (play->sceneId == SCENE_LOST_WOODS)) {
            if (sp2C->stateFlags2 & PLAYER_STATE2_24) {
                sp2C->stateFlags2 |= PLAYER_STATE2_25;
                sp2C->unk_6A8 = &this->actor;
                Message_StartOcarina(play, OCARINA_ACTION_CHECK_SARIA);
                this->unk190 = EnMd_ListenToOcarina;
            } else if (this->actor.xzDistToPlayer < (30.0f + (f32)this->unk194.dim.radius)) {
                sp2C->stateFlags2 |= PLAYER_STATE2_23;
            }
        }
    }
}

void EnMd_ListenToOcarina(EnMd* this, PlayState* play) {
    Player* temp_v0;

    temp_v0 = GET_PLAYER(play);
    if (play->msgCtx.ocarinaMode >= OCARINA_MODE_04) {
        this->unk190 = EnMd_BlockPath;
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
    } else if (play->msgCtx.ocarinaMode == OCARINA_MODE_03) {
        SFX_PLAY_CENTERED(NA_SE_SY_CORRECT_CHIME);
        this->actor.textId = 0x1067;
        Actor_OfferTalk(&this->actor, play, (f32)this->unk194.dim.radius + 30.0f);
        this->unk190 = EnMd_BlockPath;
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
    } else {
        temp_v0->stateFlags2 |= PLAYER_STATE2_23;
    }
}

void EnMd_Walk(EnMd* this, PlayState* play) {
    Actor_UpdateFidgetTables(play, this->fidgetTableY, this->fidgetTableZ, MIDO_LIMB_MAX);
    EnMd_UpdateAnimSequence(this);
    if ((func_80AAB370(this, play) == 0) || (this->unk212 != 0)) {
        this->actor.shape.rot = this->actor.world.rot;
    } else if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && !GET_EVENTCHKINF(EVENTCHKINF_1C) &&
               (play->sceneId == SCENE_KOKIRI_FOREST)) {
        Message_CloseTextbox(play);
        SET_EVENTCHKINF(EVENTCHKINF_1C);
        Actor_Kill(&this->actor);
    } else {
        EnMd_SetAnimSequence(this, ENMD_ANIM_SEQ_STOP_WALKING);
        this->unk14C.playSpeed = 0.0f;
        this->actor.speed = 0.0f;
        this->actor.home.pos = this->actor.world.pos;
        this->unk190 = EnMd_Watch;
    }
}

void EnMd_Update(Actor* thisx, PlayState* play) {
    EnMd* this = (EnMd*)thisx;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->unk194);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk194.base);
    SkelAnime_Update(&this->unk14C);
    func_80AAB0E0(this);
    EnMd_UpdateAlphaByDistance(this, play);
    Actor_MoveXZGravity(&this->actor);
    EnMd_UpdateTalking(this, play);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    this->unk190(this, play);
}

s32 func_80AABEF0(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnMd* this = (EnMd*)thisx;
    Vec3s limbRot;

    if (limbIndex == MIDO_LIMB_HEAD) {
        Matrix_Translate(1200.0f, 0.0f, 0.0f, 1U);
        limbRot = this->interactInfo.headRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_Translate(-1200.0f, 0.0f, 0.0f, 1U);
    }
    if (limbIndex == MIDO_LIMB_TORSO) {
        limbRot = this->interactInfo.torsoRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_RotateY(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
    }
    if ((limbIndex == MIDO_LIMB_TORSO) || (limbIndex == MIDO_LIMB_LEFT_UPPER_ARM) ||
        (limbIndex == MIDO_LIMB_RIGHT_UPPER_ARM)) {
        rot->y += (Math_SinS(this->fidgetTableY[limbIndex]) * FIDGET_AMPLITUDE);
        rot->z += (Math_CosS(this->fidgetTableZ[limbIndex]) * FIDGET_AMPLITUDE);
    }
    return 0;
}

void func_80AAC104(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    EnMd* this = (EnMd*)thisx;
    Vec3f sp18;

    sp18 = D_80AAC498;
    if (limbIndex == MIDO_LIMB_HEAD) {
        Matrix_MultVec3f(&sp18, &this->actor.focus.pos);
    }
}

void EnMd_Draw(Actor* thisx, PlayState* play) {
    EnMd* this = (EnMd*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_md.c", 1280);
    if (this->unk210 == 255) {
        gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80AAC4A4[this->unk20E]));
        func_80034BA0(play, &this->unk14C, func_80AABEF0, func_80AAC104, &this->actor, this->unk210);
    } else if (this->unk210 != 0) {
        gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_80AAC4A4[this->unk20E]));
        func_80034CC4(play, &this->unk14C, func_80AABEF0, func_80AAC104, &this->actor, this->unk210);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_md.c", 1317);
}
