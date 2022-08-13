/*
 * File: z_en_ta.c
 * Overlay: ovl_En_Ta
 * Description: Talon
 */

#include "z_en_ta.h"
#include "vt.h"
#include "assets/objects/object_ta/object_ta.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3)

#define TALON_STATE_FLAG_TRACKING_PLAYER (1 << 0)
#define TALON_STATE_FLAG_GIVING_MILK_REFILL (1 << 1)
#define TALON_STATE_FLAG_SUPPRESS_BLINK (1 << 2)
#define TALON_STATE_FLAG_3 (1 << 3)
#define TALON_STATE_FLAG_ANIMATION_FINISHED (1 << 4)
#define TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED (1 << 5)
#define TALON_STATE_FLAG_UNUSED (1 << 6)
#define TALON_STATE_FLAG_FLOOR_CAMERA_ACTIVE (1 << 7)
#define TALON_STATE_FLAG_RAISING_HANDS (1 << 8)
#define TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY (1 << 9)

#define TALON_FACE_REACTION_SET 24

#define EVENTINF_CUCCO_GAME_FINISHED EVENTINF_HORSES_0A
#define EVENTINF_CUCCO_GAME_WON EVENTINF_HORSES_08

typedef enum { TALON_EYE_INDEX_OPEN, TALON_EYE_INDEX_HALF, TALON_EYE_INDEX_CLOSED } TalonEyeIndex;

typedef enum {
    TALON_CANBUYMILK_NOT_ENOUGH_RUPEES,
    TALON_CANBUYMILK_NO_EMPTY_BOTTLE,
    TALON_CANBUYMILK_SUCCESS
} TalonCanBuyMilkResult;

void EnTa_Init(Actor* thisx, PlayState* play2);
void EnTa_Destroy(Actor* thisx, PlayState* play);
void EnTa_Update(Actor* thisx, PlayState* play);
void EnTa_Draw(Actor* thisx, PlayState* play);

void EnTa_IdleAsleepInCastle(EnTa* this, PlayState* play);
void EnTa_IdleAsleepInLonLonHouse(EnTa* this, PlayState* play);
void EnTa_IdleAsleepInKakariko(EnTa* this, PlayState* play);
void EnTa_IdleWokenInCastle(EnTa* this, PlayState* play);
void EnTa_IdleWokenInKakariko(EnTa* this, PlayState* play);
void EnTa_IdleBackAtRanch(EnTa* this, PlayState* play);
void EnTa_RunCuccoGame(EnTa* this, PlayState* play);
void EnTa_IdleSittingInLonLonHouse(EnTa* this, PlayState* play);
void EnTa_IdleAfterCuccoGameFinished(EnTa* this, PlayState* play);

void EnTa_BlinkWaitUntilNext(EnTa* this);
void EnTa_BlinkAdvanceState(EnTa* this);

void EnTa_AnimLoopCurrent(EnTa* this);
void EnTa_AnimSleeping(EnTa* this);
void EnTa_AnimSitSleeping(EnTa* this);
void EnTa_AnimRunToEnd(EnTa* this);

