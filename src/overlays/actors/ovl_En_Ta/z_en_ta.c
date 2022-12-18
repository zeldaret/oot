/*
 * File: z_en_ta.c
 * Overlay: ovl_En_Ta
 * Description: Talon
 */

#include "z_en_ta.h"
#include "terminal.h"
#include "assets/objects/object_ta/object_ta.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3)

#define TALON_STATE_FLAG_TRACKING_PLAYER (1 << 0)
#define TALON_STATE_FLAG_GIVING_MILK_REFILL (1 << 1)
#define TALON_STATE_FLAG_SUPPRESS_BLINK (1 << 2)
// This has no effect, see EnTa_OverrideLimbDraw for details
#define TALON_STATE_FLAG_SUPPRESS_ROCKING_ANIM (1 << 3)
#define TALON_STATE_FLAG_ANIMATION_FINISHED (1 << 4)
#define TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED (1 << 5)
#define TALON_STATE_FLAG_FLOOR_CAMERA_ACTIVE (1 << 7)
#define TALON_STATE_FLAG_RAISING_HANDS (1 << 8)
#define TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY (1 << 9)

#define TALON_FACE_REACTION_SET 24

typedef enum {
    /* 0 */ TALON_EYE_INDEX_OPEN,
    /* 1 */ TALON_EYE_INDEX_HALF,
    /* 2 */ TALON_EYE_INDEX_CLOSED,
    /* 3 */ TALON_EYE_INDEX_MAX
} TalonEyeIndex;

typedef enum {
    /* 0 */ TALON_CANBUYMILK_NOT_ENOUGH_RUPEES,
    /* 1 */ TALON_CANBUYMILK_NO_EMPTY_BOTTLE,
    /* 2 */ TALON_CANBUYMILK_SUCCESS
} TalonCanBuyMilkResult;

void EnTa_Init(Actor* thisx, PlayState* play2);
void EnTa_Destroy(Actor* thisx, PlayState* play);
void EnTa_Update(Actor* thisx, PlayState* play);
void EnTa_Draw(Actor* thisx, PlayState* play);

void EnTa_IdleAsleepInCastle(EnTa* this, PlayState* play);
void EnTa_IdleAsleepInLonLonHouse(EnTa* this, PlayState* play);
void EnTa_IdleAsleepInKakariko(EnTa* this, PlayState* play);
void EnTa_IdleAwakeInCastle(EnTa* this, PlayState* play);
void EnTa_IdleAwakeInKakariko(EnTa* this, PlayState* play);
void EnTa_IdleAtRanch(EnTa* this, PlayState* play);
void EnTa_RunCuccoGame(EnTa* this, PlayState* play);
void EnTa_IdleSittingInLonLonHouse(EnTa* this, PlayState* play);
void EnTa_IdleAfterCuccoGameFinished(EnTa* this, PlayState* play);

void EnTa_BlinkWaitUntilNext(EnTa* this);
void EnTa_BlinkAdvanceState(EnTa* this);

void EnTa_AnimRepeatCurrent(EnTa* this);
void EnTa_AnimSleeping(EnTa* this);
void EnTa_AnimSitSleeping(EnTa* this);
void EnTa_AnimRunToEnd(EnTa* this);

ActorInit En_Ta_InitVars = {
    ACTOR_EN_TA,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_TA,
    sizeof(EnTa),
    (ActorFunc)EnTa_Init,
    (ActorFunc)EnTa_Destroy,
    (ActorFunc)EnTa_Update,
    (ActorFunc)EnTa_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000004, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 30, 40, 0, { 0, 0, 0 } },
};

void EnTa_SetupAction(EnTa* this, EnTaActionFunc actionFunc, EnTaAnimFunc animFunc) {
    this->actionFunc = actionFunc;
    this->animFunc = animFunc;
}

void EnTa_SetTextForTalkInLonLonHouse(EnTa* this, PlayState* play) {
    u16 faceReaction = Text_GetFaceReaction(play, TALON_FACE_REACTION_SET);

    // Check if cucco game was just finished
    if (GET_EVENTINF(EVENTINF_CUCCO_GAME_FINISHED)) {
        // Check if the game was won
        if (GET_EVENTINF(EVENTINF_CUCCO_GAME_WON)) {
            if (GET_ITEMGETINF(ITEMGETINF_TALON_BOTTLE)) {
                // Game won already before
                this->actor.textId = 0x2088;
            } else {
                // First time winning
                this->actor.textId = 0x2086;
            }
        } else {
            // Try again
            this->actor.textId = 0x2085;
        }
        CLEAR_EVENTINF(EVENTINF_CUCCO_GAME_WON);
    } else if (faceReaction == 0) {
        if (GET_INFTABLE(INFTABLE_TALKED_TO_TALON_IN_RANCH_HOUSE)) {
            if (GET_ITEMGETINF(ITEMGETINF_TALON_BOTTLE)) {
                // Play cucco game or buy milk
                this->actor.textId = 0x208B;
            } else {
                // Play cucco game?
                this->actor.textId = 0x207F;
            }
        } else {
            // First time talking to Talon in Lon Lon house
            this->actor.textId = 0x207E;
        }
    } else {
        this->actor.textId = faceReaction;
    }
}

