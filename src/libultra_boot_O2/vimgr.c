#include "global.h"
#include "ultra64/internal.h"

typedef struct {
    u16 unk00;
    u8 unk02;
    u32 unk04;
    u8 pad[0xc];
    u16 unk14;
    u16 unk16;
} viMesgStruct;

OSThread viThread;
u8 viThreadStack[0x1000];
OSMesgQueue viEventQueue;
OSMesg viEventBuf[6];
viMesgStruct viRetraceMsg;
viMesgStruct viCounterMsg;
OSMgrArgs __osViDevMgr = { 0 };
u32 __additional_scanline = 0;

void viMgrMain(void*);

void osCreateViManager(OSPri pri) {
    u32 prevInt;
    OSPri newPri;
    OSPri currentPri;

    if (!__osViDevMgr.initialized) {
        __osTimerServicesInit();
        __additional_scanline = 0;
        osCreateMesgQueue(&viEventQueue, viEventBuf, 5);
        viRetraceMsg.unk00 = 13;
        viRetraceMsg.unk02 = 0;
        viRetraceMsg.unk04 = 0;
        viCounterMsg.unk00 = 14;
        viCounterMsg.unk02 = 0;
        viCounterMsg.unk04 = 0;
        osSetEventMesg(OS_EVENT_VI, &viEventQueue, &viRetraceMsg);
        osSetEventMesg(OS_EVENT_COUNTER, &viEventQueue, &viCounterMsg);
        newPri = -1;
        currentPri = osGetThreadPri(NULL);
        if (currentPri < pri) {
            newPri = currentPri;
            osSetThreadPri(NULL, pri);
        }

        prevInt = __osDisableInt();
        __osViDevMgr.initialized = true;
        __osViDevMgr.mgrThread = &viThread;
        __osViDevMgr.cmdQueue = &viEventQueue;
        __osViDevMgr.eventQueue = &viEventQueue;
        __osViDevMgr.acccessQueue = NULL;
        __osViDevMgr.piDmaCallback = NULL;
        __osViDevMgr.epiDmaCallback = NULL;

        osCreateThread(&viThread, 0, &viMgrMain, &__osViDevMgr, viThreadStack + sizeof(viThreadStack), pri);
        __osViInit();
        osStartThread(&viThread);
        __osRestoreInt(prevInt);
        if (newPri != -1) {
            osSetThreadPri(NULL, newPri);
        }
    }
}

void viMgrMain(void* vargs) {
    OSMgrArgs* args;
    static u16 viRetrace;
    u32 addTime;
    viMesgStruct* mesg;
    u32 temp = 0; // always 0

    mesg = NULL;
    viRetrace = __osViGetCurrentContext()->retraceCount;
    if (viRetrace == 0) {
        viRetrace = 1;
    }

    args = (OSMgrArgs*)vargs;

    while (true) {
        osRecvMesg(args->eventQueue, (OSMesg)&mesg, OS_MESG_BLOCK);
        switch (mesg->unk00) {
            case 13:
                __osViSwapContext();
                viRetrace--;
                if (!viRetrace) {
                    OSViContext* ctx = __osViGetCurrentContext();
                    if (ctx->mq) {
                        osSendMesg(ctx->mq, ctx->msg, OS_MESG_NOBLOCK);
                    }
                    viRetrace = ctx->retraceCount;
                }

                __osViIntrCount++;

                // block optimized out since temp is always 0,
                // but it changes register allocation and ordering for __osCurrentTime
                if (temp != 0) {
                    addTime = osGetCount();
                    __osCurrentTime = addTime;
                    temp = 0;
                }

                addTime = __osBaseCounter;
                __osBaseCounter = osGetCount();
                addTime = __osBaseCounter - addTime;
                __osCurrentTime = __osCurrentTime + addTime;
                break;
            case 14:
                __osTimerInterrupt();
                break;
        }
    }
}
