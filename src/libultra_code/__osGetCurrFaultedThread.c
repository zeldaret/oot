#include <ultra64.h>
#include <global.h>

OSThread* __osGetCurrFaultedThread() {
    return __osFaultedThread;
}
