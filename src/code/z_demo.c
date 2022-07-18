#include "global.h"
#include "z64camera.h"

#include "assets/scenes/indoors/tokinoma/tokinoma_scene.h"
#include "assets/scenes/overworld/spot00/spot00_scene.h"
#include "assets/scenes/overworld/spot01/spot01_scene.h"
#include "assets/scenes/overworld/spot02/spot02_scene.h"
#include "assets/scenes/overworld/spot04/spot04_scene.h"
#include "assets/scenes/overworld/spot05/spot05_scene.h"
#include "assets/scenes/overworld/spot06/spot06_scene.h"
#include "assets/scenes/overworld/spot07/spot07_scene.h"
#include "assets/scenes/overworld/spot08/spot08_scene.h"
#include "assets/scenes/overworld/spot09/spot09_scene.h"
#include "assets/scenes/overworld/spot11/spot11_scene.h"
#include "assets/scenes/overworld/spot12/spot12_scene.h"
#include "assets/scenes/overworld/spot15/spot15_scene.h"
#include "assets/scenes/overworld/spot16/spot16_scene.h"
#include "assets/scenes/overworld/spot17/spot17_scene.h"
#include "assets/scenes/overworld/spot18/spot18_scene.h"
#include "assets/scenes/overworld/spot20/spot20_scene.h"

#include "assets/scenes/dungeons/bdan/bdan_scene.h"
#include "assets/scenes/dungeons/ddan/ddan_scene.h"
#include "assets/scenes/dungeons/ydan/ydan_scene.h"
#include "assets/scenes/dungeons/ganontika/ganontika_scene.h"
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_scene.h"
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_scene.h"
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_scene.h"

#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_scene.h"

u16 sCurTextId = 0;
u16 sCurOcarinaAction = 0;

typedef void (*CutsceneHandler)(PlayState*, CutsceneContext*);

void CutsceneHandler_DoNothing(PlayState* play, CutsceneContext* csCtx);
void CutsceneHandler_StartManual(PlayState* play, CutsceneContext* csCtx);
void CutsceneHandler_StartScript(PlayState* play, CutsceneContext* csCtx);
void CutsceneHandler_RunScript(PlayState* play, CutsceneContext* csCtx);
void CutsceneHandler_StopManual(PlayState* play, CutsceneContext* csCtx);
void CutsceneHandler_StopScript(PlayState* play, CutsceneContext* csCtx);

CutsceneHandler sManualCutsceneHandlers[] = {
    CutsceneHandler_DoNothing,   // CS_STATE_IDLE
    CutsceneHandler_StartManual, // CS_STATE_START
    CutsceneHandler_DoNothing,   // CS_STATE_RUN
    CutsceneHandler_StopManual,  // CS_STATE_STOP
    CutsceneHandler_DoNothing,   // CS_STATE_RUN_UNSKIPPABLE
};

CutsceneHandler sScriptedCutsceneHandlers[] = {
    CutsceneHandler_DoNothing,   // CS_STATE_IDLE
    CutsceneHandler_StartScript, // CS_STATE_START
    CutsceneHandler_RunScript,   // CS_STATE_RUN
    CutsceneHandler_StopScript,  // CS_STATE_STOP
    CutsceneHandler_RunScript,   // CS_STATE_RUN_UNSKIPPABLE
};

typedef enum {
    /* 0 */ TITLE_CS_SPIRIT_TEMPLE,
    /* 1 */ TITLE_CS_DEATH_MOUNTAIN_CRATER,
    /* 2 */ TITLE_CS_GANONDORF_HORSE
} TitleCutsceneNext;

u8 sTitleCsNextDestination = TITLE_CS_SPIRIT_TEMPLE;

typedef struct {
    /* 0x00 */ u16 entrance;      // entrance index upon which the cutscene should trigger
    /* 0x02 */ u8 ageRestriction; // 0 for adult only, 1 for child only, 2 for both ages
    /* 0x03 */ u8 flag;           // eventChkInf flag bound to the entrance cutscene
    /* 0x04 */ void* scriptPtr;   // pointer to the cutscene script
} EntranceCutscene;               // size = 0x8

EntranceCutscene sEntranceCutsceneTable[] = {
    { ENTR_SPOT00_3, 2, EVENTCHKINF_A0, gHyruleFieldIntroCs },
    { ENTR_SPOT16_0, 2, EVENTCHKINF_A1, gDMTIntroCs },
    { ENTR_SPOT01_0, 2, EVENTCHKINF_A3, gKakarikoVillageIntroCs },
    { ENTR_SPOT07_0, 2, EVENTCHKINF_A4, gZorasDomainIntroCs },
    { ENTR_SPOT15_0, 1, EVENTCHKINF_A5, gHyruleCastleIntroCs },
    { ENTR_SPOT18_0, 2, EVENTCHKINF_A6, gGoronCityIntroCs },
    { ENTR_TOKINOMA_0, 2, EVENTCHKINF_A7, gTempleOfTimeIntroCs },
    { ENTR_YDAN_0, 2, EVENTCHKINF_A8, gDekuTreeIntroCs },
    { ENTR_SPOT00_11, 0, EVENTCHKINF_18, gHyruleFieldSouthEponaJumpCs },
    { ENTR_SPOT00_13, 0, EVENTCHKINF_18, gHyruleFieldEastEponaJumpCs },
    { ENTR_SPOT00_12, 0, EVENTCHKINF_18, gHyruleFieldWestEponaJumpCs },
    { ENTR_SPOT00_15, 0, EVENTCHKINF_18, gHyruleFieldGateEponaJumpCs },
    { ENTR_SPOT00_16, 1, EVENTCHKINF_A9, gHyruleFieldGetOoTCs },
    { ENTR_SPOT06_0, 2, EVENTCHKINF_B1, gLakeHyliaIntroCs },
    { ENTR_SPOT09_0, 2, EVENTCHKINF_B2, gGerudoValleyIntroCs },
    { ENTR_SPOT12_0, 2, EVENTCHKINF_B3, gGerudoFortressIntroCs },
    { ENTR_SPOT20_0, 2, EVENTCHKINF_B4, gLonLonRanchIntroCs },
    { ENTR_BDAN_0, 2, EVENTCHKINF_B5, gJabuJabuIntroCs },
    { ENTR_SPOT02_0, 2, EVENTCHKINF_B6, gGraveyardIntroCs },
    { ENTR_SPOT08_2, 2, EVENTCHKINF_B7, gZorasFountainIntroCs },
    { ENTR_SPOT11_0, 2, EVENTCHKINF_B8, gDesertColossusIntroCs },
    { ENTR_SPOT17_0, 2, EVENTCHKINF_B9, gDeathMountainCraterIntroCs },
    { ENTR_SPOT15_0, 0, EVENTCHKINF_BA, gGanonsCastleIntroCs },
    { ENTR_HAKAANA_OUKE_1, 2, EVENTCHKINF_5A, gSunSongGraveSunSongTeachPart2Cs },
    { ENTR_GANONTIKA_2, 2, EVENTCHKINF_BB, gForestBarrierCs },
    { ENTR_GANONTIKA_3, 2, EVENTCHKINF_BC, gWaterBarrierCs },
    { ENTR_GANONTIKA_4, 2, EVENTCHKINF_BD, gShadowBarrierCs },
    { ENTR_GANONTIKA_5, 2, EVENTCHKINF_BE, gFireBarrierCs },
    { ENTR_GANONTIKA_6, 2, EVENTCHKINF_BF, gLightBarrierCs },
    { ENTR_GANONTIKA_7, 2, EVENTCHKINF_AD, gSpiritBarrierCs },
    { ENTR_JYASINBOSS_0, 0, EVENTCHKINF_C0, gSpiritBossNabooruKnuckleIntroCs },
    { ENTR_SPOT12_17, 0, EVENTCHKINF_C7, gGerudoFortressFirstCaptureCs },
    { ENTR_SPOT17_1, 2, EVENTCHKINF_B9, gDeathMountainCraterIntroCs },
    { ENTR_SPOT04_12, 2, EVENTCHKINF_C6, gKokiriForestDekuSproutCs },
};

void* sUnusedEntranceCsList[] = {
    gDekuTreeIntroCs, gJabuJabuIntroCs, gDcOpeningCs, gMinuetCs, gIceCavernSerenadeCs, gTowerBarrierCs,
};

u16 gCamAtPointsAppliedFrame;
u16 gCamEyeAppliedFrame;
u16 gCamAtAppliedFrame;

s16 sPrevCamId;
u8 gUseCutsceneCam;

s16 sQuakeIndex;

void Cutscene_SetupScripted(PlayState* play, CutsceneContext* csCtx);

void Cutscene_DrawDebugInfo(PlayState* play, Gfx** dlist, CutsceneContext* csCtx) {
    GfxPrint printer;
    s32 pad[2];

    GfxPrint_Init(&printer);
    GfxPrint_Open(&printer, *dlist);

    GfxPrint_SetPos(&printer, 22, 25);
    GfxPrint_SetColor(&printer, 255, 255, 55, 32);
    GfxPrint_Printf(&printer, "%s", "FLAME ");
    GfxPrint_SetColor(&printer, 255, 255, 255, 32);
    GfxPrint_Printf(&printer, "%06d", csCtx->curFrame);
    GfxPrint_SetColor(&printer, 50, 255, 255, 60);
    GfxPrint_SetPos(&printer, 4, 26);
    GfxPrint_Printf(&printer, "%s", "SKIP=(START) or (Cursole Right)");

    *dlist = GfxPrint_Close(&printer);
    GfxPrint_Destroy(&printer);
}

