
#include "global.h"
#include "fault.h"
#include "quake.h"
#include "terminal.h"
#include "versions.h"
#if PLATFORM_N64
#include "n64dd.h"
#endif

#include "z64frame_advance.h"

#pragma increment_block_number "gc-eu:128 gc-eu-mq:128 gc-jp:128 gc-jp-ce:128 gc-jp-mq:128 gc-us:128 gc-us-mq:128"

TransitionTile gTransitionTile;
s32 gTransitionTileState;
VisMono gPlayVisMono;
Color_RGBA8_u32 gVisMonoColor;

#if DEBUG_FEATURES
FaultClient D_801614B8;
#endif

s16 sTransitionFillTimer;

#if DEBUG_FEATURES
void* gDebugCutsceneScript = NULL;
UNK_TYPE D_8012D1F4 = 0; // unused
#endif

Input* D_8012D1F8 = NULL;

void Play_SpawnScene(PlayState* this, s32 sceneId, s32 spawn);

// This macro prints the number "1" with a file and line number if R_ENABLE_PLAY_LOGS is enabled.
// For example, it can be used to trace the play state execution at a high level.
#if DEBUG_FEATURES
#define PLAY_LOG(line)                            \
    do {                                          \
        if (R_ENABLE_PLAY_LOGS) {                 \
            LOG_NUM("1", 1, "../z_play.c", line); \
        }                                         \
    } while (0)
#else
#define PLAY_LOG(line) (void)0
#endif

void Play_RequestViewpointBgCam(PlayState* this) {
    Camera_RequestBgCam(GET_ACTIVE_CAM(this), this->viewpoint - 1);
}

void Play_SetViewpoint(PlayState* this, s16 viewpoint) {
    ASSERT(viewpoint == VIEWPOINT_LOCKED || viewpoint == VIEWPOINT_PIVOT, "point == 1 || point == 2", "../z_play.c",
           2160);

    this->viewpoint = viewpoint;

    if ((R_SCENE_CAM_TYPE != SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT) && (gSaveContext.save.cutsceneIndex < 0xFFF0)) {
        // Play a sfx when the player toggles the camera
        Audio_PlaySfxGeneral((viewpoint == VIEWPOINT_LOCKED) ? NA_SE_SY_CAMERA_ZOOM_DOWN : NA_SE_SY_CAMERA_ZOOM_UP,
                             &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultReverb);
    }

    Play_RequestViewpointBgCam(this);
}

/**
 * @return true if the currently set viewpoint is the same as the one provided in the argument
 */
s32 Play_CheckViewpoint(PlayState* this, s16 viewpoint) {
    return (viewpoint == this->viewpoint);
}

/**
 * If the scene is a shop, set the viewpoint that will set the bgCamIndex
 * to toggle the camera into a "browsing item selection" setting.
 */
void Play_SetShopBrowsingViewpoint(PlayState* this) {
    PRINTF("Game_play_shop_pr_vr_switch_set()\n");

    if (R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT) {
        this->viewpoint = VIEWPOINT_PIVOT;
    }
}

void Play_SetupTransition(PlayState* this, s32 transitionType) {
    TransitionContext* transitionCtx = &this->transitionCtx;

    bzero(transitionCtx, sizeof(TransitionContext));

    transitionCtx->transitionType = transitionType;

    // circle types
    if ((transitionCtx->transitionType >> 5) == 1) {
        transitionCtx->init = TransitionCircle_Init;
        transitionCtx->destroy = TransitionCircle_Destroy;
        transitionCtx->start = TransitionCircle_Start;
        transitionCtx->isDone = TransitionCircle_IsDone;
        transitionCtx->draw = TransitionCircle_Draw;
        transitionCtx->update = TransitionCircle_Update;
        transitionCtx->setType = TransitionCircle_SetType;
        transitionCtx->setColor = TransitionCircle_SetColor;
        transitionCtx->setUnkColor = TransitionCircle_SetUnkColor;
    } else {
        switch (transitionCtx->transitionType) {
            case TRANS_TYPE_TRIFORCE:
                transitionCtx->init = TransitionTriforce_Init;
                transitionCtx->destroy = TransitionTriforce_Destroy;
                transitionCtx->start = TransitionTriforce_Start;
                transitionCtx->isDone = TransitionTriforce_IsDone;
                transitionCtx->draw = TransitionTriforce_Draw;
                transitionCtx->update = TransitionTriforce_Update;
                transitionCtx->setType = TransitionTriforce_SetType;
                transitionCtx->setColor = TransitionTriforce_SetColor;
                transitionCtx->setUnkColor = NULL;
                break;

            case TRANS_TYPE_WIPE:
            case TRANS_TYPE_WIPE_FAST:
                transitionCtx->init = TransitionWipe_Init;
                transitionCtx->destroy = TransitionWipe_Destroy;
                transitionCtx->start = TransitionWipe_Start;
                transitionCtx->isDone = TransitionWipe_IsDone;
                transitionCtx->draw = TransitionWipe_Draw;
                transitionCtx->update = TransitionWipe_Update;
                transitionCtx->setType = TransitionWipe_SetType;
                transitionCtx->setColor = TransitionWipe_SetColor;
                transitionCtx->setUnkColor = NULL;
                break;

            case TRANS_TYPE_FADE_BLACK:
            case TRANS_TYPE_FADE_WHITE:
            case TRANS_TYPE_FADE_BLACK_FAST:
            case TRANS_TYPE_FADE_WHITE_FAST:
            case TRANS_TYPE_FADE_BLACK_SLOW:
            case TRANS_TYPE_FADE_WHITE_SLOW:
            case TRANS_TYPE_FADE_WHITE_CS_DELAYED:
            case TRANS_TYPE_FADE_WHITE_INSTANT:
            case TRANS_TYPE_FADE_GREEN:
            case TRANS_TYPE_FADE_BLUE:
                transitionCtx->init = TransitionFade_Init;
                transitionCtx->destroy = TransitionFade_Destroy;
                transitionCtx->start = TransitionFade_Start;
                transitionCtx->isDone = TransitionFade_IsDone;
                transitionCtx->draw = TransitionFade_Draw;
                transitionCtx->update = TransitionFade_Update;
                transitionCtx->setType = TransitionFade_SetType;
                transitionCtx->setColor = TransitionFade_SetColor;
                transitionCtx->setUnkColor = NULL;
                break;

            case TRANS_TYPE_FILL_WHITE2:
            case TRANS_TYPE_FILL_WHITE:
                this->transitionMode = TRANS_MODE_FILL_WHITE_INIT;
                break;

            case TRANS_TYPE_INSTANT:
                this->transitionMode = TRANS_MODE_INSTANT;
                break;

            case TRANS_TYPE_FILL_BROWN:
                this->transitionMode = TRANS_MODE_FILL_BROWN_INIT;
                break;

            case TRANS_TYPE_SANDSTORM_PERSIST:
                this->transitionMode = TRANS_MODE_SANDSTORM_INIT;
                break;

            case TRANS_TYPE_SANDSTORM_END:
                this->transitionMode = TRANS_MODE_SANDSTORM_END_INIT;
                break;

            case TRANS_TYPE_CS_BLACK_FILL:
                this->transitionMode = TRANS_MODE_CS_BLACK_FILL_INIT;
                break;

            default:
#if OOT_VERSION < NTSC_1_1
                HUNGUP_AND_CRASH("../z_play.c", 2263);
#elif OOT_VERSION < PAL_1_0
                HUNGUP_AND_CRASH("../z_play.c", 2266);
#elif OOT_VERSION < PAL_1_1
                HUNGUP_AND_CRASH("../z_play.c", 2269);
#elif OOT_VERSION < GC_JP
                HUNGUP_AND_CRASH("../z_play.c", 2272);
#elif OOT_VERSION < GC_EU_MQ_DBG
                HUNGUP_AND_CRASH("../z_play.c", 2287);
#elif OOT_VERSION < GC_JP_CE
                HUNGUP_AND_CRASH("../z_play.c", 2290);
#else
                HUNGUP_AND_CRASH("../z_play.c", 2293);
#endif
                break;
        }
    }
}

void func_800BC88C(PlayState* this) {
    this->transitionCtx.transitionType = -1;
}

Gfx* Play_SetFog(PlayState* this, Gfx* gfx) {
    return Gfx_SetFog2(gfx, this->lightCtx.fogColor[0], this->lightCtx.fogColor[1], this->lightCtx.fogColor[2], 0,
                       this->lightCtx.fogNear, 1000);
}

void Play_Destroy(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;
    Player* player = GET_PLAYER(this);

    if (1) {}

    this->state.gfxCtx->callback = NULL;
    this->state.gfxCtx->callbackParam = NULL;

    SREG(91) = 0;
    R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_OFF;

    PreRender_Destroy(&this->pauseBgPreRender);
    Effect_DeleteAll(this);
    EffectSs_ClearAll(this);
    CollisionCheck_DestroyContext(this, &this->colChkCtx);

    if (gTransitionTileState == TRANS_TILE_READY) {
        TransitionTile_Destroy(&gTransitionTile);
        gTransitionTileState = TRANS_TILE_OFF;
    }

    if (this->transitionMode == TRANS_MODE_INSTANCE_RUNNING) {
        this->transitionCtx.destroy(&this->transitionCtx.instanceData);
        func_800BC88C(this);
        this->transitionMode = TRANS_MODE_OFF;
    }

    Letterbox_Destroy();
    TransitionFade_Destroy(&this->transitionFadeFlash);
    VisMono_Destroy(&gPlayVisMono);

    if (gSaveContext.save.linkAge != this->linkAgeOnLoad) {
        Inventory_SwapAgeEquipment();
        Player_SetEquipmentData(this, player);
    }

    func_80031C3C(&this->actorCtx, this);
    Interface_Destroy(this);
    KaleidoScopeCall_Destroy(this);
    KaleidoManager_Destroy();
    ZeldaArena_Cleanup();

#if PLATFORM_N64
    if ((B_80121220 != NULL) && (B_80121220->unk_14 != NULL)) {
        B_80121220->unk_14(this);
    }
#endif

#if DEBUG_FEATURES
    Fault_RemoveClient(&D_801614B8);
#endif
}

