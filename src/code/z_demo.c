#include "global.h"
#include "quake.h"
#include "z64camera.h"
#if PLATFORM_N64
#include "n64dd.h"
#endif

#include "assets/scenes/indoors/tokinoma/tokinoma_scene.h"

#include "assets/scenes/overworld/ganon_tou/ganon_tou_scene.h"
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
    CutsceneHandler_DoNothing,   // CS_STATE_RUN_UNSTOPPABLE
};

CutsceneHandler sScriptedCutsceneHandlers[] = {
    CutsceneHandler_DoNothing,   // CS_STATE_IDLE
    CutsceneHandler_StartScript, // CS_STATE_START
    CutsceneHandler_RunScript,   // CS_STATE_RUN
    CutsceneHandler_StopScript,  // CS_STATE_STOP
    CutsceneHandler_RunScript,   // CS_STATE_RUN_UNSTOPPABLE
};

typedef enum TitleDemoDestination {
    /* 0 */ TITLE_DEMO_SPIRIT_TEMPLE,
    /* 1 */ TITLE_DEMO_DEATH_MOUNTAIN_CRATER,
    /* 2 */ TITLE_DEMO_GANONDORF_HORSE
} TitleDemoDestination;

u8 sTitleDemoDestination = TITLE_DEMO_SPIRIT_TEMPLE;

typedef struct EntranceCutscene {
    /* 0x00 */ u16 entrance;      // entrance index upon which the cutscene should trigger
    /* 0x02 */ u8 ageRestriction; // 0 for adult only, 1 for child only, 2 for both ages
    /* 0x03 */ u8 flag;           // eventChkInf flag bound to the entrance cutscene
    /* 0x04 */ void* script;      // cutscene script that should run
} EntranceCutscene;               // size = 0x8

EntranceCutscene sEntranceCutsceneTable[] = {
    { ENTR_HYRULE_FIELD_3, 2, EVENTCHKINF_A0, gHyruleFieldIntroCs },
    { ENTR_DEATH_MOUNTAIN_TRAIL_0, 2, EVENTCHKINF_A1, gDMTIntroCs },
    { ENTR_KAKARIKO_VILLAGE_0, 2, EVENTCHKINF_A3, gKakarikoVillageIntroCs },
    { ENTR_ZORAS_DOMAIN_0, 2, EVENTCHKINF_A4, gZorasDomainIntroCs },
    { ENTR_HYRULE_CASTLE_0, 1, EVENTCHKINF_A5, gHyruleCastleIntroCs },
    { ENTR_GORON_CITY_0, 2, EVENTCHKINF_A6, gGoronCityIntroCs },
    { ENTR_TEMPLE_OF_TIME_0, 2, EVENTCHKINF_A7, gTempleOfTimeIntroCs },
    { ENTR_DEKU_TREE_0, 2, EVENTCHKINF_A8, gDekuTreeIntroCs },
    { ENTR_HYRULE_FIELD_11, 0, EVENTCHKINF_EPONA_OBTAINED, gHyruleFieldSouthEponaJumpCs },
    { ENTR_HYRULE_FIELD_13, 0, EVENTCHKINF_EPONA_OBTAINED, gHyruleFieldEastEponaJumpCs },
    { ENTR_HYRULE_FIELD_12, 0, EVENTCHKINF_EPONA_OBTAINED, gHyruleFieldWestEponaJumpCs },
    { ENTR_HYRULE_FIELD_15, 0, EVENTCHKINF_EPONA_OBTAINED, gHyruleFieldGateEponaJumpCs },
    { ENTR_HYRULE_FIELD_16, 1, EVENTCHKINF_A9, gHyruleFieldGetOoTCs },
    { ENTR_LAKE_HYLIA_0, 2, EVENTCHKINF_B1, gLakeHyliaIntroCs },
    { ENTR_GERUDO_VALLEY_0, 2, EVENTCHKINF_B2, gGerudoValleyIntroCs },
    { ENTR_GERUDOS_FORTRESS_0, 2, EVENTCHKINF_B3, gGerudoFortressIntroCs },
    { ENTR_LON_LON_RANCH_0, 2, EVENTCHKINF_B4, gLonLonRanchIntroCs },
    { ENTR_JABU_JABU_0, 2, EVENTCHKINF_B5, gJabuJabuIntroCs },
    { ENTR_GRAVEYARD_0, 2, EVENTCHKINF_B6, gGraveyardIntroCs },
    { ENTR_ZORAS_FOUNTAIN_2, 2, EVENTCHKINF_B7, gZorasFountainIntroCs },
    { ENTR_DESERT_COLOSSUS_0, 2, EVENTCHKINF_B8, gDesertColossusIntroCs },
    { ENTR_DEATH_MOUNTAIN_CRATER_0, 2, EVENTCHKINF_B9, gDeathMountainCraterIntroCs },
    { ENTR_HYRULE_CASTLE_0, 0, EVENTCHKINF_BA, gGanonsCastleIntroCs },
    { ENTR_ROYAL_FAMILYS_TOMB_1, 2, EVENTCHKINF_5A, gSunSongGraveSunSongTeachPart2Cs },
    { ENTR_INSIDE_GANONS_CASTLE_2, 2, EVENTCHKINF_BB, gForestBarrierCs },
    { ENTR_INSIDE_GANONS_CASTLE_3, 2, EVENTCHKINF_BC, gWaterBarrierCs },
    { ENTR_INSIDE_GANONS_CASTLE_4, 2, EVENTCHKINF_BD, gShadowBarrierCs },
    { ENTR_INSIDE_GANONS_CASTLE_5, 2, EVENTCHKINF_BE, gFireBarrierCs },
    { ENTR_INSIDE_GANONS_CASTLE_6, 2, EVENTCHKINF_BF, gLightBarrierCs },
    { ENTR_INSIDE_GANONS_CASTLE_7, 2, EVENTCHKINF_AD, gSpiritBarrierCs },
    { ENTR_SPIRIT_TEMPLE_BOSS_0, 0, EVENTCHKINF_C0, gSpiritBossNabooruKnuckleIntroCs },
    { ENTR_GERUDOS_FORTRESS_17, 0, EVENTCHKINF_C7, gGerudoFortressFirstCaptureCs },
    { ENTR_DEATH_MOUNTAIN_CRATER_1, 2, EVENTCHKINF_B9, gDeathMountainCraterIntroCs },
    { ENTR_KOKIRI_FOREST_12, 2, EVENTCHKINF_C6, gKokiriForestDekuSproutCs },
};

void* sCutscenesUnknownList[] = {
    gDekuTreeIntroCs,     gJabuJabuIntroCs, gDcOpeningCs, gSpiritBossNabooruKnuckleDefeatCs,
    gIceCavernSerenadeCs, gTowerBarrierCs,
};

// Stores the frame the relevant cam data was last applied on
u16 gCamAtSplinePointsAppliedFrame;
u16 gCamEyePointAppliedFrame;
u16 gCamAtPointAppliedFrame;

#pragma increment_block_number "gc-eu:186 gc-eu-mq:176 gc-jp:188 gc-jp-ce:188 gc-jp-mq:176 gc-us:188 gc-us-mq:176" \
                               "ntsc-1.0:80 ntsc-1.1:80 ntsc-1.2:80 pal-1.0:80 pal-1.1:80"

// Cam ID to return to when a scripted cutscene is finished
s16 sReturnToCamId;

// Setting this to false will skip applying changes to the camera from the current cutscene script.
// It is set to true in most normal situations, only changed to false for debugging purposes.
u8 gUseCutsceneCam;

s16 sQuakeIndex;

void Cutscene_SetupScripted(PlayState* play, CutsceneContext* csCtx);

#if DEBUG_FEATURES
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
#endif

void Cutscene_InitContext(PlayState* play, CutsceneContext* csCtx) {
    csCtx->state = CS_STATE_IDLE;
    csCtx->timer = 0.0f;
}

void Cutscene_StartManual(PlayState* play, CutsceneContext* csCtx) {
    csCtx->state = CS_STATE_START;
    csCtx->playerCue = NULL;
}

void Cutscene_StopManual(PlayState* play, CutsceneContext* csCtx) {
    if (csCtx->state != CS_STATE_RUN_UNSTOPPABLE) {
        csCtx->state = CS_STATE_STOP;
    }
}

void Cutscene_UpdateManual(PlayState* play, CutsceneContext* csCtx) {
    if (gSaveContext.save.cutsceneIndex < 0xFFF0) {
        sManualCutsceneHandlers[csCtx->state](play, csCtx);
    }
}

