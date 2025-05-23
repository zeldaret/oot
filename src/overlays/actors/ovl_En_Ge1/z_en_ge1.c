/*
 * File: z_en_ge1.c
 * Overlay: ovl_En_Ge1
 * Description: White-clothed Gerudo
 */

#include "z_en_ge1.h"
#include "z64horse.h"
#include "terminal.h"
#include "assets/objects/object_ge1/object_ge1.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

#define GE1_STATE_TALKING (1 << 0)
#define GE1_STATE_GIVE_QUIVER (1 << 1)
#define GE1_STATE_IDLE_ANIM (1 << 2)
#define GE1_STATE_STOP_FIDGET (1 << 3)

typedef enum EnGe1Hairstyle {
    /* 00 */ GE1_HAIR_BOB,
    /* 01 */ GE1_HAIR_STRAIGHT,
    /* 02 */ GE1_HAIR_SPIKY
} EnGe1Hairstyle;

void EnGe1_Init(Actor* thisx, PlayState* play);
void EnGe1_Destroy(Actor* thisx, PlayState* play);
void EnGe1_Update(Actor* thisx, PlayState* play);
void EnGe1_Draw(Actor* thisx, PlayState* play);

s32 EnGe1_CheckAllCarpentersRescued(void);
void EnGe1_WatchForPlayerFrontOnly(EnGe1* this, PlayState* play);
void EnGe1_SetNormalText(EnGe1* this, PlayState* play);
void EnGe1_WatchForAndSensePlayer(EnGe1* this, PlayState* play);
void EnGe1_GetReaction_ValleyFloor(EnGe1* this, PlayState* play);
void EnGe1_CheckForCard_GTGGuard(EnGe1* this, PlayState* play);
void EnGe1_CheckGate_GateOp(EnGe1* this, PlayState* play);
void EnGe1_GetReaction_GateGuard(EnGe1* this, PlayState* play);
void EnGe1_TalkAfterGame_Archery(EnGe1* this, PlayState* play);
void EnGe1_Wait_Archery(EnGe1* this, PlayState* play);
void EnGe1_CueUpAnimation(EnGe1* this);
void EnGe1_StopFidget(EnGe1* this);

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
        { 0x00000000, 0x00, 0x00 },
        { 0x00000702, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 20, 40, 0, { 0, 0, 0 } },
};

static Gfx* sHairstyleDLists[] = {
    gGerudoWhiteHairstyleBobDL,
    gGerudoWhiteHairstyleStraightFringeDL,
    gGerudoWhiteHairstyleSpikyDL,
};

static Vec3f D_80A327A8 = { 600.0f, 700.0f, 0.0f };

static void* sEyeTextures[] = {
    gGerudoWhiteEyeOpenTex,
    gGerudoWhiteEyeHalfTex,
    gGerudoWhiteEyeClosedTex,
};