void Play_Init(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    uintptr_t zAlloc;
    uintptr_t zAllocAligned;
    size_t zAllocSize;
    Player* player;
    s32 playerStartBgCamIndex;
    s32 i;
    u8 baseSceneLayer;
    s32 pad[2];

    if (gSaveContext.save.entranceIndex == ENTR_LOAD_OPENING) {
        gSaveContext.save.entranceIndex = 0;
        this->state.running = false;
        SET_NEXT_GAMESTATE(&this->state, TitleSetup_Init, TitleSetupState);
        return;
    }

#if PLATFORM_GC && DEBUG_FEATURES
    SystemArena_Display();
#endif

    GameState_Realloc(&this->state, 0x1D4790);

#if PLATFORM_N64
    if ((B_80121220 != NULL) && (B_80121220->unk_10 != NULL)) {
        B_80121220->unk_10(this);
    }
#endif

    KaleidoManager_Init(this);
    View_Init(&this->view, gfxCtx);
    Audio_SetExtraFilter(0);
    Quake_Init();

    for (i = 0; i < ARRAY_COUNT(this->cameraPtrs); i++) {
        this->cameraPtrs[i] = NULL;
    }

    Camera_Init(&this->mainCamera, &this->view, &this->colCtx, this);
    Camera_ChangeStatus(&this->mainCamera, CAM_STAT_ACTIVE);

    for (i = 0; i < 3; i++) {
        Camera_Init(&this->subCameras[i], &this->view, &this->colCtx, this);
        Camera_ChangeStatus(&this->subCameras[i], CAM_STAT_UNK100);
    }

    this->cameraPtrs[CAM_ID_MAIN] = &this->mainCamera;
    this->cameraPtrs[CAM_ID_MAIN]->uid = 0;
    this->activeCamId = CAM_ID_MAIN;
    Camera_OverwriteStateFlags(&this->mainCamera, CAM_STATE_CHECK_BG_ALT | CAM_STATE_CHECK_WATER | CAM_STATE_CHECK_BG |
                                                      CAM_STATE_EXTERNAL_FINISHED | CAM_STATE_CAM_FUNC_FINISH |
                                                      CAM_STATE_LOCK_MODE | CAM_STATE_DISTORTION | CAM_STATE_PLAY_INIT);
    Sram_Init(this, &this->sramCtx);
    Regs_InitData(this);
    Message_Init(this);
    GameOver_Init(this);
    SfxSource_InitAll(this);
    Effect_InitContext(this);
    EffectSs_InitInfo(this, 0x55);
    CollisionCheck_InitContext(this, &this->colChkCtx);
    AnimTaskQueue_Reset(&this->animTaskQueue);
    Cutscene_InitContext(this, &this->csCtx);

    if (gSaveContext.nextCutsceneIndex != 0xFFEF) {
        gSaveContext.save.cutsceneIndex = gSaveContext.nextCutsceneIndex;
        gSaveContext.nextCutsceneIndex = 0xFFEF;
    }

    if (gSaveContext.save.cutsceneIndex == 0xFFFD) {
        gSaveContext.save.cutsceneIndex = 0;
    }

    if (gSaveContext.nextDayTime != NEXT_TIME_NONE) {
        gSaveContext.save.dayTime = gSaveContext.nextDayTime;
        gSaveContext.skyboxTime = gSaveContext.nextDayTime;
    }

    if (gSaveContext.save.dayTime > CLOCK_TIME(18, 0) || gSaveContext.save.dayTime < CLOCK_TIME(6, 30)) {
        gSaveContext.save.nightFlag = 1;
    } else {
        gSaveContext.save.nightFlag = 0;
    }

    Cutscene_HandleConditionalTriggers(this);

    if (gSaveContext.gameMode != GAMEMODE_NORMAL || gSaveContext.save.cutsceneIndex >= 0xFFF0) {
        gSaveContext.nayrusLoveTimer = 0;
        Magic_Reset(this);
        gSaveContext.sceneLayer = SCENE_LAYER_CUTSCENE_FIRST + (gSaveContext.save.cutsceneIndex & 0xF);
    } else if (!LINK_IS_ADULT && IS_DAY) {
        gSaveContext.sceneLayer = SCENE_LAYER_CHILD_DAY;
    } else if (!LINK_IS_ADULT && !IS_DAY) {
        gSaveContext.sceneLayer = SCENE_LAYER_CHILD_NIGHT;
    } else if (LINK_IS_ADULT && IS_DAY) {
        gSaveContext.sceneLayer = SCENE_LAYER_ADULT_DAY;
    } else {
        gSaveContext.sceneLayer = SCENE_LAYER_ADULT_NIGHT;
    }

    // save the base scene layer (before accounting for the special cases below) to use later for the transition type
    baseSceneLayer = gSaveContext.sceneLayer;

    if ((gEntranceTable[((void)0, gSaveContext.save.entranceIndex)].sceneId == SCENE_HYRULE_FIELD) && !LINK_IS_ADULT &&
        !IS_CUTSCENE_LAYER) {
        if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD) && CHECK_QUEST_ITEM(QUEST_GORON_RUBY) &&
            CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) {
            gSaveContext.sceneLayer = 1;
        } else {
            gSaveContext.sceneLayer = 0;
        }
    } else if ((gEntranceTable[((void)0, gSaveContext.save.entranceIndex)].sceneId == SCENE_KOKIRI_FOREST) &&
               LINK_IS_ADULT && !IS_CUTSCENE_LAYER) {
        gSaveContext.sceneLayer = GET_EVENTCHKINF(EVENTCHKINF_48) ? 3 : 2;
    }

    Play_SpawnScene(
        this, gEntranceTable[((void)0, gSaveContext.save.entranceIndex) + ((void)0, gSaveContext.sceneLayer)].sceneId,
        gEntranceTable[((void)0, gSaveContext.save.entranceIndex) + ((void)0, gSaveContext.sceneLayer)].spawn);

    PRINTF("\nSCENE_NO=%d COUNTER=%d\n", ((void)0, gSaveContext.save.entranceIndex), gSaveContext.sceneLayer);

#if PLATFORM_GC
    // When entering Gerudo Valley in the credits, trigger the GC emulator to play the ending movie.
    // The emulator constantly checks whether PC is 0x81000000, so this works even though it's not a valid address.
    if ((gEntranceTable[((void)0, gSaveContext.save.entranceIndex)].sceneId == SCENE_GERUDO_VALLEY) &&
        gSaveContext.sceneLayer == 6) {
        PRINTF(T("エンディングはじまるよー\n", "The ending starts\n"));
        ((void (*)(void))0x81000000)();
        PRINTF(T("出戻り？\n", "Return?\n"));
    }
#endif

#if PLATFORM_N64
    if ((B_80121220 != NULL && B_80121220->unk_54 != NULL && B_80121220->unk_54(this))) {
    } else {
        Cutscene_HandleEntranceTriggers(this);
    }
#else
    Cutscene_HandleEntranceTriggers(this);
#endif

    KaleidoScopeCall_Init(this);
    Interface_Init(this);

    if (gSaveContext.nextDayTime != NEXT_TIME_NONE) {
        if (gSaveContext.nextDayTime == NEXT_TIME_DAY) {
            gSaveContext.save.totalDays++;
            gSaveContext.save.bgsDayCount++;
            gSaveContext.dogIsLost = true;

            if (Inventory_ReplaceItem(this, ITEM_WEIRD_EGG, ITEM_CHICKEN) ||
                Inventory_ReplaceItem(this, ITEM_POCKET_EGG, ITEM_POCKET_CUCCO)) {
                Message_StartTextbox(this, 0x3066, NULL);
            }

            gSaveContext.nextDayTime = NEXT_TIME_DAY_SET;
        } else {
            gSaveContext.nextDayTime = NEXT_TIME_NIGHT_SET;
        }
    }

    SREG(91) = -1;
    R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_OFF;
    PreRender_Init(&this->pauseBgPreRender);
    PreRender_SetValuesSave(&this->pauseBgPreRender, SCREEN_WIDTH, SCREEN_HEIGHT, NULL, NULL, NULL);
    PreRender_SetValues(&this->pauseBgPreRender, SCREEN_WIDTH, SCREEN_HEIGHT, NULL, NULL);
    gTransitionTileState = TRANS_TILE_OFF;
    this->transitionMode = TRANS_MODE_OFF;
    FrameAdvance_Init(&this->frameAdvCtx);
    Rand_Seed((u32)osGetTime());
    Matrix_Init(&this->state);
    this->state.main = Play_Main;
    this->state.destroy = Play_Destroy;
    this->transitionTrigger = TRANS_TRIGGER_END;
    this->unk_11E16 = 0xFF;
    this->bgCoverAlpha = 0;
    this->haltAllActors = false;

    if (gSaveContext.gameMode != GAMEMODE_TITLE_SCREEN) {
        if (gSaveContext.nextTransitionType == TRANS_NEXT_TYPE_DEFAULT) {
            this->transitionType = ENTRANCE_INFO_END_TRANS_TYPE(
                gEntranceTable[((void)0, gSaveContext.save.entranceIndex) + baseSceneLayer].field);
        } else {
            this->transitionType = gSaveContext.nextTransitionType;
            gSaveContext.nextTransitionType = TRANS_NEXT_TYPE_DEFAULT;
        }
    } else {
        this->transitionType = TRANS_TYPE_FADE_BLACK_SLOW;
    }

    Letterbox_Init();
    TransitionFade_Init(&this->transitionFadeFlash);
    TransitionFade_SetType(&this->transitionFadeFlash, TRANS_INSTANCE_TYPE_FADE_FLASH);
    TransitionFade_SetColor(&this->transitionFadeFlash, RGBA8(160, 160, 160, 255));
    TransitionFade_Start(&this->transitionFadeFlash);
    VisMono_Init(&gPlayVisMono);
    gVisMonoColor.a = 0;
    CutsceneFlags_UnsetAll(this);

    PRINTF("ZELDA ALLOC SIZE=%x\n", THA_GetRemaining(&this->state.tha));
    zAllocSize = THA_GetRemaining(&this->state.tha);
    zAlloc = (uintptr_t)GAME_STATE_ALLOC(&this->state, zAllocSize, "../z_play.c", 2918);
    zAllocAligned = (zAlloc + 8) & ~0xF;
    ZeldaArena_Init((void*)zAllocAligned, zAllocSize - (zAllocAligned - zAlloc));
    PRINTF(T("ゼルダヒープ %08x-%08x\n", "Zelda Heap %08x-%08x\n"), zAllocAligned,
           (u8*)zAllocAligned + zAllocSize - (s32)(zAllocAligned - zAlloc));

#if PLATFORM_GC && DEBUG_FEATURES
    Fault_AddClient(&D_801614B8, ZeldaArena_Display, NULL, NULL);
