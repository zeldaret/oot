#include "z_en_ge1.h"

#include "libu64/debug.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "face_reaction.h"
#include "horse.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_ge1/object_ge1.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnGe1_Init(Actor* thisx, PlayState* play);
void EnGe1_Destroy(Actor* thisx, PlayState* play);
void EnGe1_Update(Actor* thisx, PlayState* play);
void EnGe1_Draw(Actor* thisx, PlayState* play);

s32 EnGe1_AreAllCarpentersRescued(void);
void EnGe1_SentinelShortSighted(EnGe1* this, PlayState* play);
void EnGe1_OfferTalkGreet(EnGe1* this, PlayState* play);
void EnGe1_Sentinel(EnGe1* this, PlayState* play);
void EnGe1_OfferTalkGeneric(EnGe1* this, PlayState* play);
void EnGe1_GTGGatekeeper_OfferTalk(EnGe1* this, PlayState* play);
void EnGe1_WastelandGatekeeper_OfferTalk(EnGe1* this, PlayState* play);
void EnGe1_ChildEraWastelandGatekeeper_OfferTalk(EnGe1* this, PlayState* play);
void EnGe1_Archery_ChooseReward(EnGe1* this, PlayState* play);
void EnGe1_Archery_OfferTalk(EnGe1* this, PlayState* play);
void EnGe1_PlayAnimLoop(EnGe1* this);
void EnGe1_PlayAnimOnce(EnGe1* this);

#define EN_GE1_STATE_FLAG_LOOK_AT_PLAYER (1 << 0)
#define EN_GE1_STATE_FLAG_ARCHERY_REWARD_IS_QUIVER (1 << 1)
#define EN_GE1_STATE_FLAG_ANIM_ENDED (1 << 2)
#define EN_GE1_STATE_FLAG_NO_FIDGET (1 << 3)

ActorProfile En_Ge1_Profile = {
    /**/ ACTOR_EN_GE1,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GE1,
    /**/ sizeof(EnGe1),
    /**/ EnGe1_Init,
    /**/ EnGe1_Destroy,
    /**/ EnGe1_Update,
    /**/ EnGe1_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000702, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 20, 40, 0, { 0, 0, 0 } },
};

static Gfx* sHairDLists[3] = {
    gObjectGe1HairStrandsDL,
    gObjectGe1HairFringeDL,
    gObjectGe1HairSpikyDL,
};

static Vec3f sFocusOffset = { 600.0f, 700.0f, 0.0f };

static void* sEyeTextures[3] = {
    gObjectGe1EyeOpenTex,
    gObjectGe1EyeHalfTex,
    gObjectGe1EyeClosedTex,
};

