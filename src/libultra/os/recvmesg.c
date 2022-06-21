#include "global.h"

s32 osRecvMesg(OSMesgQueue* mq, OSMesg* msg, s32 flag) {
    register u32 prevInt = __osDisableInt();

    while (MQ_IS_EMPTY(mq)) {
        if (flag == OS_MESG_NOBLOCK) {
            __osRestoreInt(prevInt);
            return -1;
        }
        __osRunningThread->state = OS_STATE_WAITING;
        __osEnqueueAndYield(&mq->mtqueue);
    }

    if (msg != NULL) {
        *msg = mq->msg[mq->first];
    }

    mq->first = (mq->first + 1) % mq->msgCount;
    mq->validCount--;

    if (mq->fullqueue->next != NULL) {
        osStartThread(__osPopThread(&mq->fullqueue));
    }

    __osRestoreInt(prevInt);

    return 0;
}