#endif

    Actor_InitContext(this, &this->actorCtx, this->playerEntry);

    // Busyloop until the room loads
    while (!Room_ProcessRoomRequest(this, &this->roomCtx)) {
        ; // Empty Loop
    }

    player = GET_PLAYER(this);
    Camera_InitDataUsingPlayer(&this->mainCamera, player);
    Camera_RequestMode(&this->mainCamera, CAM_MODE_NORMAL);

    playerStartBgCamIndex = PARAMS_GET_U(player->actor.params, 0, 8);
    if (playerStartBgCamIndex != 0xFF) {
        PRINTF("player has start camera ID (" VT_FGCOL(BLUE) "%d" VT_RST ")\n", playerStartBgCamIndex);
        Camera_RequestBgCam(&this->mainCamera, playerStartBgCamIndex);
    }

    if (R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED_TOGGLE_VIEWPOINT) {
        this->viewpoint = VIEWPOINT_PIVOT;
    } else if (R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT) {
        this->viewpoint = VIEWPOINT_LOCKED;
    } else {
        this->viewpoint = VIEWPOINT_NONE;
    }

    Interface_SetSceneRestrictions(this);
    Environment_PlaySceneSequence(this);
    gSaveContext.seqId = this->sceneSequences.seqId;
    gSaveContext.natureAmbienceId = this->sceneSequences.natureAmbienceId;
    func_8002DF18(this, GET_PLAYER(this));
    AnimTaskQueue_Update(this, &this->animTaskQueue);
    gSaveContext.respawnFlag = 0;

#if DEBUG_FEATURES
    if (R_USE_DEBUG_CUTSCENE) {
        static u64 sDebugCutsceneScriptBuf[0xA00];

        gDebugCutsceneScript = sDebugCutsceneScriptBuf;
        PRINTF("\nkawauso_data=[%x]", gDebugCutsceneScript);

        // This hardcoded ROM address extends past the end of the ROM file.
        // Presumably the ROM was larger at a previous point in development when this debug feature was used.
        DmaMgr_DmaRomToRam(0x03FEB000, gDebugCutsceneScript, sizeof(sDebugCutsceneScriptBuf));
    }
#endif
}