void EnGe1_Init(Actor* thisx, PlayState* play) {
    EnGe1* this = (EnGe1*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gObjectGe1Skel, &gObjectGe1ArmsCrossedAnim, this->jointTable,
                       this->morphTable, OBJECT_GE1_LIMB_MAX);
    Animation_PlayOnce(&this->skelAnime, &gObjectGe1ArmsCrossedAnim);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->curAnim = &gObjectGe1ArmsCrossedAnim;
    this->playAnimFunc = EnGe1_PlayAnimLoop;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    Actor_SetScale(&this->actor, 0.01f);
    if (play->sceneId == SCENE_GERUDO_VALLEY) {
        this->actor.cullingVolumeDistance = 1000.0f;
    } else {
        this->actor.cullingVolumeDistance = 1200.0f;
    }
    switch (PARAMS_GET_U(this->actor.params, 0, 8)) {
        case EN_GE1_TYPE_CHILD_ERA_WASTELAND_GATEKEEPER:
            this->hairType = 2;
            this->actionFunc = EnGe1_ChildEraWastelandGatekeeper_OfferTalk;
            break;

        case EN_GE1_TYPE_WASTELAND_GATEKEEPER:
            this->hairType = 1;
            if (EnGe1_AreAllCarpentersRescued()) {
                this->actionFunc = EnGe1_WastelandGatekeeper_OfferTalk;
            } else {
                this->actionFunc = EnGe1_SentinelShortSighted;
            }
            break;

        case EN_GE1_TYPE_SENTINEL:
            this->hairType = 1;
            if (EnGe1_AreAllCarpentersRescued()) {
                this->actionFunc = EnGe1_OfferTalkGreet;
            } else {
                this->actionFunc = EnGe1_Sentinel;
            }
            break;

        case EN_GE1_TYPE_5:
            if (LINK_IS_ADULT) {
                PRINTF(VT_FGCOL(CYAN) "谷底 ゲルド 撤退 \n" VT_RST);
                Actor_Kill(&this->actor);
                return;
            }
            this->hairType = 0;
            this->actionFunc = EnGe1_OfferTalkGeneric;
            break;

        case EN_GE1_TYPE_HORSEBACK_ARCHERY:
            if (INV_CONTENT(ITEM_BOW) == ITEM_NONE) {
                Actor_Kill(&this->actor);
                return;
            }
            this->actor.attentionRangeType = ATTENTION_RANGE_3;
            this->hairType = 0;
            PRINTF(VT_FGCOL(CYAN) "やぶさめ ゲルド EVENT_INF(0) = %x\n" VT_RST, gSaveContext.eventInf[0]);
            if (GET_EVENTINF(EVENTINF_HORSES_08)) {
                this->actionFunc = EnGe1_Archery_ChooseReward;
            } else if (EnGe1_AreAllCarpentersRescued()) {
                this->actionFunc = EnGe1_Archery_OfferTalk;
            } else {
                this->actionFunc = EnGe1_SentinelShortSighted;
            }
            break;

        case EN_GE1_TYPE_GTG_GATEKEEPER:
            this->hairType = 1;
            if (EnGe1_AreAllCarpentersRescued()) {
                this->actionFunc = EnGe1_GTGGatekeeper_OfferTalk;
            } else {
                this->actionFunc = EnGe1_SentinelShortSighted;
            }
            break;
    }
    this->stateFlags = 0;
}

void EnGe1_Destroy(Actor* thisx, PlayState* play) {
    EnGe1* this = (EnGe1*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

s32 EnGe1_OfferTalk(EnGe1* this, PlayState* play, u16 textId, f32 range, EnGe1ActionFunc actionFunc) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = actionFunc;
        this->playAnimFunc = EnGe1_PlayAnimOnce;
        this->stateFlags &= ~EN_GE1_STATE_FLAG_ANIM_ENDED;
        this->curAnim = &gObjectGe1ArmsCrossedAnim;
        Animation_Change(&this->skelAnime, &gObjectGe1ArmsCrossedAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gObjectGe1ArmsCrossedAnim), ANIMMODE_ONCE, -8.0f);
        return true;
    } else {
        this->actor.textId = textId;
        if (this->actor.xzDistToPlayer < range) {
            Actor_OfferTalk(&this->actor, play, range);
        }
        return false;
    }
}

void EnGe1_ChangeAnimArmsCrossed(EnGe1* this) {
    Animation_Change(&this->skelAnime, &gObjectGe1ArmsCrossedAnim, -1.0f,
                     Animation_GetLastFrame(&gObjectGe1ArmsCrossedAnim), 0.0f, ANIMMODE_ONCE, 8.0f);
    this->curAnim = &gObjectGe1ArmsCrossedAnim;
    this->playAnimFunc = EnGe1_PlayAnimLoop;
}

s32 EnGe1_AreAllCarpentersRescued(void) {
    if (!(GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_0_RESCUED) && GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_1_RESCUED) &&
          GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_2_RESCUED) && GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_3_RESCUED))) {
        return false;
    } else {
        return true;
    }
}

void EnGe1_PlayerCaught(EnGe1* this, PlayState* play) {
    this->stateFlags |= EN_GE1_STATE_FLAG_LOOK_AT_PLAYER;
    if (this->timer > 0) {
        this->timer--;
    } else {
        Horse_ResetHorseData(play);
        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            play->nextEntranceIndex = ENTR_GERUDO_VALLEY_1;
        } else if (GET_EVENTCHKINF(EVENTCHKINF_GERUDO_CAUGHT_TOWER_FALL)) {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_18;
        } else {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_17;
        }
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    }
}

