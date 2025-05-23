/*
 * File: z_en_diving_game.c
 * Overlay: ovl_En_Diving_Game
 * Description: Diving minigame
 */

#include "z_en_diving_game.h"
#include "overlays/actors/ovl_En_Ex_Ruppy/z_en_ex_ruppy.h"
#include "assets/objects/object_zo/object_zo.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnDivingGame_Init(Actor* thisx, PlayState* play);
void EnDivingGame_Destroy(Actor* thisx, PlayState* play);
void EnDivingGame_Update(Actor* thisx, PlayState* play2);
void EnDivingGame_Draw(Actor* thisx, PlayState* play);

void func_809EDCB0(EnDivingGame* this, PlayState* play);
void EnDivingGame_Talk(EnDivingGame* this, PlayState* play);
void EnDivingGame_HandlePlayChoice(EnDivingGame* this, PlayState* play);
void func_809EE048(EnDivingGame* this, PlayState* play);
void func_809EE0FC(EnDivingGame* this, PlayState* play);
void func_809EE194(EnDivingGame* this, PlayState* play);
void EnDivingGame_SetupRupeeThrow(EnDivingGame* this, PlayState* play);
void EnDivingGame_RupeeThrow(EnDivingGame* this, PlayState* play);
void EnDivingGame_SetupUnderwaterViewCs(EnDivingGame* this, PlayState* play);
void func_809EE780(EnDivingGame* this, PlayState* play);
void func_809EE800(EnDivingGame* this, PlayState* play);
void func_809EE8F0(EnDivingGame* this, PlayState* play);
void func_809EE96C(EnDivingGame* this, PlayState* play);
void func_809EEA00(EnDivingGame* this, PlayState* play);
void func_809EEA90(EnDivingGame* this, PlayState* play);
void func_809EEAF8(EnDivingGame* this, PlayState* play);

ActorProfile En_Diving_Game_Profile = {
    /**/ ACTOR_EN_DIVING_GAME,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_ZO,
    /**/ sizeof(EnDivingGame),
    /**/ EnDivingGame_Init,
    /**/ EnDivingGame_Destroy,
    /**/ EnDivingGame_Update,
    /**/ EnDivingGame_Draw,
};

// used to ensure there's only one instance of this actor.
static u8 D_809EF0B0 = false;

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
        ATELEM_NONE | ATELEM_SFX_NORMAL,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 10, 10, 0, { 0, 0, 0 } },
};

static void* sEyeTextures[] = {
    gZoraEyeOpenTex,
    gZoraEyeHalfTex,
    gZoraEyeClosedTex,
};

void EnDivingGame_Init(Actor* thisx, PlayState* play) {
    EnDivingGame* this = (EnDivingGame*)thisx;

    this->actor.gravity = -3.0f;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gZoraSkel, &gZoraIdleAnim, this->jointTable, this->morphTable, 20);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 素もぐりＧＯ ☆☆☆☆☆ \n" VT_RST);
    this->actor.room = -1;
    this->actor.scale.x = 0.01f;
    this->actor.scale.y = 0.012999999f;
    this->actor.scale.z = 0.0139999995f;
    if (D_809EF0B0) {
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ もういてる原 ☆☆☆☆☆ \n" VT_RST);
        this->unk_31F = 1;
        Actor_Kill(&this->actor);
    } else {
        D_809EF0B0 = true;
        this->actor.attentionRangeType = ATTENTION_RANGE_0;
        this->actor.colChkInfo.mass = MASS_IMMOVABLE;
        this->actionFunc = func_809EDCB0;
    }
}

void EnDivingGame_Destroy(Actor* thisx, PlayState* play) {
    EnDivingGame* this = (EnDivingGame*)thisx;

    if (this->unk_31F == 0) {
        gSaveContext.timerState = TIMER_STATE_OFF;
    }
    Collider_DestroyCylinder(play, &this->collider);
}