void Cutscene_UpdateScripted(PlayState* play, CutsceneContext* csCtx) {
#if DEBUG_FEATURES
    {
        Input* input = &play->state.input[0];

        if (CHECK_BTN_ALL(input->press.button, BTN_DLEFT) && (csCtx->state == CS_STATE_IDLE) && IS_CUTSCENE_LAYER) {
            gUseCutsceneCam = false;
            gSaveContext.save.cutsceneIndex = 0xFFFD;
            gSaveContext.cutsceneTrigger = 1;
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_DUP) && (csCtx->state == CS_STATE_IDLE) && IS_CUTSCENE_LAYER &&
            !gDebugCamEnabled) {
            gUseCutsceneCam = true;
            gSaveContext.save.cutsceneIndex = 0xFFFD;
            gSaveContext.cutsceneTrigger = 1;
        }
    }
#endif

    if ((gSaveContext.cutsceneTrigger != 0) && (play->transitionTrigger == TRANS_TRIGGER_START)) {
        gSaveContext.cutsceneTrigger = 0;
    }

    if ((gSaveContext.cutsceneTrigger != 0) && (csCtx->state == CS_STATE_IDLE)) {
        PRINTF(T("\nデモ開始要求 発令！", "\nDemo start request issued!"));
        gSaveContext.save.cutsceneIndex = 0xFFFD;
        gSaveContext.cutsceneTrigger = 1;
    }

    if (gSaveContext.save.cutsceneIndex >= 0xFFF0) {
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
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
    Letterbox_SetSizeTarget(32);

    if (Cutscene_StepTimer(play, csCtx, 1.0f)) {
        Audio_SetCutsceneFlag(1);
        csCtx->state++; // CS_STATE_RUN
    }
}

void CutsceneHandler_StartScript(PlayState* play, CutsceneContext* csCtx) {
    CutsceneHandler_RunScript(play, csCtx);
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
    Letterbox_SetSizeTarget(32);

    if (Cutscene_StepTimer(play, csCtx, 1.0f)) {
        Audio_SetCutsceneFlag(1);
        csCtx->state++; // CS_STATE_RUN
    }
}

void CutsceneCmd_Misc(PlayState* play, CutsceneContext* csCtx, CsCmdMisc* cmd) {
    Player* player = GET_PLAYER(play);
    f32 lerp;
    u8 isFirstFrame = false;

    if (!((csCtx->curFrame >= cmd->startFrame) &&
          ((csCtx->curFrame < cmd->endFrame) || (cmd->endFrame == cmd->startFrame)))) {
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

        case CS_MISC_SET_CSFLAG_0:
            if (isFirstFrame) {
                CutsceneFlags_Set(play, 0);

                // Because this check uses an entrance index, the Door of Time will only open
                // after entering Temple of Time from the front entrance.
                // This is not an issue in the context of normal gameplay.
                if (gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_0) {
                    CutsceneFlags_Set(play, 2);
                }
            }
            break;

        case CS_MISC_LIFT_FOG:
            if (play->envCtx.adjZFar < ENV_ZFAR_MAX) {
                play->envCtx.adjZFar += 35;
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
            if (play->roomCtx.drawParams[0] <= 127) {
                play->roomCtx.drawParams[0] += 4;
            }
            break;

        case CS_MISC_SNOW:
            play->envCtx.precipitation[PRECIP_SNOW_MAX] = 16;
            break;

        case CS_MISC_SET_CSFLAG_1:
            CutsceneFlags_Set(play, 1);
            break;

        case CS_MISC_DEKU_TREE_DEATH:
            if (play->roomCtx.drawParams[0] < 1650) {
                play->roomCtx.drawParams[0] += 20;
            }

            if (csCtx->curFrame == 783) {
                Sfx_PlaySfxCentered(NA_SE_EV_DEKU_DEATH);
            } else if (csCtx->curFrame == 717) {
                play->roomCtx.drawParams[0] = 0;
            }
            break;

        case CS_MISC_STOP_CUTSCENE:
            if (isFirstFrame) {
                if (csCtx->state != CS_STATE_RUN_UNSTOPPABLE) {
                    csCtx->state = CS_STATE_STOP;
                }
            }
            break;

        case CS_MISC_TRIFORCE_FLASH:
            if (play->roomCtx.drawParams[1] == 0) {
                Sfx_PlaySfxCentered(NA_SE_EV_TRIFORCE_FLASH);
            }

            if (play->roomCtx.drawParams[1] < 255) {
                play->roomCtx.drawParams[1] += 5;
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
                sQuakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_6);
                Quake_SetSpeed(sQuakeIndex, 0x7FFF);
                Quake_SetPerturbations(sQuakeIndex, 4, 0, 1000, 0);
                Quake_SetDuration(sQuakeIndex, 800);
            }
            break;

        case CS_MISC_QUAKE_STOP:
            if (isFirstFrame) {
                Quake_RemoveRequest(sQuakeIndex);
            }
            break;

        case CS_MISC_STOP_STORM_AND_ADVANCE_TO_DAY:
            play->envCtx.precipitation[PRECIP_RAIN_MAX] = 0;
            play->envCtx.stormRequest = STORM_REQUEST_STOP;

            if (gSaveContext.save.dayTime < CLOCK_TIME(7, 0)) {
                gSaveContext.save.dayTime += 30;
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
            gVisMonoColor.r = 255;
            gVisMonoColor.g = 255;
            gVisMonoColor.b = 255;
            gVisMonoColor.a = 255;
            break;

        case CS_MISC_VISMONO_SEPIA:
            gVisMonoColor.r = 255;
            gVisMonoColor.g = 180;
            gVisMonoColor.b = 100;
            gVisMonoColor.a = 255.0f * lerp;
            break;

        case CS_MISC_HIDE_ROOM:
            play->roomCtx.curRoom.segment = NULL;
            break;

        case CS_MISC_TIME_ADVANCE_TO_NIGHT:
            gSaveContext.save.dayTime += 30;

            if ((gSaveContext.save.dayTime) >= CLOCK_TIME(19, 0)) {
                gSaveContext.save.dayTime = CLOCK_TIME(19, 0) - 1;
            }
            break;

        case CS_MISC_SET_TIME_BASED_LIGHT_SETTING:
            if ((gSaveContext.save.dayTime < CLOCK_TIME(4, 30)) || (gSaveContext.save.dayTime >= CLOCK_TIME(6, 30))) {
                if ((gSaveContext.save.dayTime >= CLOCK_TIME(6, 30)) &&
                    (gSaveContext.save.dayTime < CLOCK_TIME(16, 0))) {
                    play->envCtx.lightSettingOverride = 1;
                } else if ((gSaveContext.save.dayTime >= CLOCK_TIME(16, 0)) &&
                           (gSaveContext.save.dayTime <= CLOCK_TIME(18, 30))) {
                    play->envCtx.lightSettingOverride = 2;
                } else {
                    play->envCtx.lightSettingOverride = 3;
                }
            }
            break;

        case CS_MISC_RED_PULSATING_LIGHTS:
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

        case CS_MISC_SET_CSFLAG_3:
            CutsceneFlags_Set(play, 3);
            break;

        case CS_MISC_SET_CSFLAG_4:
            CutsceneFlags_Set(play, 4);
            break;

        case CS_MISC_SANDSTORM_FILL:
            if (isFirstFrame) {
                play->envCtx.sandstormState = SANDSTORM_FILL;
            }

            Sfx_PlaySfxCentered2(NA_SE_EV_SAND_STORM - SFX_FLAG);
            break;

        case CS_MISC_SUNSSONG_START:
            gSaveContext.sunsSongState = SUNSSONG_START;
            break;

        case CS_MISC_FREEZE_TIME:
            if (IS_DAY) {
                gSaveContext.save.dayTime -= gTimeSpeed;
            } else {
                // doubled to compensate for time moving twice as fast at night
                gSaveContext.save.dayTime -= gTimeSpeed * 2;
            }
            break;

        case CS_MISC_LONG_SCARECROW_SONG:
            AudioOcarina_PlayLongScarecrowSong();
            csCtx->curFrame = cmd->startFrame - 1; // the cutscene runs forever
            break;
    }
}

void CutsceneCmd_SetLightSetting(PlayState* play, CutsceneContext* csCtx, CsCmdLightSetting* cmd) {
    if (csCtx->curFrame == cmd->startFrame) {
        play->envCtx.lightSettingOverride = cmd->settingPlusOne - 1;
        play->envCtx.lightBlend = 1.0f;
    }
}

void CutsceneCmd_StartSequence(PlayState* play, CutsceneContext* csCtx, CsCmdStartSeq* cmd) {
    if (csCtx->curFrame == cmd->startFrame) {
        Audio_PlaySequenceInCutscene(cmd->seqIdPlusOne - 1);
    }
}

void CutsceneCmd_StopSequence(PlayState* play, CutsceneContext* csCtx, CsCmdStopSeq* cmd) {
    if (csCtx->curFrame == cmd->startFrame) {
        Audio_StopSequenceInCutscene(cmd->seqIdPlusOne - 1);
    }
}

void CutsceneCmd_FadeOutSequence(PlayState* play, CutsceneContext* csCtx, CsCmdFadeOutSeq* cmd) {
    u8 fadeOutDuration;

    if ((csCtx->curFrame == cmd->startFrame) && (csCtx->curFrame < cmd->endFrame)) {
        fadeOutDuration = cmd->endFrame - cmd->startFrame;

        if (cmd->seqPlayer == CS_FADE_OUT_FANFARE) {
            SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_FANFARE, fadeOutDuration);
        } else {
            SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, fadeOutDuration);
        }
    }
}

