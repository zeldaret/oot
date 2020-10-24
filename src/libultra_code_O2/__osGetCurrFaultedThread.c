#include "global.h"

OSThread* __osGetCurrFaultedThread() {
    return __osFaultedThread;
}