void EnTa_Init(Actor* thisx, PlayState* play2) {
    EnTa* this = (EnTa*)thisx;
    PlayState* play = play2;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gTalonSkel, &gTalonStandAnim, this->jointTable, this->morphTable,
                       ENTA_LIMB_MAX);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);

    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->stateFlags = 0;
    this->rapidBlinks = 0;
    this->nodOffTimer = 0;
    this->blinkTimer = 20;
    this->blinkFunc = EnTa_BlinkWaitUntilNext;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.targetMode = 6;
    this->actor.velocity.y = -4.0f;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;

    switch (this->actor.params) {
        case ENTA_IN_KAKARIKO:
            // "Exile Talon"
            osSyncPrintf(VT_FGCOL(CYAN) " 追放タロン \n" VT_RST);
            if (GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_KAKARIKO)) {
                Actor_Kill(&this->actor);
            } else if (!LINK_IS_ADULT) {
                Actor_Kill(&this->actor);
            } else if (GET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO)) {
                EnTa_SetupAction(this, EnTa_IdleAwakeInKakariko, EnTa_AnimRepeatCurrent);
                this->eyeIndex = TALON_EYE_INDEX_OPEN;
                Animation_PlayOnce(&this->skelAnime, &gTalonStandAnim);
                this->currentAnimation = &gTalonStandAnim;
            } else {
                EnTa_SetupAction(this, EnTa_IdleAsleepInKakariko, EnTa_AnimSleeping);
                this->eyeIndex = TALON_EYE_INDEX_CLOSED;
                Animation_PlayOnce(&this->skelAnime, &gTalonSleepAnim);
                this->currentAnimation = &gTalonSleepAnim;
                this->actor.shape.shadowScale = 54.0f;
            }
            break;

        case ENTA_RETURNED_FROM_KAKARIKO:
            // "Return Talon"
            osSyncPrintf(VT_FGCOL(CYAN) " 出戻りタロン \n" VT_RST);
            if (!GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_KAKARIKO)) {
                Actor_Kill(&this->actor);
            } else if (!LINK_IS_ADULT) {
                Actor_Kill(&this->actor);
            } else if (play->sceneId == SCENE_STABLE && !IS_DAY) {
                Actor_Kill(&this->actor);
                osSyncPrintf(VT_FGCOL(CYAN) " 夜はいない \n" VT_RST);
            } else {
                EnTa_SetupAction(this, EnTa_IdleAtRanch, EnTa_AnimRepeatCurrent);
                this->eyeIndex = TALON_EYE_INDEX_OPEN;
                Animation_PlayOnce(&this->skelAnime, &gTalonStandAnim);
                this->currentAnimation = &gTalonStandAnim;
            }
            break;

        default: // Child era Talon
            // "Other Talon"
            osSyncPrintf(VT_FGCOL(CYAN) " その他のタロン \n" VT_RST);
            if (play->sceneId == SCENE_HYRULE_CASTLE) {
                if (GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
                    Actor_Kill(&this->actor);
                } else if (GET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_CASTLE)) {
                    EnTa_SetupAction(this, EnTa_IdleAwakeInCastle, EnTa_AnimRepeatCurrent);
                    this->eyeIndex = TALON_EYE_INDEX_OPEN;
                    Animation_PlayOnce(&this->skelAnime, &gTalonStandAnim);
                    this->currentAnimation = &gTalonStandAnim;
                } else {
                    EnTa_SetupAction(this, EnTa_IdleAsleepInCastle, EnTa_AnimSleeping);
                    this->eyeIndex = TALON_EYE_INDEX_CLOSED;
                    Animation_PlayOnce(&this->skelAnime, &gTalonSleepAnim);
                    this->currentAnimation = &gTalonSleepAnim;
                    this->actor.shape.shadowScale = 54.0f;
                }
            } else if (play->sceneId == SCENE_LON_LON_BUILDINGS) {
                osSyncPrintf(VT_FGCOL(CYAN) " ロンロン牧場の倉庫 の タロン\n" VT_RST);
                if (!GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
                    Actor_Kill(&this->actor);
                } else if (LINK_IS_ADULT) {
                    Actor_Kill(&this->actor);
                } else {
                    if (IS_DAY) {
                        this->actor.flags |= ACTOR_FLAG_4;
                        this->superCuccoTimers[0] = this->superCuccoTimers[1] = this->superCuccoTimers[2] = 7;
                        this->superCuccos[0] = (EnNiw*)Actor_Spawn(
                            &play->actorCtx, play, ACTOR_EN_NIW, this->actor.world.pos.x + 5.0f,
                            this->actor.world.pos.y + 3.0f, this->actor.world.pos.z + 26.0f, 0, 0, 0, 0xD);
                        this->superCuccos[1] = (EnNiw*)Actor_Spawn(
                            &play->actorCtx, play, ACTOR_EN_NIW, this->actor.world.pos.x - 20.0f,
                            this->actor.world.pos.y + 40.0f, this->actor.world.pos.z - 30.0f, 0, 0, 0, 0xD);
                        this->superCuccos[2] = (EnNiw*)Actor_Spawn(
                            &play->actorCtx, play, ACTOR_EN_NIW, this->actor.world.pos.x + 20.0f,
                            this->actor.world.pos.y + 40.0f, this->actor.world.pos.z - 30.0f, 0, 0, 0, 0xD);
                        EnTa_SetTextForTalkInLonLonHouse(this, play);

                        if (GET_EVENTINF(EVENTINF_CUCCO_GAME_FINISHED)) {
                            EnTa_SetupAction(this, EnTa_IdleAfterCuccoGameFinished, EnTa_AnimRunToEnd);
                            Animation_Change(&this->skelAnime, &gTalonSitWakeUpAnim, 1.0f,
                                             Animation_GetLastFrame(&gTalonSitWakeUpAnim) - 1.0f,
                                             Animation_GetLastFrame(&gTalonSitWakeUpAnim), ANIMMODE_ONCE, 0.0f);
                            CLEAR_EVENTINF(EVENTINF_CUCCO_GAME_FINISHED);
                        } else {
                            EnTa_SetupAction(this, EnTa_IdleSittingInLonLonHouse, EnTa_AnimSitSleeping);
                            this->eyeIndex = TALON_EYE_INDEX_OPEN;
                            Animation_PlayOnce(&this->skelAnime, &gTalonSitSleepingAnim);
                            this->currentAnimation = &gTalonSitSleepingAnim;
                        }
                    } else {
                        EnTa_SetupAction(this, EnTa_IdleAsleepInLonLonHouse, EnTa_AnimSleeping);
                        this->eyeIndex = TALON_EYE_INDEX_CLOSED;
                        Animation_PlayOnce(&this->skelAnime, &gTalonSleepAnim);
                        this->currentAnimation = &gTalonSleepAnim;
                        this->actor.shape.shadowScale = 54.0f;
                    }
                }
            } else {
                EnTa_SetupAction(this, EnTa_IdleAsleepInCastle, EnTa_AnimSleeping);
                this->eyeIndex = TALON_EYE_INDEX_CLOSED;
                Animation_PlayOnce(&this->skelAnime, &gTalonSleepAnim);
                this->currentAnimation = &gTalonSleepAnim;
                this->actor.shape.shadowScale = 54.0f;
            }
            break;
    }
}

void EnTa_DecreaseShadowSize(EnTa* this) {
    if (this->actor.shape.shadowScale > 36.0f) {
        this->actor.shape.shadowScale -= 0.8f;
    }
}