void Cutscene_Init(PlayState* play, CutsceneContext* csCtx) {
    csCtx->state = CS_STATE_IDLE;
    csCtx->timer = 0.0f;
}

void Cutscene_StartManual(PlayState* play, CutsceneContext* csCtx) {
    csCtx->state = CS_STATE_START;
    csCtx->playerCue = NULL;
}

void Cutscene_StopManual(PlayState* play, CutsceneContext* csCtx) {
    if (csCtx->state != CS_STATE_RUN_UNSKIPPABLE) {
        csCtx->state = CS_STATE_STOP;
    }
}

void Cutscene_UpdateManual(PlayState* play, CutsceneContext* csCtx) {
    if (gSaveContext.cutsceneIndex < 0xFFF0) {
        sManualCutsceneHandlers[csCtx->state](play, csCtx);
    }
}

void Cutscene_UpdateScripted(PlayState* play, CutsceneContext* csCtx) {
    Input* input = &play->state.input[0];

    if (CHECK_BTN_ALL(input->press.button, BTN_DLEFT) && (csCtx->state == CS_STATE_IDLE) &&
        (gSaveContext.sceneSetupIndex >= 4)) {
        gUseCutsceneCam = false;
        gSaveContext.cutsceneIndex = 0xFFFD;
        gSaveContext.cutsceneTrigger = 1;
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_DUP) && (csCtx->state == CS_STATE_IDLE) &&
        (gSaveContext.sceneSetupIndex >= 4) && !gDbgCamEnabled) {
        gUseCutsceneCam = true;
        gSaveContext.cutsceneIndex = 0xFFFD;
        gSaveContext.cutsceneTrigger = 1;
    }

    if ((gSaveContext.cutsceneTrigger != 0) && (play->transitionTrigger == TRANS_TRIGGER_START)) {
        gSaveContext.cutsceneTrigger = 0;
    }

    if ((gSaveContext.cutsceneTrigger != 0) && (csCtx->state == CS_STATE_IDLE)) {
        osSyncPrintf("\nデモ開始要求 発令！"); // "Cutscene start request announcement!"
        gSaveContext.cutsceneIndex = 0xFFFD;
        gSaveContext.cutsceneTrigger = 1;
    }

    if (gSaveContext.cutsceneIndex >= 0xFFF0) {
        Cutscene_SetupScripted(play, csCtx);
        sScriptedCutsceneHandlers[csCtx->state](play, csCtx);
    }
}

void CutsceneHandler_DoNothing(PlayState* play, CutsceneContext* csCtx) {
}

u32 Cutscene_StepTimer(PlayState* play, CutsceneContext* csCtx, f32 target) {
    return Math_StepToF(&csCtx->timer, target, 0.1f);
}

void CutsceneHandler_StartManual(PlayState* play, CutsceneContext* csCtx) {
    Interface_ChangeAlpha(1);
    ShrinkWindow_SetVal(0x20);

    if (Cutscene_StepTimer(play, csCtx, 1.0f)) {
        Audio_SetCutsceneFlag(1);
        csCtx->state++; // CS_STATE_RUN
    }
}

void CutsceneHandler_StartScript(PlayState* play, CutsceneContext* csCtx) {
    CutsceneHandler_RunScript(play, csCtx);
    Interface_ChangeAlpha(1);
    ShrinkWindow_SetVal(0x20);

    if (Cutscene_StepTimer(play, csCtx, 1.0f)) {
        Audio_SetCutsceneFlag(1);
        csCtx->state++; // CS_STATE_RUN
    }
}

void CutsceneCmd_Misc(PlayState* play, CutsceneContext* csCtx, CsCmdMisc* cmd) {
    Player* player = GET_PLAYER(play);
    f32 lerp;
    u8 isFirstFrame = false;

    if ((csCtx->curFrame < cmd->startFrame) ||
        ((csCtx->curFrame >= cmd->endFrame) && (cmd->endFrame != cmd->startFrame))) {
        return;
    }

    lerp = Environment_LerpWeight(cmd->endFrame - 1, cmd->startFrame, csCtx->curFrame);

    if (csCtx->curFrame == cmd->startFrame) {
        isFirstFrame = true;
    }

    switch (cmd->type) {
        case CS_MISC_RAIN:
            if (isFirstFrame) {
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_RAIN, CHANNEL_IO_PORT_4, 0x3F);
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_RAIN, CHANNEL_IO_PORT_1, 1);
                play->envCtx.precipitation[PRECIP_RAIN_MAX] = 20;
            }
            break;

        case CS_MISC_LIGHTNING:
            if (isFirstFrame) {
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_LIGHTNING, CHANNEL_IO_PORT_0, 0);
                Environment_AddLightningBolts(play, 3);
                gLightningStrike.state = LIGHTNING_STRIKE_START;
            }
            break;

        case CS_MISC_SET_FLAG_0:
            if (isFirstFrame) {
                CutsceneFlags_Set(play, 0);

                // Because this check uses an entrance index, the door of time will only open
                // if you came from the front entrance of Temple of Time.
                // This is not an issue in the context of normal gameplay.
                if (gSaveContext.entranceIndex == ENTR_TOKINOMA_0) {
                    CutsceneFlags_Set(play, 2);
                }
            }
            break;

        case CS_MISC_LIFT_FOG:
            if (play->envCtx.adjFogFar < 12800) {
                play->envCtx.adjFogFar += 35;
            }
            break;

        case CS_MISC_CLOUDY_SKY:
            if (isFirstFrame) {
                play->envCtx.changeSkyboxState = CHANGE_SKYBOX_REQUESTED;
                play->envCtx.skyboxConfig = 1;
                play->envCtx.changeSkyboxNextConfig = 0;
                play->envCtx.changeSkyboxTimer = 60;
                play->envCtx.changeLightEnabled = true;
                play->envCtx.lightConfig = 0;
                play->envCtx.changeLightNextConfig = 1;
                play->envCtx.changeLightTimer = play->envCtx.changeDuration = 60;
            }
            break;

        case CS_MISC_FADE_KOKIRI_GRASS_ENV_ALPHA:
            if (play->roomCtx.unk_74[0] <= 127) {
                play->roomCtx.unk_74[0] += 4;
            }
            break;

        case CS_MISC_SNOW:
            play->envCtx.precipitation[PRECIP_SNOW_MAX] = 16;
            break;

        case CS_MISC_SET_FLAG_1:
            CutsceneFlags_Set(play, 1);
            break;

        case CS_MISC_DEKU_TREE_DEATH:
            if (play->roomCtx.unk_74[0] < 1650) {
                play->roomCtx.unk_74[0] += 20;
            }

            if (csCtx->curFrame == 783) {
                func_80078884(NA_SE_EV_DEKU_DEATH);
            } else if (csCtx->curFrame == 717) {
                play->roomCtx.unk_74[0] = 0;
            }
            break;

        case CS_MISC_STOP:
            if (isFirstFrame) {
                if (csCtx->state != CS_STATE_RUN_UNSKIPPABLE) {
                    csCtx->state = CS_STATE_STOP;
                }
            }
            break;

        case CS_MISC_TRIFORCE_FLASH:
            if (play->roomCtx.unk_74[1] == 0) {
                func_80078884(NA_SE_EV_TRIFORCE_FLASH);
            }

            if (play->roomCtx.unk_74[1] < 255) {
                play->roomCtx.unk_74[1] += 5;
            }
            break;

        case CS_MISC_SET_LOCKED_VIEWPOINT:
            if (isFirstFrame) {
                Play_SetViewpoint(play, VIEWPOINT_LOCKED);
            }
            break;

        case CS_MISC_SHOW_TITLE_CARD:
            if (isFirstFrame) {
                TitleCard_InitPlaceName(play, &play->actorCtx.titleCtx, player->giObjectSegment, 160, 120, 144, 24, 20);
            }
            break;

        case CS_MISC_QUAKE_START:
            if (isFirstFrame) {
                sQuakeIndex = Quake_Add(GET_ACTIVE_CAM(play), 6);
                Quake_SetSpeed(sQuakeIndex, 0x7FFF);
                Quake_SetQuakeValues(sQuakeIndex, 4, 0, 1000, 0);
                Quake_SetCountdown(sQuakeIndex, 800);
            }
            break;

        case CS_MISC_QUAKE_STOP:
            if (isFirstFrame) {
                Quake_RemoveFromIdx(sQuakeIndex);
            }
            break;

        case CS_MISC_STOP_STORM_AND_ADVANCE_TO_DAY:
            play->envCtx.precipitation[PRECIP_RAIN_MAX] = 0;
            play->envCtx.stormRequest = STORM_REQUEST_STOP;

            if (gSaveContext.dayTime < CLOCK_TIME(7, 0)) {
                gSaveContext.dayTime += 30;
            }

            if (play->envCtx.precipitation[PRECIP_RAIN_CUR] == 0) {
                gWeatherMode = WEATHER_MODE_CLEAR;
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_RAIN, CHANNEL_IO_PORT_1, 0);
            }
            break;

        case CS_MISC_SET_FLAG_FAST_WINDMILL:
            SET_EVENTCHKINF(EVENTCHKINF_65);
            break;

        case CS_MISC_SET_FLAG_WELL_DRAINED:
            SET_EVENTCHKINF(EVENTCHKINF_67);
            break;

        case CS_MISC_SET_FLAG_LAKE_HYLIA_RESTORED:
            SET_EVENTCHKINF(EVENTCHKINF_69);
            break;

        case CS_MISC_VISMONO_BLACK_AND_WHITE:
            D_801614B0.r = 255;
            D_801614B0.g = 255;
            D_801614B0.b = 255;
            D_801614B0.a = 255;
            break;

        case CS_MISC_VISMONO_SEPIA:
            D_801614B0.r = 255;
            D_801614B0.g = 180;
            D_801614B0.b = 100;
            D_801614B0.a = 255.0f * lerp;
            break;

        case CS_MISC_HIDE_ROOM:
            play->roomCtx.curRoom.segment = NULL;
            break;

        case CS_MISC_TIME_ADVANCE_TO_NIGHT:
            gSaveContext.dayTime += 30;

            if ((gSaveContext.dayTime) >= CLOCK_TIME(19, 0)) {
                gSaveContext.dayTime = CLOCK_TIME(19, 0) - 1;
            }
            break;

        case CS_MISC_SET_TIME_BASED_LIGHT_SETTING:
            if ((gSaveContext.dayTime < CLOCK_TIME(4, 30)) || (gSaveContext.dayTime >= CLOCK_TIME(6, 30))) {
                if ((gSaveContext.dayTime >= CLOCK_TIME(6, 30)) && (gSaveContext.dayTime < CLOCK_TIME(16, 0))) {
                    play->envCtx.lightSettingOverride = 1;
                } else if ((gSaveContext.dayTime >= CLOCK_TIME(16, 0)) &&
                           (gSaveContext.dayTime <= CLOCK_TIME(18, 30))) {
                    play->envCtx.lightSettingOverride = 2;
                } else {
                    play->envCtx.lightSettingOverride = 3;
                }
            }
            break;

        case CS_MISC_PULSATE_LIGHTS:
            if (play->state.frames & 8) {
                if (play->envCtx.adjAmbientColor[0] < 40) {
                    play->envCtx.adjAmbientColor[0] += 2;
                    play->envCtx.adjLight1Color[1] -= 3;
                    play->envCtx.adjLight1Color[2] -= 3;
                }
            } else {
                if (play->envCtx.adjAmbientColor[0] > 2) {
                    play->envCtx.adjAmbientColor[0] -= 2;
                    play->envCtx.adjLight1Color[1] += 3;
                    play->envCtx.adjLight1Color[2] += 3;
                }
            }
            break;

        case CS_MISC_HALT_ALL_ACTORS:
            play->haltAllActors = true;
            break;

        case CS_MISC_RESUME_ALL_ACTORS:
            play->haltAllActors = false;
            break;

        case CS_MISC_SET_FLAG_3:
            CutsceneFlags_Set(play, 3);
            break;

        case CS_MISC_SET_FLAG_4:
            CutsceneFlags_Set(play, 4);
            break;

        case CS_MISC_SANDSTORM:
            if (isFirstFrame) {
                play->envCtx.sandstormState = SANDSTORM_FILL;
            }

            func_800788CC(NA_SE_EV_SAND_STORM - SFX_FLAG);
            break;

        case CS_MISC_SUNSSONG_START:
            gSaveContext.sunsSongState = SUNSSONG_START;
            break;

        case CS_MISC_FREEZE_TIME:
            if (IS_DAY) {
                gSaveContext.dayTime -= gTimeSpeed;
            } else {
                gSaveContext.dayTime -= gTimeSpeed * 2;
            }
            break;

        case CS_MISC_LONG_SCARECROW_SONG:
            AudioOcarina_PlayLongScarecrowSong();
            csCtx->curFrame = cmd->startFrame - 1;
            break;
    }
}

