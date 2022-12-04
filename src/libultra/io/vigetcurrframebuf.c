#include "global.h"

void* osViGetCurrentFramebuffer(void) {
    register u32 prevInt = __osDisableInt();
    void* framep = __osViCurr->framep;

    __osRestoreInt(prevInt);

    return framep;
}