void EnTa_Destroy(Actor* thisx, PlayState* play) {
    EnTa* this = (EnTa*)thisx;

    Collider_DestroyCylinder(play, &this->collider);

    if (this->actor.params != ENTA_IN_KAKARIKO && this->actor.params != ENTA_RETURNED_FROM_KAKARIKO &&
        play->sceneId == SCENE_LON_LON_BUILDINGS) {
        gSaveContext.timerState = TIMER_STATE_OFF;
    }

    if (this->stateFlags & TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY) {
        func_800F5B58();
    }
}

s32 EnTa_RequestTalk(EnTa* this, PlayState* play, u16 textId) {
    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        return true;
    }

    this->actor.textId = textId;

    if ((ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) <= 0x4300) &&
        (this->actor.xzDistToPlayer < 100.0f)) {
        this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
        func_8002F2CC(&this->actor, play, 100.0f);
    }
    return false;
}

void EnTa_SleepTalkInKakariko(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetupAction(this, EnTa_IdleAsleepInKakariko, EnTa_AnimSleeping);
    }
}

void EnTa_SleepTalkInLonLonHouse(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetupAction(this, EnTa_IdleAsleepInLonLonHouse, EnTa_AnimSleeping);
    }
}

void EnTa_SetupAwake(EnTa* this) {
    if (!LINK_IS_ADULT) {
        EnTa_SetupAction(this, EnTa_IdleAwakeInCastle, EnTa_AnimRepeatCurrent);
        SET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_CASTLE);
    } else {
        EnTa_SetupAction(this, EnTa_IdleAwakeInKakariko, EnTa_AnimRepeatCurrent);
        SET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO);
    }
}

void EnTa_TalkWakingUp2(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetupAwake(this);
    }
    EnTa_DecreaseShadowSize(this);
    this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_BLINK;
}

void EnTa_TalkWakingUp1(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetupAwake(this);
        this->blinkTimer = 1;
        this->blinkFunc = EnTa_BlinkAdvanceState;
    }

    if (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) {
        // Half-open eyes once the textbox reaches its end
        this->eyeIndex = TALON_EYE_INDEX_HALF;
        EnTa_SetupAction(this, EnTa_TalkWakingUp2, EnTa_AnimRepeatCurrent);
    }
    EnTa_DecreaseShadowSize(this);
    this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_BLINK;
}

void EnTa_WakeUp(EnTa* this, PlayState* play) {
    this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_BLINK;

    if (this->timer == 0) {
        EnTa_SetupAction(this, EnTa_TalkWakingUp1, EnTa_AnimRepeatCurrent);
        this->rapidBlinks = 3;
        this->timer = 60;
        Animation_PlayOnce(&this->skelAnime, &gTalonWakeUpAnim);
        this->currentAnimation = &gTalonStandAnim;
        Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_SURPRISE);
    }
}

void EnTa_SleepTalkInCastle(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetupAction(this, EnTa_IdleAsleepInCastle, EnTa_AnimSleeping);
    }
}

void EnTa_IdleAsleepInCastle(EnTa* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        s32 exchangeItemId = func_8002F368(play);

        switch (exchangeItemId) {
            case EXCH_ITEM_CHICKEN:
                player->actor.textId = 0x702B;
                EnTa_SetupAction(this, EnTa_WakeUp, EnTa_AnimRepeatCurrent);
                this->timer = 40;
                break;

            default:
                if (exchangeItemId != EXCH_ITEM_NONE) {
                    player->actor.textId = 0x702A;
                }
                EnTa_SetupAction(this, EnTa_SleepTalkInCastle, EnTa_AnimSleeping);
                break;
        }
    } else {
        this->actor.textId = 0x702A;
        func_8002F298(&this->actor, play, 100.0f, EXCH_ITEM_CHICKEN);
    }
}

void EnTa_IdleAsleepInLonLonHouse(EnTa* this, PlayState* play) {
    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        EnTa_SetupAction(this, EnTa_SleepTalkInLonLonHouse, EnTa_AnimSleeping);
    }

    this->actor.textId = 0x204B;
    func_8002F2CC(&this->actor, play, 100.0f);
}

void EnTa_IdleAsleepInKakariko(EnTa* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        s32 exchangeItemId = func_8002F368(play);

        switch (exchangeItemId) {
            case EXCH_ITEM_POCKET_CUCCO:
                player->actor.textId = 0x702B;
                EnTa_SetupAction(this, EnTa_WakeUp, EnTa_AnimRepeatCurrent);
                this->timer = 40;
                break;

            default:
                if (exchangeItemId != EXCH_ITEM_NONE) {
                    player->actor.textId = 0x5015;
                }
                EnTa_SetupAction(this, EnTa_SleepTalkInKakariko, EnTa_AnimSleeping);
                break;
        }
    } else {
        this->actor.textId = 0x5015;
        func_8002F298(&this->actor, play, 100.0f, EXCH_ITEM_POCKET_CUCCO);
    }
}

void EnTa_RunWithAccelerationAndSfx(EnTa* this, PlayState* play) {
    s32 framesMod12 = (s32)play->state.frames % 12;

    if (framesMod12 == 0 || framesMod12 == 6) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_PL_WALK_GROUND + SURFACE_SFX_OFFSET_DIRT);
    }
    if (this->actor.speedXZ < 6.0f) {
        this->actor.speedXZ += 0.4f;
    }
    Actor_MoveForward(&this->actor);
}