void Play_Update(PlayState* this) {
    Input* input = this->state.input;
    s32 isPaused;
    s32 pad1;

#if DEBUG_FEATURES
    if ((SREG(1) < 0) || (DREG(0) != 0)) {
        SREG(1) = 0;
#if PLATFORM_GC
        ZeldaArena_Display();
#endif
    }

    if ((R_HREG_MODE == HREG_MODE_PRINT_OBJECT_TABLE) && (R_PRINT_OBJECT_TABLE_TRIGGER < 0)) {
        u32 i;
        s32 pad2;

        R_PRINT_OBJECT_TABLE_TRIGGER = 0;
        PRINTF("object_exchange_rom_address %u\n", gObjectTableSize);
        PRINTF("RomStart RomEnd   Size\n");

        for (i = 0; i < gObjectTableSize; i++) {
            s32 size = gObjectTable[i].vromEnd - gObjectTable[i].vromStart;

            PRINTF("%08x-%08x %08x(%8.3fKB)\n", gObjectTable[i].vromStart, gObjectTable[i].vromEnd, size,
                   size / 1024.0f);
        }

        PRINTF("\n");
    }

    // HREG(81) was very likely intended to be HREG(80), which would make more sense given how the
    // HREG debugging system works. If this condition used HREG(80) instead, `HREG_MODE_PRINT_OBJECT_TABLE`
    // would also include the actor overlay table and HREG(82) would be used to trigger it instead.
    if ((HREG(81) == 18) && (HREG(82) < 0)) {
        HREG(82) = 0;
        ActorOverlayTable_LogPrint();
    }
#endif

    gSegments[4] = VIRTUAL_TO_PHYSICAL(this->objectCtx.slots[this->objectCtx.mainKeepSlot].segment);
    gSegments[5] = VIRTUAL_TO_PHYSICAL(this->objectCtx.slots[this->objectCtx.subKeepSlot].segment);
    gSegments[2] = VIRTUAL_TO_PHYSICAL(this->sceneSegment);

    if (FrameAdvance_Update(&this->frameAdvCtx, &input[1])) {
        if ((this->transitionMode == TRANS_MODE_OFF) && (this->transitionTrigger != TRANS_TRIGGER_OFF)) {
            this->transitionMode = TRANS_MODE_SETUP;
        }

        if (gTransitionTileState != TRANS_TILE_OFF) {
            switch (gTransitionTileState) {
                case TRANS_TILE_PROCESS:
                    if (TransitionTile_Init(&gTransitionTile, 10, 7) == NULL) {
                        PRINTF(T("fbdemo_init呼出し失敗！\n", "fbdemo_init call failed!\n"));
                        gTransitionTileState = TRANS_TILE_OFF;
                    } else {
                        gTransitionTile.zBuffer = (u16*)gZBuffer;
                        gTransitionTileState = TRANS_TILE_READY;
                        R_UPDATE_RATE = 1;
                    }
                    break;

                case TRANS_TILE_READY:
                    TransitionTile_Update(&gTransitionTile);
                    break;

                default:
                    break;
            }
        }

        if ((u32)this->transitionMode != TRANS_MODE_OFF) {
            switch (this->transitionMode) {
                case TRANS_MODE_SETUP:
                    if (this->transitionTrigger != TRANS_TRIGGER_END) {
                        s16 sceneLayer = SCENE_LAYER_CHILD_DAY;

                        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);

                        if (gSaveContext.save.cutsceneIndex >= 0xFFF0) {
                            sceneLayer = SCENE_LAYER_CUTSCENE_FIRST + (gSaveContext.save.cutsceneIndex & 0xF);
                        }

                        // fade out bgm if "continue bgm" flag is not set
                        if (!(gEntranceTable[this->nextEntranceIndex + sceneLayer].field &
                              ENTRANCE_INFO_CONTINUE_BGM_FLAG)) {
                            PRINTF(T("\n\n\nサウンドイニシャル来ました。111", "\n\n\nSound initialized. 111"));
                            if ((this->transitionType < TRANS_TYPE_MAX) && !Environment_IsForcedSequenceDisabled()) {
                                PRINTF(T("\n\n\nサウンドイニシャル来ました。222", "\n\n\nSound initialized. 222"));
                                func_800F6964(0x14);
                                gSaveContext.seqId = (u8)NA_BGM_DISABLED;
                                gSaveContext.natureAmbienceId = NATURE_ID_DISABLED;
                            }
                        }
                    }

#if DEBUG_FEATURES
                    if (!R_TRANS_DBG_ENABLED) {
                        Play_SetupTransition(this, this->transitionType);
                    } else {
                        Play_SetupTransition(this, R_TRANS_DBG_TYPE);
                    }
#else
                    Play_SetupTransition(this, this->transitionType);
#endif

                    if (this->transitionMode >= TRANS_MODE_FILL_WHITE_INIT) {
                        // non-instance modes break out of this switch
                        break;
                    }
                    FALLTHROUGH;
                case TRANS_MODE_INSTANCE_INIT:
                    this->transitionCtx.init(&this->transitionCtx.instanceData);

                    // circle types
                    if ((this->transitionCtx.transitionType >> 5) == 1) {
                        this->transitionCtx.setType(&this->transitionCtx.instanceData,
                                                    this->transitionCtx.transitionType | TC_SET_PARAMS);
                    }

                    gSaveContext.transWipeSpeed = 14;

                    if ((this->transitionCtx.transitionType == TRANS_TYPE_WIPE_FAST) ||
                        (this->transitionCtx.transitionType == TRANS_TYPE_FILL_WHITE2)) {
                        //! @bug TRANS_TYPE_FILL_WHITE2 will never reach this code.
                        //! It is a non-instance type transition which doesn't run this case.
                        gSaveContext.transWipeSpeed = 28;
                    }

                    gSaveContext.transFadeDuration = 60;

                    if ((this->transitionCtx.transitionType == TRANS_TYPE_FADE_BLACK_FAST) ||
                        (this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE_FAST)) {
                        gSaveContext.transFadeDuration = 20;
                    } else if ((this->transitionCtx.transitionType == TRANS_TYPE_FADE_BLACK_SLOW) ||
                               (this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE_SLOW)) {
                        gSaveContext.transFadeDuration = 150;
                    } else if (this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE_INSTANT) {
                        gSaveContext.transFadeDuration = 2;
                    }

                    if ((this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE) ||
                        (this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE_FAST) ||
                        (this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE_SLOW) ||
                        (this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE_CS_DELAYED) ||
                        (this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE_INSTANT)) {
                        this->transitionCtx.setColor(&this->transitionCtx.instanceData, RGBA8(160, 160, 160, 255));

                        if (this->transitionCtx.setUnkColor != NULL) {
                            this->transitionCtx.setUnkColor(&this->transitionCtx.instanceData,
                                                            RGBA8(160, 160, 160, 255));
                        }
                    } else if (this->transitionCtx.transitionType == TRANS_TYPE_FADE_GREEN) {
                        this->transitionCtx.setColor(&this->transitionCtx.instanceData, RGBA8(140, 140, 100, 255));

                        if (this->transitionCtx.setUnkColor != NULL) {
                            this->transitionCtx.setUnkColor(&this->transitionCtx.instanceData,
                                                            RGBA8(140, 140, 100, 255));
                        }
                    } else if (this->transitionCtx.transitionType == TRANS_TYPE_FADE_BLUE) {
                        this->transitionCtx.setColor(&this->transitionCtx.instanceData, RGBA8(70, 100, 110, 255));

                        if (this->transitionCtx.setUnkColor != NULL) {
                            this->transitionCtx.setUnkColor(&this->transitionCtx.instanceData,
                                                            RGBA8(70, 100, 110, 255));
                        }
                    } else {
                        this->transitionCtx.setColor(&this->transitionCtx.instanceData, RGBA8(0, 0, 0, 0));

                        if (this->transitionCtx.setUnkColor != NULL) {
                            this->transitionCtx.setUnkColor(&this->transitionCtx.instanceData, RGBA8(0, 0, 0, 0));
                        }
                    }

                    if (this->transitionTrigger == TRANS_TRIGGER_END) {
                        this->transitionCtx.setType(&this->transitionCtx.instanceData, TRANS_INSTANCE_TYPE_FILL_OUT);
                    } else {
                        this->transitionCtx.setType(&this->transitionCtx.instanceData, TRANS_INSTANCE_TYPE_FILL_IN);
                    }

                    this->transitionCtx.start(&this->transitionCtx.instanceData);

                    if (this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE_CS_DELAYED) {
                        this->transitionMode = TRANS_MODE_INSTANCE_WAIT;
                    } else {
                        this->transitionMode = TRANS_MODE_INSTANCE_RUNNING;
                    }
                    break;

                case TRANS_MODE_INSTANCE_RUNNING:
                    if (this->transitionCtx.isDone(&this->transitionCtx.instanceData)) {
                        if (this->transitionCtx.transitionType >= TRANS_TYPE_MAX) {
                            if (this->transitionTrigger == TRANS_TRIGGER_END) {
                                this->transitionCtx.destroy(&this->transitionCtx.instanceData);
                                func_800BC88C(this);
                                this->transitionMode = TRANS_MODE_OFF;
                            }
                        } else if (this->transitionTrigger != TRANS_TRIGGER_END) {
                            this->state.running = false;

                            if (gSaveContext.gameMode != GAMEMODE_FILE_SELECT) {
                                SET_NEXT_GAMESTATE(&this->state, Play_Init, PlayState);
                                gSaveContext.save.entranceIndex = this->nextEntranceIndex;

                                if (gSaveContext.minigameState == 1) {
                                    gSaveContext.minigameState = 3;
                                }
                            } else {
                                SET_NEXT_GAMESTATE(&this->state, FileSelect_Init, FileSelectState);
                            }
                        } else {
                            this->transitionCtx.destroy(&this->transitionCtx.instanceData);
                            func_800BC88C(this);
                            this->transitionMode = TRANS_MODE_OFF;

                            if (gTransitionTileState == TRANS_TILE_READY) {
                                TransitionTile_Destroy(&gTransitionTile);
                                gTransitionTileState = TRANS_TILE_OFF;
                                R_UPDATE_RATE = 3;
                            }
                        }

                        this->transitionTrigger = TRANS_TRIGGER_OFF;
                    } else {
                        this->transitionCtx.update(&this->transitionCtx.instanceData, R_UPDATE_RATE);
                    }
                    break;
            }

            // update non-instance transitions
            switch (this->transitionMode) {
                case TRANS_MODE_FILL_WHITE_INIT:
                    sTransitionFillTimer = 0;
                    this->envCtx.fillScreen = true;
                    this->envCtx.screenFillColor[0] = 160;
                    this->envCtx.screenFillColor[1] = 160;
                    this->envCtx.screenFillColor[2] = 160;

                    if (this->transitionTrigger != TRANS_TRIGGER_END) {
                        this->envCtx.screenFillColor[3] = 0;
                        this->transitionMode = TRANS_MODE_FILL_IN;
                    } else {
                        this->envCtx.screenFillColor[3] = 255;
                        this->transitionMode = TRANS_MODE_FILL_OUT;
                    }
                    break;

                case TRANS_MODE_FILL_IN:
                    this->envCtx.screenFillColor[3] = (sTransitionFillTimer / 20.0f) * 255.0f;

                    if (sTransitionFillTimer >= 20) {
                        this->state.running = false;
                        SET_NEXT_GAMESTATE(&this->state, Play_Init, PlayState);
                        gSaveContext.save.entranceIndex = this->nextEntranceIndex;
                        this->transitionTrigger = TRANS_TRIGGER_OFF;
                        this->transitionMode = TRANS_MODE_OFF;
                    } else {
                        sTransitionFillTimer++;
                    }
                    break;

                case TRANS_MODE_FILL_OUT:
                    this->envCtx.screenFillColor[3] = (1 - sTransitionFillTimer / 20.0f) * 255.0f;

                    if (sTransitionFillTimer >= 20) {
                        gTransitionTileState = TRANS_TILE_OFF;
                        R_UPDATE_RATE = 3;
                        this->transitionTrigger = TRANS_TRIGGER_OFF;
                        this->transitionMode = TRANS_MODE_OFF;
                        this->envCtx.fillScreen = false;
                    } else {
                        sTransitionFillTimer++;
                    }
                    break;

                case TRANS_MODE_FILL_BROWN_INIT:
                    sTransitionFillTimer = 0;
                    this->envCtx.fillScreen = true;
                    this->envCtx.screenFillColor[0] = 170;
                    this->envCtx.screenFillColor[1] = 160;
                    this->envCtx.screenFillColor[2] = 150;

                    if (this->transitionTrigger != TRANS_TRIGGER_END) {
                        this->envCtx.screenFillColor[3] = 0;
                        this->transitionMode = TRANS_MODE_FILL_IN;
                    } else {
                        this->envCtx.screenFillColor[3] = 255;
                        this->transitionMode = TRANS_MODE_FILL_OUT;
                    }
                    break;

                case TRANS_MODE_INSTANT:
                    if (this->transitionTrigger != TRANS_TRIGGER_END) {
                        this->state.running = false;
                        SET_NEXT_GAMESTATE(&this->state, Play_Init, PlayState);
                        gSaveContext.save.entranceIndex = this->nextEntranceIndex;
                        this->transitionTrigger = TRANS_TRIGGER_OFF;
                        this->transitionMode = TRANS_MODE_OFF;
                    } else {
                        gTransitionTileState = TRANS_TILE_OFF;
                        R_UPDATE_RATE = 3;
                        this->transitionTrigger = TRANS_TRIGGER_OFF;
                        this->transitionMode = TRANS_MODE_OFF;
                    }
                    break;

                case TRANS_MODE_INSTANCE_WAIT:
                    if (gSaveContext.cutsceneTransitionControl != 0) {
                        this->transitionMode = TRANS_MODE_INSTANCE_RUNNING;
                    }
                    break;

                case TRANS_MODE_SANDSTORM_INIT:
                    if (this->transitionTrigger != TRANS_TRIGGER_END) {
                        this->envCtx.sandstormState = SANDSTORM_FILL;
                        this->transitionMode = TRANS_MODE_SANDSTORM;
                    } else {
                        this->envCtx.sandstormState = SANDSTORM_UNFILL;
                        this->envCtx.sandstormPrimA = 255;
                        this->envCtx.sandstormEnvA = 255;
                        this->transitionMode = TRANS_MODE_SANDSTORM;
                    }
                    break;

                case TRANS_MODE_SANDSTORM:
                    Audio_PlaySfxGeneral(NA_SE_EV_SAND_STORM - SFX_FLAG, &gSfxDefaultPos, 4,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                    if (this->transitionTrigger == TRANS_TRIGGER_END) {
                        if (this->envCtx.sandstormPrimA < 110) {
                            gTransitionTileState = TRANS_TILE_OFF;
                            R_UPDATE_RATE = 3;
                            this->transitionTrigger = TRANS_TRIGGER_OFF;
                            this->transitionMode = TRANS_MODE_OFF;
                        }
                    } else {
                        if (this->envCtx.sandstormEnvA == 255) {
                            this->state.running = false;
                            SET_NEXT_GAMESTATE(&this->state, Play_Init, PlayState);
                            gSaveContext.save.entranceIndex = this->nextEntranceIndex;
                            this->transitionTrigger = TRANS_TRIGGER_OFF;
                            this->transitionMode = TRANS_MODE_OFF;
                        }
                    }
                    break;

                case TRANS_MODE_SANDSTORM_END_INIT:
                    if (this->transitionTrigger == TRANS_TRIGGER_END) {
                        this->envCtx.sandstormState = SANDSTORM_DISSIPATE;
                        this->envCtx.sandstormPrimA = 255;
                        this->envCtx.sandstormEnvA = 255;
                        // "It's here!!!!!!!!!"
                        LOG_STRING("来た!!!!!!!!!!!!!!!!!!!!!", "../z_play.c", 3471);
                        this->transitionMode = TRANS_MODE_SANDSTORM_END;
                    } else {
                        this->transitionMode = TRANS_MODE_SANDSTORM_INIT;
                    }
                    break;

                case TRANS_MODE_SANDSTORM_END:
                    Audio_PlaySfxGeneral(NA_SE_EV_SAND_STORM - SFX_FLAG, &gSfxDefaultPos, 4,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                    if (this->transitionTrigger == TRANS_TRIGGER_END) {
                        if (this->envCtx.sandstormPrimA <= 0) {
                            gTransitionTileState = TRANS_TILE_OFF;
                            R_UPDATE_RATE = 3;
                            this->transitionTrigger = TRANS_TRIGGER_OFF;
                            this->transitionMode = TRANS_MODE_OFF;
                        }
                    }
                    break;

                case TRANS_MODE_CS_BLACK_FILL_INIT:
                    sTransitionFillTimer = 0;
                    this->envCtx.fillScreen = true;
                    this->envCtx.screenFillColor[0] = 0;
                    this->envCtx.screenFillColor[1] = 0;
                    this->envCtx.screenFillColor[2] = 0;
                    this->envCtx.screenFillColor[3] = 255;
                    this->transitionMode = TRANS_MODE_CS_BLACK_FILL;
                    break;

                case TRANS_MODE_CS_BLACK_FILL:
                    if (gSaveContext.cutsceneTransitionControl != 0) {
                        this->envCtx.screenFillColor[3] = gSaveContext.cutsceneTransitionControl;

                        if (gSaveContext.cutsceneTransitionControl <= 100) {
                            gTransitionTileState = TRANS_TILE_OFF;
                            R_UPDATE_RATE = 3;
                            this->transitionTrigger = TRANS_TRIGGER_OFF;
                            this->transitionMode = TRANS_MODE_OFF;
                        }
                    }
                    break;
            }
        }

        PLAY_LOG(3533);

        if (1 && (gTransitionTileState != TRANS_TILE_READY)) {
            PLAY_LOG(3542);

            if ((gSaveContext.gameMode == GAMEMODE_NORMAL) && (this->msgCtx.msgMode == MSGMODE_NONE) &&
                (this->gameOverCtx.state == GAMEOVER_INACTIVE)) {
                KaleidoSetup_Update(this);
            }

            PLAY_LOG(3551);
            isPaused = IS_PAUSED(&this->pauseCtx);

            PLAY_LOG(3555);
            AnimTaskQueue_Reset(&this->animTaskQueue);

            if (!DEBUG_FEATURES) {}

            PLAY_LOG(3561);
            Object_UpdateEntries(&this->objectCtx);

            PLAY_LOG(3577);

            if (!isPaused && (IREG(72) == 0)) {
                PLAY_LOG(3580);

                this->gameplayFrames++;
                Rumble_SetUpdateEnabled(true);

                if (this->actorCtx.freezeFlashTimer && (this->actorCtx.freezeFlashTimer-- < 5)) {
                    PRINTF("FINISH=%d\n", this->actorCtx.freezeFlashTimer);

                    if ((this->actorCtx.freezeFlashTimer > 0) && ((this->actorCtx.freezeFlashTimer % 2) != 0)) {
                        this->envCtx.fillScreen = true;
                        this->envCtx.screenFillColor[0] = this->envCtx.screenFillColor[1] =
                            this->envCtx.screenFillColor[2] = 150;
                        this->envCtx.screenFillColor[3] = 80;
                    } else {
                        this->envCtx.fillScreen = false;
                    }
                } else {
                    PLAY_LOG(3606);
                    Room_ProcessRoomRequest(this, &this->roomCtx);

                    PLAY_LOG(3612);
                    CollisionCheck_AT(this, &this->colChkCtx);

                    PLAY_LOG(3618);
                    CollisionCheck_OC(this, &this->colChkCtx);

                    PLAY_LOG(3624);
                    CollisionCheck_Damage(this, &this->colChkCtx);

                    PLAY_LOG(3631);
                    CollisionCheck_ClearContext(this, &this->colChkCtx);

                    PLAY_LOG(3637);

                    if (!this->haltAllActors) {
                        Actor_UpdateAll(this, &this->actorCtx);
                    }

                    PLAY_LOG(3643);
                    Cutscene_UpdateManual(this, &this->csCtx);

                    PLAY_LOG(3648);
                    Cutscene_UpdateScripted(this, &this->csCtx);

                    PLAY_LOG(3651);
                    Effect_UpdateAll(this);

                    PLAY_LOG(3657);
                    EffectSs_UpdateAll(this);

                    PLAY_LOG(3662);
                }
            } else {
                Rumble_SetUpdateEnabled(false);
            }

            PLAY_LOG(3672);
            func_80095AA0(this, &this->roomCtx.curRoom, &input[1], 0);

            PLAY_LOG(3675);
            func_80095AA0(this, &this->roomCtx.prevRoom, &input[1], 1);

            PLAY_LOG(3677);

            if (this->viewpoint != VIEWPOINT_NONE) {
                if (CHECK_BTN_ALL(input[0].press.button, BTN_CUP)) {
                    if (IS_PAUSED(&this->pauseCtx)) {
                        PRINTF(VT_FGCOL(CYAN) T("カレイドスコープ中につき視点変更を禁止しております\n",
                                                "Changing viewpoint is prohibited due to the kaleidoscope\n") VT_RST);
                    } else if (Player_InCsMode(this)) {
                        PRINTF(VT_FGCOL(CYAN) T("デモ中につき視点変更を禁止しております\n",
                                                "Changing viewpoint is prohibited during the cutscene\n") VT_RST);
                    } else if (R_SCENE_CAM_TYPE == SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT) {
                        Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    } else {
                        // C-Up toggle for houses, move between pivot camera and fixed camera
                        // Toggle viewpoint between VIEWPOINT_LOCKED and VIEWPOINT_PIVOT
                        Play_SetViewpoint(this, this->viewpoint ^ (VIEWPOINT_LOCKED ^ VIEWPOINT_PIVOT));
                    }
                }

                Play_RequestViewpointBgCam(this);
            }

            PLAY_LOG(3708);
            Skybox_Update(&this->skyboxCtx);

            PLAY_LOG(3716);

            if (IS_PAUSED(&this->pauseCtx)) {
                PLAY_LOG(3721);
                KaleidoScopeCall_Update(this);
            } else if (this->gameOverCtx.state != GAMEOVER_INACTIVE) {
                PLAY_LOG(3727);
                GameOver_Update(this);
            } else {
                PLAY_LOG(3733);
                Message_Update(this);
            }

            PLAY_LOG(3737);

            PLAY_LOG(3742);
            Interface_Update(this);

            PLAY_LOG(3765);
            AnimTaskQueue_Update(this, &this->animTaskQueue);

            PLAY_LOG(3771);
            SfxSource_UpdateAll(this);

            PLAY_LOG(3777);
            Letterbox_Update(R_UPDATE_RATE);

            PLAY_LOG(3783);
            TransitionFade_Update(&this->transitionFadeFlash, R_UPDATE_RATE);
        } else {
            goto skip;
        }
    }

    PLAY_LOG(3799);

skip:
    PLAY_LOG(3801);

    //! @bug If frame advancing or during tile transitions, isPaused will be used uninitialized.
    if (!isPaused || gDebugCamEnabled) {
        s32 i;

        this->nextCamId = this->activeCamId;

        PLAY_LOG(3806);

        for (i = 0; i < NUM_CAMS; i++) {
            if ((i != this->nextCamId) && (this->cameraPtrs[i] != NULL)) {
                PLAY_LOG(3809);
                Camera_Update(this->cameraPtrs[i]);
            }
        }

        Camera_Update(this->cameraPtrs[this->nextCamId]);

        PLAY_LOG(3814);
    }

    PLAY_LOG(3816);
    Environment_Update(this, &this->envCtx, &this->lightCtx, &this->pauseCtx, &this->msgCtx, &this->gameOverCtx,
                       this->state.gfxCtx);
}

void Play_DrawOverlayElements(PlayState* this) {
#if PLATFORM_N64
    s32 pad;
#endif

    if (IS_PAUSED(&this->pauseCtx)) {
        KaleidoScopeCall_Draw(this);
    }

    if (gSaveContext.gameMode == GAMEMODE_NORMAL) {
        Interface_Draw(this);
    }

    Message_Draw(this);

    if (this->gameOverCtx.state != GAMEOVER_INACTIVE) {
        GameOver_FadeInLights(this);
    }
}

void Play_Draw(PlayState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    Lights* sp228;
    Vec3f sp21C;

    OPEN_DISPS(gfxCtx, "../z_play.c", 3907);

    gSegments[4] = VIRTUAL_TO_PHYSICAL(this->objectCtx.slots[this->objectCtx.mainKeepSlot].segment);
    gSegments[5] = VIRTUAL_TO_PHYSICAL(this->objectCtx.slots[this->objectCtx.subKeepSlot].segment);
    gSegments[2] = VIRTUAL_TO_PHYSICAL(this->sceneSegment);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    gSPSegment(POLY_XLU_DISP++, 0x00, NULL);
    gSPSegment(OVERLAY_DISP++, 0x00, NULL);

    gSPSegment(POLY_OPA_DISP++, 0x04, this->objectCtx.slots[this->objectCtx.mainKeepSlot].segment);
    gSPSegment(POLY_XLU_DISP++, 0x04, this->objectCtx.slots[this->objectCtx.mainKeepSlot].segment);
    gSPSegment(OVERLAY_DISP++, 0x04, this->objectCtx.slots[this->objectCtx.mainKeepSlot].segment);

    gSPSegment(POLY_OPA_DISP++, 0x05, this->objectCtx.slots[this->objectCtx.subKeepSlot].segment);
    gSPSegment(POLY_XLU_DISP++, 0x05, this->objectCtx.slots[this->objectCtx.subKeepSlot].segment);
    gSPSegment(OVERLAY_DISP++, 0x05, this->objectCtx.slots[this->objectCtx.subKeepSlot].segment);

    gSPSegment(POLY_OPA_DISP++, 0x02, this->sceneSegment);
    gSPSegment(POLY_XLU_DISP++, 0x02, this->sceneSegment);
    gSPSegment(OVERLAY_DISP++, 0x02, this->sceneSegment);

    Gfx_SetupFrame(gfxCtx, 0, 0, 0);

    if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_RUN_DRAW) {
        POLY_OPA_DISP = Play_SetFog(this, POLY_OPA_DISP);
        POLY_XLU_DISP = Play_SetFog(this, POLY_XLU_DISP);

        View_SetPerspective(&this->view, this->view.fovy, this->view.zNear, this->lightCtx.zFar);
        View_Apply(&this->view, VIEW_ALL);

        // The billboard matrix temporarily stores the viewing matrix
        Matrix_MtxToMtxF(&this->view.viewing, &this->billboardMtxF);
        Matrix_MtxToMtxF(&this->view.projection, &this->viewProjectionMtxF);
        Matrix_Mult(&this->viewProjectionMtxF, MTXMODE_NEW);
        // The billboard is still a viewing matrix at this stage
        Matrix_Mult(&this->billboardMtxF, MTXMODE_APPLY);
        Matrix_Get(&this->viewProjectionMtxF);
        this->billboardMtxF.mf[0][3] = this->billboardMtxF.mf[1][3] = this->billboardMtxF.mf[2][3] =
            this->billboardMtxF.mf[3][0] = this->billboardMtxF.mf[3][1] = this->billboardMtxF.mf[3][2] = 0.0f;
        // This transpose is where the viewing matrix is properly converted into a billboard matrix
        Matrix_Transpose(&this->billboardMtxF);
        this->billboardMtx = Matrix_MtxFToMtx(MATRIX_CHECK_FLOATS(&this->billboardMtxF, "../z_play.c", 4005),
                                              GRAPH_ALLOC(gfxCtx, sizeof(Mtx)));

        gSPSegment(POLY_OPA_DISP++, 0x01, this->billboardMtx);

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_DRAW_COVER_ELEMENTS) {
            Gfx* gfxP;
            Gfx* sp1CC = POLY_OPA_DISP;

            gfxP = Gfx_Open(sp1CC);
            gSPDisplayList(OVERLAY_DISP++, gfxP);

            if ((this->transitionMode == TRANS_MODE_INSTANCE_RUNNING) ||
                (this->transitionMode == TRANS_MODE_INSTANCE_WAIT) || (this->transitionCtx.transitionType >= 56)) {
                View view;

                View_Init(&view, gfxCtx);
                view.flags = VIEW_VIEWPORT | VIEW_PROJECTION_ORTHO;

                SET_FULLSCREEN_VIEWPORT(&view);

                View_ApplyTo(&view, VIEW_ALL, &gfxP);
                this->transitionCtx.draw(&this->transitionCtx.instanceData, &gfxP);
            }

            TransitionFade_Draw(&this->transitionFadeFlash, &gfxP);

#if PLATFORM_N64
            if (gVisMonoColor.a != 0)
#else
            if (gVisMonoColor.a > 0)
#endif
            {
                gPlayVisMono.vis.primColor.rgba = gVisMonoColor.rgba;
                VisMono_Draw(&gPlayVisMono, &gfxP);
            }

            gSPEndDisplayList(gfxP++);
            Gfx_Close(sp1CC, gfxP);
            POLY_OPA_DISP = gfxP;
        }

        if (gTransitionTileState == TRANS_TILE_READY) {
            Gfx* sp88 = POLY_OPA_DISP;

            TransitionTile_Draw(&gTransitionTile, &sp88);
            POLY_OPA_DISP = sp88;
            goto Play_Draw_DrawOverlayElements;
        }

        PreRender_SetValues(&this->pauseBgPreRender, SCREEN_WIDTH, SCREEN_HEIGHT, gfxCtx->curFrameBuffer, gZBuffer);

        if (R_PAUSE_BG_PRERENDER_STATE == PAUSE_BG_PRERENDER_PROCESS) {
            // Wait for the previous frame's display list to be processed,
            // so that `pauseBgPreRender.fbufSave` and `pauseBgPreRender.cvgSave` are filled with the appropriate
            // content and can be used by `PreRender_ApplyFilters` below.
            Sched_FlushTaskQueue();

            PreRender_ApplyFilters(&this->pauseBgPreRender);

            R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_READY;
        } else if (R_PAUSE_BG_PRERENDER_STATE >= PAUSE_BG_PRERENDER_MAX) {
            R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_OFF;
        }

        if (R_PAUSE_BG_PRERENDER_STATE == PAUSE_BG_PRERENDER_READY) {
            Gfx* gfxP = POLY_OPA_DISP;

            PreRender_RestoreFramebuffer(&this->pauseBgPreRender, &gfxP);
            POLY_OPA_DISP = gfxP;

            goto Play_Draw_DrawOverlayElements;
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_DRAW_SKYBOX) {
            if (this->skyboxId && (this->skyboxId != SKYBOX_UNSET_1D) && !this->envCtx.skyboxDisabled) {
                if ((this->skyboxId == SKYBOX_NORMAL_SKY) || (this->skyboxId == SKYBOX_CUTSCENE_MAP)) {
                    Environment_UpdateSkybox(this->skyboxId, &this->envCtx, &this->skyboxCtx);
                    Skybox_Draw(&this->skyboxCtx, gfxCtx, this->skyboxId, this->envCtx.skyboxBlend, this->view.eye.x,
                                this->view.eye.y, this->view.eye.z);
                } else if (this->skyboxCtx.drawType == SKYBOX_DRAW_128) {
                    Skybox_Draw(&this->skyboxCtx, gfxCtx, this->skyboxId, 0, this->view.eye.x, this->view.eye.y,
                                this->view.eye.z);
                }
            }
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) ||
            (R_PLAY_DRAW_ENV_FLAGS & PLAY_ENV_DRAW_SUN_AND_MOON)) {
            if (!this->envCtx.sunMoonDisabled) {
                Environment_DrawSunAndMoon(this);
            }
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) ||
            (R_PLAY_DRAW_ENV_FLAGS & PLAY_ENV_DRAW_SKYBOX_FILTERS)) {
            Environment_DrawSkyboxFilters(this);
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || (R_PLAY_DRAW_ENV_FLAGS & PLAY_ENV_DRAW_LIGHTNING)) {
            Environment_UpdateLightningStrike(this);
            Environment_DrawLightning(this, 0);
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || (R_PLAY_DRAW_ENV_FLAGS & PLAY_ENV_DRAW_LIGHTS)) {
            sp228 = LightContext_NewLights(&this->lightCtx, gfxCtx);
            Lights_BindAll(sp228, this->lightCtx.listHead, NULL);
            Lights_Draw(sp228, gfxCtx);
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || (R_PLAY_DRAW_ROOM_FLAGS != 0)) {
            if (VREG(94) == 0) {
                s32 roomDrawFlags;

                if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY)) {
                    roomDrawFlags = ROOM_DRAW_OPA | ROOM_DRAW_XLU;
                } else {
                    roomDrawFlags = R_PLAY_DRAW_ROOM_FLAGS;
                }
                Scene_Draw(this);
                Room_Draw(this, &this->roomCtx.curRoom, roomDrawFlags & (ROOM_DRAW_OPA | ROOM_DRAW_XLU));
                Room_Draw(this, &this->roomCtx.prevRoom, roomDrawFlags & (ROOM_DRAW_OPA | ROOM_DRAW_XLU));
            }
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_DRAW_SKYBOX) {
            if ((this->skyboxCtx.drawType != SKYBOX_DRAW_128) &&
                (GET_ACTIVE_CAM(this)->setting != CAM_SET_PREREND_FIXED)) {
                Vec3f quakeOffset;

                quakeOffset = Camera_GetQuakeOffset(GET_ACTIVE_CAM(this));
                Skybox_Draw(&this->skyboxCtx, gfxCtx, this->skyboxId, 0, this->view.eye.x + quakeOffset.x,
                            this->view.eye.y + quakeOffset.y, this->view.eye.z + quakeOffset.z);
            }
        }

        if (this->envCtx.precipitation[PRECIP_RAIN_CUR] != 0) {
            Environment_DrawRain(this, &this->view, gfxCtx);
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || (R_PLAY_DRAW_ROOM_FLAGS != 0)) {
            Environment_FillScreen(gfxCtx, 0, 0, 0, this->bgCoverAlpha, FILL_SCREEN_OPA);
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_DRAW_ACTORS) {
            func_800315AC(this, &this->actorCtx);
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_DRAW_LENS_FLARES) {
            if (!this->envCtx.sunMoonDisabled) {
                sp21C.x = this->view.eye.x + this->envCtx.sunPos.x;
                sp21C.y = this->view.eye.y + this->envCtx.sunPos.y;
                sp21C.z = this->view.eye.z + this->envCtx.sunPos.z;
                Environment_DrawSunLensFlare(this, &this->envCtx, &this->view, gfxCtx, sp21C, 0);
            }
            Environment_DrawCustomLensFlare(this);
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_DRAW_SCREEN_FILLS) {
            if (MREG(64) != 0) {
                Environment_FillScreen(gfxCtx, MREG(65), MREG(66), MREG(67), MREG(68),
                                       FILL_SCREEN_OPA | FILL_SCREEN_XLU);
            }

            switch (this->envCtx.fillScreen) {
                case 1:
                    Environment_FillScreen(gfxCtx, this->envCtx.screenFillColor[0], this->envCtx.screenFillColor[1],
                                           this->envCtx.screenFillColor[2], this->envCtx.screenFillColor[3],
                                           FILL_SCREEN_OPA | FILL_SCREEN_XLU);
                    break;
                default:
                    break;
            }
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_DRAW_SANDSTORM) {
            if (this->envCtx.sandstormState != SANDSTORM_OFF) {
                Environment_DrawSandstorm(this, this->envCtx.sandstormState);
            }
        }

        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_DRAW_DEBUG_OBJECTS) {
            DebugDisplay_DrawObjects(this);
        }

        if ((R_PAUSE_BG_PRERENDER_STATE == PAUSE_BG_PRERENDER_SETUP) || (gTransitionTileState == TRANS_TILE_SETUP)) {
            Gfx* gfxP = OVERLAY_DISP;

            // Copy the frame buffer contents at this point in the display list to the zbuffer
            // The zbuffer must then stay untouched until unpausing
            this->pauseBgPreRender.fbuf = gfxCtx->curFrameBuffer;
            this->pauseBgPreRender.fbufSave = (u16*)gZBuffer;
            PreRender_SaveFramebuffer(&this->pauseBgPreRender, &gfxP);
            if (R_PAUSE_BG_PRERENDER_STATE == PAUSE_BG_PRERENDER_SETUP) {
                this->pauseBgPreRender.cvgSave = (u8*)gfxCtx->curFrameBuffer;
                PreRender_DrawCoverage(&this->pauseBgPreRender, &gfxP);

                R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_PROCESS;
            } else {
                gTransitionTileState = TRANS_TILE_PROCESS;
            }
            OVERLAY_DISP = gfxP;
            this->unk_121C7 = 2;
            R_GRAPH_TASKSET00_FLAGS |= 1;
            goto Play_Draw_skip;
        }

    Play_Draw_DrawOverlayElements:
        if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_DRAW_OVERLAY_ELEMENTS) {
            Play_DrawOverlayElements(this);
        }
    }

