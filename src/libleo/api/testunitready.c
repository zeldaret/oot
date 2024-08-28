#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

s32 LeoTestUnitReady(u8* status) {
    volatile LEOCmdTestUnitReady cmdBlock;

    if (!__leoActive) {
        return -1;
    }

    if ((IO_READ(PI_STATUS_REG) & 1) != 0) {
        return 8;
    }

    cmdBlock.header.command = 3;
    cmdBlock.header.reserve1 = 0;
    cmdBlock.header.control = 0;
    cmdBlock.header.reserve3 = 0;

    leoCommand((void*)&cmdBlock);

    while (cmdBlock.header.status == 8) {}

    *status = cmdBlock.test;
    return cmdBlock.header.sense;
}