const ActorInit En_Ta_InitVars = {
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

void EnTa_SetActionFunctions(EnTa* this, EnTaActionFunc arg1, EnTaBlinkFunc arg2) {
    this->actionFunc = arg1;
    this->animFunc = arg2;
}

void EnTa_SetTextForTalkInLonLonHouse(EnTa* this, PlayState* play) {
    u16 faceReaction = Text_GetFaceReaction(play, TALON_FACE_REACTION_SET);

    // Check if cucco game was just finished
    if (GET_EVENTINF(EVENTINF_CUCCO_GAME_FINISHED)) {
        // Check if the game was won
        if (GET_EVENTINF(EVENTINF_CUCCO_GAME_WON)) {
            if (GET_ITEMGETINF(ITEMGETINF_TALON_BOTTLE)) {
                // "Why don't you come to work here, on this ranch"
                this->actor.textId = 0x2088;
            } else {
                // "Marry malon?"
                this->actor.textId = 0x2086;
            }
        } else {
            // "Try again?" (Super cucco game)
            this->actor.textId = 0x2085;
        }
        CLEAR_EVENTINF(EVENTINF_CUCCO_GAME_WON);
    } else if (faceReaction == 0) {
        if (GET_INFTABLE(INFTABLE_TALKED_TO_TALON_IN_RANCH_HOUSE)) {
            if (GET_ITEMGETINF(ITEMGETINF_TALON_BOTTLE)) {
                // "Play cucco-findin' game or buy milk?"
                this->actor.textId = 0x208B;
            } else {
                // "Play cucco game?" (Initial question before chance to buy milk)
                this->actor.textId = 0x207F;
            }
        } else {
            // "If it ain't the forest kid from the other day"
            // Play cucco game?
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
    SkelAnime_InitFlex(play, &this->skelAnime, &gTalonSkel, &gTalonStandAnim, this->jointTable, this->morphTable, 17);
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
                EnTa_SetActionFunctions(this, EnTa_IdleWokenInKakariko, EnTa_AnimLoopCurrent);
                this->eyeIndex = TALON_EYE_INDEX_OPEN;
                Animation_PlayOnce(&this->skelAnime, &gTalonStandAnim);
                this->currentAnimation = &gTalonStandAnim;
            } else {
                EnTa_SetActionFunctions(this, EnTa_IdleAsleepInKakariko, EnTa_AnimSleeping);
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
            } else if (play->sceneId == SCENE_MALON_STABLE && !IS_DAY) {
                Actor_Kill(&this->actor);
                osSyncPrintf(VT_FGCOL(CYAN) " 夜はいない \n" VT_RST);
            } else {
                EnTa_SetActionFunctions(this, EnTa_IdleBackAtRanch, EnTa_AnimLoopCurrent);
                this->eyeIndex = TALON_EYE_INDEX_OPEN;
                Animation_PlayOnce(&this->skelAnime, &gTalonStandAnim);
                this->currentAnimation = &gTalonStandAnim;
            }
            break;
        default:
            // "Other Talon" == child Talon
            osSyncPrintf(VT_FGCOL(CYAN) " その他のタロン \n" VT_RST);
            if (play->sceneId == SCENE_SPOT15) { // Hyrule Castle
                if (GET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
                    Actor_Kill(&this->actor);
                } else if (GET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_CASTLE)) {
                    EnTa_SetActionFunctions(this, EnTa_IdleWokenInCastle, EnTa_AnimLoopCurrent);
                    this->eyeIndex = TALON_EYE_INDEX_OPEN;
                    Animation_PlayOnce(&this->skelAnime, &gTalonStandAnim);
                    this->currentAnimation = &gTalonStandAnim;
                } else {
                    EnTa_SetActionFunctions(this, EnTa_IdleAsleepInCastle, EnTa_AnimSleeping);
                    this->eyeIndex = TALON_EYE_INDEX_CLOSED;
                    Animation_PlayOnce(&this->skelAnime, &gTalonSleepAnim);
                    this->currentAnimation = &gTalonSleepAnim;
                    this->actor.shape.shadowScale = 54.0f;
                }
            } else if (play->sceneId == SCENE_SOUKO) { // Talon's house
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

                        // Check if cucco game was just finished. The room is reloaded
                        // when the game ends, therefore this is read from eventinf
                        if (GET_EVENTINF(EVENTINF_CUCCO_GAME_FINISHED)) {
                            EnTa_SetActionFunctions(this, EnTa_IdleAfterCuccoGameFinished, EnTa_AnimRunToEnd);
                            Animation_Change(&this->skelAnime, &gTalonSitWakeUpAnim, 1.0f,
                                             Animation_GetLastFrame(&gTalonSitWakeUpAnim) - 1.0f,
                                             Animation_GetLastFrame(&gTalonSitWakeUpAnim), ANIMMODE_ONCE, 0.0f);
                            CLEAR_EVENTINF(EVENTINF_CUCCO_GAME_FINISHED);
                        } else {
                            EnTa_SetActionFunctions(this, EnTa_IdleSittingInLonLonHouse, EnTa_AnimSitSleeping);
                            this->eyeIndex = TALON_EYE_INDEX_OPEN;
                            Animation_PlayOnce(&this->skelAnime, &gTalonSitSleepingAnim);
                            this->currentAnimation = &gTalonSitSleepingAnim;
                        }
                    } else {
                        EnTa_SetActionFunctions(this, EnTa_IdleAsleepInLonLonHouse, EnTa_AnimSleeping);
                        this->eyeIndex = TALON_EYE_INDEX_CLOSED;
                        Animation_PlayOnce(&this->skelAnime, &gTalonSleepAnim);
                        this->currentAnimation = &gTalonSleepAnim;
                        this->actor.shape.shadowScale = 54.0f;
                    }
                }
            } else {
                EnTa_SetActionFunctions(this, EnTa_IdleAsleepInCastle, EnTa_AnimSleeping);
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
        play->sceneId == SCENE_SOUKO) {
        gSaveContext.timer1State = 0;
    }

    if (this->stateFlags & TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY) {
        func_800F5B58();
    }
}

s32 EnTa_TalkToPlayer(EnTa* this, PlayState* play, u16 textId) {
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
        EnTa_SetActionFunctions(this, EnTa_IdleAsleepInKakariko, EnTa_AnimSleeping);
    }
}

void EnTa_SleepTalkInLonLonHouse(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetActionFunctions(this, EnTa_IdleAsleepInLonLonHouse, EnTa_AnimSleeping);
    }
}

