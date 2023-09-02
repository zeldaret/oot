#include "global.h"

#define PIF_RAM_SIZE (PIF_RAM_END + 1 - PIF_RAM_START)

s32 __osSiRawStartDma(s32 dir, void* addr) {
    if (IO_READ(SI_STATUS_REG) & (SI_STATUS_DMA_BUSY | SI_STATUS_RD_BUSY)) {
        return -1;
    }
    if (dir == OS_WRITE) {
        osWritebackDCache(addr, PIF_RAM_SIZE);
    }
    IO_WRITE(SI_DRAM_ADDR_REG, osVirtualToPhysical(addr));
    if (dir == OS_READ) {
        IO_WRITE(SI_PIF_ADDR_RD64B_REG, PIF_RAM_START);
    } else {
        IO_WRITE(SI_PIF_ADDR_WR64B_REG, PIF_RAM_START);
    }
    if (dir == OS_READ) {
        osInvalDCache(addr, PIF_RAM_SIZE);
    }
    return 0;
}