void CutsceneCmd_SetLightSetting(PlayState* play, CutsceneContext* csCtx, CsCmdLightSetting* cmd) {
    if (csCtx->curFrame == cmd->startFrame) {
        play->envCtx.lightSettingOverride = cmd->setting - 1;
        play->envCtx.lightBlend = 1.0f;
    }
}

void CutsceneCmd_StartSequence(PlayState* play, CutsceneContext* csCtx, CsCmdStartSeq* cmd) {
    if (csCtx->curFrame == cmd->startFrame) {
        func_800F595C(cmd->seqId - 1);
    }
}

void CutsceneCmd_StopSequence(PlayState* play, CutsceneContext* csCtx, CsCmdStopSeq* cmd) {
    if (csCtx->curFrame == cmd->startFrame) {
        func_800F59E8(cmd->seqId - 1);
    }
}

void CutsceneCmd_FadeSequence(PlayState* play, CutsceneContext* csCtx, CsCmdFadeSeq* cmd) {
    u8 duration;

    if ((csCtx->curFrame == cmd->startFrame) && (csCtx->curFrame < cmd->endFrame)) {
        duration = cmd->endFrame - cmd->startFrame;

        if (cmd->type == 3) {
            Audio_QueueSeqCmd(duration << 0x10 | (0x1 << 28 | SEQ_PLAYER_FANFARE << 24 | 0xFF));
        } else {
            Audio_QueueSeqCmd(duration << 0x10 | (0x1 << 28 | SEQ_PLAYER_BGM_MAIN << 24 | 0xFF));
        }
    }
}

void CutsceneCmd_RumbleController(PlayState* play, CutsceneContext* csCtx, CsCmdRumble* cmd) {
    if (csCtx->curFrame == cmd->startFrame) {
        func_800AA000(0.0f, cmd->unk_06, cmd->unk_07, cmd->unk_08);
    }
}

void CutsceneCmd_SetTime(PlayState* play, CutsceneContext* csCtx, CsCmdTime* cmd) {
    s16 hours;
    s16 minutes;

    if (csCtx->curFrame == cmd->startFrame) {
        hours = (cmd->hour * 60.0f) / (360.0f / 0x4000);
        minutes = (cmd->minute + 1) / (360.0f / 0x4000);

        gSaveContext.dayTime = hours + minutes;
        gSaveContext.skyboxTime = hours + minutes;
    }
}