void EnDivingGame_SpawnRuppy(EnDivingGame* this, PlayState* play) {
    EnExRuppy* rupee;
    Vec3f rupeePos;

    rupeePos.x = (Rand_ZeroOne() - 0.5f) * 30.0f + this->actor.world.pos.x;
    rupeePos.y = (Rand_ZeroOne() - 0.5f) * 20.0f + (this->actor.world.pos.y + 30.0f);
    rupeePos.z = (Rand_ZeroOne() - 0.5f) * 20.0f + this->actor.world.pos.z;
    rupee = (EnExRuppy*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_EX_RUPPY, rupeePos.x,
                                           rupeePos.y, rupeePos.z, 0, (s16)Rand_CenteredFloat(3500.0f) - 1000,
                                           this->rupeesLeftToThrow, 0);
    if (rupee != NULL) {
        rupee->actor.speed = 12.0f;
        rupee->actor.velocity.y = 6.0f;
    }
}

s32 EnDivingGame_HasMinigameFinished(EnDivingGame* this, PlayState* play) {
    s32 rupeesNeeded;

    if ((gSaveContext.timerState == TIMER_STATE_STOP) && !Play_InCsMode(play)) {
        // Failed.
        gSaveContext.timerState = TIMER_STATE_OFF;
        func_800F5B58();
        Sfx_PlaySfxCentered(NA_SE_SY_FOUND);
        this->actor.textId = 0x71AD;
        Message_StartTextbox(play, this->actor.textId, NULL);
        this->unk_292 = TEXT_STATE_EVENT;
        this->allRupeesThrown = this->state = this->phase = this->unk_2A2 = this->grabbedRupeesCounter = 0;
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
        this->actionFunc = func_809EE048;
        return true;
    } else {
        rupeesNeeded = 5;

        if (GET_EVENTCHKINF(EVENTCHKINF_38)) {
            rupeesNeeded = 10;
        }
        if (this->grabbedRupeesCounter >= rupeesNeeded) {
            // Won.
            gSaveContext.timerState = TIMER_STATE_OFF;
            this->allRupeesThrown = this->state = this->phase = this->unk_2A2 = this->grabbedRupeesCounter = 0;
            if (!GET_EVENTCHKINF(EVENTCHKINF_38)) {
                this->actor.textId = 0x4055;
            } else {
                this->actor.textId = 0x405D;
                if (this->extraWinCount < 100) {
                    this->extraWinCount++;
                }
            }
            Message_StartTextbox(play, this->actor.textId, NULL);
            this->unk_292 = TEXT_STATE_EVENT;
            func_800F5B58();
            Audio_PlayFanfare(NA_BGM_SMALL_ITEM_GET);
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            if (!GET_EVENTCHKINF(EVENTCHKINF_38)) {
                this->actionFunc = func_809EE96C;
            } else {
                this->actionFunc = func_809EE048;
            }
            return true;
        }
    }
    return false;
}

