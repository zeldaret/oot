#include "global.h"

s32 __osSiRawReadIo(void* devAddr, u32* dst) {
    if (__osSiDeviceBusy()) {
        return -1;
    }
    *dst = IO_READ(devAddr);
    return 0;
}
