#include <global.h>

void osCreateMesgQueue(OSMesgQueue* mq, OSMesg* msg, s32 count) {
    mq->mtqueue = __osThreadTail;
    mq->fullqueue = __osThreadTail;
    mq->validCount = 0;
    mq->first = 0;
    mq->msgCount = count;
    mq->msg = msg;
}
