#include "global.h"

s32 __osSiDeviceBusy(void) {
    register u32 status = IO_READ(SI_STATUS_REG);

    if (status & (SI_STATUS_DMA_BUSY | SI_STATUS_RD_BUSY)) {
        return true;
    }
    return false;
}
