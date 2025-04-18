#include "ultra64.h"

OSPri osGetThreadPri(OSThread* thread) {
    if (thread == NULL) {
        thread = __osRunningThread;
    }

    return thread->priority;
}
