#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"

s32 LeoClearQueue(void) {
    LEOCmdClearQueue cmdBlock;

    if (!__leoActive) {
        return -1;
    }

    cmdBlock.header.command = 1;
    cmdBlock.header.reserve1 = 0;
    cmdBlock.header.control = 0;
    cmdBlock.header.reserve3 = 0;

    leoCommand(&cmdBlock);
    return LEO_ERROR_GOOD;
}
