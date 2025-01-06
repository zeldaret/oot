#include "global.h"

__OSThreadTail __osThreadTail = { NULL, OS_PRIORITY_THREADTAIL };
OSThread* __osRunQueue = (OSThread*)&__osThreadTail;
OSThread* __osActiveQueue = (OSThread*)&__osThreadTail;
OSThread* __osRunningThread = NULL;
OSThread* __osFaultedThread = NULL;

void __osDequeueThread(register OSThread** queue, register OSThread* thread) {
    register OSThread* pred = (OSThread*)queue;
    register OSThread* succ = pred->next;

    while (succ != NULL) {
        if (succ == thread) {
            pred->next = thread->next;
            return;
        }
        pred = succ;
        succ = pred->next;
    }
}