// EnDivingGame_FinishMinigame ? // Reset probably
void func_809EDCB0(EnDivingGame* this, PlayState* play) {
    f32 frameCount = Animation_GetLastFrame(&gZoraIdleAnim);

    Animation_Change(&this->skelAnime, &gZoraIdleAnim, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    this->notPlayingMinigame = true;
    this->actionFunc = EnDivingGame_Talk;
}

void EnDivingGame_Talk(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->state != ENDIVINGGAME_STATE_PLAYING || !EnDivingGame_HasMinigameFinished(this, play)) {
        if (Actor_TalkOfferAccepted(&this->actor, play)) {
            if (this->unk_292 != TEXT_STATE_DONE) {
                switch (this->state) {
                    case ENDIVINGGAME_STATE_NOTPLAYING:
                        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
                        this->actionFunc = EnDivingGame_HandlePlayChoice;
                        break;
                    case ENDIVINGGAME_STATE_AWARDPRIZE:
                        this->actionFunc = func_809EEA00;
                        break;
                    case ENDIVINGGAME_STATE_PLAYING:
                        this->actionFunc = func_809EE8F0;
                        break;
                }
            }
        } else {
            if (MaskReaction_GetTextId(play, MASK_REACTION_SET_ZORA) != 0) {
                this->actor.textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_ZORA);
                this->unk_292 = TEXT_STATE_DONE;
            } else {
                switch (this->state) {
                    case ENDIVINGGAME_STATE_NOTPLAYING:
                        this->unk_292 = TEXT_STATE_CHOICE;
                        if (!GET_EVENTCHKINF(EVENTCHKINF_38)) {
                            this->actor.textId = 0x4053;
                            this->phase = ENDIVINGGAME_PHASE_1;
                        } else {
                            this->actor.textId = 0x405C;
                            this->phase = ENDIVINGGAME_PHASE_2;
                        }
                        break;
                    case ENDIVINGGAME_STATE_AWARDPRIZE:
                        this->actor.textId = 0x4056;
                        this->unk_292 = TEXT_STATE_EVENT;
                        break;
                    case ENDIVINGGAME_STATE_PLAYING:
                        this->actor.textId = 0x405B;
                        this->unk_292 = TEXT_STATE_EVENT;
                        break;
                }
            }
            Actor_OfferTalk(&this->actor, play, 80.0f);
        }
    }
}

void EnDivingGame_HandlePlayChoice(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_292 == Message_GetState(&play->msgCtx) &&
        Message_ShouldAdvance(play)) { // Did the player select an answer?
        switch (play->msgCtx.choiceIndex) {
            case 0: // Yes
                if (gSaveContext.save.info.playerData.rupees >= 20) {
                    Rupees_ChangeBy(-20);
                    this->actor.textId = 0x4054;
                } else {
                    this->actor.textId = 0x85;
                    this->allRupeesThrown = this->state = this->phase = this->unk_2A2 = this->grabbedRupeesCounter = 0;
                }
                break;
            case 1: // No
                this->actor.textId = 0x2D;
                this->allRupeesThrown = this->state = this->phase = this->unk_2A2 = this->grabbedRupeesCounter = 0;
                break;
        }
        if (!GET_EVENTCHKINF(EVENTCHKINF_38) || this->actor.textId == 0x85 || this->actor.textId == 0x2D) {
            Message_ContinueTextbox(play, this->actor.textId);
            this->unk_292 = TEXT_STATE_EVENT;
            this->actionFunc = func_809EE048;
        } else {
            play->msgCtx.msgMode = MSGMODE_PAUSED;
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            this->actionFunc = func_809EE0FC;
        }
    }
}

// Waits for the message to close
void func_809EE048(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_292 == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play)) {
        if (this->phase == ENDIVINGGAME_PHASE_ENDED) {
            Message_CloseTextbox(play);
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
            this->actionFunc = func_809EDCB0;
        } else {
            play->msgCtx.msgMode = MSGMODE_PAUSED;
            Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
            this->actionFunc = func_809EE0FC;
        }
    }
}

// another "start minigame" step
void func_809EE0FC(EnDivingGame* this, PlayState* play) {
    f32 frameCount = Animation_GetLastFrame(&gZoraThrowRupeesAnim);

    Animation_Change(&this->skelAnime, &gZoraThrowRupeesAnim, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_ONCE, -10.0f);
    this->notPlayingMinigame = false;
    this->actionFunc = func_809EE194;
}

// Wait a bit before start throwing the rupees.
void func_809EE194(EnDivingGame* this, PlayState* play) {
    f32 currentFrame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);
    if (currentFrame >= 15.0f) {
        this->actionFunc = EnDivingGame_SetupRupeeThrow;
    }
}

