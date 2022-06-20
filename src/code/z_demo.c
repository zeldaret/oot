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

u16 D_8011E1C0 = 0;
u16 D_8011E1C4 = 0;

typedef void (*CutsceneStateHandler)(PlayState*, CutsceneContext*);

void func_80064720(PlayState* play, CutsceneContext* csCtx);
void func_80064760(PlayState* play, CutsceneContext* csCtx);
void func_800647C0(PlayState* play, CutsceneContext* csCtx);
void func_80068C3C(PlayState* play, CutsceneContext* csCtx);
void func_80068D84(PlayState* play, CutsceneContext* csCtx);
void func_80068DC0(PlayState* play, CutsceneContext* csCtx);

CutsceneStateHandler sCsStateHandlers1[] = {
    func_80064720, func_80064760, func_80064720, func_80068D84, func_80064720,
};

CutsceneStateHandler sCsStateHandlers2[] = {
    func_80064720, func_800647C0, func_80068C3C, func_80068DC0, func_80068C3C,
};

u8 sTitleCsState = 0;

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

// Unused, seems to be an early list of dungeon entrance cutscene locations
void* D_8011E304[] = {
    gDekuTreeIntroCs, gJabuJabuIntroCs, gDcOpeningCs, gMinuetCs, gIceCavernSerenadeCs, gTowerBarrierCs,
};

u16 D_8015FCC0;
u16 D_8015FCC2;
u16 D_8015FCC4;
s16 sReturnToCamId;
u8 D_8015FCC8;
s16 sQuakeIndex;
u16 D_8015FCCC;      // only written to, never read
char D_8015FCD0[20]; // unreferenced
u8 D_8015FCE4;       // only written to, never read

void func_80068ECC(PlayState* play, CutsceneContext* csCtx);

void Cutscene_DrawDebugInfo(PlayState* play, Gfx** dlist, CutsceneContext* csCtx) {
    GfxPrint printer;
    s32 pad[2];

    GfxPrint_Init(&printer);
    GfxPrint_Open(&printer, *dlist);

    GfxPrint_SetPos(&printer, 22, 25);
    GfxPrint_SetColor(&printer, 255, 255, 55, 32);
    GfxPrint_Printf(&printer, "%s", "FLAME ");
    GfxPrint_SetColor(&printer, 255, 255, 255, 32);
    GfxPrint_Printf(&printer, "%06d", csCtx->frames);
    GfxPrint_SetColor(&printer, 50, 255, 255, 60);
    GfxPrint_SetPos(&printer, 4, 26);
    GfxPrint_Printf(&printer, "%s", "SKIP=(START) or (Cursole Right)");

    *dlist = GfxPrint_Close(&printer);
    GfxPrint_Destroy(&printer);
}

void func_8006450C(PlayState* play, CutsceneContext* csCtx) {
    csCtx->state = CS_STATE_IDLE;
    csCtx->unk_0C = 0.0f;
}

void func_80064520(PlayState* play, CutsceneContext* csCtx) {
    csCtx->state = CS_STATE_SKIPPABLE_INIT;
    csCtx->linkAction = NULL;
}

void func_80064534(PlayState* play, CutsceneContext* csCtx) {
    if (csCtx->state != CS_STATE_UNSKIPPABLE_EXEC) {
        csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
    }
}

void func_80064558(PlayState* play, CutsceneContext* csCtx) {
    if (gSaveContext.cutsceneIndex < 0xFFF0) {
        sCsStateHandlers1[csCtx->state](play, csCtx);
    }
}

void func_800645A0(PlayState* play, CutsceneContext* csCtx) {
    Input* input = &play->state.input[0];

    if (CHECK_BTN_ALL(input->press.button, BTN_DLEFT) && (csCtx->state == CS_STATE_IDLE) &&
        (gSaveContext.sceneSetupIndex >= 4)) {
        D_8015FCC8 = 0;
        gSaveContext.cutsceneIndex = 0xFFFD;
        gSaveContext.cutsceneTrigger = 1;
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_DUP) && (csCtx->state == CS_STATE_IDLE) &&
        (gSaveContext.sceneSetupIndex >= 4) && !gDbgCamEnabled) {
        D_8015FCC8 = 1;
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
        func_80068ECC(play, csCtx);
        sCsStateHandlers2[csCtx->state](play, csCtx);
    }
}

void func_80064720(PlayState* play, CutsceneContext* csCtx) {
}

u32 func_8006472C(PlayState* play, CutsceneContext* csCtx, f32 target) {
    return Math_StepToF(&csCtx->unk_0C, target, 0.1f);
}

void func_80064760(PlayState* play, CutsceneContext* csCtx) {
    Interface_ChangeAlpha(1);
    ShrinkWindow_SetVal(0x20);

    if (func_8006472C(play, csCtx, 1.0f)) {
        Audio_SetCutsceneFlag(1);
        csCtx->state++;
    }
}

