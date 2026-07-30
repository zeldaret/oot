#include "ultra64.h"
#include "ultra64/leo_internal.h"

s32 LeoTestUnitReady(LEOStatus* status) {
    volatile LEOCmdTestUnitReady cmdBlock;

    if (__leoActive == 0) {
        return -1;
    }
    if (IO_READ(PI_STATUS_REG) & PI_STATUS_DMA_BUSY) {
        return 8;
    }
    cmdBlock.header.command = LEO_COMMAND_TEST_UNIT_READY;
    cmdBlock.header.reserve1 = 0;
    cmdBlock.header.control = 0;
    cmdBlock.header.reserve3 = 0;
    leoCommand((void*)&cmdBlock);
    while (cmdBlock.header.status == LEO_STATUS_BUSY) {}
    *status = cmdBlock.test;
    return (s32)cmdBlock.header.sense;
}
