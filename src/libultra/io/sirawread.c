#include "global.h"

s32 __osSiRawReadIo(void* devAddr, u32* dst) {
    if (__osSiDeviceBusy()) {
        return -1;
    }
    *dst = HW_REG((u32)devAddr, u32);
    return 0;
}
