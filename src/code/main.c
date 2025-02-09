#include "ultra64.h"
#include "versions.h"

// Declared before including other headers for BSS ordering
extern uintptr_t gSegments[NUM_SEGMENTS];

#pragma increment_block_number "gc-eu:252 gc-eu-mq:252 gc-jp:252 gc-jp-ce:252 gc-jp-mq:252 gc-us:252 gc-us-mq:252" \
                               "ique-cn:252 ntsc-1.0:128 ntsc-1.1:128 ntsc-1.2:128 pal-1.0:128 pal-1.1:128"

extern struct PreNmiBuff* gAppNmiBufferPtr;
extern struct Scheduler gScheduler;
extern struct PadMgr gPadMgr;
extern struct IrqMgr gIrqMgr;

#include "global.h"
#include "fault.h"
#include "segmented_address.h"
#include "stack.h"
#include "terminal.h"
#include "versions.h"
#if PLATFORM_N64
#include "cic6105.h"
#include "n64dd.h"
#endif

#pragma increment_block_number "gc-eu:144 gc-eu-mq:144 gc-jp:144 gc-jp-ce:144 gc-jp-mq:144 gc-us:144 gc-us-mq:144" \
                               "ique-cn:160 ntsc-1.0:136 ntsc-1.1:136 ntsc-1.2:136 pal-1.0:134 pal-1.1:134"

extern u8 _buffersSegmentEnd[];

s32 gScreenWidth = SCREEN_WIDTH;
s32 gScreenHeight = SCREEN_HEIGHT;
u32 gSystemHeapSize = 0;

PreNmiBuff* gAppNmiBufferPtr;
Scheduler gScheduler;
PadMgr gPadMgr;
IrqMgr gIrqMgr;
uintptr_t gSegments[NUM_SEGMENTS];

OSThread sGraphThread;
STACK(sGraphStack, 0x1800);
#if OOT_VERSION < PAL_1_0
STACK(sSchedStack, 0x400);
#else
STACK(sSchedStack, 0x600);
#endif
STACK(sAudioStack, 0x800);
STACK(sPadMgrStack, 0x500);
STACK(sIrqMgrStack, 0x500);
StackEntry sGraphStackInfo;
StackEntry sSchedStackInfo;
StackEntry sAudioStackInfo;
StackEntry sPadMgrStackInfo;
StackEntry sIrqMgrStackInfo;
AudioMgr sAudioMgr;
OSMesgQueue sSerialEventQueue;
OSMesg sSerialMsgBuf[1];

#if DEBUG_FEATURES
void Main_LogSystemHeap(void) {
    PRINTF_COLOR_GREEN();
    PRINTF(
        T("システムヒープサイズ %08x(%dKB) 開始アドレス %08x\n", "System heap size %08x (%dKB) Start address %08x\n"),
        gSystemHeapSize, gSystemHeapSize / 1024, _buffersSegmentEnd);
    PRINTF_RST();
}
#endif

