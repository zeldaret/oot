#include <global.h>
#include "vt.h"

typedef struct {
    /* 0x0000 */ OSViMode viMode;
    /* 0x0050 */ char unk_50[0x30];
    /* 0x0080 */ u32 viFeatures;
    /* 0x0084 */ char unk_84[4];
} unk_80166528;

SpeedMeter D_801664D0;
struct_801664F0 D_801664F0;
struct_80166500 D_80166500;
VisMono sMonoColors;
unk_80166528 D_80166528;
FaultClient sGameFaultClient;
u16 sLastButtonPressed;
char sBtnChars[] = {
    'A', 'B', 'Z', 'S', 'u', 'l', 'd', 'r', '*', '+', 'L', 'R', 'u', 'd', 'l', 'r', '\0',
};

void GameState_FaultPrint(void) {
    s32 i;

    osSyncPrintf("last_button=%04x\n", sLastButtonPressed);
    FaultDrawer_DrawText(120, 180, "%08x", sLastButtonPressed);
    for (i = 0; i < ARRAY_COUNT(sBtnChars); i++) {
        if (sLastButtonPressed & (1 << i)) {
            FaultDrawer_DrawText((i * 8) + 0x78, 0xBE, "%c", sBtnChars[i]);
        }
    }
}

void GameState_SetFBFilter(Gfx** gfx) {
    Gfx* gfxP;
    gfxP = *gfx;
    if ((R_FB_FILTER_TYPE > 0) && (R_FB_FILTER_TYPE < 5)) {
        D_801664F0.type = R_FB_FILTER_TYPE;
        D_801664F0.color.r = R_FB_FILTER_PRIM_COLOR(0);
        D_801664F0.color.g = R_FB_FILTER_PRIM_COLOR(1);
        D_801664F0.color.b = R_FB_FILTER_PRIM_COLOR(2);
        D_801664F0.color.a = R_FB_FILTER_A;
        func_800ACE98(&D_801664F0, &gfxP);
    } else if ((R_FB_FILTER_TYPE == 5) || (R_FB_FILTER_TYPE == 6)) {
        D_80166500.useRgba = (R_FB_FILTER_TYPE == 6);
        D_80166500.primColor.r = R_FB_FILTER_PRIM_COLOR(0);
        D_80166500.primColor.g = R_FB_FILTER_PRIM_COLOR(1);
        D_80166500.primColor.b = R_FB_FILTER_PRIM_COLOR(2);
        D_80166500.primColor.a = R_FB_FILTER_A;
        D_80166500.envColor.r = R_FB_FILTER_ENV_COLOR(0);
        D_80166500.envColor.g = R_FB_FILTER_ENV_COLOR(1);
        D_80166500.envColor.b = R_FB_FILTER_ENV_COLOR(2);
        D_80166500.envColor.a = R_FB_FILTER_A;
        func_800AD958(&D_80166500, &gfxP);
    } else if (R_FB_FILTER_TYPE == 7) {
        sMonoColors.unk_00 = 0;
        sMonoColors.primColor.r = R_FB_FILTER_PRIM_COLOR(0);
        sMonoColors.primColor.g = R_FB_FILTER_PRIM_COLOR(1);
        sMonoColors.primColor.b = R_FB_FILTER_PRIM_COLOR(2);
        sMonoColors.primColor.a = R_FB_FILTER_A;
        sMonoColors.envColor.r = R_FB_FILTER_ENV_COLOR(0);
        sMonoColors.envColor.g = R_FB_FILTER_ENV_COLOR(1);
        sMonoColors.envColor.b = R_FB_FILTER_ENV_COLOR(2);
        sMonoColors.envColor.a = R_FB_FILTER_A;
        VisMono_Draw(&sMonoColors, &gfxP);
    }
    *gfx = gfxP;
}