void EnTa_SetWokenFlagsAndActionFunctions(EnTa* this) {
    if (!LINK_IS_ADULT) {
        EnTa_SetActionFunctions(this, EnTa_IdleWokenInCastle, EnTa_AnimLoopCurrent);
        SET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_CASTLE);
    } else {
        EnTa_SetActionFunctions(this, EnTa_IdleWokenInKakariko, EnTa_AnimLoopCurrent);
        SET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO);
    }
}

void EnTa_TalkAfterWokenUp(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetWokenFlagsAndActionFunctions(this);
    }
    EnTa_DecreaseShadowSize(this);
    this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_BLINK;
}

void EnTa_TalkWakingUp(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetWokenFlagsAndActionFunctions(this);
        this->blinkTimer = 1;
        this->blinkFunc = EnTa_BlinkAdvanceState;
    }

    if (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE) {
        // Half-open eyes once the textbox reaches its end
        this->eyeIndex = TALON_EYE_INDEX_HALF;
        EnTa_SetActionFunctions(this, EnTa_TalkAfterWokenUp, EnTa_AnimLoopCurrent);
    }
    EnTa_DecreaseShadowSize(this);
    this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_BLINK;
}

void EnTa_WakeUp(EnTa* this, PlayState* play) {
    this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_BLINK;

    if (this->animTimer == 0) {
        EnTa_SetActionFunctions(this, EnTa_TalkWakingUp, EnTa_AnimLoopCurrent);
        this->rapidBlinks = 3;
        this->animTimer = 60;
        Animation_PlayOnce(&this->skelAnime, &gTalonWakeUpAnim);
        this->currentAnimation = &gTalonStandAnim;
        Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_SURPRISE);
    }
}

void EnTa_SleepTalkInCastle(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetActionFunctions(this, EnTa_IdleAsleepInCastle, EnTa_AnimSleeping);
    }
}

void EnTa_IdleAsleepInCastle(EnTa* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        s32 exchangeItemId = func_8002F368(play);

        switch (exchangeItemId) {
            case EXCH_ITEM_CHICKEN:
                // "What in tarnation?"
                player->actor.textId = 0x702B;
                EnTa_SetActionFunctions(this, EnTa_WakeUp, EnTa_AnimLoopCurrent);
                this->animTimer = 40;
                break;
            default:
                if (exchangeItemId != EXCH_ITEM_NONE) {
                    // "Z Z Z Z Z...."
                    player->actor.textId = 0x702A;
                }
                EnTa_SetActionFunctions(this, EnTa_SleepTalkInCastle, EnTa_AnimSleeping);
                break;
        }
    } else {
        // "Z Z Z Z Z...."
        this->actor.textId = 0x702A;
        func_8002F298(&this->actor, play, 100.0f, EXCH_ITEM_CHICKEN);
    }
}

void EnTa_IdleAsleepInLonLonHouse(EnTa* this, PlayState* play) {
    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        EnTa_SetActionFunctions(this, EnTa_SleepTalkInLonLonHouse, EnTa_AnimSleeping);
    }

    // "Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z"
    this->actor.textId = 0x204B;
    func_8002F2CC(&this->actor, play, 100.0f);
}

void EnTa_IdleAsleepInKakariko(EnTa* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        s32 exchangeItemId = func_8002F368(play);

        switch (exchangeItemId) {
            case EXCH_ITEM_POCKET_CUCCO:
                // "What in tarnation?"
                player->actor.textId = 0x702B;
                EnTa_SetActionFunctions(this, EnTa_WakeUp, EnTa_AnimLoopCurrent);
                this->animTimer = 40;
                break;
            default:
                if (exchangeItemId != EXCH_ITEM_NONE) {
                    // "Z Z Z... Malon.. doing all right..."
                    player->actor.textId = 0x5015;
                }
                EnTa_SetActionFunctions(this, EnTa_SleepTalkInKakariko, EnTa_AnimSleeping);
                break;
        }
    } else {
        // "Z Z Z... Malon.. doing all right..."
        this->actor.textId = 0x5015;
        func_8002F298(&this->actor, play, 100.0f, EXCH_ITEM_POCKET_CUCCO);
    }
}

void EnTa_RunWithAccelerationAndSfx(EnTa* this, PlayState* play) {
    s32 framesMod12 = (s32)play->state.frames % 12;

    if (framesMod12 == 0 || framesMod12 == 6) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_PL_WALK_GROUND);
    }
    if (this->actor.speedXZ < 6.0f) {
        this->actor.speedXZ += 0.4f;
    }
    Actor_MoveForward(&this->actor);
}

