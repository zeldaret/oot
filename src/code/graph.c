#include <global.h>
#include <ultra64/hardware.h>
#include <vt.h>
#include <PR/os_cont.h>

#define GFXPOOL_HEAD_MAGIC 0x1234
#define GFXPOOL_TAIL_MAGIC 0x5678

OSTime sGraphUpdateTime;
OSTime sGraphSetTaskTime;
FaultClient sGraphFaultClient;
CfbInfo sGraphCfbInfos[3];
FaultClient sGraphUcodeFaultClient;

// clang-format off
UCodeInfo D_8012D230[3] = {
    { 1, D_80155F50 },
    { 2, NULL },
    { 3, D_80113070 },
};

UCodeInfo D_8012D248[3] = {
    { 1, D_80155F50 },
    { 2, NULL },
    { 3, D_80113070 },
};
// clang-format on

void Graph_FaultClient() {
    void* nextFb;
    void* newFb;

    nextFb = osViGetNextFramebuffer();
    newFb = ((u32)SysCfb_GetFbPtr(0) != (u32)nextFb) ? SysCfb_GetFbPtr(0) : SysCfb_GetFbPtr(1);

    osViSwapBuffer(newFb);
    Fault_WaitForInput();
    osViSwapBuffer(nextFb);
}

void Graph_DisassembleUCode(void* arg0) {
    UCodeDisas disassembler;

    if (HREG(80) == 7 && HREG(81) != 0) {
        func_800D7F5C(&disassembler);
        disassembler.enableLog = HREG(83);
        func_800DAC80(&disassembler, 3, D_8012D230);
        func_800DAC90(&disassembler, D_80155F50);
        func_800D8400(&disassembler, arg0);
        HREG(93) = disassembler.dlCnt;
        HREG(84) = disassembler.tri2Cnt * 2 + disassembler.tri1Cnt + (disassembler.quadCnt * 2) + disassembler.lineCnt;
        HREG(85) = disassembler.vtxCnt;
        HREG(86) = disassembler.spvtxCnt;
        HREG(87) = disassembler.tri1Cnt;
        HREG(88) = disassembler.tri2Cnt;
        HREG(89) = disassembler.quadCnt;
        HREG(90) = disassembler.lineCnt;
        HREG(91) = disassembler.syncErr;
        HREG(92) = disassembler.loaducodeCnt;
        if (HREG(82) == 1 || HREG(82) == 2) {
            osSyncPrintf("vtx_cnt=%d\n", disassembler.vtxCnt);
            osSyncPrintf("spvtx_cnt=%d\n", disassembler.spvtxCnt);
            osSyncPrintf("tri1_cnt=%d\n", disassembler.tri1Cnt);
            osSyncPrintf("tri2_cnt=%d\n", disassembler.tri2Cnt);
            osSyncPrintf("quad_cnt=%d\n", disassembler.quadCnt);
            osSyncPrintf("line_cnt=%d\n", disassembler.lineCnt);
            osSyncPrintf("sync_err=%d\n", disassembler.syncErr);
            osSyncPrintf("loaducode_cnt=%d\n", disassembler.loaducodeCnt);
            osSyncPrintf("dl_depth=%d\n", disassembler.dlDepth);
            osSyncPrintf("dl_cnt=%d\n", disassembler.dlCnt);
        }
        func_800D7FC4(&disassembler);
    }
}

void Graph_UCodeFaultClient(void* arg0) {
    UCodeDisas disassembler;

    func_800D7F5C(&disassembler);
    disassembler.enableLog = true;
    func_800DAC80(&disassembler, 3, D_8012D248);
    func_800DAC90(&disassembler, D_80155F50);
    func_800D8400(&disassembler, arg0);
    func_800D7FC4(&disassembler);
}

void* Graph_InitTHGA(GraphicsContext* gfxCtx) {
    GfxPool* pool;

    pool = &gGfxPools[gfxCtx->gfxPoolIdx & 1];

    pool->headMagic = GFXPOOL_HEAD_MAGIC;
    pool->tailMagic = GFXPOOL_TAIL_MAGIC;
    THGA_Ct(&gfxCtx->polyOpa, pool->polyOpaBuffer, sizeof(pool->polyOpaBuffer));
    THGA_Ct(&gfxCtx->polyXlu, pool->polyXluBuffer, sizeof(pool->polyXluBuffer));
    THGA_Ct(&gfxCtx->overlay, pool->overlayBuffer, sizeof(pool->overlayBuffer));
    THGA_Ct(&gfxCtx->work, pool->workBuffer, sizeof(pool->workBuffer));

    gfxCtx->polyOpaBuffer = pool->polyOpaBuffer;
    gfxCtx->polyXluBuffer = pool->polyXluBuffer;
    gfxCtx->overlayBuffer = pool->overlayBuffer;
    gfxCtx->workBuffer = pool->workBuffer;

    gfxCtx->curFrameBuffer = (u16*)SysCfb_GetFbPtr(gfxCtx->fbIdx % 2);
    gfxCtx->unk_014 = 0;
}

