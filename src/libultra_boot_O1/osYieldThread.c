#include <global.h>

void osYieldThread()
{
    register u32 prevInt;

    prevInt = __osDisableInt();
    __osRunningThread->state = OS_STATE_RUNNABLE;
    __osEnqueueAndYield(&__osRunQueue);
    __osRestoreInt(prevInt);
}
