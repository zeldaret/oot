#include "libultra_internal.h"

extern OSViContext* __osViNext;

void osViSetEvent(OSMesgQueue* mq, OSMesg msg, u32 retraceCount) {
    register u32 saveMask;
    saveMask = __osDisableInt();
    __osViNext->mq = mq;
    __osViNext->msg = msg;
    __osViNext->retraceCount = retraceCount;
    __osRestoreInt(saveMask);
}