GameStateOverlay* Graph_GetNextGameState(GameState* gameState) {
    void* gameStateInitFunc;

    gameStateInitFunc = GameState_GetInit(gameState);
    if (gameStateInitFunc == TitleSetup_Init) {
        return &gGameStateOverlayTable[0];
    }
    if (gameStateInitFunc == func_80801E44) {
        return &gGameStateOverlayTable[1];
    }
    if (gameStateInitFunc == Title_Init) {
        return &gGameStateOverlayTable[2];
    }
    if (gameStateInitFunc == Gameplay_Init) {
        return &gGameStateOverlayTable[3];
    }
    if (gameStateInitFunc == Opening_Init) {
        return &gGameStateOverlayTable[4];
    }
    if (gameStateInitFunc == func_80811A20) {
        return &gGameStateOverlayTable[5];
    }

    LOG_ADDRESS("game_init_func", gameStateInitFunc, "../graph.c", 696);
    return NULL;
}

void Graph_Init(GraphicsContext* gfxCtx) {
    bzero(gfxCtx, sizeof(GraphicsContext));
    gfxCtx->gfxPoolIdx = 0;
    gfxCtx->fbIdx = 0;
    gfxCtx->viMode = NULL;
    gfxCtx->viFeatures = gViConfigFeatures;
    gfxCtx->xScale = gViConfigXScale;
    gfxCtx->yScale = gViConfigYScale;
    osCreateMesgQueue(&gfxCtx->queue, gfxCtx->msgBuff, ARRAY_COUNT(gfxCtx->msgBuff));
    func_800D31F0();
    Fault_AddClient(&sGraphFaultClient, Graph_FaultClient, 0, 0);
}

void Graph_Destroy(GraphicsContext* gfxCtx) {
    func_800D3210();
    Fault_RemoveClient(&sGraphFaultClient);
}