void EnGe1_SetupPlayerCaught(EnGe1* this, PlayState* play) {
    this->timer = 30;
    this->actionFunc = EnGe1_PlayerCaught;
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_95);
    Sfx_PlaySfxCentered(NA_SE_SY_FOUND);
    Message_StartTextbox(play, 0x6000, &this->actor);
}

void EnGe1_SentinelShortSighted(EnGe1* this, PlayState* play) {
    s16 relYawTowardsPlayer;

    relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(relYawTowardsPlayer) <= 0x4300) && (this->actor.xzDistToPlayer < 100.0f)) {
        EnGe1_SetupPlayerCaught(this, play);
    }
    if (this->collider.base.acFlags & AC_HIT) {
        EnGe1_SetupPlayerCaught(this, play);
    }
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
}

void EnGe1_WaitTalkEnd(EnGe1* this, PlayState* play) {
    this->stateFlags |= EN_GE1_STATE_FLAG_LOOK_AT_PLAYER;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        switch (this->actor.textId) {
            case 0x6001:
                this->actionFunc = EnGe1_OfferTalkGreet;
                break;

            case 0x6019:
            case 0x601A:
                this->actionFunc = EnGe1_OfferTalkGeneric;
                break;

            case 0x6018:
                this->actionFunc = EnGe1_WastelandGatekeeper_OfferTalk;
                break;

            default:
                this->actionFunc = EnGe1_OfferTalkGeneric;
                break;
        }
    }
}

void EnGe1_OfferTalkGreet(EnGe1* this, PlayState* play) {
    EnGe1_OfferTalk(this, play, 0x6001, 100.0f, EnGe1_WaitTalkEnd);
}

void EnGe1_Sentinel(EnGe1* this, PlayState* play) {
    s16 relYawTowardsPlayer;

    relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((this->actor.xzDistToPlayer < 50.0f) ||
        ((ABS(relYawTowardsPlayer) <= 0x4300) && (this->actor.xzDistToPlayer < 400.0f))) {
        EnGe1_SetupPlayerCaught(this, play);
    }
    if (this->collider.base.acFlags & AC_HIT) {
        EnGe1_SetupPlayerCaught(this, play);
    }
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
}

void EnGe1_OfferTalkGeneric(EnGe1* this, PlayState* play) {
    u16 textId;

    textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_GERUDO_WHITE);
    if (textId == 0) {
        textId = 0x6019;
    }
    EnGe1_OfferTalk(this, play, textId, 100.0f, EnGe1_WaitTalkEnd);
}

void EnGe1_GTGDoorkeeper_WaitGateOpen(EnGe1* this, PlayState* play) {
    if (this->timer > 0) {
        this->timer--;
    } else {
        EnGe1_ChangeAnimArmsCrossed(this);
        this->actionFunc = EnGe1_OfferTalkGreet;
    }
    this->stateFlags |= EN_GE1_STATE_FLAG_NO_FIDGET;
}

void EnGe1_GTGGatekeeper_OpenGate(EnGe1* this, PlayState* play) {
    if (this->stateFlags & EN_GE1_STATE_FLAG_ANIM_ENDED) {
        this->actionFunc = EnGe1_GTGDoorkeeper_WaitGateOpen;
        Flags_SetSwitch(play, PARAMS_GET_U(this->actor.params, 8, 6));
        this->timer = 50;
        Message_CloseTextbox(play);
    } else if ((this->skelAnime.curFrame == 15.0f) || (this->skelAnime.curFrame == 19.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_IT_HAND_CLAP);
    }
}

void EnGe1_GTGGatekeeper_WaitTalkEndOpenGate(EnGe1* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->actionFunc = EnGe1_GTGGatekeeper_OpenGate;
        Animation_Change(&this->skelAnime, &gObjectGe1ClapHandsAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gObjectGe1ClapHandsAnim), ANIMMODE_ONCE, -3.0f);
        this->curAnim = &gObjectGe1ClapHandsAnim;
        this->playAnimFunc = EnGe1_PlayAnimOnce;
        this->stateFlags &= ~EN_GE1_STATE_FLAG_ANIM_ENDED;
    }
}

void EnGe1_GTGGatekeeper_WaitTalkEnd(EnGe1* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        this->actionFunc = EnGe1_GTGGatekeeper_OfferTalk;
        EnGe1_ChangeAnimArmsCrossed(this);
    }
}

