#include <global.h>

OSMesgQueue* osPiGetCmdQueue() {
    if (!__osPiDevMgr.initialized) {
        return NULL;
    }

    return __osPiDevMgr.cmdQueue;
}
