#include "global.h"

void MsgEvent_SendNullTask(void) {
    OSScTask task;
    OSMesgQueue queue;
    OSMesg msg;
    u32 pad2[1];

    task.next = NULL;
    task.flags = OS_SC_RCP_MASK;
    task.msgQueue = &queue;
    task.msg = NULL;
    task.framebuffer = NULL;
    task.list.t.type = M_NULTASK;
    osCreateMesgQueue(task.msgQueue, &msg, 1);
    osSendMesg(&gSchedContext.cmdQueue, (OSMesg)&task, OS_MESG_BLOCK);
    Sched_SendEntryMsg(&gSchedContext);
    osRecvMesg(&queue, NULL, OS_MESG_BLOCK);
}
