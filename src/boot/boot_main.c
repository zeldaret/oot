#include "global.h"

StackEntry sBootThreadInfo;
OSThread sIdleThread;
STACK(sIdleThreadStack, 0x400);
StackEntry sIdleThreadInfo;
STACK(sBootThreadStack, 0x400);

void cleararena(void) {
    bzero(_dmadataSegmentStart, osMemSize - OS_K0_TO_PHYSICAL(_dmadataSegmentStart));
}

void bootproc(void) {
    StackCheck_Init(&sBootThreadInfo, sBootThreadStack, STACK_TOP(sBootThreadStack), 0, -1, "boot");

    osMemSize = osGetMemSize();
    cleararena();
    __osInitialize_common();
    __osInitialize_autodetect();

    gCartHandle = osCartRomInit();
    osDriveRomInit();
    isPrintfInit();
    Locale_Init();

    StackCheck_Init(&sIdleThreadInfo, sIdleThreadStack, STACK_TOP(sIdleThreadStack), 0, 256, "idle");
    osCreateThread(&sIdleThread, 1, Idle_ThreadEntry, NULL, STACK_TOP(sIdleThreadStack), Z_PRIORITY_MAIN);
    osStartThread(&sIdleThread);
}
