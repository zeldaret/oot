#include "global.h"

void* osViGetCurrentFramebuffer(void) {
    register u32 prevInt = __osDisableInt();
    void* buffer = __osViCurr->buffer;

    __osRestoreInt(prevInt);

    return buffer;
}