void EnGe1_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnGe1* this = (EnGe1*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gGerudoWhiteSkel, &gGerudoWhiteIdleAnim, this->jointTable,
                       this->morphTable, GE1_LIMB_MAX);
    Animation_PlayOnce(&this->skelAnime, &gGerudoWhiteIdleAnim);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->animation = &gGerudoWhiteIdleAnim;
    this->animFunc = EnGe1_CueUpAnimation;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    Actor_SetScale(&this->actor, 0.01f);

    this->actor.cullingVolumeDistance = ((play->sceneId == SCENE_GERUDO_VALLEY) ? 1000.0f : 1200.0f);

    switch (PARAMS_GET_U(this->actor.params, 0, 8)) {

        case GE1_TYPE_GATE_GUARD:
            this->hairstyle = GE1_HAIR_SPIKY;
            this->actionFunc = EnGe1_GetReaction_GateGuard;
            break;

        case GE1_TYPE_GATE_OPERATOR:
            this->hairstyle = GE1_HAIR_STRAIGHT;

            if (EnGe1_CheckAllCarpentersRescued()) {
                this->actionFunc = EnGe1_CheckGate_GateOp;
            } else {
                this->actionFunc = EnGe1_WatchForPlayerFrontOnly;
            }
            break;

        case GE1_TYPE_NORMAL:
            this->hairstyle = GE1_HAIR_STRAIGHT;

            if (EnGe1_CheckAllCarpentersRescued()) {
                this->actionFunc = EnGe1_SetNormalText;
            } else {
                this->actionFunc = EnGe1_WatchForAndSensePlayer;
            }
            break;

        case GE1_TYPE_VALLEY_FLOOR:
            if (LINK_IS_ADULT) {
                // "Valley floor Gerudo withdrawal"
                PRINTF(VT_FGCOL(CYAN) "谷底 ゲルド 撤退 \n" VT_RST);
                Actor_Kill(&this->actor);
                return;
            }
            this->hairstyle = GE1_HAIR_BOB;
            this->actionFunc = EnGe1_GetReaction_ValleyFloor;
            break;

        case GE1_TYPE_HORSEBACK_ARCHERY:
            if (INV_CONTENT(SLOT_BOW) == ITEM_NONE) {
                Actor_Kill(&this->actor);
                return;
            }
            this->actor.attentionRangeType = ATTENTION_RANGE_3;
            this->hairstyle = GE1_HAIR_BOB;
            // "Horseback archery Gerudo EVENT_INF(0) ="
            PRINTF(VT_FGCOL(CYAN) "やぶさめ ゲルド EVENT_INF(0) = %x\n" VT_RST, gSaveContext.eventInf[0]);

            if (GET_EVENTINF(EVENTINF_HORSES_08)) {
                this->actionFunc = EnGe1_TalkAfterGame_Archery;
            } else if (EnGe1_CheckAllCarpentersRescued()) {
                this->actionFunc = EnGe1_Wait_Archery;
            } else {
                this->actionFunc = EnGe1_WatchForPlayerFrontOnly;
            }
            break;

        case GE1_TYPE_TRAINING_GROUNDS_GUARD:
            this->hairstyle = GE1_HAIR_STRAIGHT;

            if (EnGe1_CheckAllCarpentersRescued()) {
                this->actionFunc = EnGe1_CheckForCard_GTGGuard;
            } else {
                this->actionFunc = EnGe1_WatchForPlayerFrontOnly;
            }
            break;
    }

    this->stateFlags = 0;
}

void EnGe1_Destroy(Actor* thisx, PlayState* play) {
    EnGe1* this = (EnGe1*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

s32 EnGe1_SetTalkAction(EnGe1* this, PlayState* play, u16 textId, f32 arg3, EnGe1ActionFunc actionFunc) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = actionFunc;
        this->animFunc = EnGe1_StopFidget;
        this->stateFlags &= ~GE1_STATE_IDLE_ANIM;
        this->animation = &gGerudoWhiteIdleAnim;
        Animation_Change(&this->skelAnime, &gGerudoWhiteIdleAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gGerudoWhiteIdleAnim), ANIMMODE_ONCE, -8.0f);
        return true;
    }

    this->actor.textId = textId;

    if (this->actor.xzDistToPlayer < arg3) {
        Actor_OfferTalk(&this->actor, play, arg3);
    }

    return false;
}

void EnGe1_SetAnimationIdle(EnGe1* this) {
    Animation_Change(&this->skelAnime, &gGerudoWhiteIdleAnim, -1.0f, Animation_GetLastFrame(&gGerudoWhiteIdleAnim),
                     0.0f, ANIMMODE_ONCE, 8.0f);
    this->animation = &gGerudoWhiteIdleAnim;
    this->animFunc = EnGe1_CueUpAnimation;
}

s32 EnGe1_CheckAllCarpentersRescued(void) {
    if (!(GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_0_RESCUED) && GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_1_RESCUED) &&
          GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_2_RESCUED) && GET_EVENTCHKINF(EVENTCHKINF_CARPENTER_3_RESCUED))) {
        return false;
    }
    return true;
}

/**
 * Sends player to different places depending on if has hookshot, and if this is the first time captured
 */