// Close to matching, reordering at the end
#ifdef NON_MATCHING
void Graph_TaskSet00(GraphicsContext* gfxCtx) {
    static u32 D_8012D260 = 0;
    static s32 sGraphCfbInfoIdx = 0;

    OSTimer timer;
    OSMesg msg;
    OSMesgQueue* mq;
    u32 temp;
    OSTime time;
    OSTask_t* task;
    Gfx* dispRefs[3];
    OSScTask* scTask;
    CfbInfo* cfb;

    mq = &gfxCtx->queue;
    task = &gfxCtx->task.list.t;
    scTask = &gfxCtx->task;

    D_8016A528 = osGetTime() - sGraphSetTaskTime - D_8016A558;

    osSetTimer(&timer, 140625000, 0, mq, 666);

    osRecvMesg(mq, &msg, OS_MESG_BLOCK);
    osStopTimer(&timer);
    if (msg == (OSMesg)666) {
        osSyncPrintf(VT_FGCOL(RED));
        osSyncPrintf("RCPが帰ってきませんでした。"); // "RCP did not return."
        osSyncPrintf(VT_RST);
        LogUtils_LogHexDump(&HW_REG(SP_MEM_ADDR_REG, u32), 0x20);
        LogUtils_LogHexDump(&DPC_START_REG, 0x20);
        LogUtils_LogHexDump(gGfxSPTaskYieldBuffer, sizeof(gGfxSPTaskYieldBuffer));

        SREG(6) = -1;
        if (D_8012D260) {
            temp = D_8012D260;
            HREG(80) = 7;
            HREG(81) = 1;
            HREG(82) = 2;
            D_8012D260 = temp;
            Graph_DisassembleUCode(temp);
        }
        Fault_AddHungupAndCrashImpl("RCP is HUNG UP!!", "Oh! MY GOD!!");
    }
    osRecvMesg(mq, &msg, OS_MESG_NOBLOCK);
    D_8012D260 = gfxCtx->workBuffer;
    if (gfxCtx->callback) {
        gfxCtx->callback(gfxCtx, gfxCtx->callbackParam);
    }

    time = osGetTime();
    if (D_8016A550) {
        D_8016A558 = (D_8016A558 + time) - D_8016A550;
        D_8016A550 = time;
    }
    D_8016A520 = D_8016A558;
    D_8016A558 = 0;
    sGraphSetTaskTime = osGetTime();

    task->type = M_GFXTASK;
    task->flags = OS_SC_DRAM_DLIST;
    task->ucode_boot = SysUcode_GetUCodeBoot();
    task->ucode_boot_size = SysUcode_GetUCodeBootSize();
    task->ucode = SysUcode_GetUCode();
    task->ucode_data = SysUcode_GetUCodeData();
    task->ucode_size = 0x1000;
    task->ucode_data_size = 0x800;
    task->dram_stack = gGfxSPTaskStack;
    task->dram_stack_size = sizeof(gGfxSPTaskStack);
    task->output_buff = gGfxSPTaskOutputBuffer;
    task->output_buff_size = gGfxSPTaskYieldBuffer; // ??
    task->data_ptr = gfxCtx->workBuffer;

    Graph_OpenDisps(dispRefs, gfxCtx, "../graph.c", 828);
    task->data_size = (u32)gfxCtx->work.p - (u32)gfxCtx->workBuffer;
    Graph_CloseDisps(dispRefs, gfxCtx, "../graph.c", 830);

    task->yield_data_ptr = gGfxSPTaskYieldBuffer;
    task->yield_data_size = sizeof(gGfxSPTaskYieldBuffer);

    scTask->next = NULL;
    scTask->flags = OS_SC_RCP_MASK | OS_SC_SWAPBUFFER | OS_SC_LAST_TASK;
    if (SREG(33) & 1) {
        SREG(33) &= ~1;
        scTask->flags &= ~OS_SC_SWAPBUFFER;
        gfxCtx->fbIdx--;
    }

    scTask->msg = NULL;
    scTask->msgQ = mq;

    cfb = sGraphCfbInfos + sGraphCfbInfoIdx++;
    cfb->fb1 = gfxCtx->curFrameBuffer;
    cfb->swapBuffer = gfxCtx->curFrameBuffer;
    cfb->viMode = gfxCtx->viMode;
    cfb->features = gfxCtx->viFeatures;
    cfb->xScale = gfxCtx->xScale;
    cfb->yScale = gfxCtx->yScale;
    cfb->unk_10 = 0;
    cfb->updateRate = R_UPDATE_RATE;

    scTask->framebuffer = cfb;
    sGraphCfbInfoIdx = sGraphCfbInfoIdx % ARRAY_COUNT(sGraphCfbInfos);
    gfxCtx->schedMsgQ = &gSchedContext.cmdQ;

    osSendMesg(&gSchedContext.cmdQ, scTask, OS_MESG_BLOCK);
    Sched_SendEntryMsg(&gSchedContext); // osScKickEntryMsg
}
#else
u32 D_8012D260 = 0;
u32 sGraphCfbInfoIdx = 0;
#pragma GLOBAL_ASM("asm/non_matchings/code/graph/Graph_TaskSet00.s")
#endif