Play_Draw_skip:

    if (this->view.unk_124 != 0) {
        Camera_Update(GET_ACTIVE_CAM(this));
        View_UpdateViewingMatrix(&this->view);
        this->view.unk_124 = 0;
        if (this->skyboxId && (this->skyboxId != SKYBOX_UNSET_1D) && !this->envCtx.skyboxDisabled) {
            Skybox_UpdateMatrix(&this->skyboxCtx, this->view.eye.x, this->view.eye.y, this->view.eye.z);
        }
    }

    Camera_Finish(GET_ACTIVE_CAM(this));

    CLOSE_DISPS(gfxCtx, "../z_play.c", 4508);
}

void Play_Main(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;

    D_8012D1F8 = &this->state.input[0];

    DebugDisplay_Init();

    PLAY_LOG(4556);

    if (DEBUG_FEATURES && (R_HREG_MODE == HREG_MODE_PLAY) && (R_PLAY_INIT != HREG_MODE_PLAY)) {
        R_PLAY_RUN_UPDATE = true;
        R_PLAY_RUN_DRAW = true;
        R_PLAY_DRAW_SKYBOX = true;
        R_PLAY_DRAW_ROOM_FLAGS = (ROOM_DRAW_OPA | ROOM_DRAW_XLU);
        R_PLAY_DRAW_ACTORS = true;
        R_PLAY_DRAW_LENS_FLARES = true;
        R_PLAY_DRAW_SCREEN_FILLS = true;
        R_PLAY_DRAW_SANDSTORM = true;
        R_PLAY_DRAW_OVERLAY_ELEMENTS = true;
        R_PLAY_DRAW_ENV_FLAGS = (PLAY_ENV_DRAW_SKYBOX_FILTERS | PLAY_ENV_DRAW_SUN_AND_MOON | PLAY_ENV_DRAW_LIGHTNING |
                                 PLAY_ENV_DRAW_LIGHTS);
        HREG(91) = 1; // reg is not used in this mode
        R_PLAY_DRAW_COVER_ELEMENTS = true;
        R_PLAY_DRAW_DEBUG_OBJECTS = true;
        R_PLAY_INIT = HREG_MODE_PLAY;
    }

    if (!DEBUG_FEATURES || (R_HREG_MODE != HREG_MODE_PLAY) || R_PLAY_RUN_UPDATE) {
        Play_Update(this);
    }

    PLAY_LOG(4583);

    Play_Draw(this);

    PLAY_LOG(4587);
}