void EnTa_RunAwayRunOutOfGate(EnTa* this, PlayState* play) {
    // Spawn dust particles
    func_80033480(play, &this->actor.world.pos, 50.0f, 2, 250, 20, 1);
    EnTa_RunWithAccelerationAndSfx(this, play);

    if (this->timer == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnTa_RunAwayTurnTowardsGate(EnTa* this, PlayState* play) {
    this->actor.world.rot.y += 0xC00;
    this->actor.shape.rot.y += 0xC00;

    if (this->timer == 0) {
        EnTa_SetupAction(this, EnTa_RunAwayRunOutOfGate, EnTa_AnimRepeatCurrent);
        this->timer = 60;
    }
}

void EnTa_RunAwayRunWest(EnTa* this, PlayState* play) {
    // Spawn dust particles
    func_80033480(play, &this->actor.world.pos, 50.0f, 2, 250, 20, 1);
    EnTa_RunWithAccelerationAndSfx(this, play);

    if (this->timer == 0) {
        EnTa_SetupAction(this, EnTa_RunAwayTurnTowardsGate, EnTa_AnimRepeatCurrent);
        this->timer = 5;
    }
}

void EnTa_RunAwayTurnWest(EnTa* this, PlayState* play) {
    this->actor.world.rot.y -= 0xD00;
    this->actor.shape.rot.y -= 0xD00;

    if (this->timer == 0) {
        EnTa_SetupAction(this, EnTa_RunAwayRunWest, EnTa_AnimRepeatCurrent);
        this->timer = 65;
    }
}

void EnTa_RunAwayRunSouth(EnTa* this, PlayState* play) {
    // Spawn dust particles
    func_80033480(play, &this->actor.world.pos, 50.0f, 2, 250, 20, 1);

    EnTa_RunWithAccelerationAndSfx(this, play);

    if (this->timer == 20) {
        Message_CloseTextbox(play);
    }
    if (this->timer == 0) {
        this->timer = 5;
        EnTa_SetupAction(this, EnTa_RunAwayTurnWest, EnTa_AnimRepeatCurrent);
    }
}

void EnTa_RunAwayStart(EnTa* this, PlayState* play) {
    this->actor.world.rot.y -= 0xC00;
    this->actor.shape.rot.y -= 0xC00;

    if (this->timer == 0) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_CRY_1);
        EnTa_SetupAction(this, EnTa_RunAwayRunSouth, EnTa_AnimRepeatCurrent);
        this->timer = 65;
        this->actor.flags |= ACTOR_FLAG_4;
    }
}

void EnTa_TalkAwakeInCastle(EnTa* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) {
        // Start the running away cutscene
        OnePointCutscene_Init(play, 4175, -99, &this->actor, CAM_ID_MAIN);
        EnTa_SetupAction(this, EnTa_RunAwayStart, EnTa_AnimRepeatCurrent);
        this->timer = 5;
        SET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE);
        Animation_PlayOnce(&this->skelAnime, &gTalonRunTransitionAnim);
        this->currentAnimation = &gTalonRunAnim;
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_IdleAwakeInCastle(EnTa* this, PlayState* play) {
    if (EnTa_RequestTalk(this, play, 0x702C)) {
        EnTa_SetupAction(this, EnTa_TalkAwakeInCastle, EnTa_AnimRepeatCurrent);
    }
    EnTa_DecreaseShadowSize(this);
}

void EnTa_TalkAwakeInKakariko(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetupAction(this, EnTa_IdleAwakeInKakariko, EnTa_AnimRepeatCurrent);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_IdleAwakeInKakariko(EnTa* this, PlayState* play) {
    if (GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
        if (EnTa_RequestTalk(this, play, 0x5017)) {
            EnTa_SetupAction(this, EnTa_TalkAwakeInKakariko, EnTa_AnimRepeatCurrent);
            SET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_KAKARIKO);
        }
    } else if (EnTa_RequestTalk(this, play, 0x5016)) {
        EnTa_SetupAction(this, EnTa_TalkAwakeInKakariko, EnTa_AnimRepeatCurrent);
    }
    EnTa_DecreaseShadowSize(this);
}

void EnTa_TalkAtRanch(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetupAction(this, EnTa_IdleAtRanch, EnTa_AnimRepeatCurrent);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_IdleAtRanch(EnTa* this, PlayState* play) {
    if (EnTa_RequestTalk(this, play, 0x2055)) {
        EnTa_SetupAction(this, EnTa_TalkAtRanch, EnTa_AnimRepeatCurrent);
    }
}

s32 EnTa_CheckCanBuyMilk(void) {
    if (gSaveContext.rupees < 30) {
        return TALON_CANBUYMILK_NOT_ENOUGH_RUPEES;
    } else if (!Inventory_HasEmptyBottle()) {
        return TALON_CANBUYMILK_NO_EMPTY_BOTTLE;
    } else {
        return TALON_CANBUYMILK_SUCCESS;
    }
}

void EnTa_CreateFloorCamera(EnTa* this, PlayState* play) {
    Vec3f subCamEye;
    Vec3f subCamAt;

    this->subCamId = Play_CreateSubCamera(play);
    this->returnToCamId = play->activeCamId;
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_WAIT);
    Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);

    subCamEye.x = 1053.0f;
    subCamEye.y = 11.0f;
    subCamEye.z = 22.0f;

    subCamAt.x = 1053.0f;
    subCamAt.y = 45.0f;
    subCamAt.z = -40.0f;

    Play_SetCameraAtEye(play, this->subCamId, &subCamAt, &subCamEye);
}

void EnTa_RemoveFloorCamera(EnTa* this, PlayState* play) {
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_ACTIVE);
    Play_ClearCamera(play, this->subCamId);
}

void EnTa_SetupActionWithSleepAnimation(EnTa* this, EnTaActionFunc actionFunc) {
    EnTa_SetupAction(this, actionFunc, EnTa_AnimSitSleeping);
    this->eyeIndex = TALON_EYE_INDEX_CLOSED;
    Animation_Change(&this->skelAnime, &gTalonSitSleepingAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gTalonSitSleepingAnim), ANIMMODE_ONCE, -5.0f);
    this->nodOffTimer = 0;
    this->currentAnimation = &gTalonSitSleepingAnim;
}

void EnTa_SetupActionWithWakeUpAnimation(EnTa* this, EnTaActionFunc actionFunc) {
    this->eyeIndex = TALON_EYE_INDEX_HALF;
    EnTa_SetupAction(this, actionFunc, EnTa_AnimRunToEnd);
    this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
    Animation_Change(&this->skelAnime, &gTalonSitWakeUpAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gTalonSitWakeUpAnim),
                     ANIMMODE_ONCE, -5.0f);
}

