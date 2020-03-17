#include <ultra64.h>
#include <global.h>

#include <ultra64/controller.h>

OSMesg osSiMesgBuff[SIAccessQueueSize];
OSMesgQueue gOsSiMessageQueue;
u32 gOsSiAccessQueueCreated = 0;

void __osSiCreateAccessQueue() { //func_80100B50
    gOsSiAccessQueueCreated = 1;
    osCreateMesgQueue(&gOsSiMessageQueue, &osSiMesgBuff[0], SIAccessQueueSize - 1);
    osSendMesg(&gOsSiMessageQueue, NULL, OS_MESG_NOBLOCK);
}

void __osSiGetAccess() { //func_80100BA0
    OSMesg sp1c;
    if (!gOsSiAccessQueueCreated) {
        __osSiCreateAccessQueue();
    }
    osRecvMesg(&gOsSiMessageQueue, &sp1c, OS_MESG_BLOCK);
}

void __osSiRelAccess() { //func_80100BE4
    osSendMesg(&gOsSiMessageQueue, NULL, OS_MESG_NOBLOCK);
}