// original name: "Game_play_demo_mode_check"
int Play_InCsMode(PlayState* this) {
    return (this->csCtx.state != CS_STATE_IDLE) || Player_InCsMode(this);
}

f32 func_800BFCB8(PlayState* this, MtxF* mf, Vec3f* pos) {
    CollisionPoly poly;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 floorY = BgCheck_AnyRaycastDown1(&this->colCtx, &poly, pos);

    if (floorY > BGCHECK_Y_MIN) {
        f32 nx = COLPOLY_GET_NORMAL(poly.normal.x);
        f32 ny = COLPOLY_GET_NORMAL(poly.normal.y);
        f32 nz = COLPOLY_GET_NORMAL(poly.normal.z);
        s32 pad[5];

        temp1 = sqrtf(1.0f - SQ(nx));

        if (temp1 != 0.0f) {
            temp2 = ny * temp1;
            temp3 = -nz * temp1;
        } else {
            temp3 = 0.0f;
            temp2 = 0.0f;
        }

        mf->xx = temp1;
        mf->yx = -nx * temp2;
        mf->zx = nx * temp3;
        mf->xy = nx;
        mf->yy = ny;
        mf->zy = nz;
        mf->yz = temp3;
        mf->zz = temp2;
        mf->wx = 0.0f;
        mf->wy = 0.0f;
        mf->xz = 0.0f;
        mf->wz = 0.0f;
        mf->xw = pos->x;
        mf->yw = floorY;
        mf->zw = pos->z;
        mf->ww = 1.0f;
    } else {
        mf->xy = 0.0f;
        mf->zx = 0.0f;
        mf->yx = 0.0f;
        mf->xx = 0.0f;
        mf->wz = 0.0f;
        mf->xz = 0.0f;
        mf->wy = 0.0f;
        mf->wx = 0.0f;
        mf->zz = 0.0f;
        mf->yz = 0.0f;
        mf->zy = 0.0f;
        mf->yy = 1.0f;
        mf->xw = pos->x;
        mf->yw = pos->y;
        mf->zw = pos->z;
        mf->ww = 1.0f;
    }

    return floorY;
}