void CutsceneCmd_RumbleController(PlayState* play, CutsceneContext* csCtx, CsCmdRumble* cmd) {
    if (csCtx->curFrame == cmd->startFrame) {
        Rumble_Request(0.0f, cmd->sourceStrength, cmd->duration, cmd->decreaseRate);
    }
}

void CutsceneCmd_SetTime(PlayState* play, CutsceneContext* csCtx, CsCmdTime* cmd) {
    s16 hours;
    s16 minutes;

    if (csCtx->curFrame == cmd->startFrame) {
        hours = (cmd->hour * 60.0f) / (24.0f * 60.0f / 0x10000);
        minutes = (cmd->minute + 1) / (24.0f * 60.0f / 0x10000);

        gSaveContext.save.dayTime = hours + minutes;
        gSaveContext.skyboxTime = hours + minutes;
    }
}

void CutsceneCmd_Destination(PlayState* play, CutsceneContext* csCtx, CsCmdDestination* cmd) {
    Player* player = GET_PLAYER(play);
    s32 titleDemoSkipped = false;

    if ((gSaveContext.gameMode != GAMEMODE_NORMAL) && (gSaveContext.gameMode != GAMEMODE_END_CREDITS) &&
        (play->sceneId != SCENE_HYRULE_FIELD) && (csCtx->curFrame > 20) &&
        (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_A) ||
         CHECK_BTN_ALL(play->state.input[0].press.button, BTN_B) ||
         CHECK_BTN_ALL(play->state.input[0].press.button, BTN_START)) &&
        (gSaveContext.fileNum != 0xFEDC) && (play->transitionTrigger == TRANS_TRIGGER_OFF)) {
        Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        titleDemoSkipped = true;
    }

    if ((csCtx->curFrame == cmd->startFrame) || titleDemoSkipped ||
        (DEBUG_FEATURES && (csCtx->curFrame > 20) && CHECK_BTN_ALL(play->state.input[0].press.button, BTN_START) &&
         (gSaveContext.fileNum != 0xFEDC))) {
        csCtx->state = CS_STATE_RUN_UNSTOPPABLE;
        Audio_SetCutsceneFlag(0);
        gSaveContext.cutsceneTransitionControl = 1;

        PRINTF(T("\n分岐先指定！！=[%d]番", "\nBranch destination specified!!=[%d]"), cmd->destination);

        // `forceRisingButtonAlphas` has a secondary purpose, which is to signal to the title screen actor
        // that it should display immediately. This occurs when a title screen cutscene that is not the main
        // hyrule field scene is skipped.
        if ((gSaveContext.gameMode != GAMEMODE_NORMAL) && (csCtx->curFrame != cmd->startFrame)) {
            gSaveContext.forceRisingButtonAlphas = true;
        }

        gSaveContext.save.cutsceneIndex = 0;

        switch (cmd->destination) {
            case CS_DEST_CUTSCENE_MAP_GANON_HORSE:
                play->nextEntranceIndex = ENTR_CUTSCENE_MAP_0;
                gSaveContext.save.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_CUTSCENE_MAP_THREE_GODDESSES:
                play->nextEntranceIndex = ENTR_CUTSCENE_MAP_0;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case CS_DEST_GERUDO_VALLEY_DIN_PART_1:
                play->nextEntranceIndex = ENTR_GERUDO_VALLEY_0;
                gSaveContext.save.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case CS_DEST_DEATH_MOUNTAIN_TRAIL_NAYRU:
                play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_TRAIL_0;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case CS_DEST_KOKIRI_FOREST_FARORE:
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_0;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case CS_DEST_CUTSCENE_MAP_TRIFORCE_CREATION:
                play->nextEntranceIndex = ENTR_CUTSCENE_MAP_0;
                gSaveContext.save.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_WHITE;
                break;

            case CS_DEST_KOKIRI_FOREST_RECEIVE_KOKIRI_EMERALD:
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_0;
                gSaveContext.save.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_INSTANT;
                break;

            case CS_DEST_TEMPLE_OF_TIME_FROM_MASTER_SWORD:
                gSaveContext.save.info.fw.set = 0;
                gSaveContext.respawn[RESPAWN_MODE_TOP].data = 0;

                if (!GET_EVENTCHKINF(EVENTCHKINF_45)) {
                    SET_EVENTCHKINF(EVENTCHKINF_45);
                    play->nextEntranceIndex = ENTR_CUTSCENE_MAP_0;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    gSaveContext.save.cutsceneIndex = 0xFFF3;
                    play->transitionType = TRANS_TYPE_INSTANT;
                } else {
                    if (!IS_CUTSCENE_LAYER) {
                        if (!LINK_IS_ADULT) {
                            play->linkAgeOnLoad = LINK_AGE_ADULT;
                        } else {
                            play->linkAgeOnLoad = LINK_AGE_CHILD;
                        }
                    }

                    play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_2;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                    gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                }
                break;

            case CS_DEST_GERUDO_VALLEY_DIN_PART_2:
                play->nextEntranceIndex = ENTR_GERUDO_VALLEY_0;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FILL_BROWN;
                break;

            case CS_DEST_LINKS_HOUSE_INTRO:
                play->nextEntranceIndex = ENTR_LINKS_HOUSE_0;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_KOKIRI_FOREST_INTRO:
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_0;
                gSaveContext.save.cutsceneIndex = 0xFFF3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_DEATH_MOUNTAIN_TRAIL_FROM_GORON_RUBY:
                play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_TRAIL_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_ZORAS_FOUNTAIN_FROM_ZORAS_SAPPHIRE:
                play->nextEntranceIndex = ENTR_ZORAS_FOUNTAIN_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_KOKIRI_FOREST_FROM_KOKIRI_EMERALD:
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_11;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_TEMPLE_OF_TIME_KOKIRI_EMERALD_RESTORED:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_TEMPLE_OF_TIME_GORON_RUBY_RESTORED:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF5;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_TEMPLE_OF_TIME_ZORAS_SAPPHIRE_RESTORED:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF6;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_TEMPLE_OF_TIME_AFTER_LIGHT_MEDALLION:
#if DEBUG_FEATURES
                SET_EVENTCHKINF(EVENTCHKINF_WATCHED_SHEIK_AFTER_MASTER_SWORD_CS);
#endif
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_DEATH_MOUNTAIN_TRAIL:
                play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_TRAIL_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                gSaveContext.save.cutsceneIndex = 0x8000;
                break;

            case CS_DEST_LAKE_HYLIA_WATER_RESTORED:
                play->nextEntranceIndex = ENTR_LAKE_HYLIA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_DESERT_COLOSSUS_REQUIEM:
                Item_Give(play, ITEM_SONG_REQUIEM);
                play->nextEntranceIndex = ENTR_DESERT_COLOSSUS_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_CUTSCENE_MAP_GANONDORF_DEFEATED_CREDITS:
                play->nextEntranceIndex = ENTR_CUTSCENE_MAP_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF8;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_JABU_JABU:
                play->nextEntranceIndex = ENTR_JABU_JABU_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_CHAMBER_OF_SAGES_LIGHT_MEDALLION:
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_TEMPLE_OF_TIME_KOKIRI_EMERALD_RESTORED_2:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_TEMPLE_OF_TIME_GORON_RUBY_RESTORED_2:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF5;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_TEMPLE_OF_TIME_ZORAS_SAPPHIRE_RESTORED_2:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF6;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_CHAMBER_OF_SAGES_FOREST_MEDALLION:
                play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_FOREST;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_CHAMBER_OF_SAGES_FIRE_MEDALLION:
                play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                Item_Give(play, ITEM_MEDALLION_FIRE);
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_FIRE;
                break;

            case CS_DEST_CHAMBER_OF_SAGES_WATER_MEDALLION:
                play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_WATER;
                break;

            case CS_DEST_HYRULE_FIELD_FLASHBACK:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF2;
                play->transitionType = TRANS_TYPE_INSTANT;
                break;

            case CS_DEST_HYRULE_FIELD_FROM_ZELDA_ESCAPE:
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_CUTSCENE_MAP_GANONDORF_FROM_MASTER_SWORD:
                play->nextEntranceIndex = ENTR_CUTSCENE_MAP_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF3;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_HYRULE_FIELD_INTRO_DREAM:
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case CS_DEST_CUTSCENE_MAP_SHEIKAH_LEGEND:
                play->nextEntranceIndex = ENTR_CUTSCENE_MAP_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case CS_DEST_TEMPLE_OF_TIME_ZELDA_REVEAL:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF9;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case CS_DEST_TEMPLE_OF_TIME_GET_LIGHT_ARROWS:
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFFA;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case CS_DEST_LAKE_HYLIA_FROM_LAKE_RESTORED:
                play->nextEntranceIndex = ENTR_LAKE_HYLIA_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_KAKARIKO_VILLAGE_DRAIN_WELL:
                play->nextEntranceIndex = ENTR_KAKARIKO_VILLAGE_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF2;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case CS_DEST_WINDMILL_FROM_WELL_DRAINED:
                play->nextEntranceIndex = ENTR_WINDMILL_AND_DAMPES_GRAVE_2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case CS_DEST_TEMPLE_OF_TIME_FROM_ALL_STONES_RESTORED:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE_INSTANT;
                break;

            case CS_DEST_TEMPLE_OF_TIME_AFTER_LIGHT_MEDALLION_ALT:
#if DEBUG_FEATURES
                SET_EVENTCHKINF(EVENTCHKINF_WATCHED_SHEIK_AFTER_MASTER_SWORD_CS);
#endif
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case CS_DEST_KAKARIKO_VILLAGE_NOCTURNE_PART_2:
                Item_Give(play, ITEM_SONG_NOCTURNE);
                SET_EVENTCHKINF(EVENTCHKINF_54);
                play->nextEntranceIndex = ENTR_KAKARIKO_VILLAGE_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF1;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case CS_DEST_DESERT_COLOSSUS_FROM_REQUIEM:
                play->nextEntranceIndex = ENTR_DESERT_COLOSSUS_4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_SANDSTORM_END;
                gSaveContext.nextTransitionType = TRANS_TYPE_SANDSTORM_END;
                break;

            case CS_DEST_TEMPLE_OF_TIME_FROM_LIGHT_ARROWS:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                break;

            case CS_DEST_KAKARIKO_VILLAGE_FROM_NOCTURNE:
                play->nextEntranceIndex = ENTR_KAKARIKO_VILLAGE_13;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE_INSTANT;
                break;

            case CS_DEST_HYRULE_FIELD_FROM_ZELDAS_COURTYARD:
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_0;
                gSaveContext.save.cutsceneIndex = 0xFFF8;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_CIRCLE(TCA_NORMAL, TCC_WHITE, TCS_SLOW);
                break;

            case CS_DEST_TEMPLE_OF_TIME_SONG_OF_TIME:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                gSaveContext.save.cutsceneIndex = 0xFFF7;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_INSTANT;
                break;

            case CS_DEST_HYRULE_FIELD_FROM_SONG_OF_TIME:
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_16;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_GERUDO_VALLEY_CREDITS:
#if DEBUG_FEATURES
                gSaveContext.gameMode = GAMEMODE_END_CREDITS;
                Audio_SetSfxBanksMute(0x6F);
#endif
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_GERUDO_VALLEY_0;
                gSaveContext.save.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_GERUDO_FORTRESS_CREDITS:
                play->nextEntranceIndex = ENTR_GERUDOS_FORTRESS_0;
                gSaveContext.save.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_KAKARIKO_VILLAGE_CREDITS:
                play->nextEntranceIndex = ENTR_KAKARIKO_VILLAGE_0;
                gSaveContext.save.cutsceneIndex = 0xFFF4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_DEATH_MOUNTAIN_TRAIL_CREDITS_PART_1:
                play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_TRAIL_0;
                gSaveContext.save.cutsceneIndex = 0xFFF3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_GORON_CITY_CREDITS:
                play->nextEntranceIndex = ENTR_GORON_CITY_0;
                gSaveContext.save.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_LAKE_HYLIA_CREDITS:
                play->nextEntranceIndex = ENTR_LAKE_HYLIA_0;
                gSaveContext.save.cutsceneIndex = 0xFFF1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_ZORAS_FOUNTAIN_CREDITS:
                play->nextEntranceIndex = ENTR_ZORAS_FOUNTAIN_0;
                gSaveContext.save.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_ZORAS_DOMAIN_CREDITS:
                play->nextEntranceIndex = ENTR_ZORAS_DOMAIN_0;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_KOKIRI_FOREST_CREDITS_PART_1:
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_0;
                gSaveContext.save.cutsceneIndex = 0xFFF6;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_KOKIRI_FOREST_CREDITS_PART_2:
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_0;
                gSaveContext.save.cutsceneIndex = 0xFFF7;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_HYRULE_FIELD_CREDITS:
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_0;
                gSaveContext.save.cutsceneIndex = 0xFFF5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_LON_LON_RANCH_CREDITS_PART_1_ALT:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
                gSaveContext.save.cutsceneIndex = 0xFFF2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_KAKARIKO_VILLAGE_FROM_TRAIL_OWL:
                play->nextEntranceIndex = ENTR_KAKARIKO_VILLAGE_14;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_HYRULE_FIELD_FROM_LAKE_HYLIA_OWL:
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_9;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_CUTSCENE_MAP_DEKU_SPROUT_PART_2:
                play->nextEntranceIndex = ENTR_CUTSCENE_MAP_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF5;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_KOKIRI_FOREST_DEKU_SPROUT_PART_3:
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_12;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_DEATH_MOUNTAIN_TRAIL_CREDITS_PART_2:
                play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_TRAIL_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_TEMPLE_OF_TIME_CREDITS:
                gSaveContext.save.info.equips.equipment |= EQUIP_VALUE_TUNIC_KOKIRI << (EQUIP_TYPE_TUNIC * 4);
                Player_SetEquipmentData(play, player);
                gSaveContext.save.info.equips.equipment |= EQUIP_VALUE_BOOTS_KOKIRI << (EQUIP_TYPE_BOOTS * 4);
                Player_SetEquipmentData(play, player);
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF1;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_ZELDAS_COURTYARD_CREDITS:
                play->nextEntranceIndex = ENTR_CASTLE_COURTYARD_ZELDA_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_LON_LON_RANCH_CREDITS_PART_1:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF2;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_LON_LON_RANCH_CREDITS_PART_2:
                play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF3;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_LON_LON_RANCH_CREDITS_PART_3:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF4;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_LON_LON_RANCH_CREDITS_PART_4:
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF5;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_LON_LON_RANCH_CREDITS_PART_5:
                play->linkAgeOnLoad = LINK_AGE_CHILD;
                play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF6;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_LON_LON_RANCH_CREDITS_PART_6:
                play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF7;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_LON_LON_RANCH_1:
            case CS_DEST_LON_LON_RANCH_2:
            case CS_DEST_LON_LON_RANCH_3:
            case CS_DEST_LON_LON_RANCH_4:
            case CS_DEST_LON_LON_RANCH_5:
            case CS_DEST_LON_LON_RANCH_6:
            case CS_DEST_LON_LON_RANCH_7:
            case CS_DEST_LON_LON_RANCH_8:
            case CS_DEST_LON_LON_RANCH_9:
            case CS_DEST_LON_LON_RANCH_10:
            case CS_DEST_LON_LON_RANCH_11:
            case CS_DEST_LON_LON_RANCH_12:
            case CS_DEST_LON_LON_RANCH_13:
            case CS_DEST_LON_LON_RANCH_14:
            case CS_DEST_LON_LON_RANCH_15:
                play->nextEntranceIndex = ENTR_LON_LON_RANCH_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_LON_LON_RANCH_FROM_EPONAS_SONG:
                play->nextEntranceIndex = ENTR_LON_LON_RANCH_1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_STONES_RESTORED_CONDITIONAL:
                // At one point in development, Forest, Fire and Water temples blocked the ability to return to child.
                // Completing each dungeon would "restore" their respective stone, with the Door of Time opening after
                // all 3 are restored. This cutscene destination sends the player to the correct blue warp destination,
                // unless all 3 dungeons have been cleared. In that case, the destination is the Temple of Time which
                // plays a cutscene where the door opens.
                if (GET_EVENTCHKINF(EVENTCHKINF_48) && GET_EVENTCHKINF(EVENTCHKINF_49) &&
                    GET_EVENTCHKINF(EVENTCHKINF_4A)) {
                    play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_0;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    gSaveContext.save.cutsceneIndex = 0xFFF3;
                    play->transitionType = TRANS_TYPE_FADE_BLACK;
                } else {
                    switch (gSaveContext.sceneLayer) {
                        case 8:
                            play->nextEntranceIndex = ENTR_SACRED_FOREST_MEADOW_0;
                            play->transitionTrigger = TRANS_TRIGGER_START;
                            play->transitionType = TRANS_TYPE_FADE_BLACK;
                            break;

                        case 9:
                            play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_CRATER_0;
                            play->transitionTrigger = TRANS_TRIGGER_START;
                            play->transitionType = TRANS_TYPE_FADE_BLACK;
                            break;

                        case 10:
                            play->nextEntranceIndex = ENTR_LAKE_HYLIA_0;
                            play->transitionTrigger = TRANS_TRIGGER_START;
                            gSaveContext.save.cutsceneIndex = 0xFFF0;
                            play->transitionType = TRANS_TYPE_FADE_WHITE;
                            break;
                    }
                }
                break;

            case CS_DEST_DESERT_COLOSSUS_FROM_CHAMBER_OF_SAGES:
                if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW)) {
                    play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    gSaveContext.save.cutsceneIndex = 0xFFF1;
                    play->transitionType = TRANS_TYPE_FADE_WHITE_FAST;
                } else {
                    SET_EVENTCHKINF(EVENTCHKINF_C8);
                    play->nextEntranceIndex = ENTR_DESERT_COLOSSUS_8;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                    gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                }
                break;

            case CS_DEST_GRAVEYARD_FROM_CHAMBER_OF_SAGES:
                if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT)) {
                    play->nextEntranceIndex = ENTR_CHAMBER_OF_THE_SAGES_0;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    gSaveContext.save.cutsceneIndex = 0xFFF1;
                    play->transitionType = TRANS_TYPE_FADE_WHITE_FAST;
                } else {
                    play->nextEntranceIndex = ENTR_GRAVEYARD_8;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                    gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                }
                break;

            case CS_DEST_DEATH_MOUNTAIN_CRATER_FROM_CHAMBER_OF_SAGES:
                play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_CRATER_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_SACRED_FOREST_MEADOW_WARP_PAD:
                play->nextEntranceIndex = ENTR_SACRED_FOREST_MEADOW_3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_KOKIRI_FOREST_FROM_CHAMBER_OF_SAGES:
                play->nextEntranceIndex = ENTR_KOKIRI_FOREST_0;
                gSaveContext.save.cutsceneIndex = 0xFFF8;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_DESERT_COLOSSUS_FROM_NABOORU_CAPTURE:
                play->nextEntranceIndex = ENTR_DESERT_COLOSSUS_6;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_SANDSTORM_END;
                break;

            case CS_DEST_TEMPLE_OF_TIME_FRONT_OF_PEDESTAL:
                play->nextEntranceIndex = ENTR_TEMPLE_OF_TIME_6;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_HYRULE_FIELD_TITLE_SCREEN:
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF3;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_TITLE_SCREEN_DEMO:
                switch (sTitleDemoDestination) {
                    case TITLE_DEMO_SPIRIT_TEMPLE:
                        play->nextEntranceIndex = ENTR_SPIRIT_TEMPLE_BOSS_0;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        gSaveContext.save.cutsceneIndex = 0xFFF2;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                        sTitleDemoDestination++;
                        break;

                    case TITLE_DEMO_DEATH_MOUNTAIN_CRATER:
                        play->nextEntranceIndex = ENTR_DEATH_MOUNTAIN_CRATER_0;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        gSaveContext.save.cutsceneIndex = 0xFFF1;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                        sTitleDemoDestination++;
                        break;

                    case TITLE_DEMO_GANONDORF_HORSE:
                        play->nextEntranceIndex = ENTR_CUTSCENE_MAP_0;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        gSaveContext.save.cutsceneIndex = 0xFFF6;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                        sTitleDemoDestination = TITLE_DEMO_SPIRIT_TEMPLE;
                        break;
                }
                break;

            case CS_DEST_GRAVEYARD_SUNS_SONG_PART_2:
                play->nextEntranceIndex = ENTR_GRAVEYARD_0;
                play->transitionTrigger = TRANS_TRIGGER_START;
                gSaveContext.save.cutsceneIndex = 0xFFF1;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_ROYAL_FAMILYS_TOMB_SUNS_SONG_PART_3:
                play->nextEntranceIndex = ENTR_ROYAL_FAMILYS_TOMB_1;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_GANONS_CASTLE_DISPEL_FOREST_BEAM:
                play->nextEntranceIndex = ENTR_INSIDE_GANONS_CASTLE_2;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_GANONS_CASTLE_DISPEL_WATER_BEAM:
                play->nextEntranceIndex = ENTR_INSIDE_GANONS_CASTLE_3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_GANONS_CASTLE_DISPEL_SHADOW_BEAM:
                play->nextEntranceIndex = ENTR_INSIDE_GANONS_CASTLE_4;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_GANONS_CASTLE_DISPEL_FIRE_BEAM:
                play->nextEntranceIndex = ENTR_INSIDE_GANONS_CASTLE_5;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_GANONS_CASTLE_DISPEL_LIGHT_BEAM:
                play->nextEntranceIndex = ENTR_INSIDE_GANONS_CASTLE_6;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_GANONS_CASTLE_DISPEL_SPIRIT_BEAM:
                play->nextEntranceIndex = ENTR_INSIDE_GANONS_CASTLE_7;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_GANONS_CASTLE_DISPEL_BARRIER_CONDITONAL:
                if (Flags_GetEventChkInf(EVENTCHKINF_BB) && Flags_GetEventChkInf(EVENTCHKINF_BC) &&
                    Flags_GetEventChkInf(EVENTCHKINF_BD) && Flags_GetEventChkInf(EVENTCHKINF_BE) &&
                    Flags_GetEventChkInf(EVENTCHKINF_BF) && Flags_GetEventChkInf(EVENTCHKINF_AD)) {
                    play->csCtx.script = SEGMENTED_TO_VIRTUAL(gTowerBarrierCs);
                    play->csCtx.curFrame = 0;
                    gSaveContext.cutsceneTrigger = 1;
                    gSaveContext.save.cutsceneIndex = 0xFFFF;
                    csCtx->state = CS_STATE_STOP;
                } else {
                    gSaveContext.save.cutsceneIndex = 0xFFFF;
                    csCtx->state = CS_STATE_STOP;
                }
                break;

            case CS_DEST_HYRULE_FIELD_FROM_FAIRY_OCARINA:
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_3;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_HYRULE_FIELD_FROM_IMPA_ESCORT:
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_17;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_BLACK;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_FROM_RAURU_FINAL_MESSAGE_CONDITIONAL:
                if (GET_EVENTCHKINF(EVENTCHKINF_C8)) {
                    play->nextEntranceIndex = ENTR_GRAVEYARD_8;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                } else {
                    play->nextEntranceIndex = ENTR_DESERT_COLOSSUS_8;
                    play->transitionTrigger = TRANS_TRIGGER_START;
                    play->transitionType = TRANS_TYPE_FADE_WHITE;
                }

                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_HYRULE_FIELD_CREDITS_SKY:
                gSaveContext.gameMode = GAMEMODE_END_CREDITS;
                Audio_SetSfxBanksMute(0x6F);
                play->linkAgeOnLoad = LINK_AGE_ADULT;
                play->nextEntranceIndex = ENTR_HYRULE_FIELD_0;
                gSaveContext.save.cutsceneIndex = 0xFFF7;
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->transitionType = TRANS_TYPE_FADE_WHITE;
                break;

            case CS_DEST_GANON_BATTLE_TOWER_COLLAPSE:
                gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex = ENTR_GANON_BOSS_0;
                Play_TriggerVoidOut(play);
                gSaveContext.respawnFlag = -2;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                break;

            case CS_DEST_ZELDAS_COURTYARD_RECEIVE_LETTER:
                gSaveContext.save.dayTime = CLOCK_TIME(12, 0);
                gSaveContext.skyboxTime = CLOCK_TIME(12, 0);
                play->nextEntranceIndex = ENTR_CASTLE_COURTYARD_ZELDA_1;
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
            case CS_TRANS_GRAY_FILL_IN:
            case CS_TRANS_GRAY_FILL_OUT:
                play->envCtx.screenFillColor[0] = 160;
                play->envCtx.screenFillColor[1] = 160;
                play->envCtx.screenFillColor[2] = 160;

                if (cmd->type == CS_TRANS_GRAY_FILL_IN) {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;

                    if ((lerp == 0.0f) && (gSaveContext.save.entranceIndex == ENTR_CHAMBER_OF_THE_SAGES_0)) {
                        Audio_PlaySfxGeneral(NA_SE_SY_WHITE_OUT_S, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    } else if ((lerp == 0.0f) &&
                               ((gSaveContext.save.entranceIndex == ENTR_TEMPLE_OF_TIME_0) ||
                                (gSaveContext.save.entranceIndex == ENTR_HYRULE_CASTLE_0) ||
                                (gSaveContext.save.entranceIndex == ENTR_GREAT_FAIRYS_FOUNTAIN_SPELLS_0))) {
                        Audio_PlaySfxGeneral(NA_SE_EV_WHITE_OUT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    } else if ((lerp == 0.0f) && (play->sceneId == SCENE_INSIDE_GANONS_CASTLE)) {
                        Sfx_PlaySfxCentered2(NA_SE_EV_WHITE_OUT);
                    }
                } else {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                }
                break;

            case CS_TRANS_BLUE_FILL_IN:
            case CS_TRANS_BLUE_FILL_OUT:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 255;

                if (cmd->type == CS_TRANS_BLUE_FILL_IN) {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;
                } else {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                }
                break;

            case CS_TRANS_RED_FILL_OUT:
            case CS_TRANS_RED_FILL_IN:
                play->envCtx.screenFillColor[0] = 255;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 0;

                if (cmd->type == CS_TRANS_RED_FILL_OUT) {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                } else {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;
                }
                break;

            case CS_TRANS_GREEN_FILL_OUT:
            case CS_TRANS_GREEN_FILL_IN:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 255;
                play->envCtx.screenFillColor[2] = 0;

                if (cmd->type == CS_TRANS_GREEN_FILL_OUT) {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                } else {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;
                }
                break;

            case CS_TRANS_TRIGGER_INSTANCE:
                gSaveContext.cutsceneTransitionControl = 1;
                break;

            case CS_TRANS_BLACK_FILL_OUT:
            case CS_TRANS_BLACK_FILL_IN:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 0;

                if (cmd->type == CS_TRANS_BLACK_FILL_OUT) {
                    play->envCtx.screenFillColor[3] = (1.0f - lerp) * 255.0f;
                } else {
                    play->envCtx.screenFillColor[3] = 255.0f * lerp;
                }
                break;

            case CS_TRANS_BLACK_FILL_OUT_TO_HALF:
                gSaveContext.cutsceneTransitionControl = 255.0f - (155.0f * lerp);
                break;

            case CS_TRANS_BLACK_FILL_IN_FROM_HALF:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 0;
                play->envCtx.screenFillColor[3] = 255.0f - ((1.0f - lerp) * 155.0f);
                break;
        }
    }
}

