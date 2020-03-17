#include <global.h>

__OSEventState __osEventStateTab[16];

u32 __osPreNMI = 0;

void osSetEventMesg(OSEvent e, OSMesgQueue *mq, OSMesg msg)
{
    register u32 int_disabled;
    __OSEventState *msgs;
    
    int_disabled = __osDisableInt();
    msgs = __osEventStateTab + e;
    msgs->queue = mq;
    msgs->msg = msg;

    if (e == OS_EVENT_PRENMI)
    {
        if (__osShutdown && !__osPreNMI)
            osSendMesg(mq, msg, 0);

        __osPreNMI = true;
    }
    __osRestoreInt(int_disabled);

}