void EnTa_RunAwayAnimRunOutOfGate(EnTa* this, PlayState* play) {
    // Spawn dust particles
    func_80033480(play, &this->actor.world.pos, 50.0f, 2, 250, 20, 1);
    EnTa_RunWithAccelerationAndSfx(this, play);

    if (this->animTimer == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnTa_RunAwayAnimTurnTowardsGate(EnTa* this, PlayState* play) {
    this->actor.world.rot.y += 0xC00;
    this->actor.shape.rot.y += 0xC00;

    if (this->animTimer == 0) {
        EnTa_SetActionFunctions(this, EnTa_RunAwayAnimRunOutOfGate, EnTa_AnimLoopCurrent);
        this->animTimer = 60;
    }
}

void EnTa_RunAwayAnimRunWest(EnTa* this, PlayState* play) {
    // Spawn dust particles
    func_80033480(play, &this->actor.world.pos, 50.0f, 2, 250, 20, 1);
    EnTa_RunWithAccelerationAndSfx(this, play);

    if (this->animTimer == 0) {
        EnTa_SetActionFunctions(this, EnTa_RunAwayAnimTurnTowardsGate, EnTa_AnimLoopCurrent);
        this->animTimer = 5;
    }
}

void EnTa_RunAwayAnimTurnWest(EnTa* this, PlayState* play) {
    this->actor.world.rot.y -= 0xD00;
    this->actor.shape.rot.y -= 0xD00;

    if (this->animTimer == 0) {
        EnTa_SetActionFunctions(this, EnTa_RunAwayAnimRunWest, EnTa_AnimLoopCurrent);
        this->animTimer = 65;
    }
}

void EnTa_RunAwayAnimRunSouth(EnTa* this, PlayState* play) {
    // Spawn dust particles
    func_80033480(play, &this->actor.world.pos, 50.0f, 2, 250, 20, 1);

    EnTa_RunWithAccelerationAndSfx(this, play);

    if (this->animTimer == 20) {
        Message_CloseTextbox(play);
    }
    if (this->animTimer == 0) {
        this->animTimer = 5;
        EnTa_SetActionFunctions(this, EnTa_RunAwayAnimTurnWest, EnTa_AnimLoopCurrent);
    }
}

void EnTa_RunAwayAnimStart(EnTa* this, PlayState* play) {
    this->actor.world.rot.y -= 0xC00;
    this->actor.shape.rot.y -= 0xC00;

    if (this->animTimer == 0) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_CRY_1);
        EnTa_SetActionFunctions(this, EnTa_RunAwayAnimRunSouth, EnTa_AnimLoopCurrent);
        this->animTimer = 65;
        this->actor.flags |= ACTOR_FLAG_4;
    }
}

void EnTa_TalkWokenInCastle(EnTa* this, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) {
        // Start the running away cutscene
        OnePointCutscene_Init(play, 4175, -99, &this->actor, CAM_ID_MAIN);
        EnTa_SetActionFunctions(this, EnTa_RunAwayAnimStart, EnTa_AnimLoopCurrent);
        this->animTimer = 5;
        SET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE);
        Animation_PlayOnce(&this->skelAnime, &gTalonRunTransitionAnim);
        this->currentAnimation = &gTalonRunAnim;
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_IdleWokenInCastle(EnTa* this, PlayState* play) {
    // "I went to the castle to deliver some milk..."
    if (EnTa_TalkToPlayer(this, play, 0x702C)) {
        EnTa_SetActionFunctions(this, EnTa_TalkWokenInCastle, EnTa_AnimLoopCurrent);
    }
    EnTa_DecreaseShadowSize(this);
}