void EnGe1_GTGGatekeeper_WaitAnswer(EnGe1* this, PlayState* play) {
    this->stateFlags |= EN_GE1_STATE_FLAG_LOOK_AT_PLAYER;
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        switch (play->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.save.info.playerData.rupees < 10) {
                    Message_ContinueTextbox(play, 0x6016);
                    this->actionFunc = EnGe1_GTGGatekeeper_WaitTalkEnd;
                } else {
                    Rupees_ChangeBy(-10);
                    Message_ContinueTextbox(play, 0x6015);
                    this->actionFunc = EnGe1_GTGGatekeeper_WaitTalkEndOpenGate;
                }
                break;

            case 1:
                this->actionFunc = EnGe1_GTGGatekeeper_OfferTalk;
                EnGe1_ChangeAnimArmsCrossed(this);
                break;
        }
    }
}

void EnGe1_GTGGatekeeper_TalkNoCard(EnGe1* this, PlayState* play) {
    this->stateFlags |= EN_GE1_STATE_FLAG_LOOK_AT_PLAYER;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe1_GTGGatekeeper_OfferTalk;
        EnGe1_ChangeAnimArmsCrossed(this);
    }
}

void EnGe1_GTGGatekeeper_OfferTalk(EnGe1* this, PlayState* play) {
    if (CHECK_QUEST_ITEM(QUEST_GERUDOS_CARD)) {
        EnGe1_OfferTalk(this, play, 0x6014, 100.0f, EnGe1_GTGGatekeeper_WaitAnswer);
    } else {
        EnGe1_OfferTalk(this, play, 0x6013, 100.0f, EnGe1_GTGGatekeeper_TalkNoCard);
    }
}

void EnGe1_WastelandGatekeeper_WaitTalkEnd(EnGe1* this, PlayState* play) {
    this->stateFlags |= EN_GE1_STATE_FLAG_LOOK_AT_PLAYER;
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = EnGe1_WastelandGatekeeper_OfferTalk;
        EnGe1_ChangeAnimArmsCrossed(this);
    }
}

void EnGe1_WastelandGatekeeper_WaitGateOpen(EnGe1* this, PlayState* play) {
    if (this->timer > 0) {
        this->timer--;
    } else {
        EnGe1_ChangeAnimArmsCrossed(this);
        this->actionFunc = EnGe1_WastelandGatekeeper_OfferTalk;
    }
    this->stateFlags |= EN_GE1_STATE_FLAG_NO_FIDGET;
}

void EnGe1_WastelandGatekeeper_OpenGate(EnGe1* this, PlayState* play) {
    if (this->stateFlags & EN_GE1_STATE_FLAG_ANIM_ENDED) {
        this->actionFunc = EnGe1_WastelandGatekeeper_WaitGateOpen;
        Flags_SetSwitch(play, PARAMS_GET_U(this->actor.params, 8, 6));
        this->timer = 50;
        Message_CloseTextbox(play);
    } else if ((this->skelAnime.curFrame == 15.0f) || (this->skelAnime.curFrame == 19.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_IT_HAND_CLAP);
    }
}

void EnGe1_WastelandGatekeeper_WaitTalkEndOpenGate(EnGe1* this, PlayState* play) {
    this->stateFlags |= EN_GE1_STATE_FLAG_LOOK_AT_PLAYER;
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->actionFunc = EnGe1_WastelandGatekeeper_OpenGate;
        Animation_Change(&this->skelAnime, &gObjectGe1ClapHandsAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gObjectGe1ClapHandsAnim), ANIMMODE_ONCE, -3.0f);
        this->curAnim = &gObjectGe1ClapHandsAnim;
        this->playAnimFunc = EnGe1_PlayAnimOnce;
        this->stateFlags &= ~EN_GE1_STATE_FLAG_ANIM_ENDED;
    }
}

void EnGe1_WastelandGatekeeper_OfferTalk(EnGe1* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->actor.params, 8, 6))) {
        EnGe1_OfferTalk(this, play, 0x6018, 100.0f, EnGe1_WastelandGatekeeper_WaitTalkEnd);
    } else {
        EnGe1_OfferTalk(this, play, 0x6017, 100.0f, EnGe1_WastelandGatekeeper_WaitTalkEndOpenGate);
    }
}

