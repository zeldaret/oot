/*
 * File: z_en_horse_game_check.c
 * Overlay: ovl_En_Horse_Game_Check
 * Description: Horseback Minigames
 */

#include "z_en_horse_game_check.h"
#include "overlays/actors/ovl_En_Horse/z_en_horse.h"
#include "line_numbers.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

#define AT_FINISH_LINE(actor)                                                                                     \
    (Math3D_PointInSquare2D(sFinishLine[0], sFinishLine[1], sFinishLine[2], sFinishLine[3], (actor)->world.pos.x, \
                            (actor)->world.pos.z))
#define AT_RANCH_EXIT(actor)                                                                                  \
    (Math3D_PointInSquare2D(sRanchExit[0], sRanchExit[1], sRanchExit[2], sRanchExit[3], (actor)->world.pos.x, \
                            (actor)->world.pos.z))

#define INGO_RACE_PLAYER_MOVE (1 << 0)
#define INGO_RACE_SET_TIMER (1 << 1)
#define INGO_RACE_INGO_MOVE (1 << 2)

typedef enum HorseGameIngoRaceResult {
    /* 0 */ INGO_RACE_NO_RESULT,
    /* 1 */ INGO_RACE_PLAYER_WIN,
    /* 2 */ INGO_RACE_INGO_WIN,
    /* 3 */ INGO_RACE_TIME_UP
} HorseGameIngoRaceResult;

#define MALONRACE_PLAYER_MOVE (1 << 0)
#define MALONRACE_SET_TIMER (1 << 1)
#define MALONRACE_SECOND_LAP (1 << 2)
#define MALONRACE_BROKE_RULE (1 << 3)
#define MALONRACE_START_SFX (1 << 4)
#define MALONRACE_PLAYER_START (1 << 5)
#define MALONRACE_PLAYER_ON_MARK (1 << 6)

typedef enum HorseGameMalonRaceResult {
    /* 0 */ MALONRACE_NO_RESULT,
    /* 1 */ MALONRACE_SUCCESS,
    /* 2 */ MALONRACE_TIME_UP,
    /* 3 */ MALONRACE_UNUSED,
    /* 4 */ MALONRACE_FAILURE
} HorseGameMalonRaceResult;

void EnHorseGameCheck_Init(Actor* thisx, PlayState* play);
void EnHorseGameCheck_Destroy(Actor* thisx, PlayState* play);
void EnHorseGameCheck_Update(Actor* thisx, PlayState* play);
void EnHorseGameCheck_Draw(Actor* thisx, PlayState* play);

ActorProfile En_Horse_Game_Check_Profile = {
    /**/ ACTOR_EN_HORSE_GAME_CHECK,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnHorseGameCheck),
    /**/ EnHorseGameCheck_Init,
    /**/ EnHorseGameCheck_Destroy,
    /**/ EnHorseGameCheck_Update,
    /**/ EnHorseGameCheck_Draw,
};

static Vec3f sIngoRaceCheckpoints[] = {
    { 1700.0f, 1.0f, -540.0f },
    { 117.0f, 1.0f, 488.0f },
    { -1700.0f, 1.0f, -540.0f },
};

static f32 sFinishLine[4] = { -200.0f, 80.0f, -2300.0f, -1470.0f };

static f32 sRanchExit[4] = { 800.0f, 1000.0f, -2900.0f, -2700.0f };

static Vec3f sUnusedZeroVec = { 0.0f, 0.0f, 0.0f };

static Vec3f sFencePos[] = {
    { 820.0f, -44.0f, -1655.0f }, { 1497.0f, -21.0f, -1198.0f },  { 1655.0f, -44.0f, -396.0f },
    { 1291.0f, -44.0f, 205.0f },  { 379.0f, -21.0f, 455.0f },     { -95.0f, -21.0f, 455.0f },
    { -939.0f, 1.0f, 455.0f },    { -1644.0f, -21.0f, -1035.0f },
};