// Very close to matching, stack usage
#ifdef NON_MATCHING
void Graph_Update(GraphicsContext* gfxCtx, GameState* gameState) {
    u32 problem;       // 0xC4 -> 0xD4
    Gfx* dispRefs[5];  // 0xB0 -> 0xC0
    Gfx* dispRefs2[9]; // 0x8C -> 0x9C
    Gfx* dispRefs3[9]; // 0x68 -> 0x78
    u64 time;
    GfxPool* pool; // 0x4C -> 0x6C

    gameState->unk_A0 = 0;
    Graph_InitTHGA(gfxCtx);

    Graph_OpenDisps(dispRefs, gfxCtx, "../graph.c", 966);
    gDPNoOpString(gfxCtx->work.p++, "WORK_DISP 開始", 0);
    gDPNoOpString(gfxCtx->polyOpa.p++, "POLY_OPA_DISP 開始", 0);
    gDPNoOpString(gfxCtx->polyXlu.p++, "POLY_XLU_DISP 開始", 0);
    gDPNoOpString(gfxCtx->overlay.p++, "OVERLAY_DISP 開始", 0);
    Graph_CloseDisps(dispRefs, gfxCtx, "../graph.c", 975);

    GameState_ReqPadData(gameState);
    GameState_Update(gameState);

    Graph_OpenDisps(dispRefs2, gfxCtx, "../graph.c", 987);
    gDPNoOpString(gfxCtx->work.p++, "WORK_DISP 終了", 0);
    gDPNoOpString(gfxCtx->polyOpa.p++, "POLY_OPA_DISP 終了", 0);
    gDPNoOpString(gfxCtx->polyXlu.p++, "POLY_XLU_DISP 終了", 0);
    gDPNoOpString(gfxCtx->overlay.p++, "OVERLAY_DISP 終了", 0);
    Graph_CloseDisps(dispRefs2, gfxCtx, "../graph.c", 996);

    Graph_OpenDisps(dispRefs3, gfxCtx, "../graph.c", 999);
    gSPBranchList(gfxCtx->work.p++, gfxCtx->polyOpaBuffer);
    gSPBranchList(gfxCtx->polyOpa.p++, gfxCtx->polyXluBuffer);
    gSPBranchList(gfxCtx->polyXlu.p++, gfxCtx->overlayBuffer);
    gDPPipeSync(gfxCtx->overlay.p++);
    gDPFullSync(gfxCtx->overlay.p++);
    gSPEndDisplayList(gfxCtx->overlay.p++);
    Graph_CloseDisps(dispRefs3, gfxCtx, "../graph.c", 1028);

    if (HREG(80) == 10 && HREG(93) == 2) {
        HREG(80) = 7;
        HREG(81) = -1;
        HREG(83) = HREG(92);
    }
    if (HREG(80) == 7 && HREG(81) != 0) {
        if (HREG(82) == 3) {
            Fault_AddClient(&sGraphUcodeFaultClient, Graph_UCodeFaultClient, gfxCtx->workBuffer, "do_count_fault");
        }

        Graph_DisassembleUCode(gfxCtx->workBuffer);

        if (HREG(82) == 3) {
            Fault_RemoveClient(&sGraphUcodeFaultClient);
        }

        if (HREG(81) < 0) {
            LogUtils_LogHexDump(&HW_REG(SP_MEM_ADDR_REG, u32), 0x20);
            LogUtils_LogHexDump(&DPC_START_REG, 0x20);
        }

        if (HREG(81) < 0) {
            HREG(81) = 0;
        }
    }

    problem = false;
    pool = &gGfxPools[gfxCtx->gfxPoolIdx & 1];
    if (pool->headMagic != GFXPOOL_HEAD_MAGIC) {
        // BUG (?) : devs might've forgotten "problem = true;"
        osSyncPrintf("%c", 7);
        // Dynamic area head is destroyed
        osSyncPrintf(VT_COL(RED, WHITE) "ダイナミック領域先頭が破壊されています\n" VT_RST);
        Fault_AddHungupAndCrash("../graph.c", 1070);
    }
    if (pool->tailMagic != GFXPOOL_TAIL_MAGIC) {
        problem = true;
        osSyncPrintf("%c", 7);
        // Dynamic region tail is destroyed
        osSyncPrintf(VT_COL(RED, WHITE) "ダイナミック領域末尾が破壊されています\n" VT_RST);
        Fault_AddHungupAndCrash("../graph.c", 1076);
    }

    if (THGA_IsCrash(&gfxCtx->polyOpa)) {
        problem = true;
        osSyncPrintf("%c", 7);
        // Zelda 0 is dead
        osSyncPrintf(VT_COL(RED, WHITE) "ゼルダ0は死んでしまった(graph_alloc is empty)\n" VT_RST);
    }
    if (THGA_IsCrash(&gfxCtx->polyXlu)) {
        problem = true;
        osSyncPrintf("%c", 7);
        // Zelda 1 is dead
        osSyncPrintf(VT_COL(RED, WHITE) "ゼルダ1は死んでしまった(graph_alloc is empty)\n" VT_RST);
    }
    if (THGA_IsCrash(&gfxCtx->overlay)) {
        problem = true;
        osSyncPrintf("%c", 7);
        // Zelda 4 is dead
        osSyncPrintf(VT_COL(RED, WHITE) "ゼルダ4は死んでしまった(graph_alloc is empty)\n" VT_RST);
    }

    if (!problem) {
        Graph_TaskSet00(gfxCtx);
        gfxCtx->gfxPoolIdx++;
        gfxCtx->fbIdx++;
    }

    func_800F3054();
    time = osGetTime();
    D_8016A538 = gRSPGFXTotalTime;
    D_8016A530 = gRSPAudioTotalTime;
    D_8016A540 = gRDPTotalTime;
    gRSPGFXTotalTime = 0;
    gRSPAudioTotalTime = 0;
    gRDPTotalTime = 0;

    if (sGraphUpdateTime != 0) {
        D_8016A548 = time - sGraphUpdateTime;
    }
    sGraphUpdateTime = time;

    if (D_8012DBC0 && CHECK_PAD(gameState->input[0].press, Z_TRIG) &&
        CHECK_PAD(gameState->input[0].cur, L_TRIG | R_TRIG)) {
        gSaveContext.gameMode = 0;
        SET_NEXT_GAMESTATE(gameState, func_80801E44, char[0x240]); // TODO : SelectContext
        gameState->running = false;
    }

    if (D_8012DBC0 && PreNmiBuff_IsResetting(gAppNmiBufferPtr) && !gameState->unk_A0) {
        // To reset mode
        osSyncPrintf(VT_COL(YELLOW, BLACK) "PRE-NMIによりリセットモードに移行します\n" VT_RST);
        SET_NEXT_GAMESTATE(gameState, PreNMI_Init, PreNMIContext);
        gameState->running = false;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/graph/Graph_Update.s")
#endif

void Graph_ThreadEntry(void* arg0) {
    GraphicsContext gfxCtx;
    GameState* gameState;
    u32 size;
    GameStateOverlay* nextOvl;
    GameStateOverlay* ovl;
    char faultMsg[0x50];

    nextOvl = &gGameStateOverlayTable[0];

    // Start graphic thread execution
    osSyncPrintf("グラフィックスレッド実行開始\n");
    Graph_Init(&gfxCtx);

    while (nextOvl) {
        ovl = nextOvl;
        Overlay_LoadGameState(ovl);

        size = ovl->instanceSize;
        // Class size =%d bytes
        osSyncPrintf("クラスサイズ＝%dバイト\n", size);

        gameState = SystemArena_MallocDebug(size, "../graph.c", 1196);

        if (!gameState) {
            // Failure to secure
            osSyncPrintf("確保失敗\n");

            sprintf(faultMsg, "CLASS SIZE= %d bytes", size);
            Fault_AddHungupAndCrashImpl("GAME CLASS MALLOC FAILED", faultMsg);
        }
        GameState_Init(gameState, ovl->init, &gfxCtx);

        while (GameState_IsRunning(gameState)) {
            Graph_Update(&gfxCtx, gameState);
        }

        nextOvl = Graph_GetNextGameState(gameState);
        GameState_Destroy(gameState);
        SystemArena_FreeDebug(gameState, "../graph.c", 1227);
        Overlay_FreeGameState(ovl);
    }
    Graph_Destroy(&gfxCtx);
    // End of graphic thread execution
    osSyncPrintf("グラフィックスレッド実行終了\n");
}

void* Graph_Alloc(GraphicsContext* gfxCtx, size_t size) {
    TwoHeadGfxArena* thga = &gfxCtx->polyOpa;

    if (HREG(59) == 1) {
        osSyncPrintf("graph_alloc siz=%d thga size=%08x bufp=%08x head=%08x tail=%08x\n", size, thga->size, thga->bufp,
                     thga->p, thga->d);
    }
    return THGA_AllocEnd(&gfxCtx->polyOpa, ALIGN16(size));
}

void* Graph_Alloc2(GraphicsContext* gfxCtx, size_t size) {
    TwoHeadGfxArena* thga = &gfxCtx->polyOpa;

    if (HREG(59) == 1) {
        osSyncPrintf("graph_alloc siz=%d thga size=%08x bufp=%08x head=%08x tail=%08x\n", size, thga->size, thga->bufp,
                     thga->p, thga->d);
    }
    return THGA_AllocEnd(&gfxCtx->polyOpa, ALIGN16(size));
}

void Graph_OpenDisps(Gfx** dispRefs, GraphicsContext* gfxCtx, const char* file, s32 line) {
    if (HREG(80) == 7 && HREG(82) != 4) {
        dispRefs[0] = gfxCtx->polyOpa.p;
        dispRefs[1] = gfxCtx->polyXlu.p;
        dispRefs[2] = gfxCtx->overlay.p;

        gDPNoOpOpenDisp(gfxCtx->polyOpa.p++, file, line);
        gDPNoOpOpenDisp(gfxCtx->polyXlu.p++, file, line);
        gDPNoOpOpenDisp(gfxCtx->overlay.p++, file, line);
    }
}

void Graph_CloseDisps(Gfx** dispRefs, GraphicsContext* gfxCtx, const char* file, s32 line) {
    if (HREG(80) == 7 && HREG(82) != 4) {
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

Gfx* Graph_GfxPlusOne(Gfx* gfx) {
    return gfx + 1;
}

Gfx* Graph_BranchDlist(Gfx* gfx, Gfx* dst) {
    gSPBranchList(gfx, dst);
    return dst;
}

void* Graph_DlistAlloc(Gfx** gfx, u32 size) {
    u8* ptr;
    Gfx* dst;

    size = ((size + 7) & ~7),

    ptr = *gfx + 1;

    dst = (Gfx*)(ptr + size);
    gSPBranchList(*gfx, dst);

    *gfx = dst;
    return ptr;
}
