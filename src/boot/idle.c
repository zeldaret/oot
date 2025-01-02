#include "global.h"
#include "stack.h"
#include "terminal.h"
#include "versions.h"

#pragma increment_block_number "gc-eu:64 gc-eu-mq:64 gc-jp:64 gc-jp-ce:64 gc-jp-mq:64 gc-us:64 gc-us-mq:64 ntsc-1.2:64"

OSThread sMainThread;
#if OOT_VERSION < PAL_1_0
STACK(sMainStack, 0x800);
#else
STACK(sMainStack, 0x900);
#endif
StackEntry sMainStackInfo;
OSMesg sPiMgrCmdBuff[50];
OSMesgQueue gPiMgrCmdQueue;
OSViMode gViConfigMode;

#if OOT_VERSION < PAL_1_0
u8 gViConfigModeType = OS_VI_NTSC_LPN1;
#else
u8 gViConfigModeType;
#endif

// Unused
void* D_80009410[] = {
    osStopThread,  __osSetHWIntrRoutine,
#if PLATFORM_N64
    osEPiWriteIo,  osEPiReadIo,
#endif
    __osSetFpcCsr, __osGetFpcCsr,        __osGetHWIntrRoutine, __osSetHWIntrRoutine, osViGetNextFramebuffer,
#if !PLATFORM_N64
    bcmp,
#endif
};

void Main_ThreadEntry(void* arg) {
    OSTime time;

    PRINTF(T("mainx 実行開始\n", "mainx execution started\n"));
    DmaMgr_Init();
    PRINTF(T("codeセグメントロード中...", "code segment loading..."));
    time = osGetTime();
    DMA_REQUEST_SYNC(_codeSegmentStart, (uintptr_t)_codeSegmentRomStart, _codeSegmentRomEnd - _codeSegmentRomStart,
                     "../idle.c", 238);
    time -= osGetTime();
    PRINTF(T("\rcodeセグメントロード中...完了\n", "\rcode segment loading... Done\n"));
    PRINTF(T("転送時間 %6.3f\n", "Transfer time %6.3f\n"));
    bzero(_codeSegmentBssStart, _codeSegmentBssEnd - _codeSegmentBssStart);
    PRINTF(T("codeセグメントBSSクリア完了\n", "code segment BSS cleared\n"));
    Main(arg);
    PRINTF(T("mainx 実行終了\n", "mainx execution finished\n"));
}

void Idle_ThreadEntry(void* arg) {
    PRINTF(T("アイドルスレッド(idleproc)実行開始\n", "Idle thread (idleproc) execution started\n"));
    PRINTF(T("作製者    : %s\n", "Created by: %s\n"), gBuildCreator);
    PRINTF(T("作成日時  : %s\n", "Created   : %s\n"), gBuildDate);
    PRINTF("MAKEOPTION: %s\n", gBuildMakeOption);
    PRINTF_COLOR_GREEN();
    PRINTF(T("ＲＡＭサイズは %d キロバイトです(osMemSize/osGetMemSize)\n",
             "RAM size is %d kilobytes (osMemSize/osGetMemSize)\n"),
           (s32)osMemSize / 1024);
    PRINTF(T("_bootSegmentEnd(%08x) 以降のＲＡＭ領域はクリアされました(boot)\n",
             "The RAM area after _bootSegmentEnd(%08x) has been cleared (boot)\n"),
           _bootSegmentEnd);
    PRINTF(T("Ｚバッファのサイズは %d キロバイトです\n", "Z buffer size is %d kilobytes\n"), 0x96);
    PRINTF(T("ダイナミックバッファのサイズは %d キロバイトです\n", "The dynamic buffer size is %d kilobytes\n"), 0x92);
    PRINTF(T("ＦＩＦＯバッファのサイズは %d キロバイトです\n", "FIFO buffer size is %d kilobytes\n"), 0x60);
    PRINTF(T("ＹＩＥＬＤバッファのサイズは %d キロバイトです\n", "YIELD buffer size is %d kilobytes\n"), 3);
    PRINTF(T("オーディオヒープのサイズは %d キロバイトです\n", "Audio heap size is %d kilobytes\n"),
           ((intptr_t)&gAudioHeap[ARRAY_COUNT(gAudioHeap)] - (intptr_t)gAudioHeap) / 1024);
    PRINTF_RST();

    osCreateViManager(OS_PRIORITY_VIMGR);

#if OOT_VERSION >= PAL_1_0
    gViConfigFeatures = OS_VI_GAMMA_OFF | OS_VI_DITHER_FILTER_ON;
    gViConfigXScale = 1.0f;
    gViConfigYScale = 1.0f;
#endif

#if DEBUG_FEATURES
    // Allow both 60 Hz and 50 Hz
    switch (osTvType) {
        case OS_TV_NTSC:
            gViConfigModeType = OS_VI_NTSC_LAN1;
            gViConfigMode = osViModeNtscLan1;
            break;

        case OS_TV_MPAL:
            gViConfigModeType = OS_VI_MPAL_LAN1;
            gViConfigMode = osViModeMpalLan1;
            break;

        case OS_TV_PAL:
            gViConfigModeType = OS_VI_FPAL_LAN1;
            gViConfigMode = osViModeFpalLan1;
#if OOT_VERSION >= PAL_1_0
            gViConfigYScale = 0.833f;
#endif
            break;
    }
#elif !OOT_PAL_N64
    // 60 Hz only (GameCube and NTSC N64)
    switch (osTvType) {
        case OS_TV_PAL:
        case OS_TV_NTSC:
            gViConfigModeType = OS_VI_NTSC_LAN1;
            gViConfigMode = osViModeNtscLan1;
            break;

        case OS_TV_MPAL:
            gViConfigModeType = OS_VI_MPAL_LAN1;
            gViConfigMode = osViModeMpalLan1;
            break;
    }
#else
    // 50 Hz only (PAL N64)
    switch (osTvType) {
        case OS_TV_NTSC:
        case OS_TV_MPAL:
        case OS_TV_PAL:
            gViConfigModeType = OS_VI_FPAL_LAN1;
            gViConfigMode = osViModeFpalLan1;
            gViConfigYScale = 0.833f;
            break;
    }
#endif

#if OOT_VERSION < PAL_1_0
    osViSetMode(&gViConfigMode);
    osViBlack(true);
#else
    D_80009430 = 1;
    osViSetMode(&gViConfigMode);
    ViConfig_UpdateVi(true);
    osViBlack(true);
    osViSwapBuffer((void*)0x803DA80); //! @bug Invalid vram address (probably intended to be 0x803DA800)
#endif

    osCreatePiManager(OS_PRIORITY_PIMGR, &gPiMgrCmdQueue, sPiMgrCmdBuff, ARRAY_COUNT(sPiMgrCmdBuff));
    StackCheck_Init(&sMainStackInfo, sMainStack, STACK_TOP(sMainStack), 0, 0x400, "main");
    osCreateThread(&sMainThread, THREAD_ID_MAIN, Main_ThreadEntry, arg, STACK_TOP(sMainStack), THREAD_PRI_MAIN_INIT);
    osStartThread(&sMainThread);
    osSetThreadPri(NULL, OS_PRIORITY_IDLE);

    for (;;) {}
}
