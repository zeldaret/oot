#include "global.h"
#include "fault.h"
#include "terminal.h"
#include "ucode_disas.h"
#include "versions.h"
#include "line_numbers.h"

#define GFXPOOL_HEAD_MAGIC 0x1234
#define GFXPOOL_TAIL_MAGIC 0x5678

#pragma increment_block_number "gc-eu:0 gc-eu-mq:0 gc-jp:0 gc-jp-ce:0 gc-jp-mq:0 gc-us:0 gc-us-mq:0 ntsc-1.0:160" \
                               "ntsc-1.1:160 ntsc-1.2:160 pal-1.0:160 pal-1.1:160"

/**
 * The time at which the previous `Graph_Update` ended.
 */
OSTime sGraphPrevUpdateEndTime;

/**
 * The time at which the previous graphics task was scheduled to run.
 */
OSTime sGraphPrevTaskTimeStart;

#if DEBUG_FEATURES
FaultClient sGraphFaultClient;

UCodeInfo D_8012D230[3] = {
    { UCODE_TYPE_F3DZEX, gspF3DZEX2_NoN_PosLight_fifoTextStart },
    { UCODE_TYPE_UNK, NULL },
    { UCODE_TYPE_S2DEX, gspS2DEX2d_fifoTextStart },
};

UCodeInfo D_8012D248[3] = {
    { UCODE_TYPE_F3DZEX, gspF3DZEX2_NoN_PosLight_fifoTextStart },
    { UCODE_TYPE_UNK, NULL },
    { UCODE_TYPE_S2DEX, gspS2DEX2d_fifoTextStart },
};

void Graph_FaultClient(void) {
    void* nextFb = osViGetNextFramebuffer();
    void* newFb = (SysCfb_GetFbPtr(0) != nextFb) ? SysCfb_GetFbPtr(0) : SysCfb_GetFbPtr(1);

    osViSwapBuffer(newFb);
    Fault_WaitForInput();
    osViSwapBuffer(nextFb);
}

// TODO: merge Gfx and GfxMod to make this function's arguments consistent
void UCodeDisas_Disassemble(UCodeDisas*, Gfx*);

void Graph_DisassembleUCode(Gfx* workBuf) {
    UCodeDisas disassembler;

    if (R_HREG_MODE == HREG_MODE_UCODE_DISAS && R_UCODE_DISAS_TOGGLE != 0) {
        UCodeDisas_Init(&disassembler);
        disassembler.enableLog = R_UCODE_DISAS_LOG_LEVEL;

        UCodeDisas_RegisterUCode(&disassembler, ARRAY_COUNT(D_8012D230), D_8012D230);
        UCodeDisas_SetCurUCode(&disassembler, gspF3DZEX2_NoN_PosLight_fifoTextStart);

        UCodeDisas_Disassemble(&disassembler, workBuf);

        R_UCODE_DISAS_DL_COUNT = disassembler.dlCnt;
        R_UCODE_DISAS_TOTAL_COUNT =
            disassembler.tri2Cnt * 2 + disassembler.tri1Cnt + (disassembler.quadCnt * 2) + disassembler.lineCnt;
        R_UCODE_DISAS_VTX_COUNT = disassembler.vtxCnt;
        R_UCODE_DISAS_SPVTX_COUNT = disassembler.spvtxCnt;
        R_UCODE_DISAS_TRI1_COUNT = disassembler.tri1Cnt;
        R_UCODE_DISAS_TRI2_COUNT = disassembler.tri2Cnt;
        R_UCODE_DISAS_QUAD_COUNT = disassembler.quadCnt;
        R_UCODE_DISAS_LINE_COUNT = disassembler.lineCnt;
        R_UCODE_DISAS_SYNC_ERROR_COUNT = disassembler.syncErr;
        R_UCODE_DISAS_LOAD_COUNT = disassembler.loaducodeCnt;

        if (R_UCODE_DISAS_LOG_MODE == 1 || R_UCODE_DISAS_LOG_MODE == 2) {
            PRINTF("vtx_cnt=%d\n", disassembler.vtxCnt);
            PRINTF("spvtx_cnt=%d\n", disassembler.spvtxCnt);
            PRINTF("tri1_cnt=%d\n", disassembler.tri1Cnt);
            PRINTF("tri2_cnt=%d\n", disassembler.tri2Cnt);
            PRINTF("quad_cnt=%d\n", disassembler.quadCnt);
            PRINTF("line_cnt=%d\n", disassembler.lineCnt);
            PRINTF("sync_err=%d\n", disassembler.syncErr);
            PRINTF("loaducode_cnt=%d\n", disassembler.loaducodeCnt);
            PRINTF("dl_depth=%d\n", disassembler.dlDepth);
            PRINTF("dl_cnt=%d\n", disassembler.dlCnt);
        }

        UCodeDisas_Destroy(&disassembler);
    }
}