void EnGe1_ChildEraWastelandGatekeeper_WaitTalkEnd(EnGe1* this, PlayState* play) {
    this->stateFlags |= EN_GE1_STATE_FLAG_LOOK_AT_PLAYER;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe1_ChildEraWastelandGatekeeper_OfferTalk;
        EnGe1_ChangeAnimArmsCrossed(this);
    }
}

void EnGe1_ChildEraWastelandGatekeeper_OfferTalk(EnGe1* this, PlayState* play) {
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_GERUDO_WHITE);

    if (textId == 0) {
        textId = 0x6069;
    }
    if (EnGe1_OfferTalk(this, play, textId, 100.0f, EnGe1_ChildEraWastelandGatekeeper_WaitTalkEnd)) {
        this->playAnimFunc = EnGe1_PlayAnimLoop;
        this->curAnim = &gObjectGe1ShooAwayAnim;
        Animation_Change(&this->skelAnime, &gObjectGe1ShooAwayAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gObjectGe1ShooAwayAnim), ANIMMODE_ONCE, -8.0f);
    }
}

void EnGe1_Archery_RewardWaitTalkEnd(EnGe1* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe1_Archery_OfferTalk;
        EnGe1_ChangeAnimArmsCrossed(this);
    }
}

void EnGe1_Archery_GiveReward(EnGe1* this, PlayState* play) {
    s32 giReward;

    if (Actor_HasParent(&this->actor, play)) {
        this->actionFunc = EnGe1_Archery_RewardWaitTalkEnd;
        if (this->stateFlags & EN_GE1_STATE_FLAG_ARCHERY_REWARD_IS_QUIVER) {
            SET_ITEMGETINF(ITEMGETINF_HORSEBACK_ARCHERY_QUIVER);
        } else {
            SET_INFTABLE(INFTABLE_HORSEBACK_ARCHERY_GOT_HEART_PIECE);
        }
        return;
    }
    if (this->stateFlags & EN_GE1_STATE_FLAG_ARCHERY_REWARD_IS_QUIVER) {
        switch (CUR_UPG_VALUE(UPG_QUIVER)) {
            case 1:
                giReward = GI_QUIVER_40;
                break;
            case 2:
                giReward = GI_QUIVER_50;
                break;
        }
    } else {
        giReward = GI_HEART_PIECE;
    }
    //! @bug giReward may be used uninitialized
    Actor_OfferGetItem(&this->actor, play, giReward, 10000.0f, 50.0f);
}

void EnGe1_Archery_WaitTalkEndGiveReward(EnGe1* this, PlayState* play) {
    s32 giReward;

    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->actionFunc = EnGe1_Archery_GiveReward;
    }
    if (this->stateFlags & EN_GE1_STATE_FLAG_ARCHERY_REWARD_IS_QUIVER) {
        switch (CUR_UPG_VALUE(UPG_QUIVER)) {
            case 1:
                giReward = GI_QUIVER_40;
                break;
            case 2:
                giReward = GI_QUIVER_50;
                break;
        }
    } else {
        giReward = GI_HEART_PIECE;
    }
    //! @bug giReward may be used uninitialized
    Actor_OfferGetItem(&this->actor, play, giReward, 10000.0f, 50.0f);
}

void EnGe1_Archery_TalkGiveReward(EnGe1* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnGe1_Archery_WaitTalkEndGiveReward;
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    } else {
        Actor_OfferTalk(&this->actor, play, 200.0f);
    }
}

void EnGe1_Archery_NotEnoughRupeesWaitTalkEnd(EnGe1* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = EnGe1_Archery_OfferTalk;
        EnGe1_ChangeAnimArmsCrossed(this);
    }
}

void EnGe1_DoNothing(EnGe1* this, PlayState* play) {
}

