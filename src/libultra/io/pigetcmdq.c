#include "global.h"
#include "ultra64/internal.h"

OSMesgQueue* osPiGetCmdQueue(void) {
    if (!__osPiDevMgr.active) {
        return NULL;
    }

    return __osPiDevMgr.cmdQueue;
}
