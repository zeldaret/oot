#include <ultra64.h>
#include <global.h>
#include <ultra64/hardware.h>

s32 __osSpRawStartDma(s32 direction, u32 devAddr, void* dramAddr, u32 size) {
    if (__osSpDeviceBusy()) {
        return -1;
    }
    HW_REG(SP_MEM_ADDR_REG, u32) = devAddr;
    HW_REG(SP_DRAM_ADDR_REG, u32) = osVirtualToPhysical(dramAddr);
    if (direction == OS_READ) {
        HW_REG(SP_WR_LEN_REG, u32) = size - 1;
    } else {
        HW_REG(SP_RD_LEN_REG, u32) = size - 1;
    }
    return 0;
}