void EnTa_TalkWokenInKakariko(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetActionFunctions(this, EnTa_IdleWokenInKakariko, EnTa_AnimLoopCurrent);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_IdleWokenInKakariko(EnTa* this, PlayState* play) {
    if (GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
        // "Did you save Malon? Thanks!"
        if (EnTa_TalkToPlayer(this, play, 0x5017)) {
            EnTa_SetActionFunctions(this, EnTa_TalkWokenInKakariko, EnTa_AnimLoopCurrent);
            SET_EVENTCHKINF(EVENTCHKINF_TALON_RETURNED_FROM_KAKARIKO);
        }
    } else if (EnTa_TalkToPlayer(this, play, 0x5016)) {
        // "Ingo took over Lon Lon Ranch..."
        EnTa_SetActionFunctions(this, EnTa_TalkWokenInKakariko, EnTa_AnimLoopCurrent);
    }
    EnTa_DecreaseShadowSize(this);
}

void EnTa_TalkBackAtRanch(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetActionFunctions(this, EnTa_IdleBackAtRanch, EnTa_AnimLoopCurrent);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_IdleBackAtRanch(EnTa* this, PlayState* play) {
    // "I'm gonna turn over a new leaf and work real hard..."
    if (EnTa_TalkToPlayer(this, play, 0x2055)) {
        EnTa_SetActionFunctions(this, EnTa_TalkBackAtRanch, EnTa_AnimLoopCurrent);
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

    Play_CameraSetAtEye(play, this->subCamId, &subCamAt, &subCamEye);
}

void EnTa_RemoveFloorCamera(EnTa* this, PlayState* play) {
    Play_ChangeCameraStatus(play, this->returnToCamId, CAM_STAT_ACTIVE);
    Play_ClearCamera(play, this->subCamId);
}

void EnTa_SetActionFuncWithBackToSleepAnimation(EnTa* this, EnTaActionFunc actionFunc) {
    EnTa_SetActionFunctions(this, actionFunc, EnTa_AnimSitSleeping);
    this->eyeIndex = TALON_EYE_INDEX_CLOSED;
    Animation_Change(&this->skelAnime, &gTalonSitSleepingAnim, 1.0f, 0.0f,
                     Animation_GetLastFrame(&gTalonSitSleepingAnim), ANIMMODE_ONCE, -5.0f);
    this->nodOffTimer = 0;
    this->currentAnimation = &gTalonSitSleepingAnim;
}

void EnTa_SetActionFuncWithWakeUpAnimation(EnTa* this, EnTaActionFunc actionFunc) {
    this->eyeIndex = TALON_EYE_INDEX_HALF;
    EnTa_SetActionFunctions(this, actionFunc, EnTa_AnimRunToEnd);
    this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
    Animation_Change(&this->skelAnime, &gTalonSitWakeUpAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gTalonSitWakeUpAnim),
                     ANIMMODE_ONCE, -5.0f);
}

void EnTa_TalkNotEnoughRupees(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        EnTa_SetActionFuncWithBackToSleepAnimation(this, EnTa_IdleSittingInLonLonHouse);
        EnTa_SetTextForTalkInLonLonHouse(this, play);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

bool EnTa_IsPlayerHoldingSuperCucco(EnTa* this, PlayState* play, s32 cuccoIdx) {
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

        // Make the found cucco fly directly upwards
        // and then forget about it
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

    if (this->animTimer == 0) {
        if (this->stateFlags & TALON_STATE_FLAG_FLOOR_CAMERA_ACTIVE) {
            this->stateFlags &= ~TALON_STATE_FLAG_FLOOR_CAMERA_ACTIVE;
            EnTa_RemoveFloorCamera(this, play);
        }
    }
}

void EnTa_TalkCuccoGameEnd(EnTa* this, PlayState* play) {
    EnTa_AnimateHandsUpDown(this);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        play->nextEntranceIndex = ENTR_SOUKO_2;

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
        this->animTimer = 22;
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
                            gSaveContext.timer1State = 0;
                            func_8002DF54(play, &this->actor, 1);

                            // "That's the last one!"
                            Message_StartTextbox(play, 0x2084, &this->actor);
                            this->actionFunc = EnTa_TalkCuccoGameEnd;
                            Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 8.0f, 29.0f, ANIMMODE_ONCE,
                                             -10.0f);
                            this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
                            this->stateFlags &= ~TALON_STATE_FLAG_RAISING_HANDS;
                            SET_EVENTINF(EVENTINF_CUCCO_GAME_WON);
                            Audio_QueueSeqCmd(SEQ_PLAYER_BGM_MAIN << 24 | NA_BGM_STOP);
                            this->stateFlags &= ~TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY;
                            Audio_PlayFanfare(NA_BGM_SMALL_ITEM_GET);
                            return;
                        case 2:
                            // "There's another!"
                            this->actor.textId = 0x2083;
                            Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_CRY_1);
                            break;
                        case 3:
                            // "That's one of 'em!"
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

    if (gSaveContext.timer1Value == 10) {
        func_800F5918();
    }

    if (gSaveContext.timer1Value == 0 && !Play_InCsMode(play)) {
        Audio_QueueSeqCmd(SEQ_PLAYER_BGM_MAIN << 24 | NA_BGM_STOP);
        this->stateFlags &= ~TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY;
        func_80078884(NA_SE_SY_FOUND);
        gSaveContext.timer1State = 0;
        func_8002DF54(play, &this->actor, 1);
        // "Time's up!"
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

    if (this->animTimer > 35) {
        // During the first part of the throw animation,
        // just turn them (on the table or the floor)
        for (i = 1; i < ARRAY_COUNT(this->superCuccos); i++) {
            if (this->superCuccos[i] != NULL) {
                Math_SmoothStepToS(&this->superCuccos[i]->actor.world.rot.y, i * -10000 - 3000, 2, 0x800, 0x100);
                this->superCuccos[i]->actor.shape.rot.y = this->superCuccos[i]->actor.world.rot.y;
            }
        }
    } else if (this->animTimer == 35) {
        // At this point, prepare each super cucco for flight
        for (i = 0; i < ARRAY_COUNT(this->superCuccos); i++) {
            // Set a 10-16 zero-gravity time for each super cucco
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
            if (this->animTimer < 35 - this->superCuccoTimers[i]) {
                if (this->superCuccos[i] != NULL) {
                    if (this->superCuccos[i]->actor.gravity > -2.0f) {
                        this->superCuccos[i]->actor.gravity -= 0.03f;
                    }
                }
            }
        }
    }

    if (this->animTimer == 0) {
        EnTa_SetActionFunctions(this, EnTa_RunCuccoGame, EnTa_AnimRunToEnd);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        Animation_Change(&this->skelAnime, &gTalonSitWakeUpAnim, 1.0f,
                         Animation_GetLastFrame(&gTalonSitWakeUpAnim) - 1.0f,
                         Animation_GetLastFrame(&gTalonSitWakeUpAnim), ANIMMODE_ONCE, 10.0f);
        func_8002DF54(play, &this->actor, 7);
    }
}

void EnTa_StartingCuccoGameAnimation3(EnTa* this, PlayState* play) {
    if (this->animTimer == 0 && this->stateFlags & TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED) {
        EnTa_SetActionFunctions(this, EnTa_ThrowSuperCuccos, EnTa_AnimRunToEnd);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        // Play hand raise animation again so that it looks like Talon throws the cuccos
        Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 1.0f,
                         Animation_GetLastFrame(&gTalonSitHandsUpAnim), ANIMMODE_ONCE, 0.0f);
        this->animTimer = 50;

        func_80088B34(30);                     // Set the minigame timer for 30 seconds
        func_800F5ACC(NA_BGM_TIMED_MINI_GAME); // Start minigame music
        this->stateFlags |= TALON_STATE_FLAG_RESTORE_BGM_ON_DESTROY;
        Message_CloseTextbox(play);
        func_8002DF54(play, &this->actor, 1);
    }

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->stateFlags |= TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED;
    }

    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_StartingCuccoGameAnimation2(EnTa* this, PlayState* play) {
    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        EnTa_SetActionFunctions(this, EnTa_StartingCuccoGameAnimation3, EnTa_AnimRunToEnd);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 0.0f, 1.0f, ANIMMODE_ONCE, 0.0f);
        this->animTimer = 5;
    }
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->stateFlags |= TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED;
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_StartingCuccoGameAnimation1(EnTa* this, PlayState* play) {
    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        EnTa_SetActionFunctions(this, EnTa_StartingCuccoGameAnimation2, EnTa_AnimRunToEnd);
        this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
        Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, -1.0f, 29.0f, 0.0f, ANIMMODE_ONCE, 10.0f);
    }
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->stateFlags |= TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED;
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_StartCuccoGame(EnTa* this, PlayState* play) {
    EnTa_SetActionFunctions(this, EnTa_StartingCuccoGameAnimation1, EnTa_AnimRunToEnd);
    this->stateFlags &= ~TALON_STATE_FLAG_ANIMATION_FINISHED;
    Animation_Change(&this->skelAnime, &gTalonSitHandsUpAnim, 1.0f, 8.0f, 29.0f, ANIMMODE_ONCE, -10.0f);
    // "START LOOKIN'!!"
    Message_ContinueTextbox(play, 0x2080);
    this->stateFlags &= ~TALON_STATE_FLAG_CUCCO_GAME_START_EVENT_TRIGGERED;
}