void EnGe1_KickPlayer(EnGe1* this, PlayState* play) {
    this->stateFlags |= GE1_STATE_TALKING;

    if (this->cutsceneTimer > 0) {
        this->cutsceneTimer--;
    } else {
        Horse_ResetHorseData(play);

        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            play->nextEntranceIndex = ENTR_GERUDO_VALLEY_1;
        } else if (GET_EVENTCHKINF(EVENTCHKINF_C7)) { // Caught previously
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_18;
        } else {
            play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_17;
        }

        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    }
}

void EnGe1_SpotPlayer(EnGe1* this, PlayState* play) {
    this->cutsceneTimer = 30;
    this->actionFunc = EnGe1_KickPlayer;
    Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_95);
    Sfx_PlaySfxCentered(NA_SE_SY_FOUND);
    Message_StartTextbox(play, 0x6000, &this->actor);
}

void EnGe1_WatchForPlayerFrontOnly(EnGe1* this, PlayState* play) {
    s16 angleDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if ((ABS(angleDiff) <= 0x4300) && (this->actor.xzDistToPlayer < 100.0f)) {
        EnGe1_SpotPlayer(this, play);
    }

    if (this->collider.base.acFlags & AC_HIT) {
        EnGe1_SpotPlayer(this, play);
    }

    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
}

void EnGe1_ChooseActionFromTextId(EnGe1* this, PlayState* play) {
    this->stateFlags |= GE1_STATE_TALKING;

    if (Actor_TextboxIsClosing(&this->actor, play)) {
        switch (this->actor.textId) {
            case 0x6001:
                this->actionFunc = EnGe1_SetNormalText;
                break;

            case 0x601A:
            case 0x6019:
                this->actionFunc = EnGe1_GetReaction_ValleyFloor;
                break;

            case 0x6018:
                this->actionFunc = EnGe1_CheckGate_GateOp;
                break;

            default:
                this->actionFunc = EnGe1_GetReaction_ValleyFloor;
                break;
        }
    }
}

void EnGe1_SetNormalText(EnGe1* this, PlayState* play) {
    EnGe1_SetTalkAction(this, play, 0x6001, 100.0f, EnGe1_ChooseActionFromTextId);
}

void EnGe1_WatchForAndSensePlayer(EnGe1* this, PlayState* play) {
    s16 angleDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if ((this->actor.xzDistToPlayer < 50.0f) || ((ABS(angleDiff) <= 0x4300) && (this->actor.xzDistToPlayer < 400.0f))) {
        EnGe1_SpotPlayer(this, play);
    }

    if (this->collider.base.acFlags & AC_HIT) {
        EnGe1_SpotPlayer(this, play);
    }
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
}

void EnGe1_GetReaction_ValleyFloor(EnGe1* this, PlayState* play) {
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_GERUDO_WHITE);

    if (textId == 0) {
        textId = 0x6019;
    }

    EnGe1_SetTalkAction(this, play, textId, 100.0f, EnGe1_ChooseActionFromTextId);
}

// Gerudo Training Ground Guard functions

void EnGe1_WaitTillOpened_GTGGuard(EnGe1* this, PlayState* play) {
    if (this->cutsceneTimer > 0) {
        this->cutsceneTimer--;
    } else {
        EnGe1_SetAnimationIdle(this);
        this->actionFunc = EnGe1_SetNormalText;
    }

    this->stateFlags |= GE1_STATE_STOP_FIDGET;
}

void EnGe1_Open_GTGGuard(EnGe1* this, PlayState* play) {
    if (this->stateFlags & GE1_STATE_IDLE_ANIM) {
        this->actionFunc = EnGe1_WaitTillOpened_GTGGuard;
        Flags_SetSwitch(play, PARAMS_GET_U(this->actor.params, 8, 6));
        this->cutsceneTimer = 50;
        Message_CloseTextbox(play);
    } else if ((this->skelAnime.curFrame == 15.0f) || (this->skelAnime.curFrame == 19.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_IT_HAND_CLAP);
    }
}

void EnGe1_SetupOpen_GTGGuard(EnGe1* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->actionFunc = EnGe1_Open_GTGGuard;
        Animation_Change(&this->skelAnime, &gGerudoWhiteClapAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gGerudoWhiteClapAnim), ANIMMODE_ONCE, -3.0f);
        this->animation = &gGerudoWhiteClapAnim;
        this->animFunc = EnGe1_StopFidget;
        this->stateFlags &= ~GE1_STATE_IDLE_ANIM;
    }
}