void Graph_UCodeFaultClient(Gfx* workBuf) {
    UCodeDisas disassembler;

    UCodeDisas_Init(&disassembler);
    disassembler.enableLog = true;
    UCodeDisas_RegisterUCode(&disassembler, ARRAY_COUNT(D_8012D248), D_8012D248);
    UCodeDisas_SetCurUCode(&disassembler, gspF3DZEX2_NoN_PosLight_fifoTextStart);
    UCodeDisas_Disassemble(&disassembler, workBuf);
    UCodeDisas_Destroy(&disassembler);
}
#endif

void Graph_InitTHGA(GraphicsContext* gfxCtx) {
    GfxPool* pool = &gGfxPools[gfxCtx->gfxPoolIdx & 1];

    pool->headMagic = GFXPOOL_HEAD_MAGIC;
    pool->tailMagic = GFXPOOL_TAIL_MAGIC;
    THGA_Init(&gfxCtx->polyOpa, pool->polyOpaBuffer, sizeof(pool->polyOpaBuffer));
    THGA_Init(&gfxCtx->polyXlu, pool->polyXluBuffer, sizeof(pool->polyXluBuffer));
    THGA_Init(&gfxCtx->overlay, pool->overlayBuffer, sizeof(pool->overlayBuffer));
    THGA_Init(&gfxCtx->work, pool->workBuffer, sizeof(pool->workBuffer));

    gfxCtx->polyOpaBuffer = pool->polyOpaBuffer;
    gfxCtx->polyXluBuffer = pool->polyXluBuffer;
    gfxCtx->overlayBuffer = pool->overlayBuffer;
    gfxCtx->workBuffer = pool->workBuffer;

    gfxCtx->curFrameBuffer = SysCfb_GetFbPtr(gfxCtx->fbIdx % 2);
    gfxCtx->unk_014 = 0;
}

GameStateOverlay* Graph_GetNextGameState(GameState* gameState) {
    void* gameStateInitFunc = GameState_GetInit(gameState);

    // Generates code to match gameStateInitFunc to a gamestate entry and returns it if found
#define DEFINE_GAMESTATE_INTERNAL(typeName, enumName) \
    if (gameStateInitFunc == typeName##_Init) {       \
        return &gGameStateOverlayTable[enumName];     \
    }
#define DEFINE_GAMESTATE(typeName, enumName, name) DEFINE_GAMESTATE_INTERNAL(typeName, enumName)
#include "tables/gamestate_table.h"
#undef DEFINE_GAMESTATE
#undef DEFINE_GAMESTATE_INTERNAL

    LOG_ADDRESS("game_init_func", gameStateInitFunc, "../graph.c", 696);
    return NULL;
}

void Graph_Init(GraphicsContext* gfxCtx) {
    bzero(gfxCtx, sizeof(GraphicsContext));
    gfxCtx->gfxPoolIdx = 0;
    gfxCtx->fbIdx = 0;
    gfxCtx->viMode = NULL;

#if OOT_VERSION < PAL_1_0
    gfxCtx->viFeatures = 0;
#else
    gfxCtx->viFeatures = gViConfigFeatures;
    gfxCtx->xScale = gViConfigXScale;
    gfxCtx->yScale = gViConfigYScale;
#endif

    osCreateMesgQueue(&gfxCtx->queue, gfxCtx->msgBuff, ARRAY_COUNT(gfxCtx->msgBuff));

#if DEBUG_FEATURES
    func_800D31F0();
    Fault_AddClient(&sGraphFaultClient, Graph_FaultClient, NULL, NULL);
#endif
}

void Graph_Destroy(GraphicsContext* gfxCtx) {
#if DEBUG_FEATURES
    func_800D3210();
    Fault_RemoveClient(&sGraphFaultClient);
#endif
}

