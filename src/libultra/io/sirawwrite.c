#include "global.h"

s32 __osSiRawWriteIo(void* devAddr, u32 val) {
    if (__osSiDeviceBusy()) {
        return -1;
    }
    IO_WRITE(devAddr, val);
    return 0;
}
