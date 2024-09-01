#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

s32 LeoReadWrite(LEOCmd* cmdBlock, s32 direction, u32 LBA, void* vAddr, u32 nLBAs, OSMesgQueue* mq) {
    if (!__leoActive) {
        return -1;
    }

    if (direction == OS_READ) {
        cmdBlock->header.command = 5;
    } else {
        cmdBlock->header.command = 6;
    }

    cmdBlock->header.reserve1 = 0;

    if (mq != NULL) {
        cmdBlock->header.control = 0x80;
    } else {
        cmdBlock->header.control = 0;
    }

    cmdBlock->header.reserve3 = 0;
    cmdBlock->header.post = mq;
    cmdBlock->data.readWrite.lba = LBA;
    cmdBlock->data.readWrite.transferBlks = nLBAs;
    cmdBlock->data.readWrite.buffPtr = vAddr;

    leoCommand(cmdBlock);
    return LEO_ERROR_GOOD;
}