void Graph_TaskSet00(GraphicsContext* gfxCtx) {
#if DEBUG_FEATURES
    static Gfx* sPrevTaskWorkBuffer = NULL;
#endif
    OSTask_t* task = &gfxCtx->task.list.t;
    OSScTask* scTask = &gfxCtx->task;

    gGfxTaskSentToNextReadyMinusAudioThreadUpdateTime =
        osGetTime() - sGraphPrevTaskTimeStart - gAudioThreadUpdateTimeAcc;

    {
        OSTimer timer;
        OSMesg msg;

        // Schedule a message to be handled in 3 seconds, for RCP timeout
        osSetTimer(&timer, OS_USEC_TO_CYCLES(3000000), 0, &gfxCtx->queue, (OSMesg)666);

        osRecvMesg(&gfxCtx->queue, &msg, OS_MESG_BLOCK);
        osStopTimer(&timer);

        if (msg == (OSMesg)666) {
#if DEBUG_FEATURES
            PRINTF_COLOR_RED();
            PRINTF(T("RCPが帰ってきませんでした。", "RCP did not return."));
            PRINTF_RST();

            LogUtils_LogHexDump((void*)PHYS_TO_K1(SP_BASE_REG), 0x20);
            LogUtils_LogHexDump((void*)PHYS_TO_K1(DPC_BASE_REG), 0x20);
            LogUtils_LogHexDump(gGfxSPTaskYieldBuffer, sizeof(gGfxSPTaskYieldBuffer));

            SREG(6) = -1;
            if (sPrevTaskWorkBuffer != NULL) {
                R_HREG_MODE = HREG_MODE_UCODE_DISAS;
                R_UCODE_DISAS_TOGGLE = 1;
                R_UCODE_DISAS_LOG_LEVEL = 2;
                Graph_DisassembleUCode(sPrevTaskWorkBuffer);
            }
#endif

            Fault_AddHungupAndCrashImpl("RCP is HUNG UP!!", "Oh! MY GOD!!");
        }

        osRecvMesg(&gfxCtx->queue, &msg, OS_MESG_NOBLOCK);

#if DEBUG_FEATURES
        sPrevTaskWorkBuffer = gfxCtx->workBuffer;
#endif
    }

    if (gfxCtx->callback != NULL) {
        gfxCtx->callback(gfxCtx, gfxCtx->callbackParam);
    }

    {
        OSTime timeNow = osGetTime();

        if (gAudioThreadUpdateTimeStart != 0) {
            // The audio thread update is running
            // Add the time already spent to the accumulator and leave the rest for the next cycle

            gAudioThreadUpdateTimeAcc += timeNow - gAudioThreadUpdateTimeStart;
            gAudioThreadUpdateTimeStart = timeNow;
        }
        gAudioThreadUpdateTimeTotalPerGfxTask = gAudioThreadUpdateTimeAcc;
        gAudioThreadUpdateTimeAcc = 0;

        sGraphPrevTaskTimeStart = osGetTime();
    }

    task->type = M_GFXTASK;
    task->flags = OS_SC_DRAM_DLIST;
    task->ucode_boot = SysUcode_GetUCodeBoot();
    task->ucode_boot_size = SysUcode_GetUCodeBootSize();
    task->ucode = SysUcode_GetUCode();
    task->ucode_data = SysUcode_GetUCodeData();
    task->ucode_size = SP_UCODE_SIZE;
    task->ucode_data_size = SP_UCODE_DATA_SIZE;
    task->dram_stack = gGfxSPTaskStack;
    task->dram_stack_size = sizeof(gGfxSPTaskStack);
    task->output_buff = gGfxSPTaskOutputBuffer;
    task->output_buff_size = gGfxSPTaskOutputBuffer + ARRAY_COUNT(gGfxSPTaskOutputBuffer);
    task->data_ptr = (u64*)gfxCtx->workBuffer;

    OPEN_DISPS(gfxCtx, "../graph.c", 828);
    task->data_size = (uintptr_t)WORK_DISP - (uintptr_t)gfxCtx->workBuffer;
    CLOSE_DISPS(gfxCtx, "../graph.c", 830);

    task->yield_data_ptr = gGfxSPTaskYieldBuffer;

    task->yield_data_size = sizeof(gGfxSPTaskYieldBuffer);

    scTask->next = NULL;
    scTask->flags = OS_SC_NEEDS_RSP | OS_SC_NEEDS_RDP | OS_SC_SWAPBUFFER | OS_SC_LAST_TASK;
    if (R_GRAPH_TASKSET00_FLAGS & 1) {
        R_GRAPH_TASKSET00_FLAGS &= ~1;
        scTask->flags &= ~OS_SC_SWAPBUFFER;
        gfxCtx->fbIdx--;
    }

    scTask->msgQueue = &gfxCtx->queue;
    scTask->msg = NULL;

    {
        static CfbInfo sGraphCfbInfos[3];
        static s32 sGraphCfbInfoIdx = 0;
        CfbInfo* cfb;

        cfb = &sGraphCfbInfos[sGraphCfbInfoIdx];

        sGraphCfbInfoIdx = (sGraphCfbInfoIdx + 1) % ARRAY_COUNT(sGraphCfbInfos);
        cfb->framebuffer = gfxCtx->curFrameBuffer;
        cfb->swapBuffer = gfxCtx->curFrameBuffer;

        cfb->viMode = gfxCtx->viMode;
        cfb->viFeatures = gfxCtx->viFeatures;
#if OOT_VERSION >= PAL_1_0
        cfb->xScale = gfxCtx->xScale;
        cfb->yScale = gfxCtx->yScale;
#endif
        cfb->unk_10 = 0;
        cfb->updateRate = R_UPDATE_RATE;

        scTask->framebuffer = cfb;
    }

    gfxCtx->schedMsgQueue = &gScheduler.cmdQueue;

    osSendMesg(&gScheduler.cmdQueue, (OSMesg)scTask, OS_MESG_BLOCK);
    Sched_Notify(&gScheduler);
}