void func_800C4344(GameState* gameState) {
    Input* selectedInput;
    s32 hexDumpSize;
    u16 hReg82;

    if (HREG(80) == 0x14) {
        __osMalloc_FreeBlockTest_Enable = HREG(82);
    }

    if (HREG(80) == 0xC) {
        selectedInput = &gameState->input[HREG(81) < 4U ? HREG(81) : 0];
        hReg82 = HREG(82);
        HREG(83) = selectedInput->cur.in.button;
        HREG(84) = selectedInput->press.in.button;
        HREG(85) = selectedInput->rel.in.x;
        HREG(86) = selectedInput->rel.in.y;
        HREG(87) = selectedInput->rel.in.x;
        HREG(88) = selectedInput->rel.in.y;
        HREG(89) = selectedInput->cur.in.x;
        HREG(90) = selectedInput->cur.in.y;
        HREG(93) = (selectedInput->cur.in.button == hReg82);
        HREG(94) = CHECK_PAD(selectedInput->cur, hReg82);
        HREG(95) = CHECK_PAD(selectedInput->press, hReg82);
    }

    if (D_8012DBC0 != 0) {
        func_8006390C(&gameState->input[1]);
    }

    D_80009460 = HREG(60);
    gDmaMgrDmaBuffSize = SREG(21) != 0 ? ALIGN16(SREG(21)) : 0x2000;
    gSystemArenaLogSeverity = HREG(61);
    gZeldaArenaLogSeverity = HREG(62);
    if (HREG(80) == 8) {
        if (HREG(94) != 8) {
            HREG(94) = 8;
            HREG(81) = 0;
            HREG(82) = 0;
            HREG(83) = 0;
        }
        if (HREG(81) < 0) {
            HREG(81) = 0;
            // & 0xFFFFFFFF necessary for matching.
            hexDumpSize = (HREG(83) == 0 ? 0x100 : HREG(83) * 0x10) & 0xFFFFFFFF;
            LogUtils_LogHexDump(PHYSICAL_TO_VIRTUAL(HREG(82) << 8), hexDumpSize);
        }
    }
}

#ifdef NON_MATCHING
// Regalloc mostly
void GameState_DrawInputDisplay(u16 input, Gfx** gfx) {
    static const u16 sInpDispBtnColors[] = {
        GPACK_RGBA5551(31, 31, 0, 1),  GPACK_RGBA5551(31, 31, 0, 1),  GPACK_RGBA5551(31, 31, 0, 1),
        GPACK_RGBA5551(31, 31, 0, 1),  GPACK_RGBA5551(15, 15, 15, 1), GPACK_RGBA5551(15, 15, 15, 1),
        GPACK_RGBA5551(31, 0, 31, 1),  GPACK_RGBA5551(0, 31, 31, 1),  GPACK_RGBA5551(15, 15, 15, 1),
        GPACK_RGBA5551(15, 15, 15, 1), GPACK_RGBA5551(15, 15, 15, 1), GPACK_RGBA5551(15, 15, 15, 1),
        GPACK_RGBA5551(31, 0, 0, 1),   GPACK_RGBA5551(15, 15, 15, 1), GPACK_RGBA5551(0, 31, 15, 1),
        GPACK_RGBA5551(0, 0, 31, 1),
    };
    s32 i, j;
    s32 lrx, lry, ulx, uly;
    Gfx* gfxP = *gfx;
    gDPPipeSync(gfxP++);
    gDPSetOtherMode(gfxP++,
                    G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_FILL | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);

    for (i = 0, j = 1; i < 0x10; i++, j++) {
        if (input & (1 << i)) {
            gDPSetFillColor(gfxP++, (sInpDispBtnColors[i] << 0x10) | sInpDispBtnColors[i]);
            ulx = i * 4 + 226;
            uly = 220;
            lrx = j * 4 + 225;
            lry = 223;
            gDPFillRectangle(gfxP++, ulx, uly, lrx, lry);
            gDPPipeSync(gfxP++);
        }
    };

    *gfx = gfxP;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/game/GameState_DrawInputDisplay.s")
#endif

void GameState_Draw(GameState* gameState, GraphicsContext* gfxCtx) {
    Gfx* newDList;
    Gfx* polyOpaP;
    Gfx* dispRefs[5];
    char pad[0x8];
    GfxPrint printChars;

    Graph_OpenDisps(dispRefs, gfxCtx, "../game.c", 746);
    newDList = Graph_GfxPlusOne(polyOpaP = gfxCtx->polyOpa.p);
    gSPDisplayList(gfxCtx->overlay.p++, newDList);

    if (R_ENABLE_FB_FILTER == 1) {
        GameState_SetFBFilter(&newDList);
    }

    sLastButtonPressed = gameState->input[0].press.in.button | gameState->input[0].cur.in.button;
    if (R_DISABLE_INPUT_DISPLAY == 0) {
        GameState_DrawInputDisplay(sLastButtonPressed, &newDList);
    }

    if (R_ENABLE_AUDIO_DBG & 1) {
        GfxPrint_Ctor(&printChars);
        GfxPrint_Open(&printChars, newDList);
        func_800EEA50(&printChars);
        newDList = GfxPrint_Close(&printChars);
        GfxPrint_Dtor(&printChars);
    }

    if (R_ENABLE_ARENA_DBG < 0) {
        DebugArena_Display();
        SystemArena_Display();
        //% 08x bytes left until the death of Hyrule (game_alloc)
        osSyncPrintf("ハイラル滅亡まであと %08x バイト(game_alloc)\n", THA_GetSize(&gameState->tha));
        R_ENABLE_ARENA_DBG = 0;
    }

    if (1) {
        gSPEndDisplayList(newDList++);
        Graph_BranchDlist(polyOpaP, newDList);
        gfxCtx->polyOpa.p = newDList;
    }

    Graph_CloseDisps(dispRefs, gfxCtx, "../game.c", 800);

    func_80063D7C(gfxCtx);

    if (R_ENABLE_ARENA_DBG != 0) {
        SpeedMeter_DrawTimeEntries(&D_801664D0, gfxCtx);
        SpeedMeter_DrawAllocEntries(&D_801664D0, gfxCtx, gameState);
    }
}

void GameState_SetFrameBuffer(GraphicsContext* gfxCtx) {
    Gfx* dispRef[5];

    Graph_OpenDisps(dispRef, gfxCtx, "../game.c", 814);

    gSPSegment(gfxCtx->polyOpa.p++, 0, 0);
    gSPSegment(gfxCtx->polyOpa.p++, 0xF, gfxCtx->curFrameBuffer);
    gSPSegment(gfxCtx->polyOpa.p++, 0xE, gZBuffer);
    gSPSegment(gfxCtx->polyXlu.p++, 0, 0);
    gSPSegment(gfxCtx->polyXlu.p++, 0xF, gfxCtx->curFrameBuffer);
    gSPSegment(gfxCtx->polyXlu.p++, 0xE, gZBuffer);
    gSPSegment(gfxCtx->overlay.p++, 0, 0);
    gSPSegment(gfxCtx->overlay.p++, 0xF, gfxCtx->curFrameBuffer);
    gSPSegment(gfxCtx->overlay.p++, 0xE, gZBuffer);

    Graph_CloseDisps(dispRef, gfxCtx, "../game.c", 838);
}

void func_800C49F4(GraphicsContext* gfxCtx) {
    Gfx* newDlist;
    Gfx* polyOpaP;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, gfxCtx, "../game.c", 846);

    newDlist = Graph_GfxPlusOne(polyOpaP = gfxCtx->polyOpa.p);
    gSPDisplayList(gfxCtx->overlay.p++, newDlist);

    // necessary to match
    if (1) {
        gSPEndDisplayList(newDlist++);
        Graph_BranchDlist(polyOpaP, newDlist);
        gfxCtx->polyOpa.p = newDlist;
    }

    Graph_CloseDisps(dispRefs, gfxCtx, "../game.c", 865);
}

