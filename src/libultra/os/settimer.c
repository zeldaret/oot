#include "global.h"

s32 osSetTimer(OSTimer* timer, OSTime countdown, OSTime interval, OSMesgQueue* mq, OSMesg msg) {
    UNUSED OSTime time;
#if LIBULTRA_VERSION >= LIBULTRA_VERSION_K
    OSTimer* next;
    u32 count;
    u32 value;
    u32 prevInt;
#endif

    timer->next = NULL;
    timer->prev = NULL;
    timer->interval = interval;
    timer->value = (countdown != 0) ? countdown : interval;
    timer->mq = mq;
    timer->msg = msg;

#if LIBULTRA_VERSION >= LIBULTRA_VERSION_K
    prevInt = __osDisableInt();
    if (__osTimerList->next == __osTimerList) {
    } else {
        next = __osTimerList->next;
        count = osGetCount();
        value = count - __osTimerCounter;

        if (value < next->value) {
            next->value -= value;
        } else {
            next->value = 1;
        }
    }

    time = __osInsertTimer(timer);
    __osSetTimerIntr(__osTimerList->next->value);

    __osRestoreInt(prevInt);
#else
    time = __osInsertTimer(timer);
    if (__osTimerList->next == timer) {
        __osSetTimerIntr(time);
    }
#endif

    return 0;
}