void Graph_Update(GraphicsContext* gfxCtx, GameState* gameState) {
    u32 problem;

    gameState->inPreNMIState = false;
    Graph_InitTHGA(gfxCtx);

#if DEBUG_FEATURES
    OPEN_DISPS(gfxCtx, "../graph.c", 966);

    gDPNoOpString(WORK_DISP++, "WORK_DISP 開始", 0);
    gDPNoOpString(POLY_OPA_DISP++, "POLY_OPA_DISP 開始", 0);
    gDPNoOpString(POLY_XLU_DISP++, "POLY_XLU_DISP 開始", 0);
    gDPNoOpString(OVERLAY_DISP++, "OVERLAY_DISP 開始", 0);

    CLOSE_DISPS(gfxCtx, "../graph.c", 975);
#endif

    GameState_ReqPadData(gameState);
    GameState_Update(gameState);

#if DEBUG_FEATURES
    OPEN_DISPS(gfxCtx, "../graph.c", 987);

    gDPNoOpString(WORK_DISP++, "WORK_DISP 終了", 0);
    gDPNoOpString(POLY_OPA_DISP++, "POLY_OPA_DISP 終了", 0);
    gDPNoOpString(POLY_XLU_DISP++, "POLY_XLU_DISP 終了", 0);
    gDPNoOpString(OVERLAY_DISP++, "OVERLAY_DISP 終了", 0);

    CLOSE_DISPS(gfxCtx, "../graph.c", 996);
#endif

    OPEN_DISPS(gfxCtx, "../graph.c", 999);

    gSPBranchList(WORK_DISP++, gfxCtx->polyOpaBuffer);
    gSPBranchList(POLY_OPA_DISP++, gfxCtx->polyXluBuffer);
    gSPBranchList(POLY_XLU_DISP++, gfxCtx->overlayBuffer);
    gDPPipeSync(OVERLAY_DISP++);
    gDPFullSync(OVERLAY_DISP++);
    gSPEndDisplayList(OVERLAY_DISP++);

    CLOSE_DISPS(gfxCtx, "../graph.c", 1028);

#if DEBUG_FEATURES
    if (R_HREG_MODE == HREG_MODE_PLAY && R_PLAY_ENABLE_UCODE_DISAS == 2) {
        R_HREG_MODE = HREG_MODE_UCODE_DISAS;
        R_UCODE_DISAS_TOGGLE = -1;
        R_UCODE_DISAS_LOG_LEVEL = R_PLAY_UCODE_DISAS_LOG_LEVEL;
    }

    if (R_HREG_MODE == HREG_MODE_UCODE_DISAS && R_UCODE_DISAS_TOGGLE != 0) {
        static FaultClient sGraphUcodeFaultClient;

        if (R_UCODE_DISAS_LOG_MODE == 3) {
            Fault_AddClient(&sGraphUcodeFaultClient, Graph_UCodeFaultClient, gfxCtx->workBuffer, "do_count_fault");
        }

        Graph_DisassembleUCode(gfxCtx->workBuffer);

        if (R_UCODE_DISAS_LOG_MODE == 3) {
            Fault_RemoveClient(&sGraphUcodeFaultClient);
        }

        if (R_UCODE_DISAS_TOGGLE < 0) {
            LogUtils_LogHexDump((void*)PHYS_TO_K1(SP_BASE_REG), 0x20);
            LogUtils_LogHexDump((void*)PHYS_TO_K1(DPC_BASE_REG), 0x20);
        }

        if (R_UCODE_DISAS_TOGGLE < 0) {
            R_UCODE_DISAS_TOGGLE = 0;
        }
    }
#endif

    problem = false;

    {
        GfxPool* pool = &gGfxPools[gfxCtx->gfxPoolIdx & 1];

        if (pool->headMagic != GFXPOOL_HEAD_MAGIC) {
            //! @bug (?) : "problem = true;" may be missing
            PRINTF("%c", BEL);
            PRINTF(VT_COL(RED, WHITE) T("ダイナミック領域先頭が破壊されています\n", "Dynamic area head is destroyed\n")
                       VT_RST);
            Fault_AddHungupAndCrash("../graph.c", LN4(937, 940, 951, 1067, 1070));
        }

        if (pool->tailMagic != GFXPOOL_TAIL_MAGIC) {
            problem = true;
            PRINTF("%c", BEL);
            PRINTF(VT_COL(RED, WHITE)
                       T("ダイナミック領域末尾が破壊されています\n", "Dynamic region tail is destroyed\n") VT_RST);
            Fault_AddHungupAndCrash("../graph.c", LN4(943, 946, 957, 1073, 1076));
        }
    }

    if (THGA_IsCrash(&gfxCtx->polyOpa)) {
        problem = true;
        PRINTF("%c", BEL);
        PRINTF(VT_COL(RED, WHITE) T("ゼルダ0は死んでしまった(graph_alloc is empty)\n",
                                    "Zelda 0 is dead (graph_alloc is empty)\n") VT_RST);
    }
    if (THGA_IsCrash(&gfxCtx->polyXlu)) {
        problem = true;
        PRINTF("%c", BEL);
        PRINTF(VT_COL(RED, WHITE) T("ゼルダ1は死んでしまった(graph_alloc is empty)\n",
                                    "Zelda 1 is dead (graph_alloc is empty)\n") VT_RST);
    }
    if (THGA_IsCrash(&gfxCtx->overlay)) {
        problem = true;
        PRINTF("%c", BEL);
        PRINTF(VT_COL(RED, WHITE) T("ゼルダ4は死んでしまった(graph_alloc is empty)\n",
                                    "Zelda 4 is dead (graph_alloc is empty)\n") VT_RST);
    }

    if (!problem) {
        Graph_TaskSet00(gfxCtx);
        gfxCtx->gfxPoolIdx++;
        gfxCtx->fbIdx++;
    }

    Audio_Update();

    {
        OSTime timeNow = osGetTime();
        s32 pad;

        gRSPGfxTimeTotal = gRSPGfxTimeAcc;
        gRSPAudioTimeTotal = gRSPAudioTimeAcc;
        gRDPTimeTotal = gRDPTimeAcc;
        gRSPGfxTimeAcc = 0;
        gRSPAudioTimeAcc = 0;
        gRDPTimeAcc = 0;

        if (sGraphPrevUpdateEndTime != 0) {
            gGraphUpdatePeriod = timeNow - sGraphPrevUpdateEndTime;
        }
        sGraphPrevUpdateEndTime = timeNow;
    }

#if DEBUG_FEATURES
    if (gIsCtrlr2Valid && CHECK_BTN_ALL(gameState->input[0].press.button, BTN_Z) &&
        CHECK_BTN_ALL(gameState->input[0].cur.button, BTN_L | BTN_R)) {
        gSaveContext.gameMode = GAMEMODE_NORMAL;
        SET_NEXT_GAMESTATE(gameState, MapSelect_Init, MapSelectState);
        gameState->running = false;
    }

    if (gIsCtrlr2Valid && PreNmiBuff_IsResetting(gAppNmiBufferPtr) && !gameState->inPreNMIState) {
        PRINTF(VT_COL(YELLOW, BLACK) T("PRE-NMIによりリセットモードに移行します\n",
                                       "PRE-NMI causes the system to transition to reset mode\n") VT_RST);
        SET_NEXT_GAMESTATE(gameState, PreNMI_Init, PreNMIState);
        gameState->running = false;
    }
#endif
}