void EnTa_TalkGeneralInLonLonHouse(EnTa* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        EnTa_SetActionFuncWithBackToSleepAnimation(this, EnTa_IdleSittingInLonLonHouse);
        EnTa_SetTextForTalkInLonLonHouse(this, play);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_GiveItemInLonLonHouse(EnTa* this, PlayState* play) {
    // Player sets itself as the parent after func_8002F434 (get item)
    // is called. So if parent is set, the item was already given.
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnTa_TalkGeneralInLonLonHouse;
        if (!(this->stateFlags & TALON_STATE_FLAG_GIVING_MILK_REFILL)) {
            SET_ITEMGETINF(ITEMGETINF_TALON_BOTTLE);
        }
        this->stateFlags &= ~TALON_STATE_FLAG_GIVING_MILK_REFILL;
    } else if (this->stateFlags & TALON_STATE_FLAG_GIVING_MILK_REFILL) {
        func_8002F434(&this->actor, play, GI_MILK, 10000.0f, 50.0f);
    } else {
        func_8002F434(&this->actor, play, GI_MILK_BOTTLE, 10000.0f, 50.0f);
    }
    this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_TalkAfterCuccoGameFirstWon(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->stateFlags &= ~TALON_STATE_FLAG_GIVING_MILK_REFILL;
        EnTa_SetActionFunctions(this, EnTa_GiveItemInLonLonHouse, EnTa_AnimRunToEnd);
        func_8002F434(&this->actor, play, GI_MILK_BOTTLE, 10000.0f, 50.0f);
    }
}