void CutsceneCmd_Terminator(PlayState* play, CutsceneContext* csCtx, CsCmdTerminator* cmd) {
    Player* player = GET_PLAYER(play);
    s32 titleCsSkipped = false;

    if ((gSaveContext.gameMode != GAMEMODE_NORMAL) && (gSaveContext.gameMode != GAMEMODE_END_CREDITS) &&
        (play->sceneNum != SCENE_SPOT00) && (csCtx->curFrame > 20) &&
        (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_A) ||
         CHECK_BTN_ALL(play->state.input[0].press.button, BTN_B) ||
         CHECK_BTN_ALL(play->state.input[0].press.button, BTN_START)) &&
        (gSaveContext.fileNum != 0xFEDC) && (play->transitionTrigger == TRANS_TRIGGER_OFF)) {
        Audio_PlaySoundGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        titleCsSkipped = true;
    }

    if ((csCtx->curFrame == cmd->startFrame) || titleCsSkipped ||
        ((csCtx->curFrame > 20) && CHECK_BTN_ALL(play->state.input[0].press.button, BTN_START) &&
         (gSaveContext.fileNum != 0xFEDC))) {
        csCtx->state = CS_STATE_RUN_UNSKIPPABLE;
        Audio_SetCutsceneFlag(0);
        gSaveContext.cutsceneTransitionControl = 1;

        osSyncPrintf("\n分岐先指定！！=[%d]番", cmd->destination); // "Future fork designation=No. [%d]"

        // `unk_13E7` has a secondary purpose, which is to signal to the title screen actor
        // that it should display immediately. This occurs when a title screen cutscene that is not the main
        // hyrule field scene is skipped.
        // `csCtx->curFrame != cmd->startFrame` is an indirect way to check that the terminator is occuring
        // due to an unnatural cause, like via `titleCsSkipped`.
        if ((gSaveContext.gameMode != GAMEMODE_NORMAL) && (csCtx->curFrame != cmd->startFrame)) {
            gSaveContext.unk_13E7 = 1;
        }

        gSaveContext.cutsceneIndex = 0;

        switch (cmd->destination) {
            case 1:
                play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                gSaveContext.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 2:
                play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case 3:
                play->nextEntranceIndex = ENTR_SPOT09_0;
                gSaveContext.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case 4:
                play->nextEntranceIndex = ENTR_SPOT16_0;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case 5:
                play->nextEntranceIndex = ENTR_SPOT04_0;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case 6:
                play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                gSaveContext.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case 7:
                play->nextEntranceIndex = ENTR_SPOT04_0;
                gSaveContext.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_INSTANT;
                break;

            case 8:
                gSaveContext.fw.set = 0;
                gSaveContext.respawn[RESPAWN_MODE_TOP].data = 0;

                if (!GET_EVENTCHKINF(EVENTCHKINF_45)) {
                    SET_EVENTCHKINF(EVENTCHKINF_45);
                    play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    gSaveContext.cutsceneIndex = 0xFFF3;
                    play->transitionType = TRANS_TYPE_INSTANT;
                } else {
                    if (gSaveContext.sceneSetupIndex < 4) {
                        if (!LINK_IS_ADULT) {
                            play->linkAgeOnLoad = LINK_AGE_ADULT;
                        } else {
                            play->linkAgeOnLoad = LINK_AGE_CHILD;
                        }
                    }

                    play->nextEntranceIndex = ENTR_TOKINOMA_2;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                    gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                }
                break;

            case 9:
                play->nextEntranceIndex = ENTR_SPOT09_0;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_BROWN;
                break;

            case 10:
                play->nextEntranceIndex = ENTR_LINK_HOME_0;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 11:
                play->nextEntranceIndex = ENTR_SPOT04_0;
                gSaveContext.cutsceneIndex = 0xFFF3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 12:
                play->nextEntranceIndex = ENTR_SPOT16_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 13:
                play->nextEntranceIndex = ENTR_SPOT08_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 14:
                play->nextEntranceIndex = ENTR_SPOT04_11;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 15:
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 16:
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF5;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 17:
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF6;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 18:
                SET_EVENTCHKINF(EVENTCHKINF_4F);
                play->nextEntranceIndex = ENTR_TOKINOMA_4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 19:
                play->nextEntranceIndex = ENTR_SPOT16_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                gSaveContext.cutsceneIndex = 0x8000;
                break;

            case 21:
                play->nextEntranceIndex = ENTR_SPOT06_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 22:
                Item_Give(play, ITEM_SONG_REQUIEM);
                play->nextEntranceIndex = ENTR_SPOT11_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 23:
                play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF8;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 24:
                play->nextEntranceIndex = ENTR_BDAN_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 25:
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_KENJYANOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 26:
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 27:
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF5;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 28:
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF6;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 29:
                play->nextEntranceIndex = ENTR_KENJYANOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.chamberCutsceneNum = 0;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 30:
                play->nextEntranceIndex = ENTR_KENJYANOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                Item_Give(play, ITEM_MEDALLION_FIRE);
                gSaveContext.chamberCutsceneNum = 1;
                break;

            case 31:
                play->nextEntranceIndex = ENTR_KENJYANOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                gSaveContext.chamberCutsceneNum = 2;
                break;

            case 32:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_SPOT00_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF2;
                play->transitionType = TRANS_TYPE_INSTANT;
                break;

            case 33:
                play->nextEntranceIndex = ENTR_SPOT00_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 34:
                play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF3;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 35:
                play->nextEntranceIndex = ENTR_SPOT00_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case 38:
                play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case 39:
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF9;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case 40:
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFFA;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case 41:
                play->nextEntranceIndex = ENTR_SPOT06_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 42:
                play->nextEntranceIndex = ENTR_SPOT01_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF2;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case 43:
                play->nextEntranceIndex = ENTR_HAKASITARELAY_2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case 44:
                play->nextEntranceIndex = ENTR_TOKINOMA_3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE_INSTANT;
                break;

            case 46:
                SET_EVENTCHKINF(EVENTCHKINF_4F);
                play->nextEntranceIndex = ENTR_TOKINOMA_4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case 47:
                Item_Give(play, ITEM_SONG_NOCTURNE);
                SET_EVENTCHKINF(EVENTCHKINF_54);
                play->nextEntranceIndex = ENTR_SPOT01_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF1;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case 48:
                play->nextEntranceIndex = ENTR_SPOT11_4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_SANDSTORM_END;
                gSaveContext.nextTransitionType = TRANS_TYPE_SANDSTORM_END;
                break;

            case 49:
                play->nextEntranceIndex = ENTR_TOKINOMA_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case 50:
                play->nextEntranceIndex = ENTR_SPOT01_13;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE_INSTANT;
                break;

            case 51:
                play->nextEntranceIndex = ENTR_SPOT00_0;
                gSaveContext.cutsceneIndex = 0xFFF8;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_CIRCLE(TCA_NORMAL, TCC_WHITE, TCS_SLOW);
                break;

            case 52:
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                gSaveContext.cutsceneIndex = 0xFFF7;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_INSTANT;
                break;

            case 53:
                play->nextEntranceIndex = ENTR_SPOT00_16;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 54:
                gSaveContext.gameMode = GAMEMODE_END_CREDITS;
                Audio_SetSoundBanksMute(0x6F);
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_SPOT09_0;
                gSaveContext.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 55:
                play->nextEntranceIndex = ENTR_SPOT12_0;
                gSaveContext.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 56:
                play->nextEntranceIndex = ENTR_SPOT01_0;
                gSaveContext.cutsceneIndex = 0xFFF4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 57:
                play->nextEntranceIndex = ENTR_SPOT16_0;
                gSaveContext.cutsceneIndex = 0xFFF3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 58:
                play->nextEntranceIndex = ENTR_SPOT18_0;
                gSaveContext.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 59:
                play->nextEntranceIndex = ENTR_SPOT06_0;
                gSaveContext.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 60:
                play->nextEntranceIndex = ENTR_SPOT08_0;
                gSaveContext.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 61:
                play->nextEntranceIndex = ENTR_SPOT07_0;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 62:
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_SPOT04_0;
                gSaveContext.cutsceneIndex = 0xFFF6;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 63:
                play->nextEntranceIndex = ENTR_SPOT04_0;
                gSaveContext.cutsceneIndex = 0xFFF7;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 64:
                play->nextEntranceIndex = ENTR_SPOT00_0;
                gSaveContext.cutsceneIndex = 0xFFF5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 65:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_SPOT20_0;
                gSaveContext.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 66:
                play->nextEntranceIndex = ENTR_SPOT01_14;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 67:
                play->nextEntranceIndex = ENTR_SPOT00_9;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 68:
                play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF5;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 69:
                play->nextEntranceIndex = ENTR_SPOT04_12;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 70:
                play->nextEntranceIndex = ENTR_SPOT16_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 71:
                gSaveContext.equips.equipment |= EQUIP_VALUE_TUNIC_KOKIRI << (EQUIP_TYPE_TUNIC * 4);
                Player_SetEquipmentData(play, player);
                gSaveContext.equips.equipment |= EQUIP_VALUE_BOOTS_KOKIRI << (EQUIP_TYPE_BOOTS * 4);
                Player_SetEquipmentData(play, player);
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_TOKINOMA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF1;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 72:
                play->nextEntranceIndex = ENTR_NAKANIWA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 73:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_SPOT20_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF2;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 74:
                play->nextEntranceIndex = ENTR_SPOT20_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF3;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 75:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_SPOT20_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 76:
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_SPOT20_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF5;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 77:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_SPOT20_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF6;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 78:
                play->nextEntranceIndex = ENTR_SPOT20_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF7;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
                play->nextEntranceIndex = ENTR_SPOT20_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 94:
                play->nextEntranceIndex = ENTR_SPOT20_1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 95:
                if (GET_EVENTCHKINF(EVENTCHKINF_48) && GET_EVENTCHKINF(EVENTCHKINF_49) &&
                    GET_EVENTCHKINF(EVENTCHKINF_4A)) {
                    play->nextEntranceIndex = ENTR_TOKINOMA_0;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    gSaveContext.cutsceneIndex = 0xFFF3;
                    play->transitionType = TRANS_TYPE_FADE_BLACK;
                } else {
                    switch (gSaveContext.sceneSetupIndex) {
                        case 8:
                            play->nextEntranceIndex = ENTR_SPOT05_0;
                            play->transitionTrigger = TRANS_TRIGGER_START;
                            play->transitionType = TRANS_TYPE_FADE_BLACK;
                            break;

                        case 9:
                            play->nextEntranceIndex = ENTR_SPOT17_0;
                            play->transitionTrigger = TRANS_TRIGGER_START;
                            play->transitionType = TRANS_TYPE_FADE_BLACK;
                            break;

                        case 10:
                            play->nextEntranceIndex = ENTR_SPOT06_0;
                            play->transitionTrigger = TRANS_TRIGGER_START;
                            gSaveContext.cutsceneIndex = 0xFFF0;
                            play->transitionType = TRANS_TYPE_FADE_WHITE;
                            break;
                    }
                }
                break;

            case 96:
                if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW)) {
                    play->nextEntranceIndex = ENTR_KENJYANOMA_0;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    gSaveContext.cutsceneIndex = 0xFFF1;
                    play->transitionType = TRANS_TYPE_FADE_WHITE_FAST;
                } else {
                    SET_EVENTCHKINF(EVENTCHKINF_C8);
                    play->nextEntranceIndex = ENTR_SPOT11_8;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                    gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                }
                break;

            case 97:
                if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT)) {
                    play->nextEntranceIndex = ENTR_KENJYANOMA_0;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    gSaveContext.cutsceneIndex = 0xFFF1;
                    play->transitionType = TRANS_TYPE_FADE_WHITE_FAST;
                } else {
                    play->nextEntranceIndex = ENTR_SPOT02_8;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                    gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                }
                break;

            case 98:
                play->nextEntranceIndex = ENTR_SPOT17_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 99:
                play->nextEntranceIndex = ENTR_SPOT05_3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 100:
                play->nextEntranceIndex = ENTR_SPOT04_0;
                gSaveContext.cutsceneIndex = 0xFFF8;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 101:
                play->nextEntranceIndex = ENTR_SPOT11_6;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_SANDSTORM_END;
                break;

            case 102:
                play->nextEntranceIndex = ENTR_TOKINOMA_6;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 103:
                play->nextEntranceIndex = ENTR_SPOT00_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF3;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 104:
                switch (sTitleCsNextDestination) {
                    case TITLE_CS_SPIRIT_TEMPLE:
                        play->nextEntranceIndex = ENTR_JYASINBOSS_0;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        gSaveContext.cutsceneIndex = 0xFFF2;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                        sTitleCsNextDestination++;
                        break;

                    case TITLE_CS_DEATH_MOUNTAIN_CRATER:
                        play->nextEntranceIndex = ENTR_SPOT17_0;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        gSaveContext.cutsceneIndex = 0xFFF1;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                        sTitleCsNextDestination++;
                        break;

                    case TITLE_CS_GANONDORF_HORSE:
                        play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        gSaveContext.cutsceneIndex = 0xFFF6;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                        sTitleCsNextDestination = TITLE_CS_SPIRIT_TEMPLE;
                        break;
                }
                break;

            case 105:
                play->nextEntranceIndex = ENTR_SPOT02_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.cutsceneIndex = 0xFFF1;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 106:
                play->nextEntranceIndex = ENTR_HAKAANA_OUKE_1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 107:
                play->nextEntranceIndex = ENTR_GANONTIKA_2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 108:
                play->nextEntranceIndex = ENTR_GANONTIKA_3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 109:
                play->nextEntranceIndex = ENTR_GANONTIKA_4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 110:
                play->nextEntranceIndex = ENTR_GANONTIKA_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 111:
                play->nextEntranceIndex = ENTR_GANONTIKA_6;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 112:
                play->nextEntranceIndex = ENTR_GANONTIKA_7;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 113:
                if (Flags_GetEventChkInf(EVENTCHKINF_BB) && Flags_GetEventChkInf(EVENTCHKINF_BC) &&
                    Flags_GetEventChkInf(EVENTCHKINF_BD) && Flags_GetEventChkInf(EVENTCHKINF_BE) &&
                    Flags_GetEventChkInf(EVENTCHKINF_BF) && Flags_GetEventChkInf(EVENTCHKINF_AD)) {
                    play->csCtx.scriptPtr = SEGMENTED_TO_VIRTUAL(gTowerBarrierCs);
                    play->csCtx.curFrame = 0;
                    gSaveContext.cutsceneTrigger = 1;
                    gSaveContext.cutsceneIndex = 0xFFFF;
                    csCtx->state = CS_STATE_STOP;
                } else {
                    gSaveContext.cutsceneIndex = 0xFFFF;
                    csCtx->state = CS_STATE_STOP;
                }
                break;

            case 114:
                play->nextEntranceIndex = ENTR_SPOT00_3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 115:
                play->nextEntranceIndex = ENTR_SPOT00_17;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 116:
                if (GET_EVENTCHKINF(EVENTCHKINF_C8)) {
                    play->nextEntranceIndex = ENTR_SPOT02_8;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                } else {
                    play->nextEntranceIndex = ENTR_SPOT11_8;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                }

                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 117:
                gSaveContext.gameMode = GAMEMODE_END_CREDITS;
                Audio_SetSoundBanksMute(0x6F);
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_SPOT00_0;
                gSaveContext.cutsceneIndex = 0xFFF7;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case 118:
                gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex = ENTR_GANON_DEMO_0;
                Play_TriggerVoidOut(play);
                gSaveContext.respawnFlag = -2;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case 119:
                gSaveContext.dayTime = CLOCK_TIME(12, 0);
                gSaveContext.skyboxTime = CLOCK_TIME(12, 0);
                play->nextEntranceIndex = ENTR_NAKANIWA_1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;
        }
    }
}