void EnTa_TalkNotEnoughRupees(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        EnTa_SetupActionWithSleepAnimation(this, EnTa_IdleSittingInLonLonHouse);
        EnTa_SetTextForTalkInLonLonHouse(this, play);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

s32 EnTa_IsPlayerHoldingSuperCucco(EnTa* this, PlayState* play, s32 cuccoIdx) {
    Player* player = GET_PLAYER(play);
    Actor* interactRangeActor;

    if (player->stateFlags1 & PLAYER_STATE1_11) {
        interactRangeActor = player->interactRangeActor;
        if (interactRangeActor != NULL && interactRangeActor->id == ACTOR_EN_NIW &&
            interactRangeActor == &this->superCuccos[cuccoIdx]->actor) {
            return true;
        }
    }
    return false;
}

void EnTa_TalkFoundSuperCucco(EnTa* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        s32 lastFoundSuperCuccoIdx;

        Animation_Change(&this->skelAnime, &gTalonSitWakeUpAnim, 1.0f,
                         Animation_GetLastFrame(&gTalonSitWakeUpAnim) - 1.0f,
                         Animation_GetLastFrame(&gTalonSitWakeUpAnim), ANIMMODE_ONCE, 10.0f);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        Message_CloseTextbox(play);
        lastFoundSuperCuccoIdx = this->lastFoundSuperCuccoIdx;
        this->actionFunc = EnTa_RunCuccoGame;

        // Make the found cucco fly directly upwards and then forget about it
        this->superCuccos[lastFoundSuperCuccoIdx]->actor.gravity = 0.1f;
        this->superCuccos[lastFoundSuperCuccoIdx]->actor.velocity.y = 0.0f;
        this->superCuccos[lastFoundSuperCuccoIdx]->actor.speedXZ = 0.0f;
        this->superCuccos[lastFoundSuperCuccoIdx]->actor.parent = NULL;

        if (player->interactRangeActor == &this->superCuccos[lastFoundSuperCuccoIdx]->actor) {
            player->interactRangeActor = NULL;
        }
        if (player->heldActor == &this->superCuccos[lastFoundSuperCuccoIdx]->actor) {
            player->heldActor = NULL;
        }
        player->stateFlags1 &= ~PLAYER_STATE1_11;
        this->superCuccos[lastFoundSuperCuccoIdx] = NULL;
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_IdleFoundSuperCucco(EnTa* this, PlayState* play) {
    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        this->actionFunc = EnTa_TalkFoundSuperCucco;
        // Unset auto-talking
        this->actor.flags &= ~ACTOR_FLAG_16;
    } else {
        func_8002F2CC(&this->actor, play, 1000.0f);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

s32 EnTa_GetSuperCuccosCount(EnTa* this, PlayState* play) {
    s32 count;
    s32 i;

    for (count = 0, i = 0; i < ARRAY_COUNT(this->superCuccos); i++) {
        if (this->superCuccos[i] != NULL) {
            count++;
        }
    }
    return count;
}

void EnTa_AnimateHandsUpDown(EnTa* this) {
    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        if (this->stateFlags & TALON_STATE_FLAG_RAISING_HANDS) {
            Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 17.0f, 22.0f, ANIMMODE_ONCE, 0.0f);
            this->stateFlags &= ~TALON_STATE_FLAG_RAISING_HANDS;
        } else {
            Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, -1.0f, 21.0f, 16.0f, ANIMMODE_ONCE, 3.0f);
            this->stateFlags |= TALON_STATE_FLAG_RAISING_HANDS;
        }
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
    }
}

void EnTa_TransitionToPostCuccoGame(EnTa* this, PlayState* play) {
    EnTa_AnimateHandsUpDown(this);

    if (this->timer == 0) {
        if (this->stateFlags & TALON_STATE_FLAG_FLOOR_CAMERA_ACTIVE) {
            this->stateFlags &= ~TALON_STATE_FLAG_FLOOR_CAMERA_ACTIVE;
            EnTa_RemoveFloorCamera(this, play);
        }
    }
}

void EnTa_TalkCuccoGameEnd(EnTa* this, PlayState* play) {
    EnTa_AnimateHandsUpDown(this);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        play->nextEntranceIndex = ENTR_LON_LON_BUILDINGS_2;

        if (GET_EVENTINF(EVENTINF_CUCCO_GAME_WON)) {
            play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_WHITE, TCS_FAST);
            gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
        } else {
            play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
            gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
        }

        play->transitionTrigger = TRANS_TRIGGER_START;
        SET_EVENTINF(EVENTINF_CUCCO_GAME_FINISHED);
        this->actionFunc = EnTa_TransitionToPostCuccoGame;
        this->timer = 22;
    }
}

