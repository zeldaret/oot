#include "ultra64.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

s32 LeoSeek(LEOCmd* cmdBlock, u32 lba, OSMesgQueue* mq) {
    if (!__leoActive) {
        return -1;
    }

    cmdBlock->header.command = LEO_COMMAND_READ_DISK_ID;
    cmdBlock->header.reserve1 = 0;
    cmdBlock->header.control = 0;
    cmdBlock->header.reserve3 = 0;
    cmdBlock->data.readWrite.lba = lba;

    if (mq != NULL) {
        cmdBlock->header.control |= LEO_CONTROL_POST;
        cmdBlock->header.post = mq;
    }

    leoCommand(cmdBlock);
    return LEO_ERROR_GOOD;
}
