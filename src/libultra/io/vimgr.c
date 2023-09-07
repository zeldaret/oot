#include "global.h"
#include "ultra64/internal.h"

OSThread viThread;
STACK(viThreadStack, 0x1000);
OSMesgQueue viEventQueue;
OSMesg viEventBuf[5];
OSIoMesg viRetraceMsg;
OSIoMesg viCounterMsg;
OSDevMgr __osViDevMgr = { 0 };
u32 __additional_scanline = 0;

void viMgrMain(void*);

void osCreateViManager(OSPri pri) {
    u32 prevInt;
    OSPri newPri;
    OSPri currentPri;

    if (!__osViDevMgr.active) {
        __osTimerServicesInit();
        __additional_scanline = 0;
        osCreateMesgQueue(&viEventQueue, viEventBuf, ARRAY_COUNT(viEventBuf));
        viRetraceMsg.hdr.type = OS_MESG_TYPE_VRETRACE;
        viRetraceMsg.hdr.pri = OS_MESG_PRI_NORMAL;
        viRetraceMsg.hdr.retQueue = NULL;
        viCounterMsg.hdr.type = OS_MESG_TYPE_COUNTER;
        viCounterMsg.hdr.pri = OS_MESG_PRI_NORMAL;
        viCounterMsg.hdr.retQueue = NULL;
        osSetEventMesg(OS_EVENT_VI, &viEventQueue, &viRetraceMsg);
        osSetEventMesg(OS_EVENT_COUNTER, &viEventQueue, &viCounterMsg);
        newPri = -1;
        currentPri = osGetThreadPri(NULL);
        if (currentPri < pri) {
            newPri = currentPri;
            osSetThreadPri(NULL, pri);
        }

        prevInt = __osDisableInt();
        __osViDevMgr.active = true;
        __osViDevMgr.thread = &viThread;
        __osViDevMgr.cmdQueue = &viEventQueue;
        __osViDevMgr.evtQueue = &viEventQueue;
        __osViDevMgr.acsQueue = NULL;
        __osViDevMgr.dma = NULL;
        __osViDevMgr.edma = NULL;

        osCreateThread(&viThread, 0, &viMgrMain, &__osViDevMgr, STACK_TOP(viThreadStack), pri);
        __osViInit();
        osStartThread(&viThread);
        __osRestoreInt(prevInt);
        if (newPri != -1) {
            osSetThreadPri(NULL, newPri);
        }
    }
}

void viMgrMain(void* arg) {
    static u16 viRetrace;
    OSDevMgr* dm;
    u32 addTime;
    OSIoMesg* mb = NULL;
    u32 first = 0;

    viRetrace = __osViGetCurrentContext()->retraceCount;
    if (viRetrace == 0) {
        viRetrace = 1;
    }

    dm = (OSDevMgr*)arg;

    while (true) {
        osRecvMesg(dm->evtQueue, (OSMesg*)&mb, OS_MESG_BLOCK);
        switch (mb->hdr.type) {
            case OS_MESG_TYPE_VRETRACE:
                __osViSwapContext();
                viRetrace--;
                if (viRetrace == 0) {
                    OSViContext* ctx = __osViGetCurrentContext();
                    if (ctx->mq) {
                        osSendMesg(ctx->mq, ctx->msg, OS_MESG_NOBLOCK);
                    }
                    viRetrace = ctx->retraceCount;
                }

                __osViIntrCount++;

                // block optimized out since first is always 0,
                // but it changes register allocation and ordering for __osCurrentTime
                if (first != 0) {
                    addTime = osGetCount();
                    __osCurrentTime = addTime;
                    first = 0;
                }

                addTime = __osBaseCounter;
                __osBaseCounter = osGetCount();
                addTime = __osBaseCounter - addTime;
                __osCurrentTime = __osCurrentTime + addTime;
                break;
            case OS_MESG_TYPE_COUNTER:
                __osTimerInterrupt();
                break;
        }
    }
}