void EnTa_WaitBuyMilkOrPlayCuccoGameResponse(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0: // Buy milk
                switch (EnTa_CheckCanBuyMilk()) {
                    case TALON_CANBUYMILK_NOT_ENOUGH_RUPEES:
                        // "You don't have enough Rupees!"
                        Message_ContinueTextbox(play, 0x85);
                        EnTa_SetActionFunctions(this, EnTa_TalkNotEnoughRupees, EnTa_AnimRunToEnd);
                        break;
                    case TALON_CANBUYMILK_NO_EMPTY_BOTTLE:
                        // "You don't have an empty bottle, do you?"
                        Message_ContinueTextbox(play, 0x208A);
                        EnTa_SetActionFunctions(this, EnTa_TalkGeneralInLonLonHouse, EnTa_AnimRunToEnd);
                        break;
                    case TALON_CANBUYMILK_SUCCESS:
                        this->stateFlags |= TALON_STATE_FLAG_GIVING_MILK_REFILL;
                        EnTa_SetActionFunctions(this, EnTa_GiveItemInLonLonHouse, EnTa_AnimRunToEnd);
                        Rupees_ChangeBy(-30);
                        // Get milk
                        func_8002F434(&this->actor, play, GI_MILK, 10000.0f, 50.0f);
                        break;
                }
                break;
            case 1: // Play cucco game
                if (gSaveContext.rupees < 10) {
                    // "You don't have enough Rupees!"
                    Message_ContinueTextbox(play, 0x85);
                    EnTa_SetActionFunctions(this, EnTa_TalkNotEnoughRupees, EnTa_AnimRunToEnd);
                } else {
                    Rupees_ChangeBy(-10);
                    EnTa_StartCuccoGame(this, play);
                }
                break;
            case 2: // Cancel
                EnTa_SetActionFuncWithBackToSleepAnimation(this, EnTa_IdleSittingInLonLonHouse);
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

    // "Try again?"
    if (this->actor.textId == 0x2085) {
        price = 5;
    } else {
        price = 10;
    }

    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE && Message_ShouldAdvance(play)) {
        switch (play->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.rupees < price) {
                    // "You don't have enough rupees"
                    Message_ContinueTextbox(play, 0x85);
                    EnTa_SetActionFunctions(this, EnTa_TalkNotEnoughRupees, EnTa_AnimRunToEnd);
                } else {
                    Rupees_ChangeBy(-price);
                    EnTa_StartCuccoGame(this, play);
                }
                break;
            case 1:
                EnTa_SetActionFuncWithBackToSleepAnimation(this, EnTa_IdleSittingInLonLonHouse);
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
        // "Haw haw! I was just kidding!"
        Message_ContinueTextbox(play, 0x2087);
        EnTa_SetActionFunctions(this, EnTa_TalkAfterCuccoGameFirstWon, EnTa_AnimRunToEnd);
    }

    if (this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED) {
        this->stateFlags |= TALON_STATE_FLAG_TRACKING_PLAYER;
    }
}

void EnTa_ContinueTalkInLonLonHouse(EnTa* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        SET_INFTABLE(INFTABLE_TALKED_TO_TALON_IN_RANCH_HOUSE);
        if (GET_ITEMGETINF(ITEMGETINF_TALON_BOTTLE)) {
            // "Play cucco game or buy milk?"
            Message_ContinueTextbox(play, 0x208B);
            EnTa_SetActionFunctions(this, EnTa_WaitBuyMilkOrPlayCuccoGameResponse, EnTa_AnimRunToEnd);
        } else {
            // "Play cucco game?" (Initial question before chance to buy milk)
            Message_ContinueTextbox(play, 0x207F);
            EnTa_SetActionFunctions(this, EnTa_WaitForPlayCuccoGameResponse, EnTa_AnimRunToEnd);
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
            EnTa_SetActionFunctions(this, EnTa_GiveItemInLonLonHouse, EnTa_AnimRunToEnd);
            func_8002F434(&this->actor, play, GI_MILK, 10000.0f, 50.0f);
        } else {
            // "You don't have an empty bottle, do you?"
            Message_ContinueTextbox(play, 0x208A);
            EnTa_SetActionFunctions(this, EnTa_TalkGeneralInLonLonHouse, EnTa_AnimRunToEnd);
        }
    }
}

void EnTa_IdleSittingInLonLonHouse(EnTa* this, PlayState* play) {
    u16 faceReaction = Text_GetFaceReaction(play, TALON_FACE_REACTION_SET);

    EnTa_SetTextForTalkInLonLonHouse(this, play);

    if (EnTa_TalkToPlayer(this, play, this->actor.textId)) {
        Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_SURPRISE);

        if (faceReaction != 0) {
            EnTa_SetActionFuncWithWakeUpAnimation(this, EnTa_TalkGeneralInLonLonHouse);
        } else {
            SET_INFTABLE(INFTABLE_TALKED_TO_TALON_IN_RANCH_HOUSE);

            switch (this->actor.textId) {
                case 0x207E: // "If it ain't the forest kid from the other day, play cucco game?"
                case 0x207F: // "Play cucco game?" (Initial question before chance to buy milk)
                    EnTa_SetActionFuncWithWakeUpAnimation(this, EnTa_WaitForPlayCuccoGameResponse);
                    break;
                case 0x208B: // "Play cucco-findin' game or buy milk?"
                    EnTa_SetActionFuncWithWakeUpAnimation(this, EnTa_WaitBuyMilkOrPlayCuccoGameResponse);
                    break;
                default:
                    EnTa_SetActionFuncWithWakeUpAnimation(this, EnTa_ContinueTalkInLonLonHouse);
                    break;
            }
        }
    }
    this->stateFlags &= ~TALON_STATE_FLAG_TRACKING_PLAYER;
}

