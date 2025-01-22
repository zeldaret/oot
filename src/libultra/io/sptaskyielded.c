#include "global.h"

u32 osSpTaskYielded(OSTask* task) {
    u32 status = __osSpGetStatus();
    u32 result;

    result = (status & SP_STATUS_YIELDED) ? OS_TASK_YIELDED : 0;

    if (status & SP_STATUS_YIELD) {
        task->t.flags |= result;
        task->t.flags &= ~OS_TASK_DP_WAIT;
    }
    return result;
}