void EnDivingGame_SetupRupeeThrow(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    this->subCamId = Play_CreateSubCamera(play);
    Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
    Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
    this->spawnRuppyTimer = 10;
    this->subCamAtNext.x = -210.0f;
    this->subCamAtNext.y = -80.0f;
    this->subCamAtNext.z = -1020.0f;
    this->subCamEyeNext.x = -280.0f;
    this->subCamEyeNext.y = -20.0f;
    this->subCamEyeNext.z = -240.0f;
    if (!GET_EVENTCHKINF(EVENTCHKINF_38)) {
        this->rupeesLeftToThrow = 5;
    } else {
        this->rupeesLeftToThrow = 10;
    }
    this->subCamEyeMaxVelFrac.x = this->subCamEyeMaxVelFrac.y = this->subCamEyeMaxVelFrac.z =
        this->subCamAtMaxVelFrac.x = this->subCamAtMaxVelFrac.y = this->subCamAtMaxVelFrac.z = 0.1f;
    this->subCamAt.x = play->view.at.x;
    this->subCamAt.y = play->view.at.y;
    this->subCamAt.z = play->view.at.z;
    this->subCamEye.x = play->view.eye.x;
    this->subCamEye.y = play->view.eye.y + 80.0f;
    this->subCamEye.z = play->view.eye.z + 250.0f;
    this->subCamEyeVel.x = fabsf(this->subCamEye.x - this->subCamEyeNext.x) * 0.04f;
    this->subCamEyeVel.y = fabsf(this->subCamEye.y - this->subCamEyeNext.y) * 0.04f;
    this->subCamEyeVel.z = fabsf(this->subCamEye.z - this->subCamEyeNext.z) * 0.04f;
    this->subCamAtVel.x = fabsf(this->subCamAt.x - this->subCamAtNext.x) * 0.04f;
    this->subCamAtVel.y = fabsf(this->subCamAt.y - this->subCamAtNext.y) * 0.04f;
    this->subCamAtVel.z = fabsf(this->subCamAt.z - this->subCamAtNext.z) * 0.04f;
    Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
    Play_SetCameraFov(play, this->subCamId, play->mainCamera.fov);
    this->subCamTimer = 60;
    this->actionFunc = EnDivingGame_RupeeThrow;
    this->subCamVelFactor = 0.0f;
}

// Throws rupee when this->spawnRuppyTimer == 0
void EnDivingGame_RupeeThrow(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (func_800C0DB4(play, &this->actor.projectedPos)) {
        Audio_SetExtraFilter(0);
    }
    if (this->subCamId != SUB_CAM_ID_DONE) {
        Math_ApproachF(&this->subCamEye.x, this->subCamEyeNext.x, this->subCamEyeMaxVelFrac.x,
                       this->subCamEyeVel.x * this->subCamVelFactor);
        Math_ApproachF(&this->subCamEye.z, this->subCamEyeNext.z, this->subCamEyeMaxVelFrac.z,
                       this->subCamEyeVel.z * this->subCamVelFactor);
        Math_ApproachF(&this->subCamAt.x, this->subCamAtNext.x, this->subCamAtMaxVelFrac.x,
                       this->subCamAtVel.x * this->subCamVelFactor);
        Math_ApproachF(&this->subCamAt.y, this->subCamAtNext.y, this->subCamAtMaxVelFrac.y,
                       this->subCamAtVel.y * this->subCamVelFactor);
        Math_ApproachF(&this->subCamAt.z, this->subCamAtNext.z, this->subCamAtMaxVelFrac.z,
                       this->subCamAtVel.z * this->subCamVelFactor);
        Math_ApproachF(&this->subCamVelFactor, 1.0f, 1.0f, 0.02f);
    }
    Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
    if (!this->allRupeesThrown && this->spawnRuppyTimer == 0) {
        this->spawnRuppyTimer = 5;
        EnDivingGame_SpawnRuppy(this, play);
        this->rupeesLeftToThrow--;
        if (!GET_EVENTCHKINF(EVENTCHKINF_38)) {
            this->unk_296 = 30;
        } else {
            this->unk_296 = 5;
        }
        if (this->rupeesLeftToThrow <= 0) {
            this->rupeesLeftToThrow = 0;
            this->allRupeesThrown = true;
        }
    }
    if (this->subCamTimer == 0 || ((fabsf(this->subCamEye.x - this->subCamEyeNext.x) < 2.0f) &&
                                   (fabsf(this->subCamEye.y - this->subCamEyeNext.y) < 2.0f) &&
                                   (fabsf(this->subCamEye.z - this->subCamEyeNext.z) < 2.0f) &&
                                   (fabsf(this->subCamAt.x - this->subCamAtNext.x) < 2.0f) &&
                                   (fabsf(this->subCamAt.y - this->subCamAtNext.y) < 2.0f) &&
                                   (fabsf(this->subCamAt.z - this->subCamAtNext.z) < 2.0f))) {
        if (this->unk_2A2 != 0) {
            this->subCamTimer = 70;
            this->unk_2A2 = 2;
            this->actionFunc = func_809EE780;
        } else {
            this->actionFunc = EnDivingGame_SetupUnderwaterViewCs;
        }
    }
}

