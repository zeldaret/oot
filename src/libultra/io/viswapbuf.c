#include "global.h"
#include "ultra64/viint.h"

void osViSwapBuffer(void* frameBufPtr) {
    u32 prevInt = __osDisableInt();

    __osViNext->framep = frameBufPtr;
    __osViNext->state |= VI_STATE_BUFFER_SET;

    __osRestoreInt(prevInt);
}