void Graph_ThreadEntry(void* arg0) {
    GraphicsContext gfxCtx;
    GameState* gameState;
    u32 size;
    GameStateOverlay* nextOvl = &gGameStateOverlayTable[GAMESTATE_SETUP];
    GameStateOverlay* ovl;

    PRINTF(T("グラフィックスレッド実行開始\n", "Start graphic thread execution\n"));
    Graph_Init(&gfxCtx);

    while (nextOvl != NULL) {
        ovl = nextOvl;
        Overlay_LoadGameState(ovl);

        size = ovl->instanceSize;
        PRINTF(T("クラスサイズ＝%dバイト\n", "Class size = %d bytes\n"), size);

        gameState = SYSTEM_ARENA_MALLOC(size, "../graph.c", 1196);

        if (gameState == NULL) {
#if DEBUG_FEATURES
            char faultMsg[0x50];

            PRINTF(T("確保失敗\n", "Failure to secure\n"));

            sprintf(faultMsg, "CLASS SIZE= %d bytes", size);
            Fault_AddHungupAndCrashImpl("GAME CLASS MALLOC FAILED", faultMsg);
#else
            Fault_AddHungupAndCrash("../graph.c", LN4(1067, 1070, 1081, 1197, 1200));
#endif
        }

        GameState_Init(gameState, ovl->init, &gfxCtx);

        while (GameState_IsRunning(gameState)) {
            Graph_Update(&gfxCtx, gameState);
        }

        nextOvl = Graph_GetNextGameState(gameState);
        GameState_Destroy(gameState);
        SYSTEM_ARENA_FREE(gameState, "../graph.c", 1227);
        Overlay_FreeGameState(ovl);
    }
    Graph_Destroy(&gfxCtx);
    PRINTF(T("グラフィックスレッド実行終了\n", "End of graphic thread execution\n"));
}