void Main(void* arg) {
    IrqMgrClient irqClient;
    OSMesgQueue irqMgrMsgQueue;
    OSMesg irqMgrMsgBuf[60];
    uintptr_t systemHeapStart;
    uintptr_t fb;

    PRINTF(T("mainproc 実行開始\n", "mainproc Start running\n"));
    gScreenWidth = SCREEN_WIDTH;
    gScreenHeight = SCREEN_HEIGHT;
    gAppNmiBufferPtr = (PreNmiBuff*)osAppNMIBuffer;
    PreNmiBuff_Init(gAppNmiBufferPtr);
    Fault_Init();
#if PLATFORM_N64
    func_800AD410();
    if (D_80121211 != 0) {
        systemHeapStart = (uintptr_t)_n64ddSegmentEnd;
        SysCfb_Init(1);
    } else {
        func_800AD488();
        systemHeapStart = (uintptr_t)_buffersSegmentEnd;
        SysCfb_Init(0);
    }
#else
    SysCfb_Init(0);
    systemHeapStart = (uintptr_t)_buffersSegmentEnd;
#endif
    fb = (uintptr_t)SysCfb_GetFbPtr(0);
    gSystemHeapSize = fb - systemHeapStart;
    PRINTF(T("システムヒープ初期化 %08x-%08x %08x\n", "System heap initialization %08x-%08x %08x\n"), systemHeapStart,
           fb, gSystemHeapSize);
    SystemHeap_Init((void*)systemHeapStart, gSystemHeapSize); // initializes the system heap

#if DEBUG_FEATURES
    {
        void* debugHeapStart;
        u32 debugHeapSize;

        if (osMemSize >= 0x800000) {
            debugHeapStart = SysCfb_GetFbEnd();
            debugHeapSize = PHYS_TO_K0(0x600000) - (uintptr_t)debugHeapStart;
        } else {
            debugHeapSize = 0x400;
            debugHeapStart = SYSTEM_ARENA_MALLOC(debugHeapSize, "../main.c", 565);
        }

        PRINTF("debug_InitArena(%08x, %08x)\n", debugHeapStart, debugHeapSize);
        DebugArena_Init(debugHeapStart, debugHeapSize);
    }
#endif

    Regs_Init();

    R_ENABLE_ARENA_DBG = 0;

    osCreateMesgQueue(&sSerialEventQueue, sSerialMsgBuf, ARRAY_COUNT(sSerialMsgBuf));
    osSetEventMesg(OS_EVENT_SI, &sSerialEventQueue, NULL);

#if DEBUG_FEATURES
    Main_LogSystemHeap();
#endif

    osCreateMesgQueue(&irqMgrMsgQueue, irqMgrMsgBuf, ARRAY_COUNT(irqMgrMsgBuf));
    StackCheck_Init(&sIrqMgrStackInfo, sIrqMgrStack, STACK_TOP(sIrqMgrStack), 0, 0x100, "irqmgr");
    IrqMgr_Init(&gIrqMgr, STACK_TOP(sIrqMgrStack), THREAD_PRI_IRQMGR, 1);

    PRINTF(T("タスクスケジューラの初期化\n", "Initialize the task scheduler\n"));
    StackCheck_Init(&sSchedStackInfo, sSchedStack, STACK_TOP(sSchedStack), 0, 0x100, "sched");
    Sched_Init(&gScheduler, STACK_TOP(sSchedStack), THREAD_PRI_SCHED, gViConfigModeType, 1, &gIrqMgr);

#if PLATFORM_N64
    CIC6105_AddFaultClient();
    func_80001640();
#endif

    IrqMgr_AddClient(&gIrqMgr, &irqClient, &irqMgrMsgQueue);

    StackCheck_Init(&sAudioStackInfo, sAudioStack, STACK_TOP(sAudioStack), 0, 0x100, "audio");
    AudioMgr_Init(&sAudioMgr, STACK_TOP(sAudioStack), THREAD_PRI_AUDIOMGR, THREAD_ID_AUDIOMGR, &gScheduler, &gIrqMgr);

    StackCheck_Init(&sPadMgrStackInfo, sPadMgrStack, STACK_TOP(sPadMgrStack), 0, 0x100, "padmgr");
    PadMgr_Init(&gPadMgr, &sSerialEventQueue, &gIrqMgr, THREAD_ID_PADMGR, THREAD_PRI_PADMGR, STACK_TOP(sPadMgrStack));

    AudioMgr_WaitForInit(&sAudioMgr);

    StackCheck_Init(&sGraphStackInfo, sGraphStack, STACK_TOP(sGraphStack), 0, 0x100, "graph");
    osCreateThread(&sGraphThread, THREAD_ID_GRAPH, Graph_ThreadEntry, arg, STACK_TOP(sGraphStack), THREAD_PRI_GRAPH);
    osStartThread(&sGraphThread);

#if OOT_VERSION >= PAL_1_0
    osSetThreadPri(NULL, THREAD_PRI_MAIN);
#endif

    while (true) {
        s16* msg = NULL;

        osRecvMesg(&irqMgrMsgQueue, (OSMesg*)&msg, OS_MESG_BLOCK);
        if (msg == NULL) {
            break;
        }
        switch (*msg) {
            case OS_SC_PRE_NMI_MSG:
                PRINTF(T("main.c: リセットされたみたいだよ\n", "main.c: Looks like it's been reset\n"));
#if OOT_VERSION < PAL_1_0
                StackCheck_Check(NULL);
#endif
                PreNmiBuff_SetReset(gAppNmiBufferPtr);
                break;
        }
    }

    PRINTF(T("mainproc 後始末\n", "mainproc Cleanup\n"));
    osDestroyThread(&sGraphThread);
    RcpUtils_Reset();
#if PLATFORM_N64
    CIC6105_RemoveFaultClient();
#endif
    PRINTF(T("mainproc 実行終了\n", "mainproc End of execution\n"));
}