// Called just before changing the camera to focus the underwater rupees.
void EnDivingGame_SetupUnderwaterViewCs(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_296 == 0) {
        this->unk_2A2 = 1;
        this->subCamTimer = 100;
        this->actionFunc = EnDivingGame_RupeeThrow;
        this->subCamAt.x = this->subCamAtNext.x = -210.0f;
        this->subCamAt.y = this->subCamAtNext.y = -80.0f;
        this->subCamAt.z = this->subCamAtNext.z = -1020.0f;
        this->subCamEye.x = this->subCamEyeNext.x = -280.0f;
        this->subCamEye.y = this->subCamEyeNext.y = -20.0f;
        this->subCamEye.z = this->subCamEyeNext.z = -240.0f;
    }
}

// EnDivingGame_SayStartAndWait ?
void func_809EE780(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->subCamTimer == 0) {
        Play_ClearCamera(play, this->subCamId);
        Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_ACTIVE);
        this->actor.textId = 0x405A;
        Message_ContinueTextbox(play, this->actor.textId);
        this->unk_292 = TEXT_STATE_EVENT;
        this->actionFunc = func_809EE800;
    }
}

// EnDivingGame_TalkDuringMinigame
void func_809EE800(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_292 == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        if (!GET_EVENTCHKINF(EVENTCHKINF_38)) {
            Interface_SetTimer(50 + BREG(2));
        } else {
            Interface_SetTimer(50 + BREG(2));
        }
        func_800F5ACC(NA_BGM_TIMED_MINI_GAME);
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
        this->actor.textId = 0x405B;
        this->unk_292 = TEXT_STATE_EVENT;
        this->state = ENDIVINGGAME_STATE_PLAYING;
        this->actionFunc = EnDivingGame_Talk;
    }
}

void func_809EE8F0(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk_292 == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play))) {
        Message_CloseTextbox(play);
        this->actionFunc = EnDivingGame_Talk;
    } else {
        EnDivingGame_HasMinigameFinished(this, play);
    }
}

// EnDivingGame_SayCongratsAndWait ? // EnDivingGame_PlayerWonPhase1
void func_809EE96C(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk_292 == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play))) {
        Message_CloseTextbox(play);
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
        this->actor.textId = 0x4056;
        this->unk_292 = TEXT_STATE_EVENT;
        this->state = ENDIVINGGAME_STATE_AWARDPRIZE;
        this->actionFunc = EnDivingGame_Talk;
    }
}

void func_809EEA00(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((this->unk_292 == Message_GetState(&play->msgCtx) && Message_ShouldAdvance(play))) {
        Message_CloseTextbox(play);
        this->actor.parent = NULL;
        Actor_OfferGetItem(&this->actor, play, GI_SCALE_SILVER, 90.0f, 10.0f);
        this->actionFunc = func_809EEA90;
    }
}