s32 CutsceneCmd_UpdateCamEyeSpline(PlayState* play, CutsceneContext* csCtx, u8* script, u8 relativeToPlayer) {
    s32 shouldContinue = true;
    CsCmdCam* cmd = (CsCmdCam*)script;
    s32 size;

    script += sizeof(CsCmdCam);
    size = sizeof(CsCmdCam);

    if ((csCtx->curFrame > cmd->startFrame) && (csCtx->curFrame < cmd->endFrame) &&
        ((cmd->startFrame > csCtx->camEyeSplinePointsAppliedFrame) ||
         (csCtx->camEyeSplinePointsAppliedFrame >= 0xF000))) {
        csCtx->camEyeReady = true;
        csCtx->camEyePoints = (CutsceneCameraPoint*)script;

        if (csCtx->camAtReady) {
            csCtx->camEyeSplinePointsAppliedFrame = cmd->startFrame;

            if (gUseCutsceneCam) {
                Play_RequestCameraSetting(play, csCtx->subCamId, CAM_SET_CS_0);
                Play_ChangeCameraStatus(play, sReturnToCamId, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Camera_ResetAnim(Play_GetCamera(play, csCtx->subCamId));
                Camera_SetCSParams(Play_GetCamera(play, csCtx->subCamId), csCtx->camAtPoints, csCtx->camEyePoints,
                                   GET_PLAYER(play), relativeToPlayer);
            }
        }
    }

    while (shouldContinue) {
        if (((CutsceneCameraPoint*)script)->continueFlag == CS_CAM_STOP) {
            shouldContinue = false;
        }

        script += sizeof(CutsceneCameraPoint);
        size += sizeof(CutsceneCameraPoint);
    }

    return size;
}

s32 CutsceneCmd_UpdateCamAtSpline(PlayState* play, CutsceneContext* csCtx, u8* script, u8 relativeToPlayer) {
    s32 shouldContinue = true;
    CsCmdCam* cmd = (CsCmdCam*)script;
    s32 size;

    script += sizeof(CsCmdCam);
    size = sizeof(CsCmdCam);

    if ((csCtx->curFrame > cmd->startFrame) && (csCtx->curFrame < cmd->endFrame) &&
        ((cmd->startFrame > gCamAtSplinePointsAppliedFrame) || (gCamAtSplinePointsAppliedFrame >= 0xF000))) {
        csCtx->camAtReady = true;
        csCtx->camAtPoints = (CutsceneCameraPoint*)script;

        if (csCtx->camEyeReady) {
            gCamAtSplinePointsAppliedFrame = cmd->startFrame;

            if (gUseCutsceneCam) {
                Play_RequestCameraSetting(play, csCtx->subCamId, CAM_SET_CS_0);
                Play_ChangeCameraStatus(play, sReturnToCamId, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Camera_ResetAnim(Play_GetCamera(play, csCtx->subCamId));
                Camera_SetCSParams(Play_GetCamera(play, csCtx->subCamId), csCtx->camAtPoints, csCtx->camEyePoints,
                                   GET_PLAYER(play), relativeToPlayer);
            }
        }
    }

    while (shouldContinue) {
        if (((CutsceneCameraPoint*)script)->continueFlag == CS_CAM_STOP) {
            shouldContinue = false;
        }

        script += sizeof(CutsceneCameraPoint);
        size += sizeof(CutsceneCameraPoint);
    }

    return size;
}

s32 CutsceneCmd_SetCamEye(PlayState* play, CutsceneContext* csCtx, u8* script, u8 unused) {
    CsCmdCam* cmd = (CsCmdCam*)script;
    s32 size;
    Vec3f at;
    Vec3f eye;
    Camera* subCam;
    f32 roll;

    script += sizeof(CsCmdCam);
    size = sizeof(CsCmdCam);

    if ((csCtx->curFrame > cmd->startFrame) && (csCtx->curFrame < cmd->endFrame) &&
        ((cmd->startFrame > gCamEyePointAppliedFrame) || (gCamEyePointAppliedFrame >= 0xF000))) {
        csCtx->camEyeReady = true;
        csCtx->camEyePoints = (CutsceneCameraPoint*)script;

        if (csCtx->camAtReady) {
            gCamEyePointAppliedFrame = cmd->startFrame;

            if (gUseCutsceneCam) {
                subCam = Play_GetCamera(play, csCtx->subCamId);
                subCam->player = NULL;

                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Play_RequestCameraSetting(play, csCtx->subCamId, CAM_SET_FREE0);

                roll = csCtx->camAtPoints->cameraRoll * 1.40625f;
                Camera_SetViewParam(subCam, CAM_VIEW_ROLL, &roll);

                at.x = csCtx->camAtPoints->pos.x;
                at.y = csCtx->camAtPoints->pos.y;
                at.z = csCtx->camAtPoints->pos.z;

                eye.x = csCtx->camEyePoints->pos.x;
                eye.y = csCtx->camEyePoints->pos.y;
                eye.z = csCtx->camEyePoints->pos.z;

                Play_SetCameraAtEye(play, csCtx->subCamId, &at, &eye);
                Play_SetCameraFov(play, csCtx->subCamId, csCtx->camEyePoints->viewAngle);
            }
        }
    }

    size += sizeof(CutsceneCameraPoint);

    return size;
}

s32 CutsceneCmd_SetCamAt(PlayState* play, CutsceneContext* csCtx, u8* script, u8 unused) {
    CsCmdCam* cmd = (CsCmdCam*)script;
    s32 size;
    Vec3f at;
    Vec3f eye;
    Camera* subCam;

    script += sizeof(CsCmdCam);
    size = sizeof(CsCmdCam);

    if ((csCtx->curFrame > cmd->startFrame) && (csCtx->curFrame < cmd->endFrame) &&
        ((cmd->startFrame > gCamAtPointAppliedFrame) || (gCamAtPointAppliedFrame >= 0xF000))) {
        csCtx->camAtReady = true;
        csCtx->camAtPoints = (CutsceneCameraPoint*)script;

        if (csCtx->camEyeReady) {
            gCamAtPointAppliedFrame = cmd->startFrame;

            if (gUseCutsceneCam) {
                subCam = Play_GetCamera(play, csCtx->subCamId);
                subCam->player = NULL;

                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Play_RequestCameraSetting(play, csCtx->subCamId, CAM_SET_FREE0);

                at.x = csCtx->camAtPoints->pos.x;
                at.y = csCtx->camAtPoints->pos.y;
                at.z = csCtx->camAtPoints->pos.z;

                eye.x = csCtx->camEyePoints->pos.x;
                eye.y = csCtx->camEyePoints->pos.y;
                eye.z = csCtx->camEyePoints->pos.z;

                Play_SetCameraAtEye(play, csCtx->subCamId, &at, &eye);
                Play_SetCameraFov(play, csCtx->subCamId, csCtx->camEyePoints->viewAngle);
            }
        }
    }

    size += sizeof(CutsceneCameraPoint);

    return size;
}

void CutsceneCmd_Text(PlayState* play, CutsceneContext* csCtx, CsCmdText* cmd) {
    u8 dialogState;
#if PLATFORM_N64
    s32 pad;
#endif
    s16 endFrame;

    if ((csCtx->curFrame > cmd->startFrame) && (csCtx->curFrame <= cmd->endFrame)) {
        if (cmd->type != CS_TEXT_OCARINA_ACTION) {
            if (sCurTextId != cmd->textId) {
                sCurTextId = cmd->textId;

                if ((cmd->type == CS_TEXT_GORON_RUBY) && CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) {
                    Message_StartTextbox(play, cmd->altTextId1, NULL);
                } else if ((cmd->type == CS_TEXT_ZORA_SAPPHIRE) && CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
                    Message_StartTextbox(play, cmd->altTextId1, NULL);
                } else {
                    Message_StartTextbox(play, cmd->textId, NULL);
                }
                return;
            }
        } else {
            if (sCurOcarinaAction != cmd->textId) {
                sCurOcarinaAction = cmd->textId;
                Message_StartOcarina(play, cmd->textId);
                return;
            }
        }

        if (csCtx->curFrame >= cmd->endFrame) {
            endFrame = csCtx->curFrame;
            dialogState = Message_GetState(&play->msgCtx);

            if ((dialogState != TEXT_STATE_CLOSING) && (dialogState != TEXT_STATE_NONE) &&
                (dialogState != TEXT_STATE_SONG_DEMO_DONE) && (dialogState != TEXT_STATE_8)) {
                csCtx->curFrame--;

                if ((dialogState == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
                    if (play->msgCtx.choiceIndex == 0) {
                        if (cmd->altTextId1 != CS_TEXT_ID_NONE) {
                            Message_ContinueTextbox(play, cmd->altTextId1);
                        } else {
                            csCtx->curFrame++;
                        }
                    } else {
                        if (cmd->altTextId2 != CS_TEXT_ID_NONE) {
                            Message_ContinueTextbox(play, cmd->altTextId2);
                        } else {
                            csCtx->curFrame++;
                        }
                    }
                }

                if (dialogState == TEXT_STATE_9) {
                    if (cmd->altTextId1 != CS_TEXT_ID_NONE) {
                        Message_ContinueTextbox(play, cmd->altTextId1);
                    } else {
                        csCtx->curFrame++;
                    }
                }

                if (dialogState == TEXT_STATE_EVENT) {
                    if (Message_ShouldAdvance(play)) {
                        Message_StartOcarina(play, cmd->textId);
                    }
                }
            }

            if (csCtx->curFrame == endFrame) {
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
                sCurTextId = 0;
                sCurOcarinaAction = 0;
            }
        }
    }
}

void Cutscene_ProcessScript(PlayState* play, CutsceneContext* csCtx, u8* script) {
    s16 i;
    s32 totalEntries;
    s32 cmdType;
    s32 cmdEntries;
    void* cmd;
    s32 csFrameCount;
    s16 j;

    MemCpy(&totalEntries, script, sizeof(totalEntries));
    script += sizeof(totalEntries);

    MemCpy(&csFrameCount, script, sizeof(csFrameCount));
    script += sizeof(csFrameCount);

    if ((csCtx->curFrame > csFrameCount) && (csCtx->state != CS_STATE_RUN_UNSTOPPABLE)) {
        csCtx->state = CS_STATE_STOP;
        return;
    }

#if DEBUG_FEATURES
    if (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_DRIGHT)) {
        csCtx->state = CS_STATE_STOP;
        return;
    }
#endif

    for (i = 0; i < totalEntries; i++) {
        MemCpy(&cmdType, script, sizeof(cmdType));
        script += sizeof(cmdType);

        if (cmdType == CS_CMD_END_OF_SCRIPT) {
            return;
        }

        switch (cmdType) {
            case CS_CMD_MISC:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_Misc(play, csCtx, (void*)script);
                    script += sizeof(CsCmdMisc);
                }
                break;

            case CS_CMD_LIGHT_SETTING:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_SetLightSetting(play, csCtx, (void*)script);
                    script += sizeof(CsCmdLightSetting);
                }
                break;

            case CS_CMD_START_SEQ:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_StartSequence(play, csCtx, (void*)script);
                    script += sizeof(CsCmdStartSeq);
                }
                break;

            case CS_CMD_STOP_SEQ:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_StopSequence(play, csCtx, (void*)script);
                    script += sizeof(CsCmdStopSeq);
                }
                break;

            case CS_CMD_FADE_OUT_SEQ:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_FadeOutSequence(play, csCtx, (void*)script);
                    script += sizeof(CsCmdFadeOutSeq);
                }
                break;

            case CS_CMD_RUMBLE_CONTROLLER:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_RumbleController(play, csCtx, (void*)script);
                    script += sizeof(CsCmdRumble);
                }
                break;

            case CS_CMD_TIME:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    CutsceneCmd_SetTime(play, csCtx, (void*)script);
                    script += sizeof(CsCmdTime);
                }
                break;

            case CS_CMD_PLAYER_CUE:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->playerCue = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
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
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[0] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
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
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[1] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
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
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[2] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
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
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[3] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
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
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[4] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_5_0:
            case CS_CMD_ACTOR_CUE_5_1:
            case CS_CMD_ACTOR_CUE_5_2:
            case CS_CMD_ACTOR_CUE_5_3:
            case CS_CMD_ACTOR_CUE_5_4:
            case CS_CMD_ACTOR_CUE_5_5:
            case CS_CMD_ACTOR_CUE_5_6:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[5] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
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
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[6] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_7_0:
            case CS_CMD_ACTOR_CUE_7_1:
            case CS_CMD_ACTOR_CUE_7_2:
            case CS_CMD_ACTOR_CUE_7_3:
            case CS_CMD_ACTOR_CUE_7_4:
            case CS_CMD_ACTOR_CUE_7_5:
            case CS_CMD_ACTOR_CUE_7_6:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[7] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_8_0:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[8] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_ACTOR_CUE_9_0:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if ((csCtx->curFrame > ((CsCmdActorCue*)cmd)->startFrame) &&
                        (csCtx->curFrame <= ((CsCmdActorCue*)cmd)->endFrame)) {
                        csCtx->actorCues[9] = (void*)script;
                    }

                    script += sizeof(CsCmdActorCue);
                }
                break;

            case CS_CMD_CAM_EYE_SPLINE:
                script += CutsceneCmd_UpdateCamEyeSpline(play, csCtx, (void*)script, false);
                break;

            case CS_CMD_CAM_EYE_SPLINE_REL_TO_PLAYER:
                script += CutsceneCmd_UpdateCamEyeSpline(play, csCtx, (void*)script, true);
                break;

            case CS_CMD_CAM_AT_SPLINE:
                script += CutsceneCmd_UpdateCamAtSpline(play, csCtx, (void*)script, false);
                break;

            case CS_CMD_CAM_AT_SPLINE_REL_TO_PLAYER:
                script += CutsceneCmd_UpdateCamAtSpline(play, csCtx, (void*)script, true);
                break;

            case CS_CMD_CAM_EYE:
                script += CutsceneCmd_SetCamEye(play, csCtx, (void*)script, 0);
                break;

            case CS_CMD_CAM_AT:
                script += CutsceneCmd_SetCamAt(play, csCtx, (void*)script, 0);
                break;

            case CS_CMD_DESTINATION:
                script += sizeof(cmdEntries);
                CutsceneCmd_Destination(play, csCtx, (void*)script);
                script += sizeof(CsCmdDestination);
                break;

            case CS_CMD_TEXT:
                MemCpy(&cmdEntries, script, sizeof(cmdEntries));
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    cmd = script;

                    if (((CsCmdText*)cmd)->textId != CS_TEXT_ID_NONE) {
                        CutsceneCmd_Text(play, csCtx, (void*)script);
                    }

                    script += sizeof(CsCmdText);
                }
                break;

            case CS_CMD_TRANSITION:
                script += sizeof(cmdEntries);
                CutsceneCmd_Transition(play, csCtx, (void*)script);
                script += sizeof(CsCmdTransition);
                break;

            default:
                MemCpy(&cmdEntries, script, 4);
                script += sizeof(cmdEntries);

                for (j = 0; j < cmdEntries; j++) {
                    script += 0x30;
                }
                break;
        }
    }
}