void func_800647C0(PlayState* play, CutsceneContext* csCtx) {
    func_80068C3C(play, csCtx);
    Interface_ChangeAlpha(1);
    ShrinkWindow_SetVal(0x20);

    if (func_8006472C(play, csCtx, 1.0f)) {
        Audio_SetCutsceneFlag(1);
        csCtx->state++;
    }
}

// Command 3: Misc. Actions
void func_80064824(PlayState* play, CutsceneContext* csCtx, CsCmdBase* cmd) {
    Player* player = GET_PLAYER(play);
    f32 temp;
    u8 sp3F = 0;

    if ((csCtx->frames < cmd->startFrame) || ((csCtx->frames >= cmd->endFrame) && (cmd->endFrame != cmd->startFrame))) {
        return;
    }

    temp = Environment_LerpWeight(cmd->endFrame - 1, cmd->startFrame, csCtx->frames);

    if (csCtx->frames == cmd->startFrame) {
        sp3F = 1;
    }

    switch (cmd->base) {
        case 1:
            if (sp3F != 0) {
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_RAIN, CHANNEL_IO_PORT_4, 0x3F);
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_RAIN, CHANNEL_IO_PORT_1, 1);
                play->envCtx.precipitation[PRECIP_RAIN_MAX] = 20;
            }
            break;
        case 2:
            if (sp3F != 0) {
                Audio_SetNatureAmbienceChannelIO(NATURE_CHANNEL_LIGHTNING, CHANNEL_IO_PORT_0, 0);
                Environment_AddLightningBolts(play, 3);
                gLightningStrike.state = LIGHTNING_STRIKE_START;
            }
            break;
        case 3:
            if (sp3F != 0) {
                Flags_SetEnv(play, 0);
                if (gSaveContext.entranceIndex == ENTR_TOKINOMA_0) {
                    Flags_SetEnv(play, 2);
                }
            }
            break;
        case 6:
            if (play->envCtx.adjFogFar < 12800) {
                play->envCtx.adjFogFar += 35;
            }
            break;
        case 7:
            if (sp3F != 0) {
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
        case 8:
            if (play->roomCtx.unk_74[0] < 0x80) {
                play->roomCtx.unk_74[0] += 4;
            }
            break;
        case 9:
            play->envCtx.precipitation[PRECIP_SNOW_MAX] = 16;
            break;
        case 10:
            Flags_SetEnv(play, 1);
            break;
        case 11:
            if (play->roomCtx.unk_74[0] < 0x672) {
                play->roomCtx.unk_74[0] += 0x14;
            }
            if (csCtx->frames == 0x30F) {
                func_80078884(NA_SE_EV_DEKU_DEATH);
            } else if (csCtx->frames == 0x2CD) {
                play->roomCtx.unk_74[0] = 0;
            }
            break;
        case 12:
            if (sp3F != 0) {
                if (csCtx->state != CS_STATE_UNSKIPPABLE_EXEC) {
                    csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
                }
            }
            break;
        case 13:
            if (play->roomCtx.unk_74[1] == 0) {
                func_80078884(NA_SE_EV_TRIFORCE_FLASH);
            }
            if (play->roomCtx.unk_74[1] < 0xFF) {
                play->roomCtx.unk_74[1] += 5;
            }
            break;
        case 14:
            if (sp3F != 0) {
                Play_SetViewpoint(play, VIEWPOINT_LOCKED);
            }
            break;
        case 15:
            if (sp3F != 0) {
                TitleCard_InitPlaceName(play, &play->actorCtx.titleCtx, player->giObjectSegment, 160, 120, 144, 24, 20);
            }
            break;
        case 16:
            if (sp3F != 0) {
                sQuakeIndex = Quake_Add(GET_ACTIVE_CAM(play), 6);
                Quake_SetSpeed(sQuakeIndex, 0x7FFF);
                Quake_SetQuakeValues(sQuakeIndex, 4, 0, 1000, 0);
                Quake_SetCountdown(sQuakeIndex, 800);
            }
            break;
        case 17:
            if (sp3F != 0) {
                Quake_RemoveFromIdx(sQuakeIndex);
            }
            break;
        case 18:
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
        case 19:
            SET_EVENTCHKINF(EVENTCHKINF_65);
            break;
        case 20:
            SET_EVENTCHKINF(EVENTCHKINF_67);
            break;
        case 21:
            SET_EVENTCHKINF(EVENTCHKINF_69);
            break;
        case 22:
            D_801614B0.r = 255;
            D_801614B0.g = 255;
            D_801614B0.b = 255;
            D_801614B0.a = 255;
            break;
        case 23:
            D_801614B0.r = 255;
            D_801614B0.g = 180;
            D_801614B0.b = 100;
            D_801614B0.a = 255.0f * temp;
            break;
        case 24:
            play->roomCtx.curRoom.segment = NULL;
            break;
        case 25:
            gSaveContext.dayTime += 30;
            if ((gSaveContext.dayTime) >= CLOCK_TIME(19, 0)) {
                gSaveContext.dayTime = CLOCK_TIME(19, 0) - 1;
            }
            break;
        case 26:
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
        case 27:
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
        case 28:
            play->unk_11DE9 = true;
            break;
        case 29:
            play->unk_11DE9 = false;
            break;
        case 30:
            Flags_SetEnv(play, 3);
            break;
        case 31:
            Flags_SetEnv(play, 4);
            break;
        case 32:
            if (sp3F != 0) {
                play->envCtx.sandstormState = SANDSTORM_FILL;
            }
            func_800788CC(NA_SE_EV_SAND_STORM - SFX_FLAG);
            break;
        case 33:
            gSaveContext.sunsSongState = SUNSSONG_START;
            break;
        case 34:
            if (IS_DAY) {
                gSaveContext.dayTime -= gTimeSpeed;
            } else {
                gSaveContext.dayTime -= gTimeSpeed * 2;
            }
            break;
        case 35:
            AudioOcarina_PlayLongScarecrowAfterCredits();
            csCtx->frames = cmd->startFrame - 1;
            break;
    }
}

