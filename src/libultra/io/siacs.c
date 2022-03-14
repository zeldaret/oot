#include "global.h"

OSMesg siAccessBuf[1];
OSMesgQueue __osSiAccessQueue;
u32 __osSiAccessQueueEnabled = false;

void __osSiCreateAccessQueue(void) {
    __osSiAccessQueueEnabled = true;
    osCreateMesgQueue(&__osSiAccessQueue, siAccessBuf, ARRAY_COUNT(siAccessBuf));
    osSendMesg(&__osSiAccessQueue, NULL, OS_MESG_NOBLOCK);
}

void __osSiGetAccess(void) {
    OSMesg mesg;

    if (!__osSiAccessQueueEnabled) {
        __osSiCreateAccessQueue();
    }
    osRecvMesg(&__osSiAccessQueue, &mesg, OS_MESG_BLOCK);
}

void __osSiRelAccess(void) {
    osSendMesg(&__osSiAccessQueue, NULL, OS_MESG_NOBLOCK);
}
