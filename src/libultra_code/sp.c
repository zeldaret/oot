#include <ultra64.h>
#include <global.h>
#include <ultra64/hardware.h>

u32 __osSpDeviceBusy() {
    register u32 status = HW_REG(SP_STATUS_REG, u32);

    if (status & (SP_STATUS_DMA_BUSY | SP_STATUS_DMA_FULL | SP_STATUS_IO_FULL)) {
        return 1;
    }

    return 0;
}