void EnGe1_RefuseEntryTooPoor_GTGGuard(EnGe1* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        this->actionFunc = EnGe1_CheckForCard_GTGGuard;
        EnGe1_SetAnimationIdle(this);
    }
}

void EnGe1_OfferOpen_GTGGuard(EnGe1* this, PlayState* play) {
    this->stateFlags |= GE1_STATE_TALKING;
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);

        switch (play->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.save.info.playerData.rupees < 10) {
                    Message_ContinueTextbox(play, 0x6016);
                    this->actionFunc = EnGe1_RefuseEntryTooPoor_GTGGuard;
                } else {
                    Rupees_ChangeBy(-10);
                    Message_ContinueTextbox(play, 0x6015);
                    this->actionFunc = EnGe1_SetupOpen_GTGGuard;
                }
                break;
            case 1:
                this->actionFunc = EnGe1_CheckForCard_GTGGuard;
                EnGe1_SetAnimationIdle(this);
                break;
        }
    }
}

void EnGe1_RefuseOpenNoCard_GTGGuard(EnGe1* this, PlayState* play) {
    this->stateFlags |= GE1_STATE_TALKING;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe1_CheckForCard_GTGGuard;
        EnGe1_SetAnimationIdle(this);
    }
}

void EnGe1_CheckForCard_GTGGuard(EnGe1* this, PlayState* play) {
    if (CHECK_QUEST_ITEM(QUEST_GERUDOS_CARD)) {
        EnGe1_SetTalkAction(this, play, 0x6014, 100.0f, EnGe1_OfferOpen_GTGGuard);
    } else {
        //! @bug This outcome is inaccessible in normal gameplay since this function it is unreachable without
        //! obtaining the card in the first place.
        EnGe1_SetTalkAction(this, play, 0x6013, 100.0f, EnGe1_RefuseOpenNoCard_GTGGuard);
    }
}

// Gate Operator functions

void EnGe1_WaitGateOpen_GateOp(EnGe1* this, PlayState* play) {
    this->stateFlags |= GE1_STATE_TALKING;

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = EnGe1_CheckGate_GateOp;
        EnGe1_SetAnimationIdle(this);
    }
}

void EnGe1_WaitUntilGateOpened_GateOp(EnGe1* this, PlayState* play) {
    if (this->cutsceneTimer > 0) {
        this->cutsceneTimer--;
    } else {
        EnGe1_SetAnimationIdle(this);
        this->actionFunc = EnGe1_CheckGate_GateOp;
    }
    this->stateFlags |= GE1_STATE_STOP_FIDGET;
}

void EnGe1_OpenGate_GateOp(EnGe1* this, PlayState* play) {
    if (this->stateFlags & GE1_STATE_IDLE_ANIM) {
        this->actionFunc = EnGe1_WaitUntilGateOpened_GateOp;
        Flags_SetSwitch(play, PARAMS_GET_U(this->actor.params, 8, 6));
        this->cutsceneTimer = 50;
        Message_CloseTextbox(play);
    } else if ((this->skelAnime.curFrame == 15.0f) || (this->skelAnime.curFrame == 19.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_IT_HAND_CLAP);
    }
}

void EnGe1_SetupOpenGate_GateOp(EnGe1* this, PlayState* play) {
    this->stateFlags |= GE1_STATE_TALKING;

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->actionFunc = EnGe1_OpenGate_GateOp;
        Animation_Change(&this->skelAnime, &gGerudoWhiteClapAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gGerudoWhiteClapAnim), ANIMMODE_ONCE, -3.0f);
        this->animation = &gGerudoWhiteClapAnim;
        this->animFunc = EnGe1_StopFidget;
        this->stateFlags &= ~GE1_STATE_IDLE_ANIM;
    }
}