void EnGe1_Archery_WaitAnswer(EnGe1* this, PlayState* play) {
    Player* player;
    Actor* epona;

    player = GET_PLAYER(play);
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        switch (play->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.save.info.playerData.rupees < 20) {
                    Message_ContinueTextbox(play, 0x85);
                    this->actionFunc = EnGe1_Archery_NotEnoughRupeesWaitTalkEnd;
                } else {
                    Rupees_ChangeBy(-20);
                    play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_0;
                    gSaveContext.nextCutsceneIndex = CS_INDEX_0;
                    play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    SET_EVENTINF(EVENTINF_HORSES_08);
                    SET_EVENTCHKINF(EVENTCHKINF_HORSEBACK_ARCHERY_EXPLAINED);
                    if (!(player->stateFlags1 & PLAYER_STATE1_23)) {
                        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
                    } else {
                        epona = Actor_FindNearby(play, &player->actor, ACTOR_EN_HORSE, ACTORCAT_BG, 1200.0f);
                        player->actor.freezeTimer = 1200;
                        if (epona != NULL) {
                            epona->freezeTimer = 1200;
                        }
                    }
                    this->actionFunc = EnGe1_DoNothing;
                }
                break;

            case 1:
                this->actionFunc = EnGe1_Archery_OfferTalk;
                Message_CloseTextbox(play);
                break;
        }
    }
}

void EnGe1_Archery_AskToPlay(EnGe1* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_ContinueTextbox(play, 0x6041);
        this->actionFunc = EnGe1_Archery_WaitAnswer;
    }
}

void EnGe1_Archery_NoReward(EnGe1* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnGe1_Archery_AskToPlay;
    } else {
        Actor_OfferTalk(&this->actor, play, 300.0f);
    }
}

void EnGe1_Archery_ChooseReward(EnGe1* this, PlayState* play) {
    CLEAR_EVENTINF(EVENTINF_HORSES_08);
#if DEBUG_FEATURES
    LogUtils_LogThreadId("../z_en_ge1.c", 1110);
    PRINTF("z_common_data.yabusame_total = %d\n", gSaveContext.minigameScore);
    if (1) {}
    if (1) {}
    if (1) {}
    LogUtils_LogThreadId("../z_en_ge1.c", 1111);
    // With the current `SaveContext` struct definition, the expression in the debug string is an out-of-bounds read,
    // see the other occurrence of this for more details.
    PRINTF("z_common_data.memory.information.room_inf[127][ 0 ] = %d\n", HIGH_SCORE(HS_HBA));
#endif
    this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    if (HIGH_SCORE(HS_HBA) < gSaveContext.minigameScore) {
        HIGH_SCORE(HS_HBA) = gSaveContext.minigameScore;
    }
    if (gSaveContext.minigameScore < 1000) {
        this->actor.textId = 0x6045;
        this->actionFunc = EnGe1_Archery_NoReward;
    } else if (!GET_INFTABLE(INFTABLE_HORSEBACK_ARCHERY_GOT_HEART_PIECE)) {
        this->actor.textId = 0x6046;
        this->actionFunc = EnGe1_Archery_TalkGiveReward;
        this->stateFlags &= ~EN_GE1_STATE_FLAG_ARCHERY_REWARD_IS_QUIVER;
    } else if (gSaveContext.minigameScore < 1500) {
        this->actor.textId = 0x6047;
        this->actionFunc = EnGe1_Archery_NoReward;
    } else if (GET_ITEMGETINF(ITEMGETINF_HORSEBACK_ARCHERY_QUIVER)) {
        this->actor.textId = 0x6047;
        this->actionFunc = EnGe1_Archery_NoReward;
    } else {
        this->actor.textId = 0x6044;
        this->actionFunc = EnGe1_Archery_TalkGiveReward;
        this->stateFlags |= EN_GE1_STATE_FLAG_ARCHERY_REWARD_IS_QUIVER;
    }
}

void EnGe1_Archery_NoHorseWaitTalkEnd(EnGe1* this, PlayState* play) {
    this->stateFlags |= EN_GE1_STATE_FLAG_LOOK_AT_PLAYER;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe1_Archery_OfferTalk;
        EnGe1_ChangeAnimArmsCrossed(this);
    }
}

