#include "ultra64.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

s32 LeoTestUnitReady(u8* status) {
    volatile LEOCmdTestUnitReady cmdBlock;

    if (!__leoActive) {
        return -1;
    }

    if (IO_READ(PI_STATUS_REG) & PI_STATUS_DMA_BUSY) {
        return LEO_ERROR_BUSY;
    }

    cmdBlock.header.command = 3;
    cmdBlock.header.reserve1 = 0;
    cmdBlock.header.control = 0;
    cmdBlock.header.reserve3 = 0;

    leoCommand((void*)&cmdBlock);

    while (cmdBlock.header.status == 8) {}

    *status = cmdBlock.test;
    return GET_ERROR(cmdBlock);
}