void CutsceneHandler_RunScript(PlayState* play, CutsceneContext* csCtx) {
    if (gSaveContext.save.cutsceneIndex >= 0xFFF0) {
#if DEBUG_FEATURES
        if (BREG(0) != 0) {
            Gfx* displayList;
            Gfx* prevDisplayList;

            OPEN_DISPS(play->state.gfxCtx, "../z_demo.c", 4101);

            prevDisplayList = POLY_OPA_DISP;
            displayList = Gfx_Open(POLY_OPA_DISP);
            gSPDisplayList(OVERLAY_DISP++, displayList);
            Cutscene_DrawDebugInfo(play, &displayList, csCtx);
            gSPEndDisplayList(displayList++);
            Gfx_Close(prevDisplayList, displayList);
            POLY_OPA_DISP = displayList;

            CLOSE_DISPS(play->state.gfxCtx, "../z_demo.c", 4108);
        }
#endif

        csCtx->curFrame++;

#if DEBUG_FEATURES
        if (R_USE_DEBUG_CUTSCENE) {
            Cutscene_ProcessScript(play, csCtx, gDebugCutsceneScript);
        } else {
            Cutscene_ProcessScript(play, csCtx, play->csCtx.script);
        }
#else
        Cutscene_ProcessScript(play, csCtx, play->csCtx.script);
#endif
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

        PRINTF(T("\n\n\n\n\nやっぱりここかいな", "\n\n\n\n\nThis is it after all"));

        gSaveContext.save.cutsceneIndex = 0;
        gSaveContext.gameMode = GAMEMODE_NORMAL;

        if (gUseCutsceneCam) {
            switch (gSaveContext.save.entranceIndex) {
                case ENTR_HYRULE_FIELD_11:
                case ENTR_HYRULE_FIELD_12:
                case ENTR_HYRULE_FIELD_13:
                case ENTR_HYRULE_FIELD_15:
                    Play_CopyCamera(play, sReturnToCamId, csCtx->subCamId);
            }

            Play_ChangeCameraStatus(play, sReturnToCamId, CAM_STAT_ACTIVE);
            Play_ClearCamera(play, csCtx->subCamId);
            Camera_SetFinishedFlag(play->cameraPtrs[sReturnToCamId]);
        }

        Audio_SetCutsceneFlag(0);
        csCtx->state = CS_STATE_IDLE;
    }
}