void EnGe1_Archery_OfferTalk(EnGe1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    u16 textId;

    if (!(player->stateFlags1 & PLAYER_STATE1_23)) {
        EnGe1_OfferTalk(this, play, 0x603F, 100.0f, EnGe1_Archery_NoHorseWaitTalkEnd);
    } else {
        if (GET_EVENTCHKINF(EVENTCHKINF_HORSEBACK_ARCHERY_EXPLAINED)) {
            if (GET_INFTABLE(INFTABLE_HORSEBACK_ARCHERY_GOT_HEART_PIECE)) {
                textId = 0x6042;
            } else {
                textId = 0x6043;
            }
        } else {
            textId = 0x6040;
        }
        EnGe1_OfferTalk(this, play, textId, 200.0f, EnGe1_Archery_AskToPlay);
    }
}

void EnGe1_TrackPlayer(EnGe1* this, PlayState* play) {
    s32 pad;
    s16 relYawTowardsPlayer;

    relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
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

void EnGe1_TrackPlayerIfNear(EnGe1* this, PlayState* play) {
    s16 relYawTowardsPlayer;

    relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(relYawTowardsPlayer) <= 0x4300) && (this->actor.xzDistToPlayer < 100.0f)) {
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->headRot.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->headRot.y, 0, 6, 0x1838, 0x64);
    }
}

void EnGe1_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnGe1* this = (EnGe1*)thisx;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    this->playAnimFunc(this);
    this->actionFunc(this, play);
    if (this->stateFlags & EN_GE1_STATE_FLAG_LOOK_AT_PLAYER) {
        EnGe1_TrackPlayer(this, play);
        this->stateFlags &= ~EN_GE1_STATE_FLAG_LOOK_AT_PLAYER;
    } else {
        EnGe1_TrackPlayerIfNear(this, play);
    }
    this->torsoRot.x = this->torsoRot.y = this->torsoRot.z = 0;
    if (DECR(this->eyeTimer) == 0) {
        this->eyeTimer = Rand_S16Offset(60, 60);
    }
    this->eyeTexIndex = this->eyeTimer;
    if (this->eyeTexIndex >= 3) {
        this->eyeTexIndex = 0;
    }
}

void EnGe1_PlayAnimLoop(EnGe1* this) {
    if (SkelAnime_Update(&this->skelAnime)) {
        Animation_PlayOnce(&this->skelAnime, this->curAnim);
    }
}

void EnGe1_PlayAnimOnce(EnGe1* this) {
    if (!(this->stateFlags & EN_GE1_STATE_FLAG_ANIM_ENDED)) {
        if (SkelAnime_Update(&this->skelAnime)) {
            this->stateFlags |= EN_GE1_STATE_FLAG_ANIM_ENDED;
        }
        this->stateFlags |= EN_GE1_STATE_FLAG_NO_FIDGET;
    }
}

s32 EnGe1_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGe1* this = (EnGe1*)thisx;
    s32 pad;

    if (limbIndex == OBJECT_GE1_LIMB_HEAD) {
        rot->x += this->headRot.y;
        rot->z += this->headRot.x;
    }
    if (this->stateFlags & EN_GE1_STATE_FLAG_NO_FIDGET) {
        this->stateFlags &= ~EN_GE1_STATE_FLAG_NO_FIDGET;
        return false;
    }
    if ((limbIndex == OBJECT_GE1_LIMB_TORSO) || (limbIndex == OBJECT_GE1_LIMB_LEFT_FOREARM) ||
        (limbIndex == OBJECT_GE1_LIMB_RIGHT_FOREARM)) {
        rot->y += Math_SinS(play->state.frames * ((limbIndex * FIDGET_FREQ_LIMB) + FIDGET_FREQ_Y)) * FIDGET_AMPLITUDE;
        rot->z += Math_CosS(play->state.frames * ((limbIndex * FIDGET_FREQ_LIMB) + FIDGET_FREQ_Z)) * FIDGET_AMPLITUDE;
    }
    return false;
}

void EnGe1_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnGe1* this = (EnGe1*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1419);
    if (limbIndex == OBJECT_GE1_LIMB_HEAD) {
        gSPDisplayList(POLY_OPA_DISP++, sHairDLists[this->hairType]);
        Matrix_MultVec3f(&sFocusOffset, &this->actor.focus.pos);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1427);
}

void EnGe1_Draw(Actor* thisx, PlayState* play) {
    EnGe1* this = (EnGe1*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1442);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnGe1_OverrideLimbDraw, EnGe1_PostLimbDraw, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1459);
}