void* Graph_Alloc(GraphicsContext* gfxCtx, size_t size) {
    TwoHeadGfxArena* thga = &gfxCtx->polyOpa;

    if (HREG(59) == 1) {
        PRINTF("graph_alloc siz=%d thga size=%08x bufp=%08x head=%08x tail=%08x\n", size, thga->size, thga->start,
               thga->p, thga->d);
    }
    return THGA_AllocTail(&gfxCtx->polyOpa, ALIGN16(size));
}

void* Graph_Alloc2(GraphicsContext* gfxCtx, size_t size) {
    TwoHeadGfxArena* thga = &gfxCtx->polyOpa;

    if (HREG(59) == 1) {
        PRINTF("graph_alloc siz=%d thga size=%08x bufp=%08x head=%08x tail=%08x\n", size, thga->size, thga->start,
               thga->p, thga->d);
    }
    return THGA_AllocTail(&gfxCtx->polyOpa, ALIGN16(size));
}

#if DEBUG_FEATURES
void Graph_OpenDisps(Gfx** dispRefs, GraphicsContext* gfxCtx, const char* file, int line) {
    if (R_HREG_MODE == HREG_MODE_UCODE_DISAS && R_UCODE_DISAS_LOG_MODE != 4) {
        dispRefs[0] = gfxCtx->polyOpa.p;
        dispRefs[1] = gfxCtx->polyXlu.p;
        dispRefs[2] = gfxCtx->overlay.p;

        gDPNoOpOpenDisp(gfxCtx->polyOpa.p++, file, line);
        gDPNoOpOpenDisp(gfxCtx->polyXlu.p++, file, line);
        gDPNoOpOpenDisp(gfxCtx->overlay.p++, file, line);
    }
}

void Graph_CloseDisps(Gfx** dispRefs, GraphicsContext* gfxCtx, const char* file, int line) {
    if (R_HREG_MODE == HREG_MODE_UCODE_DISAS && R_UCODE_DISAS_LOG_MODE != 4) {
        if (dispRefs[0] + 1 == gfxCtx->polyOpa.p) {
            gfxCtx->polyOpa.p = dispRefs[0];
        } else {
            gDPNoOpCloseDisp(gfxCtx->polyOpa.p++, file, line);
        }

        if (dispRefs[1] + 1 == gfxCtx->polyXlu.p) {
            gfxCtx->polyXlu.p = dispRefs[1];
        } else {
            gDPNoOpCloseDisp(gfxCtx->polyXlu.p++, file, line);
        }

        if (dispRefs[2] + 1 == gfxCtx->overlay.p) {
            gfxCtx->overlay.p = dispRefs[2];
        } else {
            gDPNoOpCloseDisp(gfxCtx->overlay.p++, file, line);
        }
    }
}
#endif