void CutsceneCmd_Transition(PlayState* play, CutsceneContext* csCtx, CsCmdTransition* cmd) {
    f32 lerp;

    if ((csCtx->curFrame >= cmd->startFrame) && (csCtx->curFrame <= cmd->endFrame)) {
        play->envCtx.fillScreen = true;
        lerp = Environment_LerpWeight(cmd->endFrame, cmd->startFrame, csCtx->curFrame);

        switch (cmd->type) {
            case CS_TRANS_GRAY_FILL:
            case CS_TRANS_GRAY_UNFILL:
                play->envCtx.screenFillColor[0] = 160;
                play->envCtx.screenFillColor[1] = 160;
                play->envCtx.screenFillColor[2] = 160;

                if (cmd->type == CS_TRANS_GRAY_FILL) {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;

                    if ((lerp == 0.0f) && (gSaveContext.entranceIndex == ENTR_KENJYANOMA_0)) {
                        Audio_PlaySoundGeneral(NA_SE_SY_WHITE_OUT_S, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    } else if ((lerp == 0.0f) && ((gSaveContext.entranceIndex == ENTR_TOKINOMA_0) ||
                                                  (gSaveContext.entranceIndex == ENTR_SPOT15_0) ||
                                                  (gSaveContext.entranceIndex == ENTR_YOUSEI_IZUMI_YOKO_0))) {
                        Audio_PlaySoundGeneral(NA_SE_EV_WHITE_OUT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    } else if ((lerp == 0.0f) && (play->sceneNum == SCENE_GANONTIKA)) {
                        func_800788CC(NA_SE_EV_WHITE_OUT);
                    }
                } else {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                }
                break;

            case CS_TRANS_BLUE_FILL:
            case CS_TRANS_BLUE_UNFILL:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 255;

                if (cmd->type == CS_TRANS_BLUE_FILL) {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;
                } else {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                }
                break;

            case CS_TRANS_RED_FILL:
            case CS_TRANS_RED_UNFILL:
                play->envCtx.screenFillColor[0] = 255;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 0;

                if (cmd->type == CS_TRANS_RED_FILL) {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                } else {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;
                }
                break;

            case CS_TRANS_GREEN_FILL:
            case CS_TRANS_GREEN_UNFILL:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 255;
                play->envCtx.screenFillColor[2] = 0;

                if (cmd->type == CS_TRANS_GREEN_FILL) {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                } else {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;
                }
                break;

            case CS_TRANS_TRIGGER_INSTANCE:
                gSaveContext.cutsceneTransitionControl = 1;
                break;

            case CS_TRANS_BLACK_FILL:
            case CS_TRANS_BLACK_UNFILL:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 0;

                if (cmd->type == CS_TRANS_BLACK_FILL) {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                } else {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;
                }
                break;

            case CS_TRANS_BLACK_HALF_FILL:
                gSaveContext.cutsceneTransitionControl = 255.0f - (155.0f * lerp);
                break;

            case CS_TRANS_BLACK_HALF_UNFILL:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 0;
                play->envCtx.screenFillColor[3] = 255.0f - ((1.0f - lerp) * 155.0f);
                break;
        }
    }
}

s32 CutsceneCmd_SetCamEyePoints(PlayState* play, CutsceneContext* csCtx, u8* scriptPtr, u8 relativeToPlayer) {
    s32 shouldContinue = true;
    CsCmdGeneric* cmd = (CsCmdGeneric*)scriptPtr;
    s32 size;

    cmd += sizeof(CsCmdGeneric);
    size = sizeof(CsCmdGeneric);

    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame < cmd->endFrame) &&
        ((csCtx->camEyePointsAppliedFrame < cmd->startFrame) || (csCtx->camEyePointsAppliedFrame >= 0xF000))) {
        csCtx->camEyeReady = true;
        csCtx->camEyePoints = (CutsceneCameraPoint*)cmd;

        if (csCtx->camAtReady) {
            // the frame number set here isn't important, it just signals that the camera data has been applied
            csCtx->camEyePointsAppliedFrame = cmd->startFrame;

            if (gUseCutsceneCam) {
                Play_CameraChangeSetting(play, csCtx->subCamId, CAM_SET_CS_0);
                Play_ChangeCameraStatus(play, sPrevCamId, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Camera_ResetAnim(Play_GetCamera(play, csCtx->subCamId));
                Camera_SetCSParams(Play_GetCamera(play, csCtx->subCamId), csCtx->camLookAtPoints, csCtx->camEyePoints,
                                   GET_PLAYER(play), relativeToPlayer);
            }
        }
    }

    while (shouldContinue) {
        if (((CutsceneCameraPoint*)cmd)->continueFlag == CS_CMD_STOP) {
            shouldContinue = false;
        }

        cmd += sizeof(CutsceneCameraPoint);
        size += sizeof(CutsceneCameraPoint);
    }

    return size;
}

s32 CutsceneCmd_SetCamAtPoints(PlayState* play, CutsceneContext* csCtx, u8* scriptPtr, u8 relativeToPlayer) {
    s32 shouldContinue = true;
    CsCmdGeneric* cmd = (CsCmdGeneric*)scriptPtr;
    s32 size;

    cmd += sizeof(CsCmdGeneric);
    size = sizeof(CsCmdGeneric);

    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame < cmd->endFrame) &&
        ((gCamAtPointsAppliedFrame < cmd->startFrame) || (gCamAtPointsAppliedFrame >= 0xF000))) {
        csCtx->camAtReady = true;
        csCtx->camLookAtPoints = (CutsceneCameraPoint*)cmd;

        if (csCtx->camEyeReady) {
            // the frame number set here isn't important, it just signals that the camera data has been applied
            gCamAtPointsAppliedFrame = cmd->startFrame;

            if (gUseCutsceneCam) {
                Play_CameraChangeSetting(play, csCtx->subCamId, CAM_SET_CS_0);
                Play_ChangeCameraStatus(play, sPrevCamId, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Camera_ResetAnim(Play_GetCamera(play, csCtx->subCamId));
                Camera_SetCSParams(Play_GetCamera(play, csCtx->subCamId), csCtx->camLookAtPoints, csCtx->camEyePoints,
                                   GET_PLAYER(play), relativeToPlayer);
            }
        }
    }

    while (shouldContinue) {
        if (((CutsceneCameraPoint*)cmd)->continueFlag == CS_CMD_STOP) {
            shouldContinue = false;
        }

        cmd += sizeof(CutsceneCameraPoint);
        size += sizeof(CutsceneCameraPoint);
    }

    return size;
}