void EnTa_IdleAfterCuccoGameFinished(EnTa* this, PlayState* play) {
    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        switch (this->actor.textId) {
            case 0x2085: // "Want to try again?" (cucco game)
                this->actionFunc = EnTa_WaitForPlayCuccoGameResponse;
                break;
            case 0x2086: // "Marry malon?"
                this->actionFunc = EnTa_WaitForMarryMalonResponse;
                break;
            case 0x2088: // "Why don't you come to work here, on this ranch"
                this->actionFunc = EnTa_TalkAfterCuccoGameWon;
                break;
        }
        // Disable immediate automatic talk
        this->actor.flags &= ~ACTOR_FLAG_16;
    } else {
        // Enable immediate automatic talk
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

        // If the eyes were already closed (nextEyeIndex >= 3),
        // set the eyes open and either set a new blink timer.
        // If just woken up (rapidBlinks > 0), blink a few times
        // in quick succession before starting the normal blink
        // cycle.
        if (nextEyeIndex >= 3) {
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

void EnTa_AnimLoopCurrent(EnTa* this) {
    if (SkelAnime_Update(&this->skelAnime)) {
        Animation_PlayOnce(&this->skelAnime, this->currentAnimation);
    }
}

void EnTa_AnimSleeping(EnTa* this) {
    if (SkelAnime_Update(&this->skelAnime)) {
        Animation_PlayOnce(&this->skelAnime, this->currentAnimation);
        Audio_PlayActorSfx2(&this->actor, NA_SE_VO_TA_SLEEP);
    }
    this->stateFlags |= TALON_STATE_FLAG_3 | TALON_STATE_FLAG_SUPPRESS_BLINK;
}

void EnTa_AnimSitSleeping(EnTa* this) {
    if (this->nodOffTimer > 0) {
        // Pause the sleep animation until the nodding timer is at zero.
        // The torso and arms will still bob around because of EnTa_OverrideLimbDraw
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
        this->stateFlags |= TALON_STATE_FLAG_3;
    }
    this->stateFlags |= TALON_STATE_FLAG_SUPPRESS_BLINK;
}

void EnTa_AnimRunToEnd(EnTa* this) {
    if (!(this->stateFlags & TALON_STATE_FLAG_ANIMATION_FINISHED)) {
        if (SkelAnime_Update(&this->skelAnime)) {
            this->stateFlags |= TALON_STATE_FLAG_ANIMATION_FINISHED;
        }
        this->stateFlags |= TALON_STATE_FLAG_3;
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
        Actor_TrackPlayer(play, &this->actor, &this->headRotStep, &this->torsoRot, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->headRotStep.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->headRotStep.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->torsoRot.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->torsoRot.y, 0, 6, 6200, 100);
    }

    this->stateFlags &= ~(TALON_STATE_FLAG_TRACKING_PLAYER | TALON_STATE_FLAG_SUPPRESS_BLINK);

    if (this->animTimer > 0) {
        this->animTimer--;
    }
}

s32 EnTa_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnTa* this = (EnTa*)thisx;

    // Turn head and chest towards the target (the rotation steps are
    // calculated in EnTa_Update)
    switch (limbIndex) {
        case ENTA_LIMB_CHEST:
            rot->x += this->torsoRot.y;
            rot->y -= this->torsoRot.x;
            break;
        case ENTA_LIMB_HEAD:
            rot->x += this->headRotStep.y;
            rot->z += this->headRotStep.x;
            break;
    }

    // Rocking/wobbling animation for the torso and arms
    if (this->stateFlags & TALON_STATE_FLAG_3) {
        // TALON_STATE_FLAG_3 might have been supposed to prevent
        // the rocking in some situations, (e.g. while sleeping).

        // But because this function is run first for the root limb (limbIndex 1),
        // and the flag is immediately unset, all subsequent calls end up
        // in the else if branch below and rocking always occurs.
        // So this flag has no effect?
        this->stateFlags &= ~TALON_STATE_FLAG_3;
    } else if ((limbIndex == ENTA_LIMB_CHEST) || (limbIndex == ENTA_LIMB_LEFT_ARM) ||
               (limbIndex == ENTA_LIMB_RIGHT_ARM)) {
        s32 limbIdx50 = limbIndex * 50;

        rot->y += Math_SinS(play->state.frames * (limbIdx50 + 0x814)) * 200.0f;
        rot->z += Math_CosS(play->state.frames * (limbIdx50 + 0x940)) * 200.0f;
    }

    return false;
}

void EnTa_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f headOffset = {
        1100.0f,
        1000.0f,
        0.0f,
    };
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
