#include "global.h"

void* osViGetNextFramebuffer(void) {
    register u32 prevInt = __osDisableInt();
    void* framep = __osViNext->framep;

    __osRestoreInt(prevInt);
    return framep;
}