s32 EnHorseGameCheck_InitIngoRace(EnHorseGameCheckBase* base, PlayState* play) {
    EnHorseGameCheckIngoRace* this = (EnHorseGameCheckIngoRace*)base;
    s32 i;

    this->base.type = HORSEGAME_INGO_RACE;
    this->startFlags = 0;
    for (i = 0; i < 3; i++) {
        this->playerCheck[i] = 0;
    }
    this->ingoHorse = Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HORSE, -250.0f, 1.0f, -1650.0f, 0, 0x4000, 0, 0x8003);

    if (this->ingoHorse == NULL) {
        LogUtils_HungupThread("../z_en_horse_game_check.c", LN1(382, 385));
    }

    this->startTimer = 0;
    this->finishTimer = 0;
    this->result = INGO_RACE_NO_RESULT;
    this->playerFinish = 0;
    this->ingoFinish = 0;

    return true;
}

s32 EnHorseGameCheck_DestroyIngoRace(EnHorseGameCheckBase* base, PlayState* play) {
    return true;
}

void EnHorseGameCheck_FinishIngoRace(EnHorseGameCheckIngoRace* this, PlayState* play) {
    gSaveContext.save.cutsceneIndex = 0;
    if (this->result == INGO_RACE_PLAYER_WIN) {
        play->nextEntranceIndex = ENTR_LON_LON_RANCH_7;
        if (GET_EVENTINF(EVENTINF_INGO_RACE_SECOND_RACE)) {
            SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_TRAPPED_WIN_EPONA);
            WRITE_EVENTINF_INGO_RACE_0F(1);
            play->transitionType = TRANS_TYPE_FADE_WHITE;
            Environment_ForcePlaySequence(NA_BGM_INGO);
        } else {
            SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_FIRST_WIN);
            WRITE_EVENTINF_INGO_RACE_0F(1);
            Environment_ForcePlaySequence(NA_BGM_INGO);
            play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_WHITE, TCS_FAST);
        }
    } else {
        play->nextEntranceIndex = ENTR_LON_LON_RANCH_8;
        SET_EVENTINF_INGO_RACE_STATE(INGO_RACE_STATE_PLAYER_LOSE);
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_NORMAL, TCC_BLACK, TCS_FAST);
        WRITE_EVENTINF_INGO_RACE_0F(1);
    }
    DREG(25) = 0;
    play->transitionTrigger = TRANS_TRIGGER_START;
    gSaveContext.timerState = TIMER_STATE_OFF;
}