void* Play_LoadFile(PlayState* this, RomFile* file) {
    u32 size;
    void* allocp;

    size = file->vromEnd - file->vromStart;
    allocp = GAME_STATE_ALLOC(&this->state, size, "../z_play.c", 4692);
    DMA_REQUEST_SYNC(allocp, file->vromStart, size, "../z_play.c", 4694);

    return allocp;
}

#if PLATFORM_N64
void* Play_LoadFileFromDiskDrive(PlayState* this, RomFile* file) {
    u32 size;
    void* allocp;

    size = file->vromEnd - file->vromStart;
    allocp = GAME_STATE_ALLOC(&this->state, size, "../z_play.c", UNK_LINE);
    func_801C7C1C(allocp, file->vromStart, size);

    return allocp;
}
#endif

void Play_InitEnvironment(PlayState* this, s16 skyboxId) {
    Skybox_Init(&this->state, &this->skyboxCtx, skyboxId);
    Environment_Init(this, &this->envCtx, 0);
}

void Play_InitScene(PlayState* this, s32 spawn) {
    this->spawn = spawn;

    this->playerEntry = NULL;
    this->unk_11DFC = NULL;
    this->spawnList = NULL;
    this->exitList = NULL;
    this->naviQuestHints = NULL;
    this->pathList = NULL;

    this->numActorEntries = 0;

    Object_InitContext(this, &this->objectCtx);
    LightContext_Init(this, &this->lightCtx);
    Scene_ResetTransitionActorList(&this->state, &this->transitionActors);
    Room_Init(this, &this->roomCtx.curRoom);
    R_SCENE_CAM_TYPE = SCENE_CAM_TYPE_DEFAULT;
    gSaveContext.worldMapArea = WORLD_MAP_AREA_HYRULE_FIELD;
    Scene_ExecuteCommands(this, this->sceneSegment);
    Play_InitEnvironment(this, this->skyboxId);
}

void Play_SpawnScene(PlayState* this, s32 sceneId, s32 spawn) {
    SceneTableEntry* scene;
    UNUSED_NDEBUG u32 size;

#if PLATFORM_N64
    if ((B_80121220 != NULL) && (B_80121220->unk_48 != NULL)) {
        scene = B_80121220->unk_48(sceneId, gSceneTable);
    } else {
        scene = &gSceneTable[sceneId];
        scene->unk_13 = 0;
    }
#else
    scene = &gSceneTable[sceneId];
    scene->unk_13 = 0;
#endif

    this->loadedScene = scene;
    this->sceneId = sceneId;
    this->sceneDrawConfig = scene->drawConfig;

    PRINTF("\nSCENE SIZE %fK\n", (scene->sceneFile.vromEnd - scene->sceneFile.vromStart) / 1024.0f);

#if PLATFORM_N64
    if ((B_80121220 != NULL) && (scene->unk_12 > 0)) {
        this->sceneSegment = Play_LoadFileFromDiskDrive(this, &scene->sceneFile);
        scene->unk_13 = 1;
    } else {
        this->sceneSegment = Play_LoadFile(this, &scene->sceneFile);
        scene->unk_13 = 0;
    }
#else
    this->sceneSegment = Play_LoadFile(this, &scene->sceneFile);
    scene->unk_13 = 0;
#endif

    ASSERT(this->sceneSegment != NULL, "this->sceneSegment != NULL", "../z_play.c", 4960);

    gSegments[2] = VIRTUAL_TO_PHYSICAL(this->sceneSegment);

    Play_InitScene(this, spawn);

#if PLATFORM_N64
    if ((B_80121220 != NULL) && (B_80121220->unk_0C != NULL)) {
        B_80121220->unk_0C(this);
    }
#endif

    size = Room_SetupFirstRoom(this, &this->roomCtx);

    PRINTF("ROOM SIZE=%fK\n", size / 1024.0f);
}

void Play_GetScreenPos(PlayState* this, Vec3f* src, Vec3f* dest) {
    f32 w;

    Matrix_Mult(&this->viewProjectionMtxF, MTXMODE_NEW);
    Matrix_MultVec3f(src, dest);

    w = this->viewProjectionMtxF.ww + (this->viewProjectionMtxF.wx * src->x + this->viewProjectionMtxF.wy * src->y +
                                       this->viewProjectionMtxF.wz * src->z);

    dest->x = (SCREEN_WIDTH / 2) + ((dest->x / w) * (SCREEN_WIDTH / 2));
    dest->y = (SCREEN_HEIGHT / 2) - ((dest->y / w) * (SCREEN_HEIGHT / 2));
}

s16 Play_CreateSubCamera(PlayState* this) {
    s16 camId;

    for (camId = CAM_ID_SUB_FIRST; camId < NUM_CAMS; camId++) {
        if (this->cameraPtrs[camId] == NULL) {
            break;
        }
    }

    if (camId == NUM_CAMS) {
        PRINTF(VT_COL(RED, WHITE) "camera control: error: fulled sub camera system area\n" VT_RST);
        return CAM_ID_NONE;
    }

    PRINTF("camera control: " VT_BGCOL(CYAN) " " VT_COL(WHITE, BLUE) " create new sub camera [%d] " VT_BGCOL(
               CYAN) " " VT_RST "\n",
           camId);

    this->cameraPtrs[camId] = &this->subCameras[camId - CAM_ID_SUB_FIRST];
    Camera_Init(this->cameraPtrs[camId], &this->view, &this->colCtx, this);
    this->cameraPtrs[camId]->camId = camId;

    return camId;
}

s16 Play_GetActiveCamId(PlayState* this) {
    return this->activeCamId;
}

s16 Play_ChangeCameraStatus(PlayState* this, s16 camId, s16 status) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;

    if (status == CAM_STAT_ACTIVE) {
        this->activeCamId = camIdx;
    }

    return Camera_ChangeStatus(this->cameraPtrs[camIdx], status);
}

void Play_ClearCamera(PlayState* this, s16 camId) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;

    if (camIdx == CAM_ID_MAIN) {
        PRINTF(VT_COL(RED, WHITE) "camera control: error: never clear camera !!\n" VT_RST);
    }

    if (this->cameraPtrs[camIdx] != NULL) {
        Camera_ChangeStatus(this->cameraPtrs[camIdx], CAM_STAT_UNK100);
        this->cameraPtrs[camIdx] = NULL;
        PRINTF("camera control: " VT_BGCOL(CYAN) " " VT_COL(WHITE, BLUE) " clear sub camera [%d] " VT_BGCOL(
                   CYAN) " " VT_RST "\n",
               camIdx);
    } else {
        PRINTF(VT_COL(RED, WHITE) "camera control: error: camera No.%d already cleared\n" VT_RST, camIdx);
    }
}

void Play_ClearAllSubCameras(PlayState* this) {
    s16 subCamId;

    for (subCamId = CAM_ID_SUB_FIRST; subCamId < NUM_CAMS; subCamId++) {
        if (this->cameraPtrs[subCamId] != NULL) {
            Play_ClearCamera(this, subCamId);
        }
    }

    this->activeCamId = CAM_ID_MAIN;
}

Camera* Play_GetCamera(PlayState* this, s16 camId) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;

    return this->cameraPtrs[camIdx];
}

s32 Play_SetCameraAtEye(PlayState* this, s16 camId, Vec3f* at, Vec3f* eye) {
    s32 successBits = 0;
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;
    Camera* camera = this->cameraPtrs[camIdx];
    Player* player;

    successBits |= Camera_SetViewParam(camera, CAM_VIEW_AT, at);
    successBits <<= 1;
    successBits |= Camera_SetViewParam(camera, CAM_VIEW_EYE, eye);

    camera->dist = Math3D_Vec3f_DistXYZ(at, eye);

    player = camera->player;
    if (player != NULL) {
        camera->playerToAtOffset.x = at->x - player->actor.world.pos.x;
        camera->playerToAtOffset.y = at->y - player->actor.world.pos.y;
        camera->playerToAtOffset.z = at->z - player->actor.world.pos.z;
    } else {
        camera->playerToAtOffset.x = camera->playerToAtOffset.y = camera->playerToAtOffset.z = 0.0f;
    }

    camera->atLERPStepScale = 0.01f;

    return successBits;
}