void EnGe1_CheckGate_GateOp(EnGe1* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->actor.params, 8, 6))) {
        EnGe1_SetTalkAction(this, play, 0x6018, 100.0f, EnGe1_WaitGateOpen_GateOp);
    } else {
        EnGe1_SetTalkAction(this, play, 0x6017, 100.0f, EnGe1_SetupOpenGate_GateOp);
    }
}

// Gate guard functions

void EnGe1_Talk_GateGuard(EnGe1* this, PlayState* play) {
    this->stateFlags |= GE1_STATE_TALKING;

    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe1_GetReaction_GateGuard;
        EnGe1_SetAnimationIdle(this);
    }
}

void EnGe1_GetReaction_GateGuard(EnGe1* this, PlayState* play) {
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_GERUDO_WHITE);

    if (textId == 0) {
        textId = 0x6069;
    }

    if (EnGe1_SetTalkAction(this, play, textId, 100.0f, EnGe1_Talk_GateGuard)) {
        this->animFunc = EnGe1_CueUpAnimation;
        this->animation = &gGerudoWhiteDismissiveAnim;
        Animation_Change(&this->skelAnime, &gGerudoWhiteDismissiveAnim, 1.0f, 0.0f,
                         Animation_GetLastFrame(&gGerudoWhiteDismissiveAnim), ANIMMODE_ONCE, -8.0f);
    }
}

// Archery functions

void EnGe1_SetupWait_Archery(EnGe1* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe1_Wait_Archery;
        EnGe1_SetAnimationIdle(this);
    }
}

void EnGe1_WaitTillItemGiven_Archery(EnGe1* this, PlayState* play) {
    s32 getItemId;

    if (Actor_HasParent(&this->actor, play)) {
        this->actionFunc = EnGe1_SetupWait_Archery;
        if (this->stateFlags & GE1_STATE_GIVE_QUIVER) {
            SET_ITEMGETINF(ITEMGETINF_0F);
        } else {
            SET_INFTABLE(INFTABLE_190);
        }
    } else {
        if (this->stateFlags & GE1_STATE_GIVE_QUIVER) {
            switch (CUR_UPG_VALUE(UPG_QUIVER)) {
                //! @bug Asschest. See next function for details
                case 1:
                    getItemId = GI_QUIVER_40;
                    break;
                case 2:
                    getItemId = GI_QUIVER_50;
                    break;
            }
        } else {
            getItemId = GI_HEART_PIECE;
        }
        Actor_OfferGetItem(&this->actor, play, getItemId, 10000.0f, 50.0f);
    }
}

void EnGe1_BeginGiveItem_Archery(EnGe1* this, PlayState* play) {
    s32 getItemId;

    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->actionFunc = EnGe1_WaitTillItemGiven_Archery;
    }

    if (this->stateFlags & GE1_STATE_GIVE_QUIVER) {
        switch (CUR_UPG_VALUE(UPG_QUIVER)) {
            //! @bug Asschest: the compiler inserts a default assigning *(sp+0x24) to getItemId, which is junk data left
            //! over from the previous function run in EnGe1_Update, namely EnGe1_CueUpAnimation. The top stack variable
            //! in that function is &this->skelAnime = thisx + 198, and depending on where this loads in memory, the
            //! getItemId changes.
            case 1:
                getItemId = GI_QUIVER_40;
                break;
            case 2:
                getItemId = GI_QUIVER_50;
                break;
        }
    } else {
        getItemId = GI_HEART_PIECE;
    }

    Actor_OfferGetItem(&this->actor, play, getItemId, 10000.0f, 50.0f);
}

void EnGe1_TalkWinPrize_Archery(EnGe1* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnGe1_BeginGiveItem_Archery;
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    } else {
        Actor_OfferTalk(&this->actor, play, 200.0f);
    }
}

void EnGe1_TalkTooPoor_Archery(EnGe1* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = EnGe1_Wait_Archery;
        EnGe1_SetAnimationIdle(this);
    }
}

void EnGe1_WaitDoNothing(EnGe1* this, PlayState* play) {
}