void EnTa_RunCuccoGame(EnTa* this, PlayState* play) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(this->superCuccos); i++) {
        if (this->superCuccos[i] != NULL) {
            if (this->superCuccos[i]->actor.gravity > -2.0f) {
                this->superCuccos[i]->actor.gravity -= 0.03f;
            }

            if (EnTa_IsPlayerHoldingSuperCucco(this, play, i)) {
                if (this->superCuccoTimers[i] > 0) {
                    // Wait until the cucco's timer runs out after
                    // acknowledging that the player picked it up.
                    this->superCuccoTimers[i]--;
                } else {
                    this->lastFoundSuperCuccoIdx = i;
                    Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 8.0f, 29.0f, ANIMMODE_ONCE, -10.0f);
                    this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;

                    switch (EnTa_GetSuperCuccosCount(this, play)) {
                        case 1:
                            // Last cucco found, end the game
                            gSaveContext.timerState = TIMER_STATE_OFF;
                            func_8002DF54(play, &this->actor, PLAYER_CSMODE_1);

                            Message_StartTextbox(play, 0x2084, &this->actor);
                            this->actionFunc = EnTa_TalkCuccoGameEnd;
                            Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 8.0f, 29.0f, ANIMMODE_ONCE,
                                             -10.0f);
                            this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
                            this->stateFlags &= ~TALON_STATE_FLAG_RAISING_HANDS;
                            SET_EVENTINF(EVENTINF_CUCCO_GAME_WON);
                            SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
                            this->stateFlags &= ~TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY;
                            Audio_PlayFanfare(NA_BGM_SMALL_ITEM_GET);
                            return;

                        case 2:
                            // One cucco remaining
                            this->actor.textId = 0x2083;
                            Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_CRY_1);
                            break;

                        case 3:
                            // Two cuccos remaining
                            this->actor.textId = 0x2082;
                            Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_SURPRISE);
                            break;
                    }
                    this->actionFunc = EnTa_IdleFoundSuperCucco;

                    // Automatically talk to player
                    this->actor.flags |= ACTOR_FLAG_16;
                    func_8002F2CC(&this->actor, play, 1000.0f);
                    return;
                }
            } else {
                this->superCuccoTimers[i] = 7;
            }
        }
    }

    if (gSaveContext.timerSeconds == 10) {
        Audio_SetFastTempoForTimedMinigame();
    }

    if ((gSaveContext.timerSeconds == 0) && !Play_InCsMode(play)) {
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
        this->stateFlags &= ~TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY;
        func_80078884(NA_SE_SY_FOUND);
        gSaveContext.timerState = TIMER_STATE_OFF;
        func_8002DF54(play, &this->actor, PLAYER_CSMODE_1);

        // Time's up text
        Message_StartTextbox(play, 0x2081, &this->actor);
        this->actionFunc = EnTa_TalkCuccoGameEnd;
        EnTa_CreateFloorCamera(this, play);
        CLEAR_EVENTINF(EVENTINF_CUCCO_GAME_WON);
        this->stateFlags |= TALON_STATE_FLAG_FLOOR_CAMERA_ACTIVE;
        Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 8.0f, 29.0f, ANIMMODE_ONCE, -10.0f);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        this->stateFlags &= ~TALON_STATE_FLAG_RAISING_HANDS;
    }

    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_ThrowSuperCuccos(EnTa* this, PlayState* play) {
    s32 i;

    if (this->timer > 35) {
        // During the first part of the throw animation,
        // just turn them (on the table or the floor)
        for (i = 1; i < ARRAY_COUNT(this->superCuccos); i++) {
            if (this->superCuccos[i] != NULL) {
                Math_SmoothStepToS(&this->superCuccos[i]->actor.world.rot.y, i * -10000 - 3000, 2, 0x800, 0x100);
                this->superCuccos[i]->actor.shape.rot.y = this->superCuccos[i]->actor.world.rot.y;
            }
        }
    } else if (this->timer == 35) {
        // At this point, prepare each super cucco for flight
        for (i = 0; i < ARRAY_COUNT(this->superCuccos); i++) {
            // Set a 7-12 frame zero-gravity time for each super cucco
            this->superCuccoTimers[i] = (s32)(Rand_CenteredFloat(6.0f) + 10.0f);

            if (this->superCuccos[i] != NULL) {
                EnNiw* niw = this->superCuccos[i];

                // Mark the cucco as a super cucco, this will cause the cucco
                // to set random xz and y velocities
                niw->unk_308 = 1;
                niw->actor.gravity = 0.0f;
            }
        }
    } else {
        for (i = 0; i < ARRAY_COUNT(this->superCuccos); i++) {
            // If the zero-gravity time of the cucco is over,
            // add gravity to it
            if (this->timer < 35 - this->superCuccoTimers[i]) {
                if (this->superCuccos[i] != NULL) {
                    if (this->superCuccos[i]->actor.gravity > -2.0f) {
                        this->superCuccos[i]->actor.gravity -= 0.03f;
                    }
                }
            }
        }
    }

    if (this->timer == 0) {
        EnTa_SetupAction(this, EnTa_RunCuccoGame, EnTa_AnimRunToEnd);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        Animation_Change(&this->skelAnime, &gTalonSitWakeUpAnim, 1.0f,
                         Animation_GetLastFrame(&gTalonSitWakeUpAnim) - 1.0f,
                         Animation_GetLastFrame(&gTalonSitWakeUpAnim), ANIMMODE_ONCE, 10.0f);
        func_8002DF54(play, &this->actor, PLAYER_CSMODE_7);
    }
}

void EnTa_StartingCuccoGame3(EnTa* this, PlayState* play) {
    if (this->timer == 0 && this->stateFlags & TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED) {
        EnTa_SetupAction(this, EnTa_ThrowSuperCuccos, EnTa_AnimRunToEnd);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        // Play hand raise animation again so that it looks like Talon throws the cuccos
        Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 1.0f,
                         Animation_GetLastFrame(&gTalonSitHandsUpAnim), ANIMMODE_ONCE, 0.0f);
        this->timer = 50;

        Interface_SetTimer(30);
        func_800F5ACC(NA_BGM_TIMED_MINI_GAME);
        this->stateFlags |= TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY;
        Message_CloseTextbox(play);
        func_8002DF54(play, &this->actor, PLAYER_CSMODE_1);
    }

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->stateFlags |= TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED;
    }

    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_StartingCuccoGame2(EnTa* this, PlayState* play) {
    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        EnTa_SetupAction(this, EnTa_StartingCuccoGame3, EnTa_AnimRunToEnd);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 0.0f, 1.0f, ANIMMODE_ONCE, 0.0f);
        this->timer = 5;
    }
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->stateFlags |= TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED;
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_StartingCuccoGame1(EnTa* this, PlayState* play) {
    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        EnTa_SetupAction(this, EnTa_StartingCuccoGame2, EnTa_AnimRunToEnd);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, -1.0f, 29.0f, 0.0f, ANIMMODE_ONCE, 10.0f);
    }
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->stateFlags |= TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED;
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_StartCuccoGame(EnTa* this, PlayState* play) {
    EnTa_SetupAction(this, EnTa_StartingCuccoGame1, EnTa_AnimRunToEnd);
    this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
    Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 8.0f, 29.0f, ANIMMODE_ONCE, -10.0f);
    Message_ContinueTextbox(play, 0x2080);
    this->stateFlags &= ~TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED;
}

void EnTa_TalkGeneralInLonLonHouse(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetupActionWithSleepAnimation(this, EnTa_IdleSittingInLonLonHouse);
        EnTa_SetTextForTalkInLonLonHouse(this, play);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_GiveItemInLonLonHouse(EnTa* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnTa_TalkGeneralInLonLonHouse;
        if (!(this->stateFlags & TALON_STATE_FLAG_GIVING_MILK_REFILL)) {
            SET_ITEMGETINF(ITEMGETINF_TALON_BOTTLE);
        }
        this->stateFlags &= ~TALON_STATE_FLAG_GIVING_MILK_REFILL;
    } else if (this->stateFlags & TALON_STATE_FLAG_GIVING_MILK_REFILL) {
        Actor_OfferGetItem(&this->actor, play, GI_MILK, 10000.0f, 50.0f);
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_BOTTLE_MILK_FULL, 10000.0f, 50.0f);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_TalkAfterCuccoGameFirstWon(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->stateFlags &= ~TALON_STATE_FLAG_GIVING_MILK_REFILL;
        EnTa_SetupAction(this, EnTa_GiveItemInLonLonHouse, EnTa_AnimRunToEnd);
        Actor_OfferGetItem(&this->actor, play, GI_BOTTLE_MILK_FULL, 10000.0f, 50.0f);
    }
}