s32 EnHorseGameCheck_UpdateIngoRace(EnHorseGameCheckBase* base, PlayState* play) {
    EnHorseGameCheckIngoRace* this = (EnHorseGameCheckIngoRace*)base;
    Player* player = GET_PLAYER(play);
    s32 i;
    EnHorse* ingoHorse;
    Player* player2 = player;

    if ((this->startTimer > 50) && !(this->startFlags & INGO_RACE_SET_TIMER)) {
        this->startFlags |= INGO_RACE_SET_TIMER;
        Interface_SetTimer(0);
    } else if ((this->startTimer > 80) && (player->rideActor != NULL) && !(this->startFlags & INGO_RACE_PLAYER_MOVE)) {
        EnHorse* horse;

        this->startFlags |= INGO_RACE_PLAYER_MOVE;
        horse = (EnHorse*)player->rideActor;
        horse->inRace = 1;
    } else if ((this->startTimer > 81) && !(this->startFlags & INGO_RACE_INGO_MOVE)) {
        ingoHorse = (EnHorse*)this->ingoHorse;

        ingoHorse->inRace = 1;
        this->startFlags |= INGO_RACE_INGO_MOVE;
        Audio_PlaySfxGeneral(NA_SE_SY_START_SHOT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }

    this->startTimer++;

    for (i = 0; i < 3; i++) {
        if ((player->rideActor != NULL) &&
            (Math3D_Vec3f_DistXYZ(&sIngoRaceCheckpoints[i], &player->rideActor->world.pos) < 400.0f)) {
            if ((i > 0) && (this->playerCheck[i - 1] == 1)) {
                this->playerCheck[i] = 1;
            } else if (i == 0) {
                this->playerCheck[i] = 1;
            }
        }
        if (Math3D_Vec3f_DistXYZ(&sIngoRaceCheckpoints[i], &this->ingoHorse->world.pos) < 400.0f) {
            if ((i > 0) && (this->ingoCheck[i - 1] == 1)) {
                this->ingoCheck[i] = 1;
            } else if (i == 0) {
                this->ingoCheck[i] = 1;
            }
        }
    }

    if (this->result == INGO_RACE_NO_RESULT) {
        if ((player2->rideActor != NULL) && (this->playerCheck[2] == 1) && AT_FINISH_LINE(player2->rideActor)) {
            this->playerFinish++;
            if (this->playerFinish > 0) {
                this->result = INGO_RACE_PLAYER_WIN;
                this->finishTimer = 55;
                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_HORSE_GOAL);
                Audio_PlaySfxGeneral(NA_SE_SY_START_SHOT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
            for (i = 0; i < 3; i++) {
                this->playerCheck[i] = 0;
            }
        }
        if ((this->ingoHorse != NULL) && (this->ingoCheck[2] == 1) && AT_FINISH_LINE(this->ingoHorse)) {
            this->ingoFinish++;
            if (this->ingoFinish > 0) {
                ingoHorse = (EnHorse*)this->ingoHorse;

                this->result = INGO_RACE_INGO_WIN;
                this->finishTimer = 70;
                ingoHorse->stateFlags |= ENHORSE_INGO_WON;
                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_HORSE_GOAL);
                Audio_PlaySfxGeneral(NA_SE_SY_START_SHOT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
            for (i = 0; i < 3; i++) {
                this->ingoCheck[i] = 0;
            }
        }
        if (((player2->rideActor != NULL) && AT_RANCH_EXIT(player2->rideActor)) || AT_RANCH_EXIT(&player2->actor)) {
            SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_HORSE_GOAL);
            this->result = INGO_RACE_INGO_WIN;
            this->finishTimer = 20;
        }
        if ((gSaveContext.timerSeconds >= 180) && (this->startFlags & 2)) {
            SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_HORSE_GOAL);
            this->result = INGO_RACE_TIME_UP;
            this->finishTimer = 20;
        }
    } else {
        if (this->finishTimer > 0) {
            this->finishTimer--;
        } else {
            EnHorseGameCheck_FinishIngoRace(this, play);
        }
    }
    return true;
}

s32 EnHorseGameCheck_InitGerudoArchery(EnHorseGameCheckBase* base, PlayState* play) {
    EnHorseGameCheckGerudoArchery* this = (EnHorseGameCheckGerudoArchery*)base;

    this->base.type = HORSEGAME_GERUDO_ARCHERY;
    this->unk_150 = 0;
    this->startTimer = 0;
    return true;
}

s32 EnHorseGameCheck_DestroyGerudoArchery(EnHorseGameCheckBase* base, PlayState* play) {
    return true;
}

s32 EnHorseGameCheck_UpdateGerudoArchery(EnHorseGameCheckBase* base, PlayState* play) {
    EnHorseGameCheckGerudoArchery* this = (EnHorseGameCheckGerudoArchery*)base;
    Player* player = GET_PLAYER(play);
    EnHorse* horse = (EnHorse*)player->rideActor;

    if (horse == NULL) {
        return true;
    }

    if (this->startTimer > 90) {
        if (play) {}
        horse->hbaStarted = 1;
    }
    this->startTimer++;
    return true;
}

s32 EnHorseGameCheck_InitType3(EnHorseGameCheckBase* base, PlayState* play) {
    EnHorseGameCheck3* this = (EnHorseGameCheck3*)base;

    this->base.type = HORSEGAME_TYPE3;
    this->unk_150 = 0;
    return true;
}

s32 EnHorseGameCheck_DestroyType3(EnHorseGameCheckBase* base, PlayState* play) {
    return true;
}

s32 EnHorseGameCheck_UpdateType3(EnHorseGameCheckBase* base, PlayState* play) {
    return true;
}

s32 EnHorseGameCheck_InitMalonRace(EnHorseGameCheckBase* base, PlayState* play) {
    EnHorseGameCheckMalonRace* this = (EnHorseGameCheckMalonRace*)base;
    s32 i;

    this->base.type = HORSEGAME_MALON_RACE;
    this->raceFlags = 0;
    this->finishTimer = 0;
    this->result = MALONRACE_NO_RESULT;
    for (i = 0; i < 16; i++) {
        this->fenceCheck[i] = 0;
    }
    this->lapCount = 0;
    return true;
}

s32 EnHorseGameCheck_DestroyMalonRace(EnHorseGameCheckBase* base, PlayState* play) {
    return true;
}

void EnHorseGameCheck_FinishMalonRace(EnHorseGameCheckMalonRace* this, PlayState* play) {
    if ((this->result == MALONRACE_SUCCESS) || (this->result == MALONRACE_TIME_UP)) {
        gSaveContext.save.cutsceneIndex = 0;
        play->nextEntranceIndex = ENTR_LON_LON_RANCH_7;
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_WHITE, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    } else if (this->result == MALONRACE_FAILURE) {
        gSaveContext.timerSeconds = 240;
        gSaveContext.timerState = TIMER_STATE_UP_FREEZE;
        gSaveContext.save.cutsceneIndex = 0;
        play->nextEntranceIndex = ENTR_LON_LON_RANCH_7;
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_WHITE, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    } else {
        // "not supported"
        PRINTF("En_HGC_Spot20_Ta_end():対応せず\n");
        gSaveContext.save.cutsceneIndex = 0;
        play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_WHITE, TCS_FAST);
        play->transitionTrigger = TRANS_TRIGGER_START;
    }
}

