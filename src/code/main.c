#include "global.h"
#include "cic6105.h"
#include "n64dd.h"
#include "terminal.h"
#include "versions.h"

extern u8 _buffersSegmentEnd[];

s32 gScreenWidth = SCREEN_WIDTH;
s32 gScreenHeight = SCREEN_HEIGHT;
u32 gSystemHeapSize = 0;

#pragma increment_block_number "gc-eu:192 gc-eu-mq:192 gc-jp:192 gc-jp-ce:192 gc-jp-mq:192 gc-us:192 gc-us-mq:192"

PreNmiBuff* gAppNmiBufferPtr;
Scheduler gScheduler;
#if PLATFORM_N64
struct_8011D9B0 B_8011D9B0_unknown;
#endif
PadMgr gPadMgr;
#if PLATFORM_N64
// these bss syms entirely guessed by spimdisasm for now, may be wrong/not match
char B_8011DBD4_unknown[0x2AA];
u8 B_8011DE7E_unknown;
s8 B_8011DE7F_unknown;
s8 B_8011DE80_unknown;
char B_8011DE81_unknown[0x1AF];
char B_8011E030_unknown[0x4];
char B_8011E034_unknown[0x4];
#endif
IrqMgr gIrqMgr;
#if PLATFORM_GC
uintptr_t gSegments[NUM_SEGMENTS];
#endif
OSThread sGraphThread;
STACK(sGraphStack, 0x1800);
STACK(sSchedStack, 0x600);
STACK(sAudioStack, 0x800);
STACK(sPadMgrStack, 0x500);
STACK(sIrqMgrStack, 0x500);
StackEntry sGraphStackInfo;
StackEntry sSchedStackInfo;
StackEntry sAudioStackInfo;
StackEntry sPadMgrStackInfo;
StackEntry sIrqMgrStackInfo;
#if PLATFORM_N64
uintptr_t gSegments[NUM_SEGMENTS];
#endif
AudioMgr gAudioMgr;
OSMesgQueue sSerialEventQueue;
OSMesg sSerialMsgBuf[1];

#if OOT_DEBUG
void Main_LogSystemHeap(void) {
    PRINTF(VT_FGCOL(GREEN));
    // "System heap size% 08x (% dKB) Start address% 08x"
    PRINTF("システムヒープサイズ %08x(%dKB) 開始アドレス %08x\n", gSystemHeapSize, gSystemHeapSize / 1024,
           _buffersSegmentEnd);
    PRINTF(VT_RST);
}
#endif

void Main(void* arg) {
    IrqMgrClient irqClient;
    OSMesgQueue irqMgrMsgQueue;
    OSMesg irqMgrMsgBuf[60];
    uintptr_t systemHeapStart;
    uintptr_t fb;

    PRINTF("mainproc 実行開始\n"); // "Start running"
    gScreenWidth = SCREEN_WIDTH;
    gScreenHeight = SCREEN_HEIGHT;
    gAppNmiBufferPtr = (PreNmiBuff*)osAppNMIBuffer;
    PreNmiBuff_Init(gAppNmiBufferPtr);
    Fault_Init();
#if PLATFORM_N64
    func_800ADA80();
    if ((u8)B_80121AE1 != 0) {
        systemHeapStart = (uintptr_t)&D_801E8090;
        SysCfb_Init(1);
    } else {
        func_800ADAF8();
        systemHeapStart = (uintptr_t)_buffersSegmentEnd; // D_801C7720_unknown
        SysCfb_Init(0);
    }
#else
    SysCfb_Init(0);
    systemHeapStart = (uintptr_t)_buffersSegmentEnd;
#endif
    fb = (uintptr_t)SysCfb_GetFbPtr(0);
    gSystemHeapSize = fb - systemHeapStart;
    // "System heap initalization"
    PRINTF("システムヒープ初期化 %08x-%08x %08x\n", systemHeapStart, fb, gSystemHeapSize);
    SystemHeap_Init((void*)systemHeapStart, gSystemHeapSize); // initializes the system heap

#if OOT_DEBUG
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

#if OOT_DEBUG
    Main_LogSystemHeap();
#endif

    osCreateMesgQueue(&irqMgrMsgQueue, irqMgrMsgBuf, ARRAY_COUNT(irqMgrMsgBuf));
    StackCheck_Init(&sIrqMgrStackInfo, sIrqMgrStack, STACK_TOP(sIrqMgrStack), 0, 0x100, "irqmgr");
    IrqMgr_Init(&gIrqMgr, STACK_TOP(sIrqMgrStack), THREAD_PRI_IRQMGR, 1);

    PRINTF("タスクスケジューラの初期化\n"); // "Initialize the task scheduler"
    StackCheck_Init(&sSchedStackInfo, sSchedStack, STACK_TOP(sSchedStack), 0, 0x100, "sched");
    Sched_Init(&gScheduler, STACK_TOP(sSchedStack), THREAD_PRI_SCHED, gViConfigModeType, 1, &gIrqMgr);

#if PLATFORM_N64
    CIC6105_AddFaultClient();
    func_80001640();
#endif

    IrqMgr_AddClient(&gIrqMgr, &irqClient, &irqMgrMsgQueue);

    StackCheck_Init(&sAudioStackInfo, sAudioStack, STACK_TOP(sAudioStack), 0, 0x100, "audio");
    AudioMgr_Init(&gAudioMgr, STACK_TOP(sAudioStack), THREAD_PRI_AUDIOMGR, THREAD_ID_AUDIOMGR, &gScheduler, &gIrqMgr);

    StackCheck_Init(&sPadMgrStackInfo, sPadMgrStack, STACK_TOP(sPadMgrStack), 0, 0x100, "padmgr");
    PadMgr_Init(&gPadMgr, &sSerialEventQueue, &gIrqMgr, THREAD_ID_PADMGR, THREAD_PRI_PADMGR, STACK_TOP(sPadMgrStack));

    AudioMgr_WaitForInit(&gAudioMgr);

    StackCheck_Init(&sGraphStackInfo, sGraphStack, STACK_TOP(sGraphStack), 0, 0x100, "graph");
    osCreateThread(&sGraphThread, THREAD_ID_GRAPH, Graph_ThreadEntry, arg, STACK_TOP(sGraphStack), THREAD_PRI_GRAPH);
    osStartThread(&sGraphThread);
    osSetThreadPri(NULL, THREAD_PRI_MAIN);

    while (true) {
        s16* msg = NULL;

        osRecvMesg(&irqMgrMsgQueue, (OSMesg*)&msg, OS_MESG_BLOCK);
        if (msg == NULL) {
#if PLATFORM_N64
            if (1) {}
#endif
            break;
        }
        if (*msg == OS_SC_PRE_NMI_MSG) {
            PRINTF("main.c: リセットされたみたいだよ\n"); // "Looks like it's been reset"
            PreNmiBuff_SetReset(gAppNmiBufferPtr);
        }
    }

    PRINTF("mainproc 後始末\n"); // "Cleanup"
    osDestroyThread(&sGraphThread);
    RcpUtils_Reset();
#if PLATFORM_N64
    CIC6105_RemoveFaultClient();
#endif
    PRINTF("mainproc 実行終了\n"); // "End of execution"
}