s32 CutsceneCmd_SetCamEye(PlayState* play, CutsceneContext* csCtx, u8* scriptPtr, u8 unused) {
    CsCmdGeneric* cmd = (CsCmdGeneric*)scriptPtr;
    s32 size;
    Vec3f at;
    Vec3f eye;
    Camera* subCam;
    f32 sp28;

    cmd += sizeof(CsCmdGeneric);
    size = sizeof(CsCmdGeneric);

    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame < cmd->endFrame) &&
        ((gCamEyeAppliedFrame < cmd->startFrame) || (gCamEyeAppliedFrame >= 0xF000))) {
        csCtx->camEyeReady = true;
        csCtx->camEyePoints = (CutsceneCameraPoint*)cmd;

        if (csCtx->camAtReady) {
            // the frame number set here isn't important, it just signals that the camera data has been applied
            gCamEyeAppliedFrame = cmd->startFrame;

            if (gUseCutsceneCam) {
                subCam = Play_GetCamera(play, csCtx->subCamId);
                subCam->player = NULL;

                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Play_CameraChangeSetting(play, csCtx->subCamId, CAM_SET_FREE0);

                sp28 = csCtx->camLookAtPoints->cameraRoll * 1.40625f;
                Camera_SetParam(subCam, 64, &sp28);

                at.x = csCtx->camLookAtPoints->pos.x;
                at.y = csCtx->camLookAtPoints->pos.y;
                at.z = csCtx->camLookAtPoints->pos.z;

                eye.x = csCtx->camEyePoints->pos.x;
                eye.y = csCtx->camEyePoints->pos.y;
                eye.z = csCtx->camEyePoints->pos.z;

                Play_CameraSetAtEye(play, csCtx->subCamId, &at, &eye);
                Play_CameraSetFov(play, csCtx->subCamId, csCtx->camEyePoints->viewAngle);
            }
        }
    }

    size += sizeof(CutsceneCameraPoint);

    return size;
}

s32 CutsceneCmd_SetCamAt(PlayState* play, CutsceneContext* csCtx, u8* scriptPtr, u8 unused) {
    CsCmdGeneric* cmd = (CsCmdGeneric*)scriptPtr;
    s32 size;
    Vec3f at;
    Vec3f eye;
    Camera* subCam;

    cmd += sizeof(CsCmdGeneric);
    size = sizeof(CsCmdGeneric);

    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame < cmd->endFrame) &&
        ((gCamAtAppliedFrame < cmd->startFrame) || (gCamAtAppliedFrame >= 0xF000))) {
        csCtx->camAtReady = true;
        csCtx->camLookAtPoints = (CutsceneCameraPoint*)cmd;

        if (csCtx->camEyeReady) {
            // the frame number set here isn't important, it just signals that the camera data has been applied
            gCamAtAppliedFrame = cmd->startFrame;

            if (gUseCutsceneCam) {
                subCam = Play_GetCamera(play, csCtx->subCamId);
                subCam->player = NULL;

                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Play_CameraChangeSetting(play, csCtx->subCamId, CAM_SET_FREE0);

                at.x = csCtx->camLookAtPoints->pos.x;
                at.y = csCtx->camLookAtPoints->pos.y;
                at.z = csCtx->camLookAtPoints->pos.z;

                eye.x = csCtx->camEyePoints->pos.x;
                eye.y = csCtx->camEyePoints->pos.y;
                eye.z = csCtx->camEyePoints->pos.z;

                Play_CameraSetAtEye(play, csCtx->subCamId, &at, &eye);
                Play_CameraSetFov(play, csCtx->subCamId, csCtx->camEyePoints->viewAngle);
            }
        }
    }

    size += sizeof(CutsceneCameraPoint);

    return size;
}

void CutsceneCmd_Text(PlayState* play, CutsceneContext* csCtx, CsCmdTextbox* cmd) {
    u8 dialogState;
    s16 initialEndingFrame;

    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
        if (cmd->type != 2) {
            if (sCurTextId != cmd->base) {
                sCurTextId = cmd->base;

                if ((cmd->type == 3) && CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) {
                    Message_StartTextbox(play, cmd->textId1, NULL);
                } else if ((cmd->type == 4) && CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
                    Message_StartTextbox(play, cmd->textId1, NULL);
                } else {
                    Message_StartTextbox(play, cmd->base, NULL);
                }
                return;
            }
        } else {
            if (sCurOcarinaAction != cmd->base) {
                sCurOcarinaAction = cmd->base;
                func_8010BD58(play, cmd->base);
                return;
            }
        }

        if (csCtx->curFrame >= cmd->endFrame) {
            initialEndingFrame = csCtx->curFrame;
            dialogState = Message_GetState(&play->msgCtx);

            if ((dialogState != TEXT_STATE_CLOSING) && (dialogState != TEXT_STATE_NONE) &&
                (dialogState != TEXT_STATE_SONG_DEMO_DONE) && (dialogState != TEXT_STATE_8)) {
                csCtx->curFrame--;

                if ((dialogState == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
                    if (play->msgCtx.choiceIndex == 0) {
                        if (cmd->textId1 != 0xFFFF) {
                            Message_ContinueTextbox(play, cmd->textId1);
                        } else {
                            csCtx->curFrame++;
                        }
                    } else {
                        if (cmd->textId2 != 0xFFFF) {
                            Message_ContinueTextbox(play, cmd->textId2);
                        } else {
                            csCtx->curFrame++;
                        }
                    }
                }

                if (dialogState == TEXT_STATE_9) {
                    if (cmd->textId1 != 0xFFFF) {
                        Message_ContinueTextbox(play, cmd->textId1);
                    } else {
                        csCtx->curFrame++;
                    }
                }

                if (dialogState == TEXT_STATE_EVENT) {
                    if (Message_ShouldAdvance(play)) {
                        func_8010BD58(play, cmd->base);
                    }
                }
            }

            if (csCtx->curFrame == initialEndingFrame) {
                Interface_ChangeAlpha(1);
                sCurTextId = 0;
                sCurOcarinaAction = 0;
            }
        }
    }
}