void func_809EEA90(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Actor_HasParent(&this->actor, play)) {
        this->actionFunc = func_809EEAF8;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_SCALE_SILVER, 90.0f, 10.0f);
    }
}

// Award the scale?
void func_809EEAF8(EnDivingGame* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_DONE && Message_ShouldAdvance(play)) {
        // "Successful completion"
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n" VT_RST);
        this->allRupeesThrown = this->state = this->phase = this->unk_2A2 = this->grabbedRupeesCounter = 0;
        SET_EVENTCHKINF(EVENTCHKINF_38);
        this->actionFunc = func_809EDCB0;
    }
}

void EnDivingGame_Update(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnDivingGame* this = (EnDivingGame*)thisx;
    Player* player = GET_PLAYER(play);
    Vec3f pos;

    if (this->subCamTimer != 0) {
        this->subCamTimer--;
    }
    if (this->unk_296 != 0) {
        this->unk_296--;
    }
    if (this->eyeTimer != 0) {
        this->eyeTimer--;
    }
    if (this->spawnRuppyTimer != 0) {
        this->spawnRuppyTimer--;
    }

    if (1) {}

    if (gSaveContext.timerSeconds == 10) {
        Audio_SetFastTempoForTimedMinigame();
    }

    if (this->eyeTimer == 0) {
        this->eyeTimer = 2;
        this->eyeTexIndex++;
        if (this->eyeTexIndex >= 3) {
            this->eyeTexIndex = 0;
            this->eyeTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->actionFunc(this, play);
    Actor_SetFocus(&this->actor, 80.0f);
    this->interactInfo.trackPos = player->actor.world.pos;
    this->interactInfo.trackPos.y = player->actor.world.pos.y;
    Npc_TrackPoint(&this->actor, &this->interactInfo, 2, NPC_TRACKING_FULL_BODY);
    this->headRot = this->interactInfo.headRot;
    this->torsoRot = this->interactInfo.torsoRot;
    if ((play->gameplayFrames % 16) == 0) {
        pos = this->actor.world.pos;
        pos.y += 20.0f;
        EffectSsGRipple_Spawn(play, &pos, 100, 500, 30);
    }
    this->unk_290++;
    Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 60.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

Gfx* EnDivingGame_EmptyDList(GraphicsContext* gfxCtx) {
    Gfx* displayList = GRAPH_ALLOC(gfxCtx, sizeof(Gfx));

    gSPEndDisplayList(displayList);
    return displayList;
}

s32 EnDivingGame_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnDivingGame* this = (EnDivingGame*)thisx;
    s32 pad;

    if (limbIndex == 6) {
        rot->x += this->torsoRot.y;
    }

    if (limbIndex == 15) {
        rot->x += this->headRot.y;
        rot->z += this->headRot.z;
    }

    if (this->notPlayingMinigame && (limbIndex == 8 || limbIndex == 9 || limbIndex == 12)) {
        rot->y += Math_SinS((play->state.frames * (limbIndex * FIDGET_FREQ_LIMB + FIDGET_FREQ_Y))) * FIDGET_AMPLITUDE;
        rot->z += Math_CosS((play->state.frames * (limbIndex * FIDGET_FREQ_LIMB + FIDGET_FREQ_Z))) * FIDGET_AMPLITUDE;
    }

    return 0;
}

void EnDivingGame_Draw(Actor* thisx, PlayState* play) {
    EnDivingGame* this = (EnDivingGame*)thisx;
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_diving_game.c", 1212);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPSegment(POLY_OPA_DISP++, 0x0C, EnDivingGame_EmptyDList(play->state.gfxCtx));
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnDivingGame_OverrideLimbDraw, NULL, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_diving_game.c", 1232);
}