// Command 4: Set Environment Lighting
void Cutscene_Command_SetLighting(PlayState* play, CutsceneContext* csCtx, CsCmdEnvLighting* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        play->envCtx.lightSettingOverride = cmd->setting - 1;
        play->envCtx.lightBlend = 1.0f;
    }
}

// Command 0x56: Play Background Music
void Cutscene_Command_PlayBGM(PlayState* play, CutsceneContext* csCtx, CsCmdMusicChange* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        func_800F595C(cmd->sequence - 1);
    }
}

// Command 0x57: Stop Background Music
void Cutscene_Command_StopBGM(PlayState* play, CutsceneContext* csCtx, CsCmdMusicChange* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        func_800F59E8(cmd->sequence - 1);
    }
}

// Command 0x7C: Fade Background Music over duration
void Cutscene_Command_FadeBGM(PlayState* play, CutsceneContext* csCtx, CsCmdMusicFade* cmd) {
    u8 var1;

    if ((csCtx->frames == cmd->startFrame) && (csCtx->frames < cmd->endFrame)) {
        var1 = cmd->endFrame - cmd->startFrame;

        if (cmd->type == 3) {
            Audio_QueueSeqCmd(var1 << 0x10 | (0x1 << 28 | SEQ_PLAYER_FANFARE << 24 | 0xFF));
        } else {
            Audio_QueueSeqCmd(var1 << 0x10 | (0x1 << 28 | SEQ_PLAYER_BGM_MAIN << 24 | 0xFF));
        }
    }
}

// Command 9: ?
void Cutscene_Command_09(PlayState* play, CutsceneContext* csCtx, CsCmdUnknown9* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        func_800AA000(0.0f, cmd->unk_06, cmd->unk_07, cmd->unk_08);
    }
}

// Command 0x8C: Set Time of Day & Environment Time
void func_80065134(PlayState* play, CutsceneContext* csCtx, CsCmdDayTime* cmd) {
    s16 temp1;
    s16 temp2;

    if (csCtx->frames == cmd->startFrame) {
        temp1 = (cmd->hour * 60.0f) / (360.0f / 0x4000);
        temp2 = (cmd->minute + 1) / (360.0f / 0x4000);

        gSaveContext.dayTime = temp1 + temp2;
        gSaveContext.skyboxTime = temp1 + temp2;
    }
}