void Cutscene_ProcessScript(PlayState* play, CutsceneContext* csCtx, u8* scriptPtr) {
    s16 i;
    s32 totalEntries;
    s32 cmdType;
    s32 cmdEntries;
    CsCmdGeneric* cmd;
    s32 cutsceneEndFrame;
    s16 j;

    MemCpy(&totalEntries, scriptPtr, sizeof(totalEntries));
    scriptPtr += sizeof(totalEntries);

    MemCpy(&cutsceneEndFrame, scriptPtr, sizeof(cutsceneEndFrame));
    scriptPtr += sizeof(cutsceneEndFrame);

    if ((cutsceneEndFrame < csCtx->curFrame) && (csCtx->state != CS_STATE_RUN_UNSKIPPABLE)) {
        csCtx->state = CS_STATE_STOP;
        return;
    }

    if (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_DRIGHT)) {
        csCtx->state = CS_STATE_STOP;
        return;
    }

    for (i = 0; i < totalEntries; i++) {
        MemCpy(&cmdType, scriptPtr, sizeof(cmdType));
        scriptPtr += sizeof(cmdType);

        if (cmdType == CS_CMD_STOP) {
            return;
        }

        switch (cmdType) {
            case CS_CMD_MISC:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_Misc(play, csCtx, (void*)scriptPtr);
                    scriptPtr += sizeof(CsCmdMisc);
                }
                break;

            case CS_CMD_LIGHT_SETTING:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_SetLightSetting(play, csCtx, (void*)scriptPtr);
                    scriptPtr += sizeof(CsCmdLightSetting);
                }
                break;

            case CS_CMD_START_SEQ:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_StartSequence(play, csCtx, (void*)scriptPtr);
                    scriptPtr += sizeof(CsCmdStartSeq);
                }
                break;

            case CS_CMD_STOP_SEQ:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_StopSequence(play, csCtx, (void*)scriptPtr);
                    scriptPtr += sizeof(CsCmdStopSeq);
                }
                break;

            case CS_CMD_FADE_SEQ:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_FadeSequence(play, csCtx, (void*)scriptPtr);
                    scriptPtr += sizeof(CsCmdFadeSeq);
                }
                break;

            case CS_CMD_RUMBLE_CONTROLLER:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_RumbleController(play, csCtx, (void*)scriptPtr);
                    scriptPtr += sizeof(CsCmdRumble);
                }
                break;

            case CS_CMD_TIME:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_SetTime(play, csCtx, (void*)scriptPtr);
                    scriptPtr += sizeof(CsCmdTime);
                }
                break;

            case CS_CMD_PLAYER_CUE:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->playerCue = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_0_0:
            case CS_CMD_ACTOR_CUE_0_1:
            case CS_CMD_ACTOR_CUE_0_2:
            case CS_CMD_ACTOR_CUE_0_3:
            case CS_CMD_ACTOR_CUE_0_4:
            case CS_CMD_ACTOR_CUE_0_5:
            case CS_CMD_ACTOR_CUE_0_6:
            case CS_CMD_ACTOR_CUE_0_7:
            case CS_CMD_ACTOR_CUE_0_8:
            case CS_CMD_ACTOR_CUE_0_9:
            case CS_CMD_ACTOR_CUE_0_10:
            case CS_CMD_ACTOR_CUE_0_11:
            case CS_CMD_ACTOR_CUE_0_12:
            case CS_CMD_ACTOR_CUE_0_13:
            case CS_CMD_ACTOR_CUE_0_14:
            case CS_CMD_ACTOR_CUE_0_15:
            case CS_CMD_ACTOR_CUE_0_16:
            case CS_CMD_ACTOR_CUE_0_17:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[0] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_1_0:
            case CS_CMD_ACTOR_CUE_1_1:
            case CS_CMD_ACTOR_CUE_1_2:
            case CS_CMD_ACTOR_CUE_1_3:
            case CS_CMD_ACTOR_CUE_1_4:
            case CS_CMD_ACTOR_CUE_1_5:
            case CS_CMD_ACTOR_CUE_1_6:
            case CS_CMD_ACTOR_CUE_1_7:
            case CS_CMD_ACTOR_CUE_1_8:
            case CS_CMD_ACTOR_CUE_1_9:
            case CS_CMD_ACTOR_CUE_1_10:
            case CS_CMD_ACTOR_CUE_1_11:
            case CS_CMD_ACTOR_CUE_1_12:
            case CS_CMD_ACTOR_CUE_1_13:
            case CS_CMD_ACTOR_CUE_1_14:
            case CS_CMD_ACTOR_CUE_1_15:
            case CS_CMD_ACTOR_CUE_1_16:
            case CS_CMD_ACTOR_CUE_1_17:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[1] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_2_0:
            case CS_CMD_ACTOR_CUE_2_1:
            case CS_CMD_ACTOR_CUE_2_2:
            case CS_CMD_ACTOR_CUE_2_3:
            case CS_CMD_ACTOR_CUE_2_4:
            case CS_CMD_ACTOR_CUE_2_5:
            case CS_CMD_ACTOR_CUE_2_6:
            case CS_CMD_ACTOR_CUE_2_7:
            case CS_CMD_ACTOR_CUE_2_8:
            case CS_CMD_ACTOR_CUE_2_9:
            case CS_CMD_ACTOR_CUE_2_10:
            case CS_CMD_ACTOR_CUE_2_11:
            case CS_CMD_ACTOR_CUE_2_12:
            case CS_CMD_ACTOR_CUE_2_13:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[2] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_3_0:
            case CS_CMD_ACTOR_CUE_3_1:
            case CS_CMD_ACTOR_CUE_3_2:
            case CS_CMD_ACTOR_CUE_3_3:
            case CS_CMD_ACTOR_CUE_3_4:
            case CS_CMD_ACTOR_CUE_3_5:
            case CS_CMD_ACTOR_CUE_3_6:
            case CS_CMD_ACTOR_CUE_3_7:
            case CS_CMD_ACTOR_CUE_3_8:
            case CS_CMD_ACTOR_CUE_3_9:
            case CS_CMD_ACTOR_CUE_3_10:
            case CS_CMD_ACTOR_CUE_3_11:
            case CS_CMD_ACTOR_CUE_3_12:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[3] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_4_0:
            case CS_CMD_ACTOR_CUE_4_1:
            case CS_CMD_ACTOR_CUE_4_2:
            case CS_CMD_ACTOR_CUE_4_3:
            case CS_CMD_ACTOR_CUE_4_4:
            case CS_CMD_ACTOR_CUE_4_5:
            case CS_CMD_ACTOR_CUE_4_6:
            case CS_CMD_ACTOR_CUE_4_7:
            case CS_CMD_ACTOR_CUE_4_8:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[4] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_5_0:
            case CS_CMD_ACTOR_CUE_5_1:
            case CS_CMD_ACTOR_CUE_5_2:
            case CS_CMD_ACTOR_CUE_5_3:
            case CS_CMD_ACTOR_CUE_5_4:
            case CS_CMD_ACTOR_CUE_5_5:
            case CS_CMD_ACTOR_CUE_5_6:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[5] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_6_0:
            case CS_CMD_ACTOR_CUE_6_1:
            case CS_CMD_ACTOR_CUE_6_2:
            case CS_CMD_ACTOR_CUE_6_3:
            case CS_CMD_ACTOR_CUE_6_4:
            case CS_CMD_ACTOR_CUE_6_5:
            case CS_CMD_ACTOR_CUE_6_6:
            case CS_CMD_ACTOR_CUE_6_7:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[6] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_7_0:
            case CS_CMD_ACTOR_CUE_7_1:
            case CS_CMD_ACTOR_CUE_7_2:
            case CS_CMD_ACTOR_CUE_7_3:
            case CS_CMD_ACTOR_CUE_7_4:
            case CS_CMD_ACTOR_CUE_7_5:
            case CS_CMD_ACTOR_CUE_7_6:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[7] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_8_0:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[8] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_9_0:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if ((cmd->startFrame < csCtx->curFrame) && (csCtx->curFrame <= cmd->endFrame)) {
                        csCtx->actorCues[9] = (void*)scriptPtr;
                    }

                    scriptPtr += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_CAM_EYE_POINTS:
                scriptPtr += CutsceneCmd_SetCamEyePoints(play, csCtx, (void*)scriptPtr, false);
                break;

            case CS_CMD_CAM_EYE_POINTS_REL_TO_PLAYER:
                scriptPtr += CutsceneCmd_SetCamEyePoints(play, csCtx, (void*)scriptPtr, true);
                break;

            case CS_CMD_CAM_AT_POINTS:
                scriptPtr += CutsceneCmd_SetCamAtPoints(play, csCtx, (void*)scriptPtr, false);
                break;

            case CS_CMD_CAM_AT_POINTS_REL_TO_PLAYER:
                scriptPtr += CutsceneCmd_SetCamAtPoints(play, csCtx, (void*)scriptPtr, true);
                break;

            case CS_CMD_CAM_EYE_NEW:
                scriptPtr += CutsceneCmd_SetCamEye(play, csCtx, (void*)scriptPtr, 0);
                break;

            case CS_CMD_CAM_AT_NEW:
                scriptPtr += CutsceneCmd_SetCamAt(play, csCtx, (void*)scriptPtr, 0);
                break;

            case CS_CMD_TERMINATOR:
                scriptPtr += sizeof(cmdEntries);
                CutsceneCmd_Terminator(play, csCtx, (void*)scriptPtr);
                scriptPtr += sizeof(CsCmdTerminator);
                break;

            case CS_CMD_TEXT:
                MemCpy(&cmdEntries, scriptPtr, sizeof(cmdEntries));
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdGeneric*)scriptPtr;

                    if (cmd->base != 0xFFFF) {
                        CutsceneCmd_Text(play, csCtx, (void*)scriptPtr);
                    }

                    scriptPtr += sizeof(CsCmdTextbox);
                }
                break;

            case CS_CMD_TRANSITION:
                scriptPtr += sizeof(cmdEntries);
                CutsceneCmd_Transition(play, csCtx, (void*)scriptPtr);
                scriptPtr += sizeof(CsCmdTransition);
                break;

            default:
                MemCpy(&cmdEntries, scriptPtr, 4);
                scriptPtr += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    scriptPtr += 0x30;
                }
                break;
        }
    }
}

