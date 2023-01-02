#include "siint.h"

s32 __osSiRawWriteIo(u32 devAddr, u32 val) {
    if (__osSiDeviceBusy()) {
        return -1;
    }
    IO_WRITE(devAddr, val);
    return 0;
}
