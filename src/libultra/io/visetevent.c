#include "ultra64.h"

void osViSetEvent(OSMesgQueue* mq, OSMesg msg, u32 retraceCount) {
    register u32 prevInt = __osDisableInt();

    __osViNext->mq = mq;
    __osViNext->msg = msg;
    __osViNext->retraceCount = retraceCount;

    __osRestoreInt(prevInt);
}
