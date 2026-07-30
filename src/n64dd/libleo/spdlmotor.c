#include "ultra64.h"
#include "ultra64/leo_internal.h"

s32 LeoSpdlMotor(LEOCmd* cmdBlock, u8 mode, OSMesgQueue* mq) {
    if (__leoActive == 0) {
        return -1;
    }
    cmdBlock->header.command = LEO_COMMAND_START_STOP;
    cmdBlock->header.reserve1 = 0;
    switch (mode) {
        case 0:
            cmdBlock->header.control = 1;
            break;
        case 1:
            cmdBlock->header.control = LEO_CONTROL_STBY;
            break;
        case 2:
            cmdBlock->header.control = 0;
            break;
        case 4:
            cmdBlock->header.control = LEO_CONTROL_BRAKE;
            break;
    }
    cmdBlock->header.reserve3 = 0;
    if (mq != NULL) {
        cmdBlock->header.post = mq;
        cmdBlock->header.control |= LEO_CONTROL_POST;
    }
    leoCommand(cmdBlock);
    return 0;
}