void Cutscene_SetupScripted(PlayState* play, CutsceneContext* csCtx) {
    u8 i;

    if ((gSaveContext.cutsceneTrigger != 0) && (csCtx->state == CS_STATE_IDLE) && !Player_InCsMode(play)) {
        gSaveContext.save.cutsceneIndex = 0xFFFD;
    }

    if ((gSaveContext.save.cutsceneIndex >= 0xFFF0) && (csCtx->state == CS_STATE_IDLE)) {
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

            csCtx->camEyeSplinePointsAppliedFrame = CS_CAM_DATA_NOT_APPLIED;
            gCamAtSplinePointsAppliedFrame = CS_CAM_DATA_NOT_APPLIED;
            gCamEyePointAppliedFrame = CS_CAM_DATA_NOT_APPLIED;
            gCamAtPointAppliedFrame = CS_CAM_DATA_NOT_APPLIED;

            csCtx->camAtReady = false;
            csCtx->camEyeReady = false;

            sReturnToCamId = play->activeCamId;

            if (gUseCutsceneCam) {
                csCtx->subCamId = Play_CreateSubCamera(play);
            }

            if (gSaveContext.cutsceneTrigger == 0) {
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
                Letterbox_SetSizeTarget(32);
                Letterbox_SetSize(32);
                csCtx->state++; // CS_STATE_RUN
            }

            CutsceneHandler_RunScript(play, csCtx);
        }

        gSaveContext.cutsceneTrigger = 0;
    }
}