void CutsceneHandler_RunScript(PlayState* play, CutsceneContext* csCtx) {
    Gfx* displayList;
    Gfx* prevDisplayList;

    if (0) {} // Necessary to match

    if (gSaveContext.cutsceneIndex >= 0xFFF0) {
        if (0) {} // Also necessary to match

        if (BREG(0) != 0) {
            OPEN_DISPS(play->state.gfxCtx, "../z_demo.c", 4101);

            prevDisplayList = POLY_OPA_DISP;
            displayList = Graph_GfxPlusOne(POLY_OPA_DISP);
            gSPDisplayList(OVERLAY_DISP++, displayList);
            Cutscene_DrawDebugInfo(play, &displayList, csCtx);
            gSPEndDisplayList(displayList++);
            Graph_BranchDlist(prevDisplayList, displayList);
            POLY_OPA_DISP = displayList;

            CLOSE_DISPS(play->state.gfxCtx, "../z_demo.c", 4108);
        }

        csCtx->curFrame++;

        if (R_USE_DEBUG_CUTSCENE) {
            Cutscene_ProcessScript(play, csCtx, gDebugCutsceneScriptPtr);
        } else {
            Cutscene_ProcessScript(play, csCtx, play->csCtx.scriptPtr);
        }
    }
}

void CutsceneHandler_StopManual(PlayState* play, CutsceneContext* csCtx) {
    if (Cutscene_StepTimer(play, csCtx, 0.0f)) {
        Audio_SetCutsceneFlag(0);
        csCtx->state = CS_STATE_IDLE;
    }
}

void CutsceneHandler_StopScript(PlayState* play, CutsceneContext* csCtx) {
    s16 i;

    if (Cutscene_StepTimer(play, csCtx, 0.0f)) {
        csCtx->playerCue = NULL;

        for (i = 0; i < ARRAY_COUNT(csCtx->actorCues); i++) {
            csCtx->actorCues[i] = NULL;
        }

        osSyncPrintf("\n\n\n\n\nやっぱりここかいな"); // "Right here, huh"

        gSaveContext.cutsceneIndex = 0;
        gSaveContext.gameMode = GAMEMODE_NORMAL;

        if (gUseCutsceneCam) {
            switch (gSaveContext.entranceIndex) {
                case ENTR_SPOT00_11:
                case ENTR_SPOT00_12:
                case ENTR_SPOT00_13:
                case ENTR_SPOT00_15:
                    Play_CopyCamera(play, sPrevCamId, csCtx->subCamId);
            }

            Play_ChangeCameraStatus(play, sPrevCamId, CAM_STAT_ACTIVE);
            Play_ClearCamera(play, csCtx->subCamId);
            func_8005B1A4(play->cameraPtrs[sPrevCamId]);
        }

        Audio_SetCutsceneFlag(0);
        csCtx->state = CS_STATE_IDLE;
    }
}

void Cutscene_SetupScripted(PlayState* play, CutsceneContext* csCtx) {
    u8 i;

    if ((gSaveContext.cutsceneTrigger != 0) && (csCtx->state == CS_STATE_IDLE) && !Player_InCsMode(play)) {
        gSaveContext.cutsceneIndex = 0xFFFD;
    }

    if ((gSaveContext.cutsceneIndex >= 0xFFF0) && (csCtx->state == CS_STATE_IDLE)) {
        CutsceneFlags_Unset(play, 0);

        sCurTextId = 0;
        sCurOcarinaAction = 0;
        csCtx->unk_12 = 0;
        csCtx->playerCue = NULL;

        for (i = 0; i < ARRAY_COUNT(csCtx->actorCues); i++) {
            csCtx->actorCues[i] = NULL;
        }

        csCtx->state++; // CS_STATE_START

        if (csCtx->state == CS_STATE_START) {
            Audio_SetCutsceneFlag(1);

            csCtx->curFrame = 0xFFFF;

            csCtx->camEyePointsAppliedFrame = 0xFFFF;
            gCamAtPointsAppliedFrame = 0xFFFF;
            gCamEyeAppliedFrame = 0xFFFF;
            gCamAtAppliedFrame = 0xFFFF;

            csCtx->camAtReady = false;
            csCtx->camEyeReady = false;

            sPrevCamId = play->activeCamId;

            if (gUseCutsceneCam) {
                csCtx->subCamId = Play_CreateSubCamera(play);
            }

            if (gSaveContext.cutsceneTrigger == 0) {
                Interface_ChangeAlpha(1);
                ShrinkWindow_SetVal(0x20);
                ShrinkWindow_SetCurrentVal(0x20);
                csCtx->state++; // CS_STATE_RUN
            }

            CutsceneHandler_RunScript(play, csCtx);
        }

        gSaveContext.cutsceneTrigger = 0;
    }
}

u16 D_8015FCCC;      // only written to, never read
char D_8015FCD0[20]; // unreferenced
u8 D_8015FCE4;       // only written to, never read

void func_80069048(PlayState* play) {
    s16 i;

    D_8015FCCC = 0;
    for (i = 0; i < 20; i++) {
        ; // Empty Loop
    }
    D_8015FCE4 = 0;
}

void func_8006907C(PlayState* play) {
    if (D_8015FCCC != 0) {
        D_8015FCCC = 0;
    }
}

void Cutscene_HandleEntranceTriggers(PlayState* play) {
    EntranceCutscene* entranceCutscene;
    u8 requiredAge;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sEntranceCutsceneTable); i++) {
        entranceCutscene = &sEntranceCutsceneTable[i];
        requiredAge = entranceCutscene->ageRestriction;

        if (requiredAge == 2) {
            requiredAge = gSaveContext.linkAge;
        }

        if ((gSaveContext.entranceIndex == entranceCutscene->entrance) &&
            (!Flags_GetEventChkInf(entranceCutscene->flag) || (entranceCutscene->flag == EVENTCHKINF_18)) &&
            (gSaveContext.cutsceneIndex < 0xFFF0) && ((u8)gSaveContext.linkAge == requiredAge) &&
            (gSaveContext.respawnFlag <= 0)) {
            Flags_SetEventChkInf(entranceCutscene->flag);
            Cutscene_SetScript(play, entranceCutscene->scriptPtr);
            gSaveContext.cutsceneTrigger = 2;
            gSaveContext.showTitleCard = false;
            break;
        }
    }
}

void Cutscene_HandleConditionalTriggers(PlayState* play) {
    osSyncPrintf("\ngame_info.mode=[%d] restart_flag", ((void)0, gSaveContext.respawnFlag));

    if ((gSaveContext.gameMode == GAMEMODE_NORMAL) && (gSaveContext.respawnFlag <= 0) &&
        (gSaveContext.cutsceneIndex < 0xFFF0)) {
        if ((gSaveContext.entranceIndex == ENTR_SPOT11_1) && !Flags_GetEventChkInf(EVENTCHKINF_AC)) {
            Flags_SetEventChkInf(EVENTCHKINF_AC);
            gSaveContext.entranceIndex = ENTR_SPOT11_0;
            gSaveContext.cutsceneIndex = 0xFFF0;
        } else if ((gSaveContext.entranceIndex == ENTR_SPOT01_0) && LINK_IS_ADULT && GET_EVENTCHKINF(EVENTCHKINF_48) &&
                   GET_EVENTCHKINF(EVENTCHKINF_49) && GET_EVENTCHKINF(EVENTCHKINF_4A) &&
                   !Flags_GetEventChkInf(EVENTCHKINF_AA)) {
            Flags_SetEventChkInf(EVENTCHKINF_AA);
            gSaveContext.cutsceneIndex = 0xFFF0;
        } else if ((gSaveContext.entranceIndex == ENTR_SPOT10_9) && !Flags_GetEventChkInf(EVENTCHKINF_C1)) {
            Flags_SetEventChkInf(EVENTCHKINF_C1);
            Item_Give(play, ITEM_OCARINA_FAIRY);
            gSaveContext.entranceIndex = ENTR_SPOT10_0;
            gSaveContext.cutsceneIndex = 0xFFF0;
        } else if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT) && CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW) &&
                   LINK_IS_ADULT && !Flags_GetEventChkInf(EVENTCHKINF_C4) &&
                   (gEntranceTable[((void)0, gSaveContext.entranceIndex)].scene == SCENE_TOKINOMA)) {
            Flags_SetEventChkInf(EVENTCHKINF_C4);
            gSaveContext.entranceIndex = ENTR_TOKINOMA_0;
            gSaveContext.cutsceneIndex = 0xFFF8;
        } else if (!Flags_GetEventChkInf(EVENTCHKINF_C7) &&
                   (gEntranceTable[((void)0, gSaveContext.entranceIndex)].scene == SCENE_GANON_DEMO)) {
            Flags_SetEventChkInf(EVENTCHKINF_C7);
            gSaveContext.entranceIndex = ENTR_GANON_DEMO_0;
            gSaveContext.cutsceneIndex = 0xFFF0;
        }
    }
}

void Cutscene_SetScript(PlayState* play, void* script) {
    if (SEGMENT_NUMBER(script) != 0) {
        play->csCtx.scriptPtr = SEGMENTED_TO_VIRTUAL(script);
    } else {
        play->csCtx.scriptPtr = script;
    }
}