void EnGe1_BeginGame_Archery(EnGe1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Actor* horse;

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;

        switch (play->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.save.info.playerData.rupees < 20) {
                    Message_ContinueTextbox(play, 0x85);
                    this->actionFunc = EnGe1_TalkTooPoor_Archery;
                } else {
                    Rupees_ChangeBy(-20);
                    play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_0;
                    gSaveContext.nextCutsceneIndex = 0xFFF0;
                    play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    SET_EVENTINF(EVENTINF_HORSES_08);
                    SET_EVENTCHKINF(EVENTCHKINF_68);

                    if (!(player->stateFlags1 & PLAYER_STATE1_23)) {
                        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
                    } else {
                        horse = Actor_FindNearby(play, &player->actor, ACTOR_EN_HORSE, ACTORCAT_BG, 1200.0f);
                        player->actor.freezeTimer = 1200;

                        if (horse != NULL) {
                            horse->freezeTimer = 1200;
                        }
                    }

                    this->actionFunc = EnGe1_WaitDoNothing;
                }
                break;

            case 1:
                this->actionFunc = EnGe1_Wait_Archery;
                Message_CloseTextbox(play);
                break;
        }
    }
}

void EnGe1_TalkOfferPlay_Archery(EnGe1* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_ContinueTextbox(play, 0x6041);
        this->actionFunc = EnGe1_BeginGame_Archery;
    }
}

void EnGe1_TalkNoPrize_Archery(EnGe1* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnGe1_TalkOfferPlay_Archery;
    } else {
        Actor_OfferTalk(&this->actor, play, 300.0f);
    }
}

void EnGe1_TalkAfterGame_Archery(EnGe1* this, PlayState* play) {
    CLEAR_EVENTINF(EVENTINF_HORSES_08);
    LOG_NUM("z_common_data.yabusame_total", gSaveContext.minigameScore, "../z_en_ge1.c", 1110);
    // With the current `SaveContext` struct definition, the expression in the debug string is an out-of-bounds read,
    // see the other occurrence of this for more details.
    LOG_NUM("z_common_data.memory.information.room_inf[127][ 0 ]", HIGH_SCORE(HS_HBA), "../z_en_ge1.c", 1111);
    this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;

    if (HIGH_SCORE(HS_HBA) < gSaveContext.minigameScore) {
        HIGH_SCORE(HS_HBA) = gSaveContext.minigameScore;
    }

    if (gSaveContext.minigameScore < 1000) {
        this->actor.textId = 0x6045;
        this->actionFunc = EnGe1_TalkNoPrize_Archery;
    } else if (!GET_INFTABLE(INFTABLE_190)) {
        this->actor.textId = 0x6046;
        this->actionFunc = EnGe1_TalkWinPrize_Archery;
        this->stateFlags &= ~GE1_STATE_GIVE_QUIVER;
    } else if (gSaveContext.minigameScore < 1500) {
        this->actor.textId = 0x6047;
        this->actionFunc = EnGe1_TalkNoPrize_Archery;
    } else if (GET_ITEMGETINF(ITEMGETINF_0F)) {
        this->actor.textId = 0x6047;
        this->actionFunc = EnGe1_TalkNoPrize_Archery;
    } else {
        this->actor.textId = 0x6044;
        this->actionFunc = EnGe1_TalkWinPrize_Archery;
        this->stateFlags |= GE1_STATE_GIVE_QUIVER;
    }
}

void EnGe1_TalkNoHorse_Archery(EnGe1* this, PlayState* play) {
    this->stateFlags |= GE1_STATE_TALKING;
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe1_Wait_Archery;
        EnGe1_SetAnimationIdle(this);
    }
}

void EnGe1_Wait_Archery(EnGe1* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    u16 textId;

    if (!(player->stateFlags1 & PLAYER_STATE1_23)) {
        EnGe1_SetTalkAction(this, play, 0x603F, 100.0f, EnGe1_TalkNoHorse_Archery);
    } else {
        if (GET_EVENTCHKINF(EVENTCHKINF_68)) {
            if (GET_INFTABLE(INFTABLE_190)) {
                textId = 0x6042;
            } else {
                textId = 0x6043;
            }
        } else {
            textId = 0x6040;
        }
        EnGe1_SetTalkAction(this, play, textId, 200.0f, EnGe1_TalkOfferPlay_Archery);
    }
}

