#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

s32 LeoSpdlMotor(LEOCmd* cmdBlock, u8 mode, OSMesgQueue* mq) {
    if (!__leoActive) {
        return -1;
    }

    cmdBlock->header.command = 8;
    cmdBlock->header.reserve1 = 0;

    switch (mode) {
        case LEO_MOTOR_ACTIVE:
            cmdBlock->header.control = 1;
            break;
        case LEO_MOTOR_STANDBY:
            cmdBlock->header.control = 2;
            break;
        case LEO_MOTOR_SLEEP:
            cmdBlock->header.control = 0;
            break;
        case LEO_MOTOR_BRAKE:
            cmdBlock->header.control = 4;
            break;
    }

    cmdBlock->header.reserve3 = 0;

    if (mq != NULL) {
        cmdBlock->header.post = mq;
        cmdBlock->header.control |= 0x80;
    }

    leoCommand(cmdBlock);
    return LEO_ERROR_GOOD;
}