// Command 0x3E8: Code Execution (& Terminates Cutscene?)
void Cutscene_Command_Terminator(PlayState* play, CutsceneContext* csCtx, CsCmdBase* cmd) {
    Player* player = GET_PLAYER(play);
    s32 temp = 0;

    if ((gSaveContext.gameMode != 0) && (gSaveContext.gameMode != 3) && (play->sceneNum != SCENE_SPOT00) &&
        (csCtx->frames > 20) &&
        (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_A) ||
         CHECK_BTN_ALL(play->state.input[0].press.button, BTN_B) ||
         CHECK_BTN_ALL(play->state.input[0].press.button, BTN_START)) &&
        (gSaveContext.fileNum != 0xFEDC) && (play->transitionTrigger == TRANS_TRIGGER_OFF)) {
        Audio_PlaySoundGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        temp = 1;
    }

    if ((csCtx->frames == cmd->startFrame) || (temp != 0) ||
        ((csCtx->frames > 20) && CHECK_BTN_ALL(play->state.input[0].press.button, BTN_START) &&
         (gSaveContext.fileNum != 0xFEDC))) {
        csCtx->state = CS_STATE_UNSKIPPABLE_EXEC;
        Audio_SetCutsceneFlag(0);
        gSaveContext.cutsceneTransitionControl = 1;

        osSyncPrintf("\n分岐先指定！！=[%d]番", cmd->base); // "Future fork designation=No. [%d]"

        if ((gSaveContext.gameMode != 0) && (csCtx->frames != cmd->startFrame)) {
            gSaveContext.unk_13E7 = 1;
        }

        gSaveContext.cutsceneIndex = 0;

        switch (cmd->base) {
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
                gSaveContext.gameMode = 3;
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
                switch (sTitleCsState) {
                    case 0:
                        play->nextEntranceIndex = ENTR_JYASINBOSS_0;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        gSaveContext.cutsceneIndex = 0xFFF2;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                        sTitleCsState++;
                        break;
                    case 1:
                        play->nextEntranceIndex = ENTR_SPOT17_0;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        gSaveContext.cutsceneIndex = 0xFFF1;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                        sTitleCsState++;
                        break;
                    case 2:
                        play->nextEntranceIndex = ENTR_HIRAL_DEMO_0;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        gSaveContext.cutsceneIndex = 0xFFF6;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                        sTitleCsState = 0;
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
                    play->csCtx.segment = SEGMENTED_TO_VIRTUAL(gTowerBarrierCs);
                    play->csCtx.frames = 0;
                    gSaveContext.cutsceneTrigger = 1;
                    gSaveContext.cutsceneIndex = 0xFFFF;
                    csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
                } else {
                    gSaveContext.cutsceneIndex = 0xFFFF;
                    csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
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
                gSaveContext.gameMode = 3;
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

// Command 0x2D: Transition Effects
void Cutscene_Command_TransitionFX(PlayState* play, CutsceneContext* csCtx, CsCmdBase* cmd) {
    f32 temp;

    if ((csCtx->frames >= cmd->startFrame) && (csCtx->frames <= cmd->endFrame)) {
        play->envCtx.fillScreen = true;
        temp = Environment_LerpWeight(cmd->endFrame, cmd->startFrame, csCtx->frames);

        switch (cmd->base) {
            case 1:
            case 5:
                play->envCtx.screenFillColor[0] = 160;
                play->envCtx.screenFillColor[1] = 160;
                play->envCtx.screenFillColor[2] = 160;
                if (cmd->base == 1) {
                    play->envCtx.screenFillColor[3] = 255.0f * temp;
                    if ((temp == 0.0f) && (gSaveContext.entranceIndex == ENTR_KENJYANOMA_0)) {
                        Audio_PlaySoundGeneral(NA_SE_SY_WHITE_OUT_S, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    } else if ((temp == 0.0f) && ((gSaveContext.entranceIndex == ENTR_TOKINOMA_0) ||
                                                  (gSaveContext.entranceIndex == ENTR_SPOT15_0) ||
                                                  (gSaveContext.entranceIndex == ENTR_YOUSEI_IZUMI_YOKO_0))) {
                        Audio_PlaySoundGeneral(NA_SE_EV_WHITE_OUT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    } else if ((temp == 0.0f) && (play->sceneNum == SCENE_GANONTIKA)) {
                        func_800788CC(NA_SE_EV_WHITE_OUT);
                    }
                } else {
                    play->envCtx.screenFillColor[3] = (1.0f - temp) * 255.0f;
                }
                break;

            case 2:
            case 6:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 255;
                if (cmd->base == 2) {
                    play->envCtx.screenFillColor[3] = 255.0f * temp;
                } else {
                    play->envCtx.screenFillColor[3] = (1.0f - temp) * 255.0f;
                }
                break;

            case 3:
            case 7:
                play->envCtx.screenFillColor[0] = 255;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 0;
                if (cmd->base == 3) {
                    play->envCtx.screenFillColor[3] = (1.0f - temp) * 255.0f;
                } else {
                    play->envCtx.screenFillColor[3] = 255.0f * temp;
                }
                break;

            case 4:
            case 8:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 255;
                play->envCtx.screenFillColor[2] = 0;
                if (cmd->base == 4) {
                    play->envCtx.screenFillColor[3] = (1.0f - temp) * 255.0f;
                } else {
                    play->envCtx.screenFillColor[3] = 255.0f * temp;
                }
                break;

            case 9:
                gSaveContext.cutsceneTransitionControl = 1;
                break;

            case 10:
            case 11:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 0;
                if (cmd->base == 10) {
                    play->envCtx.screenFillColor[3] = (1.0f - temp) * 255.0f;
                } else {
                    play->envCtx.screenFillColor[3] = 255.0f * temp;
                }
                break;

            case 12:
                gSaveContext.cutsceneTransitionControl = 255.0f - (155.0f * temp);
                break;

            case 13:
                play->envCtx.screenFillColor[0] = 0;
                play->envCtx.screenFillColor[1] = 0;
                play->envCtx.screenFillColor[2] = 0;
                play->envCtx.screenFillColor[3] = 255.0f - ((1.0f - temp) * 155.0f);
                break;
        }
    }
}

// Command 0x1 & 0x5: Camera Eye Points
s32 Cutscene_Command_CameraEyePoints(PlayState* play, CutsceneContext* csCtx, u8* cmd, u8 relativeToLink) {
    s32 shouldContinue = 1;
    CsCmdBase* cmdBase = (CsCmdBase*)cmd;
    s32 size;

    cmd += 8;
    size = 8;

    if ((cmdBase->startFrame < csCtx->frames) && (csCtx->frames < cmdBase->endFrame) &&
        ((csCtx->unk_18 < cmdBase->startFrame) || (csCtx->unk_18 >= 0xF000))) {
        csCtx->unk_1B = 1;
        csCtx->subCamEyePoints = (CutsceneCameraPoint*)cmd;
        if (csCtx->unk_1A != 0) {
            csCtx->unk_18 = cmdBase->startFrame;
            if (D_8015FCC8 != 0) {
                Play_CameraChangeSetting(play, csCtx->subCamId, CAM_SET_CS_0);
                Play_ChangeCameraStatus(play, sReturnToCamId, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Camera_ResetAnim(Play_GetCamera(play, csCtx->subCamId));
                Camera_SetCSParams(Play_GetCamera(play, csCtx->subCamId), csCtx->subCamLookAtPoints,
                                   csCtx->subCamEyePoints, GET_PLAYER(play), relativeToLink);
            }
        }
    }

    while (shouldContinue) {
        if (((CutsceneCameraPoint*)cmd)->continueFlag == CS_CMD_STOP) {
            shouldContinue = 0;
        }
        cmd += 0x10;
        size += 0x10;
    }

    return size;
}

// Command 0x2 & 0x6: Camera At Points
s32 Cutscene_Command_CameraLookAtPoints(PlayState* play, CutsceneContext* csCtx, u8* cmd, u8 relativeToLink) {
    s32 shouldContinue = 1;
    CsCmdBase* cmdBase = (CsCmdBase*)cmd;
    s32 size;

    cmd += 8;
    size = 8;

    if ((cmdBase->startFrame < csCtx->frames) && (csCtx->frames < cmdBase->endFrame) &&
        ((D_8015FCC0 < cmdBase->startFrame) || (D_8015FCC0 >= 0xF000))) {
        csCtx->unk_1A = 1;
        csCtx->subCamLookAtPoints = (CutsceneCameraPoint*)cmd;
        if (csCtx->unk_1B != 0) {
            D_8015FCC0 = cmdBase->startFrame;
            if (D_8015FCC8 != 0) {
                Play_CameraChangeSetting(play, csCtx->subCamId, CAM_SET_CS_0);
                Play_ChangeCameraStatus(play, sReturnToCamId, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Camera_ResetAnim(Play_GetCamera(play, csCtx->subCamId));
                Camera_SetCSParams(Play_GetCamera(play, csCtx->subCamId), csCtx->subCamLookAtPoints,
                                   csCtx->subCamEyePoints, GET_PLAYER(play), relativeToLink);
            }
        }
    }

    while (shouldContinue) {
        if (((CutsceneCameraPoint*)cmd)->continueFlag == CS_CMD_STOP) {
            shouldContinue = 0;
        }
        cmd += 0x10;
        size += 0x10;
    }

    return size;
}

// Command 0x7: ? (Related to camera positons)
s32 Cutscene_Command_07(PlayState* play, CutsceneContext* csCtx, u8* cmd, u8 unused) {
    CsCmdBase* cmdBase = (CsCmdBase*)cmd;
    s32 size;
    Vec3f sp3C;
    Vec3f sp30;
    Camera* subCam;
    f32 sp28;

    cmd += 8;
    size = 8;

    if ((cmdBase->startFrame < csCtx->frames) && (csCtx->frames < cmdBase->endFrame) &&
        ((D_8015FCC2 < cmdBase->startFrame) || (D_8015FCC2 >= 0xF000))) {
        csCtx->unk_1B = 1;
        csCtx->subCamEyePoints = (CutsceneCameraPoint*)cmd;
        if (csCtx->unk_1A != 0) {
            D_8015FCC2 = cmdBase->startFrame;
            if (D_8015FCC8 != 0) {
                subCam = Play_GetCamera(play, csCtx->subCamId);
                subCam->player = NULL;
                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Play_CameraChangeSetting(play, csCtx->subCamId, CAM_SET_FREE0);
                sp28 = csCtx->subCamLookAtPoints->cameraRoll * 1.40625f;
                Camera_SetParam(subCam, 64, &sp28);
                sp3C.x = csCtx->subCamLookAtPoints->pos.x;
                sp3C.y = csCtx->subCamLookAtPoints->pos.y;
                sp3C.z = csCtx->subCamLookAtPoints->pos.z;
                sp30.x = csCtx->subCamEyePoints->pos.x;
                sp30.y = csCtx->subCamEyePoints->pos.y;
                sp30.z = csCtx->subCamEyePoints->pos.z;
                Play_CameraSetAtEye(play, csCtx->subCamId, &sp3C, &sp30);
                Play_CameraSetFov(play, csCtx->subCamId, csCtx->subCamEyePoints->viewAngle);
            }
        }
    }

    size += 0x10;

    return size;
}

// Command 0x8: ? (Related to camera focus points)
s32 Cutscene_Command_08(PlayState* play, CutsceneContext* csCtx, u8* cmd, u8 unused) {
    CsCmdBase* cmdBase = (CsCmdBase*)cmd;
    s32 size;
    Vec3f sp3C;
    Vec3f sp30;
    Camera* subCam;
    f32 sp28;

    cmd += 8;
    size = 8;

    if ((cmdBase->startFrame < csCtx->frames) && (csCtx->frames < cmdBase->endFrame) &&
        ((D_8015FCC4 < cmdBase->startFrame) || (D_8015FCC4 >= 0xF000))) {
        csCtx->unk_1A = 1;
        csCtx->subCamLookAtPoints = (CutsceneCameraPoint*)cmd;
        if (csCtx->unk_1B != 0) {
            D_8015FCC4 = cmdBase->startFrame;
            if (D_8015FCC8 != 0) {
                subCam = Play_GetCamera(play, csCtx->subCamId);
                subCam->player = NULL;
                Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
                Play_ChangeCameraStatus(play, csCtx->subCamId, CAM_STAT_ACTIVE);
                Play_CameraChangeSetting(play, csCtx->subCamId, CAM_SET_FREE0);
                sp3C.x = csCtx->subCamLookAtPoints->pos.x;
                sp3C.y = csCtx->subCamLookAtPoints->pos.y;
                sp3C.z = csCtx->subCamLookAtPoints->pos.z;
                sp30.x = csCtx->subCamEyePoints->pos.x;
                sp30.y = csCtx->subCamEyePoints->pos.y;
                sp30.z = csCtx->subCamEyePoints->pos.z;
                Play_CameraSetAtEye(play, csCtx->subCamId, &sp3C, &sp30);
                Play_CameraSetFov(play, csCtx->subCamId, csCtx->subCamEyePoints->viewAngle);
            }
        }
    }

    size += 0x10;

    return size;
}

// Command 0x13: Textbox
void Cutscene_Command_Textbox(PlayState* play, CutsceneContext* csCtx, CsCmdTextbox* cmd) {
    u8 dialogState;
    s16 originalCsFrames;

    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
        if (cmd->type != 2) {
            if (D_8011E1C0 != cmd->base) {
                D_8011E1C0 = cmd->base;
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
            if (D_8011E1C4 != cmd->base) {
                D_8011E1C4 = cmd->base;
                func_8010BD58(play, cmd->base);
                return;
            }
        }

        if (csCtx->frames >= cmd->endFrame) {
            originalCsFrames = csCtx->frames;
            dialogState = Message_GetState(&play->msgCtx);

            if ((dialogState != TEXT_STATE_CLOSING) && (dialogState != TEXT_STATE_NONE) &&
                (dialogState != TEXT_STATE_SONG_DEMO_DONE) && (dialogState != TEXT_STATE_8)) {
                csCtx->frames--;

                if ((dialogState == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
                    if (play->msgCtx.choiceIndex == 0) {
                        if (cmd->textId1 != 0xFFFF) {
                            Message_ContinueTextbox(play, cmd->textId1);
                        } else {
                            csCtx->frames++;
                        }
                    } else {
                        if (cmd->textId2 != 0xFFFF) {
                            Message_ContinueTextbox(play, cmd->textId2);
                        } else {
                            csCtx->frames++;
                        }
                    }
                }

                if (dialogState == TEXT_STATE_9) {
                    if (cmd->textId1 != 0xFFFF) {
                        Message_ContinueTextbox(play, cmd->textId1);
                    } else {
                        csCtx->frames++;
                    }
                }

                if (dialogState == TEXT_STATE_EVENT) {
                    if (Message_ShouldAdvance(play)) {
                        func_8010BD58(play, cmd->base);
                    }
                }
            }

            if (csCtx->frames == originalCsFrames) {
                Interface_ChangeAlpha(1);
                D_8011E1C0 = 0;
                D_8011E1C4 = 0;
            }
        }
    }
}

void Cutscene_ProcessCommands(PlayState* play, CutsceneContext* csCtx, u8* cutscenePtr) {
    s16 i;
    s32 totalEntries;
    s32 cmdType;
    s32 cmdEntries;
    CsCmdBase* cmd;
    s32 cutsceneEndFrame;
    s16 j;

    MemCpy(&totalEntries, cutscenePtr, 4);
    cutscenePtr += 4;
    MemCpy(&cutsceneEndFrame, cutscenePtr, 4);
    cutscenePtr += 4;

    if ((cutsceneEndFrame < csCtx->frames) && (csCtx->state != CS_STATE_UNSKIPPABLE_EXEC)) {
        csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
        return;
    }

    if (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_DRIGHT)) {
        csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
        return;
    }

    for (i = 0; i < totalEntries; i++) {
        MemCpy(&cmdType, cutscenePtr, 4);
        cutscenePtr += 4;

        if (cmdType == -1) {
            return;
        }

        switch (cmdType) {
            case CS_CMD_MISC:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    func_80064824(play, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_LIGHTING:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_SetLighting(play, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_PLAYBGM:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_PlayBGM(play, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_STOPBGM:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_StopBGM(play, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_FADEBGM:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_FadeBGM(play, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_09:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_09(play, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0xC;
                }
                break;
            case CS_CMD_SETTIME:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    func_80065134(play, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0xC;
                }
                break;
            case CS_CMD_SET_PLAYER_ACTION:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->linkAction = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_1:
            case 17:
            case 18:
            case 23:
            case 34:
            case 39:
            case 46:
            case 76:
            case 85:
            case 93:
            case 105:
            case 107:
            case 110:
            case 119:
            case 123:
            case 138:
            case 139:
            case 144:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[0] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_2:
            case 16:
            case 24:
            case 35:
            case 40:
            case 48:
            case 64:
            case 68:
            case 70:
            case 78:
            case 80:
            case 94:
            case 116:
            case 118:
            case 120:
            case 125:
            case 131:
            case 141:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[1] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_3:
            case 36:
            case 41:
            case 50:
            case 67:
            case 69:
            case 72:
            case 74:
            case 81:
            case 106:
            case 117:
            case 121:
            case 126:
            case 132:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[2] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_4:
            case 37:
            case 42:
            case 51:
            case 53:
            case 63:
            case 65:
            case 66:
            case 75:
            case 82:
            case 108:
            case 127:
            case 133:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[3] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_5:
            case 38:
            case 43:
            case 47:
            case 54:
            case 79:
            case 83:
            case 128:
            case 135:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[4] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_6:
            case 55:
            case 77:
            case 84:
            case 90:
            case 129:
            case 136:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[5] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_7:
            case 52:
            case 57:
            case 58:
            case 88:
            case 115:
            case 130:
            case 137:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[6] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_8:
            case 60:
            case 89:
            case 111:
            case 114:
            case 134:
            case 142:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[7] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_9:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[8] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_10:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->npcActions[9] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_CAM_EYE:
                cutscenePtr += Cutscene_Command_CameraEyePoints(play, csCtx, (void*)cutscenePtr, 0);
                break;
            case CS_CMD_CAM_EYE_REL_TO_PLAYER:
                cutscenePtr += Cutscene_Command_CameraEyePoints(play, csCtx, (void*)cutscenePtr, 1);
                break;
            case CS_CMD_CAM_AT:
                cutscenePtr += Cutscene_Command_CameraLookAtPoints(play, csCtx, (void*)cutscenePtr, 0);
                break;
            case CS_CMD_CAM_AT_REL_TO_PLAYER:
                cutscenePtr += Cutscene_Command_CameraLookAtPoints(play, csCtx, (void*)cutscenePtr, 1);
                break;
            case CS_CMD_07:
                cutscenePtr += Cutscene_Command_07(play, csCtx, (void*)cutscenePtr, 0);
                break;
            case CS_CMD_08:
                cutscenePtr += Cutscene_Command_08(play, csCtx, (void*)cutscenePtr, 0);
                break;
            case CS_CMD_TERMINATOR:
                cutscenePtr += 4;
                Cutscene_Command_Terminator(play, csCtx, (void*)cutscenePtr);
                cutscenePtr += 8;
                break;
            case CS_CMD_TEXTBOX:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if (cmd->base != 0xFFFF) {
                        Cutscene_Command_Textbox(play, csCtx, (void*)cutscenePtr);
                    }
                    cutscenePtr += 0xC;
                }
                break;
            case CS_CMD_SCENE_TRANS_FX:
                cutscenePtr += 4;
                Cutscene_Command_TransitionFX(play, csCtx, (void*)cutscenePtr);
                cutscenePtr += 8;
                break;
            default:
                MemCpy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cutscenePtr += 0x30;
                }
                break;
        }
    }
}

void func_80068C3C(PlayState* play, CutsceneContext* csCtx) {
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

        csCtx->frames++;
        if (dREG(95) != 0) {
            Cutscene_ProcessCommands(play, csCtx, D_8012D1F0);
        } else {
            Cutscene_ProcessCommands(play, csCtx, play->csCtx.segment);
        }
    }
}

void func_80068D84(PlayState* play, CutsceneContext* csCtx) {
    if (func_8006472C(play, csCtx, 0.0f)) {
        Audio_SetCutsceneFlag(0);
        csCtx->state = CS_STATE_IDLE;
    }
}

void func_80068DC0(PlayState* play, CutsceneContext* csCtx) {
    s16 i;

    if (func_8006472C(play, csCtx, 0.0f)) {
        csCtx->linkAction = NULL;

        for (i = 0; i < 10; i++) {
            csCtx->npcActions[i] = NULL;
        }

        osSyncPrintf("\n\n\n\n\nやっぱりここかいな"); // "Right here, huh"
        gSaveContext.cutsceneIndex = 0;
        gSaveContext.gameMode = 0;

        if (D_8015FCC8 != 0) {
            switch (gSaveContext.entranceIndex) {
                case 0x028A:
                case 0x028E:
                case 0x0292:
                case 0x0476:
                    Play_CopyCamera(play, sReturnToCamId, csCtx->subCamId);
            }

            Play_ChangeCameraStatus(play, sReturnToCamId, CAM_STAT_ACTIVE);
            Play_ClearCamera(play, csCtx->subCamId);
            func_8005B1A4(play->cameraPtrs[sReturnToCamId]);
        }

        Audio_SetCutsceneFlag(0);
        csCtx->state = CS_STATE_IDLE;
    }
}

void func_80068ECC(PlayState* play, CutsceneContext* csCtx) {
    u8 i;

    if ((gSaveContext.cutsceneTrigger != 0) && (csCtx->state == CS_STATE_IDLE) && !Player_InCsMode(play)) {
        gSaveContext.cutsceneIndex = 0xFFFD;
    }

    if ((gSaveContext.cutsceneIndex >= 0xFFF0) && (csCtx->state == CS_STATE_IDLE)) {
        Flags_UnsetEnv(play, 0);

        D_8011E1C0 = 0;
        D_8011E1C4 = 0;
        csCtx->unk_12 = 0;
        csCtx->linkAction = NULL;

        for (i = 0; i < 10; i++) {
            csCtx->npcActions[i] = NULL;
        }

        csCtx->state++;

        if (csCtx->state == CS_STATE_SKIPPABLE_INIT) {
            Audio_SetCutsceneFlag(1);

            csCtx->frames = 0xFFFF;
            csCtx->unk_18 = 0xFFFF;
            D_8015FCC0 = 0xFFFF;
            D_8015FCC2 = 0xFFFF;
            D_8015FCC4 = 0xFFFF;
            csCtx->unk_1A = 0;
            csCtx->unk_1B = 0;
            sReturnToCamId = play->activeCamId;

            if (D_8015FCC8 != 0) {
                csCtx->subCamId = Play_CreateSubCamera(play);
            }

            if (gSaveContext.cutsceneTrigger == 0) {
                Interface_ChangeAlpha(1);
                ShrinkWindow_SetVal(0x20);
                ShrinkWindow_SetCurrentVal(0x20);
                csCtx->state++;
            }

            func_80068C3C(play, csCtx);
        }

        gSaveContext.cutsceneTrigger = 0;
    }
}

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
            Cutscene_SetSegment(play, entranceCutscene->segAddr);
            gSaveContext.cutsceneTrigger = 2;
            gSaveContext.showTitleCard = false;
            break;
        }
    }
}

void Cutscene_HandleConditionalTriggers(PlayState* play) {
    osSyncPrintf("\ngame_info.mode=[%d] restart_flag", ((void)0, gSaveContext.respawnFlag));

    if ((gSaveContext.gameMode == 0) && (gSaveContext.respawnFlag <= 0) && (gSaveContext.cutsceneIndex < 0xFFF0)) {
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

void Cutscene_SetSegment(PlayState* play, void* segment) {
    if (SEGMENT_NUMBER(segment) != 0) {
        play->csCtx.segment = SEGMENTED_TO_VIRTUAL(segment);
    } else {
        play->csCtx.segment = segment;
    }
}