u16 D_8015FCCC;
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
            requiredAge = gSaveContext.save.linkAge;
        }

        if ((gSaveContext.save.entranceIndex == entranceCutscene->entrance) &&
            (!Flags_GetEventChkInf(entranceCutscene->flag) || (entranceCutscene->flag == EVENTCHKINF_EPONA_OBTAINED)) &&
            (gSaveContext.save.cutsceneIndex < 0xFFF0) && ((u8)gSaveContext.save.linkAge == requiredAge) &&
            (gSaveContext.respawnFlag <= 0)) {
            Flags_SetEventChkInf(entranceCutscene->flag);
            Cutscene_SetScript(play, entranceCutscene->script);
            gSaveContext.cutsceneTrigger = 2;
            gSaveContext.showTitleCard = false;
            break;
        }
    }
}

void Cutscene_HandleConditionalTriggers(PlayState* play) {
    PRINTF("\ngame_info.mode=[%d] restart_flag", ((void)0, gSaveContext.respawnFlag));

    if ((gSaveContext.gameMode == GAMEMODE_NORMAL) && (gSaveContext.respawnFlag <= 0) &&
        (gSaveContext.save.cutsceneIndex < 0xFFF0)) {
        if ((gSaveContext.save.entranceIndex == ENTR_DESERT_COLOSSUS_1) && !Flags_GetEventChkInf(EVENTCHKINF_AC)) {
            Flags_SetEventChkInf(EVENTCHKINF_AC);
            gSaveContext.save.entranceIndex = ENTR_DESERT_COLOSSUS_0;
            gSaveContext.save.cutsceneIndex = 0xFFF0;
        } else if ((gSaveContext.save.entranceIndex == ENTR_KAKARIKO_VILLAGE_0) && LINK_IS_ADULT &&
                   GET_EVENTCHKINF(EVENTCHKINF_48) && GET_EVENTCHKINF(EVENTCHKINF_49) &&
                   GET_EVENTCHKINF(EVENTCHKINF_4A) && !Flags_GetEventChkInf(EVENTCHKINF_AA)) {
            Flags_SetEventChkInf(EVENTCHKINF_AA);
            gSaveContext.save.cutsceneIndex = 0xFFF0;
        } else if ((gSaveContext.save.entranceIndex == ENTR_LOST_WOODS_9) && !Flags_GetEventChkInf(EVENTCHKINF_C1)) {
            Flags_SetEventChkInf(EVENTCHKINF_C1);
            Item_Give(play, ITEM_OCARINA_FAIRY);
            gSaveContext.save.entranceIndex = ENTR_LOST_WOODS_0;
            gSaveContext.save.cutsceneIndex = 0xFFF0;
        } else if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT) && CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW) &&
                   LINK_IS_ADULT && !Flags_GetEventChkInf(EVENTCHKINF_C4) &&
                   (gEntranceTable[((void)0, gSaveContext.save.entranceIndex)].sceneId == SCENE_TEMPLE_OF_TIME)) {
            Flags_SetEventChkInf(EVENTCHKINF_C4);
            gSaveContext.save.entranceIndex = ENTR_TEMPLE_OF_TIME_0;
            gSaveContext.save.cutsceneIndex = 0xFFF8;
        } else if (!Flags_GetEventChkInf(EVENTCHKINF_C7) &&
                   (gEntranceTable[((void)0, gSaveContext.save.entranceIndex)].sceneId == SCENE_GANON_BOSS)) {
            Flags_SetEventChkInf(EVENTCHKINF_C7);
            gSaveContext.save.entranceIndex = ENTR_GANON_BOSS_0;
            gSaveContext.save.cutsceneIndex = 0xFFF0;
        }
    }
}

void Cutscene_SetScript(PlayState* play, void* script) {
#if PLATFORM_N64
    if ((B_80121220 != NULL) && (B_80121220->unk_78 != NULL)) {
        if (B_80121220->unk_78(play, script, sCutscenesUnknownList)) {
            return;
        }
    }
#endif

    if (SEGMENT_NUMBER(script) != 0) {
        play->csCtx.script = SEGMENTED_TO_VIRTUAL(script);
    } else {
        play->csCtx.script = script;
    }
}
