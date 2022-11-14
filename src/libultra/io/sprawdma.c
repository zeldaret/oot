#include "global.h"

s32 __osSpRawStartDma(s32 direction, void* devAddr, void* dramAddr, u32 size) {
    if (__osSpDeviceBusy()) {
        return -1;
    }
    IO_WRITE(SP_MEM_ADDR_REG, devAddr);
    IO_WRITE(SP_DRAM_ADDR_REG, osVirtualToPhysical(dramAddr));
    if (direction == OS_READ) {
        IO_WRITE(SP_WR_LEN_REG, size - 1);
    } else {
        IO_WRITE(SP_RD_LEN_REG, size - 1);
    }
    return 0;
}