void GameState_ReqPadData(GameState* gameState) {
    PadMgr_RequestPadData(&gPadMgr, &gameState->input, 1);
}

#ifdef NON_MATCHING
// regalloc differences and additional redundant instructions
void GameState_Update(GameState* gameState) {
    GraphicsContext* gfxCtx = gameState->gfxCtx;

    GameState_SetFrameBuffer(gfxCtx);

    gameState->main(gameState);

    func_800C4344(gameState);

    if (SREG(63) == 1) {
        if (SREG(48) < 0) {
            SREG(48) = 0;
            gfxCtx->viMode = &gViConfigMode;
            gfxCtx->viFeatures = gViConfigFeatures;
            gfxCtx->xScale = gViConfigXScale;
            gfxCtx->yScale = gViConfigYScale;
        } else if (SREG(48) > 0) {
            func_800ACAF8(&D_80166528, gameState->input, gfxCtx);
            gfxCtx->viMode = &D_80166528.viMode;
            gfxCtx->viFeatures = D_80166528.viFeatures;
            gfxCtx->xScale = 1.0f;
            gfxCtx->yScale = 1.0f;
        }
    } else if (SREG(63) >= 2) {
        gfxCtx->viMode = &gViConfigMode;
        gfxCtx->viFeatures = gViConfigFeatures;
        gfxCtx->xScale = gViConfigXScale;
        gfxCtx->yScale = gViConfigYScale;
        if (SREG(63) == 6 || (SREG(63) == 2 && osTvType == 1)) {
            gfxCtx->viMode = &osViModeNtscLan1;
            gfxCtx->yScale = 1.0f;
        }

        if (SREG(63) == 5 || (SREG(63) == 2 && osTvType == 2)) {
            gfxCtx->viMode = &osViModeMpalLan1;
            gfxCtx->yScale = 1.0f;
        }

        if (SREG(63) == 4 || (SREG(63) == 2 && osTvType == 0)) {
            gfxCtx->viMode = &osViModePalLan1;
            gfxCtx->yScale = 1.0f;
        }

        if (SREG(63) == 3 || (SREG(63) == 2 && osTvType == 0)) {
            gfxCtx->viMode = &osViModeFpalLan1;
            gfxCtx->yScale = 0.833f;
        }
    } else {
        gfxCtx->viMode = NULL;
    }

    if (HREG(80) == 0x15) {
        if (HREG(95) != 0x15) {
            HREG(95) = 0x15;
            HREG(81) = 0;
            HREG(82) = gViConfigAdditionalScanLines;
            HREG(83) = 0;
            HREG(84) = 0;
        }

        if (HREG(82) < 0) {
            HREG(82) = 0;
        }
        if (HREG(82) > 0x30) {
            HREG(82) = 0x30;
        }

        if ((HREG(83) != HREG(82)) || HREG(84) != HREG(81)) {
            HREG(83) = HREG(82);
            HREG(84) = HREG(81);
            gViConfigAdditionalScanLines = HREG(82);
            gViConfigYScale = HREG(81) == 0 ? 240.0f / (gViConfigAdditionalScanLines + 240.0f) : 1.0f;
            D_80009430 = 1;
        }
    }

    if (R_PAUSE_MENU_MODE != 2) {
        GameState_Draw(gameState, gfxCtx);
        func_800C49F4(gfxCtx);
    }

    gameState->frames++;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/game/GameState_Update.s")
#endif

void GameState_InitArena(GameState* gameState, size_t size) {
    void* arena;

    // Hyrule reserved size =% u bytes
    osSyncPrintf("ハイラル確保 サイズ＝%u バイト\n");
    arena = GameAlloc_MallocDebug(&gameState->alloc, size, "../game.c", 992);
    if (arena != NULL) {
        THA_Ct(&gameState->tha, arena, size);
        // Successful Hyral
        osSyncPrintf("ハイラル確保成功\n");
    } else {
        THA_Ct(&gameState->tha, NULL, 0);
        // Failure to secure Hyrule
        osSyncPrintf("ハイラル確保失敗\n");
        Fault_AddHungupAndCrash("../game.c", 999);
    }
}

#ifdef NON_MATCHING
// stack
void GameState_Realloc(GameState* gameState, size_t size) {
    s32 pad;
    void* gameArena;
    u32 systemMaxFree;
    u32 systemFree;
    u32 systemAlloc;
    void* thaBufp;

    thaBufp = gameState->tha.bufp;
    THA_Dt(&gameState->tha);
    GameAlloc_Free(&gameState->alloc, thaBufp);
    // Hyrule temporarily released !!
    osSyncPrintf("ハイラル一時解放!!\n");
    SystemArena_GetSizes(&systemMaxFree, &systemFree, &systemAlloc);
    if ((systemMaxFree - 0x10) < size) {
        osSyncPrintf("%c", 7);
        osSyncPrintf(VT_FGCOL(RED));

        // Not enough memory. Change the hyral size to the largest possible value
        osSyncPrintf("メモリが足りません。ハイラルサイズを可能な最大値に変更します\n");
        osSyncPrintf("(hyral=%08x max=%08x free=%08x alloc=%08x)\n", size, systemMaxFree, systemFree, systemAlloc);
        osSyncPrintf(VT_RST);
        size = systemMaxFree - 0x10;
    }

    // Hyral reallocate size =% u bytes
    osSyncPrintf("ハイラル再確保 サイズ＝%u バイト\n", size);
    gameArena = GameAlloc_MallocDebug(&gameState->alloc, size, "../game.c", 1033);
    if (gameArena != NULL) {
        THA_Ct(&gameState->tha, gameArena, size);
        // Successful reacquisition of Hyrule
        osSyncPrintf("ハイラル再確保成功\n");
    } else {
        THA_Ct(&gameState->tha, NULL, 0);
        // Failure to secure Hyral
        osSyncPrintf("ハイラル再確保失敗\n");
        SystemArena_Display();
        Fault_AddHungupAndCrash("../game.c", 1044);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/game/GameState_Realloc.s")
#endif

void GameState_Init(GameState* gameState, GameStateFunc init, GraphicsContext* gfxCtx) {
    u64 startTime;
    u64 endTime;

    // game constructor start
    osSyncPrintf("game コンストラクタ開始\n");
    gameState->gfxCtx = gfxCtx;
    gameState->frames = 0;
    gameState->main = NULL;
    gameState->destroy = NULL;
    gameState->running = 1;
    startTime = osGetTime();
    gameState->size = 0;
    gameState->init = NULL;
    endTime = osGetTime();

    // game_set_next_game_null processing time% d us
    osSyncPrintf("game_set_next_game_null 処理時間 %d us\n", OS_CYCLES_TO_USEC(endTime - startTime));
    startTime = endTime;
    GameAlloc_Init(&gameState->alloc);

    endTime = osGetTime();
    // gamealloc_init processing time% d us
    osSyncPrintf("gamealloc_init 処理時間 %d us\n", OS_CYCLES_TO_USEC(endTime - startTime));

    startTime = endTime;
    GameState_InitArena(gameState, 0x100000);
    SREG(30) = 3;
    init(gameState);

    endTime = osGetTime();
    // init processing time% d us
    osSyncPrintf("init 処理時間 %d us\n", OS_CYCLES_TO_USEC(endTime - startTime));

    startTime = endTime;
    LogUtils_CheckNullPointer("this->cleanup", gameState->destroy, "../game.c", 1088);
    func_800ACE70(&D_801664F0);
    func_800AD920(&D_80166500);
    VisMono_Init(&sMonoColors);
    if (SREG(48) == 0) {
        func_800ACA28(&D_80166528);
    }
    SpeedMeter_Init(&D_801664D0);
    func_800AA0B4();
    osSendMesg(&gameState->gfxCtx->queue, NULL, OS_MESG_BLOCK);

    endTime = osGetTime();
    // Other initialization processing time% d us
    osSyncPrintf("その他初期化 処理時間 %d us\n", OS_CYCLES_TO_USEC(endTime - startTime));

    Fault_AddClient(&sGameFaultClient, &GameState_FaultPrint, NULL, NULL);

    // game constructor end
    osSyncPrintf("game コンストラクタ終了\n");
}

void GameState_Destroy(GameState* gameState) {
    // game destructor start
    osSyncPrintf("game デストラクタ開始\n");
    func_800C3C20();
    func_800F3054();
    osRecvMesg(&gameState->gfxCtx->queue, NULL, OS_MESG_BLOCK);
    LogUtils_CheckNullPointer("this->cleanup", gameState->destroy, "../game.c", 1139);
    if (gameState->destroy != NULL) {
        gameState->destroy(gameState);
    }
    func_800AA0F0();
    SpeedMeter_Destroy(&D_801664D0);
    func_800ACE90(&D_801664F0);
    func_800AD950(&D_80166500);
    VisMono_Destroy(&sMonoColors);
    if (SREG(48) == 0) {
        func_800ACA90(&D_80166528);
    }
    THA_Dt(&gameState->tha);
    GameAlloc_Cleanup(&gameState->alloc);
    SystemArena_Display();
    Fault_RemoveClient(&sGameFaultClient);

    // game destructor end
    osSyncPrintf("game デストラクタ終了\n");
}

GameStateFunc GameState_GetInit(GameState* gameState) {
    return gameState->init;
}

size_t GameState_GetSize(GameState* gameState) {
    return gameState->size;
}

u32 GameState_IsRunning(GameState* gameState) {
    return gameState->running;
}

void* GameState_Alloc(GameState* gameState, size_t size, char* file, s32 line) {
    void* ret;

    if (THA_IsCrash(&gameState->tha)) {
        osSyncPrintf("ハイラルは滅亡している\n");
        ret = NULL;
    } else if (THA_GetSize(&gameState->tha) < size) {
        // Hyral on the verge of extinction does not have% d bytes left (% d bytes until extinction)
        osSyncPrintf("滅亡寸前のハイラルには %d バイトの余力もない（滅亡まであと %d バイト）\n", size,
                     THA_GetSize(&gameState->tha));
        ret = NULL;
    } else {
        ret = THA_AllocEndAlign16(&gameState->tha, size);
        if (THA_IsCrash(&gameState->tha)) {
            // Hyrule has been destroyed
            osSyncPrintf("ハイラルは滅亡してしまった\n");
            ret = NULL;
        }
    }
    if (ret != NULL) {
        osSyncPrintf(VT_FGCOL(GREEN));
        osSyncPrintf("game_alloc(%08x) %08x-%08x [%s:%d]\n", size, ret, (u32)ret + size, file, line);
        osSyncPrintf(VT_RST);
    }
    return ret;
}

void* GameState_AllocEndAlign16(GameState* gameState, size_t size) {
    return THA_AllocEndAlign16(&gameState->tha, size);
}

s32 GameState_GetArenaSize(GameState* gameState) {
    return THA_GetSize(&gameState->tha);
}
