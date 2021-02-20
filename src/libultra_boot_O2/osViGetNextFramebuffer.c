#include "global.h"

void* osViGetNextFramebuffer(void) {
    s32 prevInt = __osDisableInt();
    void* buff = __osViNext->buffer;

    __osRestoreInt(prevInt);
    return buff;
}
