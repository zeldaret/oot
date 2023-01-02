#include "osint.h"

OSThread* __osGetCurrFaultedThread(void) {
    return __osFaultedThread;
}