void EnTa_WaitBuyMilkOrPlayCuccoGameResponse(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0: // Buy milk
                switch (EnTa_CheckCanBuyMilk()) {
                    case TALON_CANBUYMILK_NOT_ENOUGH_RUPEES:
                        Message_ContinueTextbox(play, 0x85);
                        EnTa_SetupAction(this, EnTa_TalkNotEnoughRupees, EnTa_AnimRunToEnd);
                        break;

                    case TALON_CANBUYMILK_NO_EMPTY_BOTTLE:
                        Message_ContinueTextbox(play, 0x208A);
                        EnTa_SetupAction(this, EnTa_TalkGeneralInLonLonHouse, EnTa_AnimRunToEnd);
                        break;

                    case TALON_CANBUYMILK_SUCCESS:
                        this->stateFlags |= TALON_STATE_FLAG_GIVING_MILK_REFILL;
                        EnTa_SetupAction(this, EnTa_GiveItemInLonLonHouse, EnTa_AnimRunToEnd);
                        Rupees_ChangeBy(-30);
                        Actor_OfferGetItem(&this->actor, play, GI_MILK, 10000.0f, 50.0f);
                        break;
                }
                break;

            case 1: // Play cucco game
                if (gSaveContext.rupees < 10) {
                    Message_ContinueTextbox(play, 0x85);
                    EnTa_SetupAction(this, EnTa_TalkNotEnoughRupees, EnTa_AnimRunToEnd);
                } else {
                    Rupees_ChangeBy(-10);
                    EnTa_StartCuccoGame(this, play);
                }
                break;

            case 2: // Cancel
                EnTa_SetupActionWithSleepAnimation(this, EnTa_IdleSittingInLonLonHouse);
                EnTa_SetTextForTalkInLonLonHouse(this, play);
                break;
        }
    }

    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
    }
}

void EnTa_WaitForPlayCuccoGameResponse(EnTa* this, PlayState* play) {
    s32 price;

    // Check if this is a retry
    if (this->actor.textId == 0x2085) {
        price = 5;
    } else {
        price = 10;
    }

    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.rupees < price) {
                    Message_ContinueTextbox(play, 0x85);
                    EnTa_SetupAction(this, EnTa_TalkNotEnoughRupees, EnTa_AnimRunToEnd);
                } else {
                    Rupees_ChangeBy(-price);
                    EnTa_StartCuccoGame(this, play);
                }
                break;

            case 1:
                EnTa_SetupActionWithSleepAnimation(this, EnTa_IdleSittingInLonLonHouse);
                EnTa_SetTextForTalkInLonLonHouse(this, play);
                break;
        }
    }

    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
    }
}

void EnTa_WaitForMarryMalonResponse(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        Message_ContinueTextbox(play, 0x2087);
        EnTa_SetupAction(this, EnTa_TalkAfterCuccoGameFirstWon, EnTa_AnimRunToEnd);
    }

    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
    }
}

void EnTa_ContinueTalkInLonLonHouse(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        SET_INFTABLE(INFTABLE_TALKED_TO_TALON_IN_RANCH_HOUSE);
        if (GET_ITEMGETINF(ITEMGETINF_TALON_BOTTLE)) {
            // Play cucco game or buy milk
            Message_ContinueTextbox(play, 0x208B);
            EnTa_SetupAction(this, EnTa_WaitBuyMilkOrPlayCuccoGameResponse, EnTa_AnimRunToEnd);
        } else {
            // Play cucco game?
            Message_ContinueTextbox(play, 0x207F);
            EnTa_SetupAction(this, EnTa_WaitForPlayCuccoGameResponse, EnTa_AnimRunToEnd);
        }
    }

    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
    }
}

void EnTa_TalkAfterCuccoGameWon(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        if (Inventory_HasEmptyBottle()) {
            Message_CloseTextbox(play);
            this->stateFlags |= TALON_STATE_FLAG_GIVING_MILK_REFILL;
            EnTa_SetupAction(this, EnTa_GiveItemInLonLonHouse, EnTa_AnimRunToEnd);
            Actor_OfferGetItem(&this->actor, play, GI_MILK, 10000.0f, 50.0f);
        } else {
            Message_ContinueTextbox(play, 0x208A);
            EnTa_SetupAction(this, EnTa_TalkGeneralInLonLonHouse, EnTa_AnimRunToEnd);
        }
    }
}

void EnTa_IdleSittingInLonLonHouse(EnTa* this, PlayState* play) {
    u16 faceReaction = Text_GetFaceReaction(play, TALON_FACE_REACTION_SET);

    EnTa_SetTextForTalkInLonLonHouse(this, play);

    if (EnTa_RequestTalk(this, play, this->actor.textId)) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_SURPRISE);

        if (faceReaction != 0) {
            EnTa_SetupActionWithWakeUpAnimation(this, EnTa_TalkGeneralInLonLonHouse);
        } else {
            SET_INFTABLE(INFTABLE_TALKED_TO_TALON_IN_RANCH_HOUSE);

            switch (this->actor.textId) {
                case 0x207E: // First time talking in Lon Lon House
                case 0x207F: // Play cucco game
                    EnTa_SetupActionWithWakeUpAnimation(this, EnTa_WaitForPlayCuccoGameResponse);
                    break;

                case 0x208B: // Play cucco game or buy milk
                    EnTa_SetupActionWithWakeUpAnimation(this, EnTa_WaitBuyMilkOrPlayCuccoGameResponse);
                    break;

                default:
                    EnTa_SetupActionWithWakeUpAnimation(this, EnTa_ContinueTalkInLonLonHouse);
                    break;
            }
        }
    }
    this->stateFlags &= ~TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_IdleAfterCuccoGameFinished(EnTa* this, PlayState* play) {
    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        switch (this->actor.textId) {
            case 0x2085: // Retry?
                this->actionFunc = EnTa_WaitForPlayCuccoGameResponse;
                break;

            case 0x2086: // Initial win
                this->actionFunc = EnTa_WaitForMarryMalonResponse;
                break;

            case 0x2088: // Later win
                this->actionFunc = EnTa_TalkAfterCuccoGameWon;
                break;
        }
        this->actor.flags &= ~ACTOR_FLAG_16;
    } else {
        this->actor.flags |= ACTOR_FLAG_16;
        func_8002F2CC(&this->actor, play, 1000.0f);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_BlinkWaitUntilNext(EnTa* this) {
    s16 blinkTimer = this->blinkTimer - 1;

    if (blinkTimer != 0) {
        this->blinkTimer = blinkTimer;
    } else {
        this->blinkFunc = EnTa_BlinkAdvanceState;
    }
}

void EnTa_BlinkAdvanceState(EnTa* this) {
    s16 blinkTimer = this->blinkTimer - 1;

    if (blinkTimer != 0) {
        this->blinkTimer = blinkTimer;
    } else {
        // Next towards closed eyes: open -> half, half -> closed
        s16 nextEyeIndex = this->eyeIndex + 1;

        // If the eyes were already closed, set the eyes open and set a new blink timer.
        // If just woken up (rapidBlinks > 0), blink a few times
        // in quick succession before starting the normal blink cycle.
        if (nextEyeIndex >= TALON_EYE_INDEX_MAX) {
            this->eyeIndex = TALON_EYE_INDEX_OPEN;
            if (this->rapidBlinks > 0) {
                this->rapidBlinks--;
                blinkTimer = 1;
            } else {
                blinkTimer = (s32)(Rand_ZeroOne() * 60.0f) + 20;
            }
            this->blinkTimer = blinkTimer;
            this->blinkFunc = EnTa_BlinkWaitUntilNext;
        } else {
            this->eyeIndex = nextEyeIndex;
            this->blinkTimer = 1;
        }
    }
}

void EnTa_AnimRepeatCurrent(EnTa* this) {
    if (SkelAnime_Update(&this->skelAnime)) {
        Animation_PlayOnce(&this->skelAnime, this->currentAnimation);
    }
}

void EnTa_AnimSleeping(EnTa* this) {
    if (SkelAnime_Update(&this->skelAnime)) {
        Animation_PlayOnce(&this->skelAnime, this->currentAnimation);
        Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_SLEEP);
    }
    this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_ROCKING_ANIM | TALON_STATE_FLAG_SUPPRESS_BLINK;
}

