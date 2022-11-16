#include "global.h"

s32 __osPiRawStartDma(s32 dir, u32 cartAddr, void* dramAddr, size_t size) {
    s32 status;

    status = IO_READ(PI_STATUS_REG);
    while (status & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) {
        status = IO_READ(PI_STATUS_REG);
    }

    IO_WRITE(PI_DRAM_ADDR_REG, osVirtualToPhysical(dramAddr));
    IO_WRITE(PI_CART_ADDR_REG, K1_TO_PHYS(osRomBase | cartAddr));

    switch (dir) {
        case OS_READ:
            IO_WRITE(PI_WR_LEN_REG, size - 1);
            break;
        case OS_WRITE:
            IO_WRITE(PI_RD_LEN_REG, size - 1);
            break;
        default:
            return -1;
            break;
    }
    return 0;
}
