#include "global.h"

__OSThreadTail __osThreadTail = { NULL, OS_PRIORITY_THREADTAIL };
OSThread* __osRunQueue = (OSThread*)&__osThreadTail;
OSThread* __osActiveQueue = (OSThread*)&__osThreadTail;
OSThread* __osRunningThread = NULL;
OSThread* __osFaultedThread = NULL;

void __osDequeueThread(OSThread** queue, OSThread* thread) {
    register OSThread** a2 = queue;
    register OSThread* a3 = *a2;

    while (a3 != NULL) {
        if (a3 == thread) {
            *a2 = thread->next;
            return;
        }
        a2 = &a3->next;
        a3 = *a2;
    }
}
