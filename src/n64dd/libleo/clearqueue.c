#include "ultra64.h"
#include "ultra64/leo_internal.h"

s32 LeoClearQueue(void) {
    LEOCmdClearQue cmdBlock;

    if (__leoActive == 0) {
        return -1;
    }
    cmdBlock.header.command = LEO_COMMAND_CLEAR_QUE;
    cmdBlock.header.reserve1 = 0;
    cmdBlock.header.control = 0;
    cmdBlock.header.reserve3 = 0;
    leoCommand(&cmdBlock);
    return 0;
}
