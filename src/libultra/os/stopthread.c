#include "global.h"

void osStopThread(OSThread* thread) {
    register u32 prevInt = __osDisableInt();
    register u32 state;

    if (thread == NULL) {
        state = OS_STATE_RUNNING;
    } else {
        state = thread->state;
    }

    switch (state) {
        case OS_STATE_RUNNING:
            __osRunningThread->state = OS_STATE_STOPPED;
            __osEnqueueAndYield(NULL);
            break;
        case OS_STATE_RUNNABLE:
        case OS_STATE_WAITING:
            thread->state = OS_STATE_STOPPED;
            __osDequeueThread(thread->queue, thread);
            break;
    }

    __osRestoreInt(prevInt);
}