s32 EnHorseGameCheck_UpdateMalonRace(EnHorseGameCheckBase* base, PlayState* play) {
    EnHorseGameCheckMalonRace* this = (EnHorseGameCheckMalonRace*)base;
    s32 i;
    Player* player = GET_PLAYER(play);
    EnHorse* horse;
    Player* player2 = player;
    f32 dist;

    if (!(this->raceFlags & MALONRACE_PLAYER_ON_MARK) && AT_FINISH_LINE(player->rideActor)) {
        this->raceFlags |= MALONRACE_PLAYER_ON_MARK;
    } else if ((this->raceFlags & MALONRACE_PLAYER_ON_MARK) && !(this->raceFlags & MALONRACE_PLAYER_START) &&
               !AT_FINISH_LINE(player->rideActor)) {
        this->raceFlags |= MALONRACE_PLAYER_START;
    }
    if ((this->startTimer > 50) && !(this->raceFlags & MALONRACE_SET_TIMER)) {
        this->raceFlags |= MALONRACE_SET_TIMER;
        Interface_SetTimer(0);
    } else if ((this->startTimer > 80) && (player->rideActor != NULL) && !(this->raceFlags & MALONRACE_PLAYER_MOVE)) {
        EnHorse* rideHorse;

        this->raceFlags |= MALONRACE_PLAYER_MOVE;
        rideHorse = (EnHorse*)player->rideActor;

        rideHorse->inRace = 1;
    } else if ((this->startTimer > 81) && !(this->raceFlags & MALONRACE_START_SFX)) {
        this->raceFlags |= MALONRACE_START_SFX;
        Audio_PlaySfxGeneral(NA_SE_SY_START_SHOT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }

    this->startTimer++;
    if (this->result == MALONRACE_NO_RESULT) {
        for (i = 0; i < 16; i++) {
            if ((this->lapCount == 0) && (i >= 8)) {
                break;
            }
            dist = Math_Vec3f_DistXZ(&sFencePos[i % 8], &player2->rideActor->world.pos);
            if ((player->rideActor != NULL) && (dist < 250.0f)) {
                horse = (EnHorse*)player2->rideActor;

                if (horse->stateFlags & ENHORSE_JUMPING) {
                    if ((i > 0) && (this->fenceCheck[i - 1] == 1)) {
                        this->fenceCheck[i] = 1;
                    } else if (i == 0) {
                        this->fenceCheck[i] = 1;
                    }

                    if ((this->fenceCheck[i - 1] == 0) && !(this->raceFlags & MALONRACE_BROKE_RULE)) {
                        this->raceFlags |= MALONRACE_BROKE_RULE;
                        Message_StartTextbox(play, 0x208C, NULL);
                        this->result = 4;
                        this->finishTimer = 30;
                    }
                }
            }
        }
        if ((player2->rideActor != NULL) && (this->raceFlags & MALONRACE_PLAYER_START) &&
            AT_FINISH_LINE(player2->rideActor)) {
            if ((this->lapCount == 1) && (this->fenceCheck[15] == 0) && (player2->rideActor->prevPos.x < -200.0f)) {
                this->raceFlags |= MALONRACE_BROKE_RULE;
                Message_StartTextbox(play, 0x208C, NULL);
                this->result = MALONRACE_FAILURE;
                this->finishTimer = 30;
            } else if (this->fenceCheck[15] == 1) {
                this->lapCount = 2;
                SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_HORSE_GOAL);
                Audio_PlaySfxGeneral(NA_SE_SY_START_SHOT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->result = MALONRACE_SUCCESS;
                this->finishTimer = 70;
                gSaveContext.timerState = TIMER_STATE_UP_FREEZE;
            } else if ((this->fenceCheck[7] == 1) && !(this->raceFlags & MALONRACE_SECOND_LAP)) {
                this->lapCount = 1;
                this->raceFlags |= MALONRACE_SECOND_LAP;
                Message_StartTextbox(play, 0x208D, NULL);
            } else if (this->fenceCheck[7] == 0) {
                this->raceFlags |= MALONRACE_BROKE_RULE;
                Message_StartTextbox(play, 0x208C, NULL);
                this->result = MALONRACE_FAILURE;
                this->finishTimer = 30;
            } else if (player2->rideActor->prevPos.x > 80.0f) {
                this->raceFlags |= MALONRACE_BROKE_RULE;
                Message_StartTextbox(play, 0x208C, NULL);
                this->result = MALONRACE_FAILURE;
                this->finishTimer = 30;
            }
        }
        if ((gSaveContext.timerSeconds >= 180) && (this->raceFlags & MALONRACE_SET_TIMER)) {
            gSaveContext.timerSeconds = 240;
            this->result = MALONRACE_TIME_UP;
            this->finishTimer = 30;
            gSaveContext.timerState = TIMER_STATE_OFF;
        }
    } else {
        if (this->finishTimer > 0) {
            this->finishTimer--;
        } else {
            EnHorseGameCheck_FinishMalonRace(this, play);
        }
    }
    return true;
}

static EnHorseGameCheckFunc sInitFuncs[] = {
    NULL,
    EnHorseGameCheck_InitIngoRace,
    EnHorseGameCheck_InitGerudoArchery,
    EnHorseGameCheck_InitType3,
    EnHorseGameCheck_InitMalonRace,
};

static EnHorseGameCheckFunc sDestroyFuncs[] = {
    NULL,
    EnHorseGameCheck_DestroyIngoRace,
    EnHorseGameCheck_DestroyGerudoArchery,
    EnHorseGameCheck_DestroyType3,
    EnHorseGameCheck_DestroyMalonRace,
};

static EnHorseGameCheckFunc sUpdateFuncs[] = {
    NULL,
    EnHorseGameCheck_UpdateIngoRace,
    EnHorseGameCheck_UpdateGerudoArchery,
    EnHorseGameCheck_UpdateType3,
    EnHorseGameCheck_UpdateMalonRace,
};

void EnHorseGameCheck_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnHorseGameCheckBase* this = (EnHorseGameCheckBase*)thisx;

    if ((play->sceneId == SCENE_LON_LON_RANCH) &&
        (Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED) || R_DEBUG_FORCE_EPONA_OBTAINED)) {
        this->actor.params = HORSEGAME_MALON_RACE;
    }
    if (sInitFuncs[this->actor.params] != NULL) {
        sInitFuncs[this->actor.params](this, play);
    }
}

void EnHorseGameCheck_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    EnHorseGameCheckBase* this = (EnHorseGameCheckBase*)thisx;

    if (sDestroyFuncs[this->actor.params] != NULL) {
        sDestroyFuncs[this->actor.params](this, play);
    }
}

void EnHorseGameCheck_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnHorseGameCheckBase* this = (EnHorseGameCheckBase*)thisx;

    if (sUpdateFuncs[this->type] != NULL) {
        sUpdateFuncs[this->type](this, play);
    }
}

void EnHorseGameCheck_Draw(Actor* thisx, PlayState* play) {
}
