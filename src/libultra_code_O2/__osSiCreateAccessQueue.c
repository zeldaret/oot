#include "global.h"

OSMesg osSiMesgBuff[SIAccessQueueSize];
OSMesgQueue gOSSiMessageQueue;
u32 gOSSiAccessQueueCreated = 0;

void __osSiCreateAccessQueue() {
    gOSSiAccessQueueCreated = 1;
    osCreateMesgQueue(&gOSSiMessageQueue, &osSiMesgBuff[0], SIAccessQueueSize - 1);
    osSendMesg(&gOSSiMessageQueue, NULL, OS_MESG_NOBLOCK);
}

void __osSiGetAccess() {
    OSMesg sp1c;
    if (!gOSSiAccessQueueCreated) {
        __osSiCreateAccessQueue();
    }
    osRecvMesg(&gOSSiMessageQueue, &sp1c, OS_MESG_BLOCK);
}

void __osSiRelAccess() {
    osSendMesg(&gOSSiMessageQueue, NULL, OS_MESG_NOBLOCK);
}
