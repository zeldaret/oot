#include "global.h"
#include "stack.h"
#include "ultra64/internal.h"

OSDevMgr __osPiDevMgr = { 0 };

OSPiHandle __Dom1SpeedParam;
OSPiHandle __Dom2SpeedParam;
static OSThread piThread;
static STACK(piThreadStack, 0x1000);
static OSMesgQueue piEventQueue;
static OSMesg piEventBuf[2];

OSPiHandle* __osPiTable = NULL;
OSPiHandle* __osCurrentHandle[] = {
    &__Dom1SpeedParam,
    &__Dom2SpeedParam,
};

void osCreatePiManager(OSPri pri, OSMesgQueue* cmdQueue, OSMesg* cmdBuf, s32 cmdMsgCnt) {
    u32 prevInt;
    OSPri newPri;
    OSPri currentPri;

    if (!__osPiDevMgr.active) {
        osCreateMesgQueue(cmdQueue, cmdBuf, cmdMsgCnt);
        osCreateMesgQueue(&piEventQueue, piEventBuf, 1);
        if (!__osPiAccessQueueEnabled) {
            __osPiCreateAccessQueue();
        }

        osSetEventMesg(OS_EVENT_PI, &piEventQueue, (OSMesg)0x22222222);
        newPri = -1;
        currentPri = osGetThreadPri(NULL);
        if (currentPri < pri) {
            newPri = currentPri;
            osSetThreadPri(NULL, pri);
        }
        prevInt = __osDisableInt();

        __osPiDevMgr.active = true;
        __osPiDevMgr.thread = &piThread;
        __osPiDevMgr.cmdQueue = cmdQueue;
        __osPiDevMgr.evtQueue = &piEventQueue;
        __osPiDevMgr.acsQueue = &__osPiAccessQueue;
        __osPiDevMgr.dma = __osPiRawStartDma;
        __osPiDevMgr.edma = __osEPiRawStartDma;

        osCreateThread(&piThread, 0, __osDevMgrMain, (void*)&__osPiDevMgr, STACK_TOP(piThreadStack), pri);
        osStartThread(&piThread);

        __osRestoreInt(prevInt);

        if (newPri != -1) {
            osSetThreadPri(NULL, newPri);
        }
    }
}