// General functions

void EnGe1_TurnToFacePlayer(EnGe1* this, PlayState* play) {
    s32 pad;
    s16 angleDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if (ABS(angleDiff) <= 0x4000) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 6, 4000, 100);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->unk_2A2, this->actor.focus.pos);
    } else {
        if (angleDiff < 0) {
            Math_SmoothStepToS(&this->headRot.y, -0x2000, 6, 6200, 0x100);
        } else {
            Math_SmoothStepToS(&this->headRot.y, 0x2000, 6, 6200, 0x100);
        }

        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 12, 1000, 100);
        this->actor.world.rot.y = this->actor.shape.rot.y;
    }
}

void EnGe1_LookAtPlayer(EnGe1* this, PlayState* play) {
    s16 angleDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if ((ABS(angleDiff) <= 0x4300) && (this->actor.xzDistToPlayer < 100.0f)) {
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->unk_2A2, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->headRot.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->headRot.y, 0, 6, 6200, 100);
    }
}

void EnGe1_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnGe1* this = (EnGe1*)thisx;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    this->animFunc(this);
    this->actionFunc(this, play);

    if (this->stateFlags & GE1_STATE_TALKING) {
        EnGe1_TurnToFacePlayer(this, play);
        this->stateFlags &= ~GE1_STATE_TALKING;
    } else {
        EnGe1_LookAtPlayer(this, play);
    }
    this->unk_2A2.x = this->unk_2A2.y = this->unk_2A2.z = 0;

    if (DECR(this->blinkTimer) == 0) {
        this->blinkTimer = Rand_S16Offset(60, 60);
    }
    this->eyeIndex = this->blinkTimer;

    if (this->eyeIndex >= 3) {
        this->eyeIndex = 0;
    }
}

// Animation functions

void EnGe1_CueUpAnimation(EnGe1* this) {
    if (SkelAnime_Update(&this->skelAnime)) {
        Animation_PlayOnce(&this->skelAnime, this->animation);
    }
}

void EnGe1_StopFidget(EnGe1* this) {
    if (!(this->stateFlags & GE1_STATE_IDLE_ANIM)) {
        if (SkelAnime_Update(&this->skelAnime)) {
            this->stateFlags |= GE1_STATE_IDLE_ANIM;
        }
        this->stateFlags |= GE1_STATE_STOP_FIDGET;
    }
}

s32 EnGe1_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    s32 pad;
    EnGe1* this = (EnGe1*)thisx;

    if (limbIndex == GE1_LIMB_HEAD) {
        rot->x += this->headRot.y;
        rot->z += this->headRot.x;
    }

    if (this->stateFlags & GE1_STATE_STOP_FIDGET) {
        this->stateFlags &= ~GE1_STATE_STOP_FIDGET;
        return 0;
    }

    // The purpose of the state flag GE1_STATE_STOP_FIDGET is to skip this code, which this actor has in lieu of an idle
    // animation.
    if ((limbIndex == GE1_LIMB_TORSO) || (limbIndex == GE1_LIMB_L_FOREARM) || (limbIndex == GE1_LIMB_R_FOREARM)) {
        rot->y += Math_SinS(play->state.frames * (limbIndex * FIDGET_FREQ_LIMB + FIDGET_FREQ_Y)) * FIDGET_AMPLITUDE;
        rot->z += Math_CosS(play->state.frames * (limbIndex * FIDGET_FREQ_LIMB + FIDGET_FREQ_Z)) * FIDGET_AMPLITUDE;
    }
    return 0;
}

void EnGe1_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnGe1* this = (EnGe1*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1419);

    if (limbIndex == GE1_LIMB_HEAD) {
        gSPDisplayList(POLY_OPA_DISP++, sHairstyleDLists[this->hairstyle]);
        Matrix_MultVec3f(&D_80A327A8, &this->actor.focus.pos);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1427);
}

void EnGe1_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    EnGe1* this = (EnGe1*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1442);

    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnGe1_OverrideLimbDraw, EnGe1_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge1.c", 1459);
}