s32 Play_SetCameraAtEyeUp(PlayState* this, s16 camId, Vec3f* at, Vec3f* eye, Vec3f* up) {
    s32 successBits = 0;
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;
    Camera* camera = this->cameraPtrs[camIdx];
    Player* player;

    successBits |= Camera_SetViewParam(camera, CAM_VIEW_AT, at);
    successBits <<= 1;
    successBits |= Camera_SetViewParam(camera, CAM_VIEW_EYE, eye);
    successBits <<= 1;
    successBits |= Camera_SetViewParam(camera, CAM_VIEW_UP, up);

    camera->dist = Math3D_Vec3f_DistXYZ(at, eye);

    player = camera->player;
    if (player != NULL) {
        camera->playerToAtOffset.x = at->x - player->actor.world.pos.x;
        camera->playerToAtOffset.y = at->y - player->actor.world.pos.y;
        camera->playerToAtOffset.z = at->z - player->actor.world.pos.z;
    } else {
        camera->playerToAtOffset.x = camera->playerToAtOffset.y = camera->playerToAtOffset.z = 0.0f;
    }

    camera->atLERPStepScale = 0.01f;

    return successBits;
}

s32 Play_SetCameraFov(PlayState* this, s16 camId, f32 fov) {
    s32 successBits = Camera_SetViewParam(this->cameraPtrs[camId], CAM_VIEW_FOV, &fov) & 1;

    if (1) {}
    return successBits;
}

s32 Play_SetCameraRoll(PlayState* this, s16 camId, s16 roll) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;
    Camera* camera = this->cameraPtrs[camIdx];

    camera->roll = roll;

    return 1;
}

void Play_CopyCamera(PlayState* this, s16 destCamId, s16 srcCamId) {
    s16 srcCamId2 = (srcCamId == CAM_ID_NONE) ? this->activeCamId : srcCamId;
    s16 destCamId1 = (destCamId == CAM_ID_NONE) ? this->activeCamId : destCamId;

    Camera_Copy(this->cameraPtrs[destCamId1], this->cameraPtrs[srcCamId2]);
}

/**
 * Initializes camera data centered around Player, and applies the requested setting.
 */
s32 Play_InitCameraDataUsingPlayer(PlayState* this, s16 camId, Player* player, s16 setting) {
    Camera* camera;
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;

    camera = this->cameraPtrs[camIdx];
    Camera_InitDataUsingPlayer(camera, player);
    return Camera_RequestSetting(camera, setting);
}

s32 Play_RequestCameraSetting(PlayState* this, s16 camId, s16 setting) {
    return Camera_RequestSetting(Play_GetCamera(this, camId), setting);
}

/**
 * Smoothly return control from a sub camera to the main camera by moving the subCamera's eye, at, fov through
 * interpolation from the initial subCam viewParams to the target mainCam viewParams over `duration`.
 * Setting the `duration` to 0 or less will instantly return control to the main camera.
 * This will also clear every sub camera.
 */
void Play_ReturnToMainCam(PlayState* this, s16 camId, s16 duration) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;
    s16 subCamId;

    Play_ClearCamera(this, camIdx);

    for (subCamId = CAM_ID_SUB_FIRST; subCamId < NUM_CAMS; subCamId++) {
        if (this->cameraPtrs[subCamId] != NULL) {
            PRINTF(VT_COL(RED, WHITE) "camera control: error: return to main, other camera left. %d cleared!!\n" VT_RST,
                   subCamId);
            Play_ClearCamera(this, subCamId);
        }
    }

    if (duration <= 0) {
        Play_ChangeCameraStatus(this, CAM_ID_MAIN, CAM_STAT_ACTIVE);
        this->cameraPtrs[CAM_ID_MAIN]->childCamId = this->cameraPtrs[CAM_ID_MAIN]->parentCamId = CAM_ID_MAIN;
    } else {
        OnePointCutscene_Init(this, 1020, duration, NULL, CAM_ID_MAIN);
    }
}

s16 Play_GetCameraUID(PlayState* this, s16 camId) {
    Camera* camera = this->cameraPtrs[camId];

    if (camera != NULL) {
        return camera->uid;
    } else {
        return -1;
    }
}

// Unused, purpose is unclear (also unused and unclear in MM)
s16 func_800C09D8(PlayState* this, s16 camId, s16 uid) {
    Camera* camera = this->cameraPtrs[camId];

    if (camera != NULL) {
        return 0;
    }

    //! @bug this code is only reached if `camera` is NULL.
    if (camera->uid != uid) {
        return 0;
    } else if (camera->status != CAM_STAT_ACTIVE) {
        return 2;
    } else {
        return 1;
    }
}

void Play_SaveSceneFlags(PlayState* this) {
    SavedSceneFlags* savedSceneFlags = &gSaveContext.save.info.sceneFlags[this->sceneId];

    savedSceneFlags->chest = this->actorCtx.flags.chest;
    savedSceneFlags->swch = this->actorCtx.flags.swch;
    savedSceneFlags->clear = this->actorCtx.flags.clear;
    savedSceneFlags->collect = this->actorCtx.flags.collect;
}

void Play_SetRespawnData(PlayState* this, s32 respawnMode, s16 entranceIndex, s32 roomIndex, s32 playerParams,
                         Vec3f* pos, s16 yaw) {
    RespawnData* respawnData = &gSaveContext.respawn[respawnMode];

    respawnData->entranceIndex = entranceIndex;
    respawnData->roomIndex = roomIndex;
    respawnData->pos = *pos;
    respawnData->yaw = yaw;
    respawnData->playerParams = playerParams;
    respawnData->tempSwchFlags = this->actorCtx.flags.tempSwch;
    respawnData->tempCollectFlags = this->actorCtx.flags.tempCollect;
}

void Play_SetupRespawnPoint(PlayState* this, s32 respawnMode, s32 playerParams) {
    Player* player = GET_PLAYER(this);
    s32 entranceIndex;
    s8 roomIndex;

    if ((this->sceneId != SCENE_FAIRYS_FOUNTAIN) && (this->sceneId != SCENE_GROTTOS)) {
        roomIndex = this->roomCtx.curRoom.num;
        entranceIndex = gSaveContext.save.entranceIndex;
        Play_SetRespawnData(this, respawnMode, entranceIndex, roomIndex, playerParams, &player->actor.world.pos,
                            player->actor.shape.rot.y);
    }
}

void Play_TriggerVoidOut(PlayState* this) {
    gSaveContext.respawn[RESPAWN_MODE_DOWN].tempSwchFlags = this->actorCtx.flags.tempSwch;
    gSaveContext.respawn[RESPAWN_MODE_DOWN].tempCollectFlags = this->actorCtx.flags.tempCollect;
    gSaveContext.respawnFlag = 1;
    this->transitionTrigger = TRANS_TRIGGER_START;
    this->nextEntranceIndex = gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex;
    this->transitionType = TRANS_TYPE_FADE_BLACK;
}

void Play_LoadToLastEntrance(PlayState* this) {
    gSaveContext.respawnFlag = -1;
    this->transitionTrigger = TRANS_TRIGGER_START;

    if ((this->sceneId == SCENE_GANONS_TOWER_COLLAPSE_INTERIOR) ||
        (this->sceneId == SCENE_GANONS_TOWER_COLLAPSE_EXTERIOR) ||
        (this->sceneId == SCENE_INSIDE_GANONS_CASTLE_COLLAPSE) || (this->sceneId == SCENE_GANON_BOSS)) {
        this->nextEntranceIndex = ENTR_GANONS_TOWER_COLLAPSE_EXTERIOR_0;
        Item_Give(this, ITEM_SWORD_MASTER);
#if OOT_VERSION >= PAL_1_1
    } else if ((gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_11) ||
               (gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_12) ||
               (gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_13) ||
               (gSaveContext.save.entranceIndex == ENTR_HYRULE_FIELD_15)) {
        this->nextEntranceIndex = ENTR_HYRULE_FIELD_6;
#endif
    } else {
        this->nextEntranceIndex = gSaveContext.save.entranceIndex;
    }

    this->transitionType = TRANS_TYPE_FADE_BLACK;
}

void Play_TriggerRespawn(PlayState* this) {
    Play_SetupRespawnPoint(this, RESPAWN_MODE_DOWN, 0xDFF);
    Play_LoadToLastEntrance(this);
}

int Play_CamIsNotFixed(PlayState* this) {
    // SCENE_CAM_TYPE_FIXED_SHOP_VIEWPOINT was probably intended to be in this condition,
    // but the room shape type check handles all shop cases regardless
    return (this->roomCtx.curRoom.roomShape->base.type != ROOM_SHAPE_TYPE_IMAGE) &&
           (R_SCENE_CAM_TYPE != SCENE_CAM_TYPE_FIXED_TOGGLE_VIEWPOINT) && (R_SCENE_CAM_TYPE != SCENE_CAM_TYPE_FIXED) &&
           (R_SCENE_CAM_TYPE != SCENE_CAM_TYPE_FIXED_MARKET) && (this->sceneId != SCENE_CASTLE_COURTYARD_GUARDS_DAY);
}

int FrameAdvance_IsEnabled(PlayState* this) {
    return !!this->frameAdvCtx.enabled;
}

s32 func_800C0D34(PlayState* this, Actor* actor, s16* yaw) {
    TransitionActorEntry* transitionActor;
    s32 frontRoom;

    if (actor->category != ACTORCAT_DOOR) {
        return 0;
    }

    transitionActor = &this->transitionActors.list[GET_TRANSITION_ACTOR_INDEX(actor)];
    frontRoom = transitionActor->sides[0].room;

    if (frontRoom == transitionActor->sides[1].room) {
        return 0;
    }

    if (frontRoom == actor->room) {
        *yaw = actor->shape.rot.y;
    } else {
        *yaw = actor->shape.rot.y + 0x8000;
    }

    return 1;
}

s32 func_800C0DB4(PlayState* this, Vec3f* pos) {
    WaterBox* waterBox;
    CollisionPoly* poly;
    Vec3f waterSurfacePos;
    s32 bgId;

    waterSurfacePos = *pos;

    if (WaterBox_GetSurface1(this, &this->colCtx, waterSurfacePos.x, waterSurfacePos.z, &waterSurfacePos.y,
                             &waterBox) == true &&
        pos->y < waterSurfacePos.y &&
        BgCheck_EntityRaycastDown3(&this->colCtx, &poly, &bgId, &waterSurfacePos) != BGCHECK_Y_MIN) {
        return true;
    } else {
        return false;
    }
}