void EnTa_AnimSitSleeping(EnTa* this) {
    if (this->nodOffTimer > 0) {
        // Pause the sleep animation until the nodding timer is at zero.
        // The torso and arms will still do the rocking movement because of EnTa_OverrideLimbDraw
        this->nodOffTimer--;
    } else {
        if (SkelAnime_Update(&this->skelAnime)) {
            Animation_PlayOnce(&this->skelAnime, this->currentAnimation);
            this->nodOffTimer = Rand_ZeroFloat(100.0f) + 100.0f;
        }

        if (this->skelAnime.curFrame < 96.0f && this->skelAnime.curFrame >= 53.0f) {
            // Half-open eyes during the part of the sleeping animation where Talon
            // raises his head after nodding off
            this->eyeIndex = TALON_EYE_INDEX_HALF;
        } else {
            // Otherwise keep the eyes closed
            this->eyeIndex = TALON_EYE_INDEX_CLOSED;
        }
        this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_ROCKING_ANIM;
    }
    this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_BLINK;
}

void EnTa_AnimRunToEnd(EnTa* this) {
    if (!(this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED)) {
        if (SkelAnime_Update(&this->skelAnime)) {
            this->stateFlags |= TALON_STATE_FLAG_ANIMATION_FINISHED;
        }
        this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_ROCKING_ANIM;
    }
}

void EnTa_Update(Actor* thisx, PlayState* play) {
    EnTa* this = (EnTa*)thisx;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    this->animFunc(this);
    this->actionFunc(this, play);

    if (!(this->stateFlags & TALON_STATE_FLAG_SUPPRESS_BLINK)) {
        this->blinkFunc(this);
    }

    if (this->stateFlags & TALON_STATE_FLAG_TRACKING_PLAYER) {
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->headRot.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->headRot.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->torsoRot.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->torsoRot.y, 0, 6, 6200, 100);
    }

    this->stateFlags &= ~(TALON_STATE_FLAG_TRACKING_PLAYER | TALON_STATE_FLAG_SUPPRESS_BLINK);

    if (this->timer > 0) {
        this->timer--;
    }
}

s32 EnTa_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnTa* this = (EnTa*)thisx;

    // Turn head and chest towards the target (the rotation steps are calculated in EnTa_Update)
    switch (limbIndex) {
        case ENTA_LIMB_CHEST:
            rot->x += this->torsoRot.y;
            rot->y -= this->torsoRot.x;
            break;

        case ENTA_LIMB_HEAD:
            rot->x += this->headRot.y;
            rot->z += this->headRot.x;
            break;
    }

    // Rocking/wobbling animation for the torso and arms
    if (this->stateFlags & TALON_STATE_FLAG_SUPPRESS_ROCKING_ANIM) {
        // TALON_STATE_FLAG_SUPPRESS_ROCKING_ANIM might have been supposed to prevent
        // the rocking in some situations, (e.g. while sleeping).
        // But because this function is run first for the root limb (limbIndex 1),
        // and the flag is immediately unset, all subsequent calls end up
        // in the else if branch below and rocking always occurs.
        // So this flag has no effect.
        this->stateFlags &= ~TALON_STATE_FLAG_SUPPRESS_ROCKING_ANIM;
    } else if ((limbIndex == ENTA_LIMB_CHEST) || (limbIndex == ENTA_LIMB_LEFT_ARM) ||
               (limbIndex == ENTA_LIMB_RIGHT_ARM)) {
        s32 limbIdx50 = limbIndex * 50;

        rot->y += Math_SinS(play->state.frames * (limbIdx50 + 0x814)) * 200.0f;
        rot->z += Math_CosS(play->state.frames * (limbIdx50 + 0x940)) * 200.0f;
    }

    return false;
}

void EnTa_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f headOffset = { 1100.0f, 1000.0f, 0.0f };
    EnTa* this = (EnTa*)thisx;

    if (limbIndex == ENTA_LIMB_HEAD) {
        Matrix_MultVec3f(&headOffset, &this->actor.focus.pos);
    }
}

void EnTa_Draw(Actor* thisx, PlayState* play) {
    static void* eyeTextures[] = {
        gTalonEyeOpenTex,
        gTalonEyeHalfTex,
        gTalonEyeClosedTex,
    };
    EnTa* this = (EnTa*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ta.c", 2381);

    Gfx_SetupDL_37Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x8, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeIndex]));
    gSPSegment(POLY_OPA_DISP++, 0x9, SEGMENTED_TO_VIRTUAL(gTalonHeadSkinTex));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnTa_OverrideLimbDraw, EnTa_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ta.c", 2400);
}
