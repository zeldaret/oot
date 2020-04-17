#include <ultra64.h>
#include <global.h>

u32* osViGetCurrentFramebuffer() {
    register u32 sMask = __osDisableInt();
    u32* var1;

    var1 = __osViCurr->buffer;

    __osRestoreInt(sMask);

    return var1;
}
