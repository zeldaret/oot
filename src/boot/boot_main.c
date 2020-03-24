#include <ultra64.h>
#include <global.h>

StackEntry sBootThreadInfo;
OSThread sIdleThread;
u8 sIdleThreadStack[0x400];
StackEntry sIdleThreadInfo;
u8 sBootThreadStack[0x400];

void cleararena(void) {
    bzero(_dmadataSegmentStart, (u8*)osMemSize - OS_K0_TO_PHYSICAL(_dmadataSegmentStart));
}

void bootproc(void) {
    StackCheck_Init(&sBootThreadInfo, sBootThreadStack, sBootThreadStack + sizeof(sBootThreadStack), 0, -1, "boot");

    osMemSize = osGetMemSize();
    cleararena();
    __osInitialize_common();
    __osInitialize_autodetect();

    gCartHandle = osCartRomInit();
    osDriveRomInit();
    isPrintfInit();
    Locale_Init();

    StackCheck_Init(&sIdleThreadInfo, sIdleThreadStack, sIdleThreadStack + sizeof(sIdleThreadStack), 0, 256, "idle");
    osCreateThread(&sIdleThread, 1, Idle_ThreadEntry, 0, sIdleThreadStack + sizeof(sIdleThreadStack), 10);
    osStartThread(&sIdleThread);
}
