#include "global.h"
#include "boot.h"
#include "stack.h"
#if PLATFORM_N64
#include "cic6105.h"
#endif

#pragma increment_block_number "gc-eu:128 gc-eu-mq:128 gc-jp:128 gc-jp-ce:128 gc-jp-mq:128 gc-us:128 gc-us-mq:128" \
                               "ntsc-1.2:128"

StackEntry sBootThreadInfo;
OSThread sIdleThread;
STACK(sIdleThreadStack, 0x400);
StackEntry sIdleThreadInfo;
STACK(sBootThreadStack, BOOT_STACK_SIZE);

void bootclear(void) {
    bzero(_bootSegmentEnd, osMemSize - OS_K0_TO_PHYSICAL(_bootSegmentEnd));
}

void bootproc(void) {
    StackCheck_Init(&sBootThreadInfo, sBootThreadStack, STACK_TOP(sBootThreadStack), 0, -1, "boot");

    osMemSize = osGetMemSize();
#if PLATFORM_N64
    func_80001720();
#endif
    bootclear();
    osInitialize();

    gCartHandle = osCartRomInit();
    osDriveRomInit();
#if OOT_DEBUG
    isPrintfInit();
#endif
    Locale_Init();

    StackCheck_Init(&sIdleThreadInfo, sIdleThreadStack, STACK_TOP(sIdleThreadStack), 0, 256, "idle");
    osCreateThread(&sIdleThread, THREAD_ID_IDLE, Idle_ThreadEntry, NULL, STACK_TOP(sIdleThreadStack),
                   THREAD_PRI_IDLE_INIT);
    osStartThread(&sIdleThread);
}
