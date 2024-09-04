#include "global.h"

OSPiHandle __DriveRomHandle;

OSPiHandle* osDriveRomInit(void) {
    static u32 first = true;
    register s32 status;
    register u32 value;
    register u32 prevInt;

    __osPiGetAccess();

    if (!first) {
        __osPiRelAccess();
        return &__DriveRomHandle;
    }

    first = false;
    __DriveRomHandle.type = DEVICE_TYPE_BULK;
    __DriveRomHandle.baseAddress = PHYS_TO_K1(PI_DOM1_ADDR1);
    __DriveRomHandle.domain = PI_DOMAIN1;
    __DriveRomHandle.speed = 0;
    bzero(&__DriveRomHandle.transferInfo, sizeof(__OSTranxInfo));

    status = IO_READ(PI_STATUS_REG);
    while (status & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) {
        status = IO_READ(PI_STATUS_REG);
    }

    IO_WRITE(PI_BSD_DOM1_LAT_REG, 255);
    IO_WRITE(PI_BSD_DOM1_PGS_REG, 0);
    IO_WRITE(PI_BSD_DOM1_RLS_REG, 3);
    IO_WRITE(PI_BSD_DOM1_PWD_REG, 255);

    value = IO_READ(__DriveRomHandle.baseAddress);
    __DriveRomHandle.latency = value & 0xFF;
    __DriveRomHandle.pulse = (value >> 8) & 0xFF;
    __DriveRomHandle.pageSize = (value >> 0x10) & 0xF;
    __DriveRomHandle.relDuration = (value >> 0x14) & 0xF;

    IO_WRITE(PI_BSD_DOM1_LAT_REG, __DriveRomHandle.latency);
    IO_WRITE(PI_BSD_DOM1_PGS_REG, __DriveRomHandle.pageSize);
    IO_WRITE(PI_BSD_DOM1_RLS_REG, __DriveRomHandle.relDuration);
    IO_WRITE(PI_BSD_DOM1_PWD_REG, __DriveRomHandle.pulse);

    __osCurrentHandle[__DriveRomHandle.domain]->type = __DriveRomHandle.type;
    __osCurrentHandle[__DriveRomHandle.domain]->latency = __DriveRomHandle.latency;
    __osCurrentHandle[__DriveRomHandle.domain]->pageSize = __DriveRomHandle.pageSize;
    __osCurrentHandle[__DriveRomHandle.domain]->relDuration = __DriveRomHandle.relDuration;
    __osCurrentHandle[__DriveRomHandle.domain]->pulse = __DriveRomHandle.pulse;

    prevInt = __osDisableInt();
    __DriveRomHandle.next = __osPiTable;
    __osPiTable = &__DriveRomHandle;
    __osRestoreInt(prevInt);
    __osPiRelAccess();

    return &__DriveRomHandle;
}
