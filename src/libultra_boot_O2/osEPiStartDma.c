#include <global.h>

s32 osEPiStartDma(OSPiHandle* handle, OSIoMesg* mb, s32 direction) {
    s32 ret;
    if (!__osPiDevMgr.initialized) {
        return -1;
    }

    mb->piHandle = handle;
    if (direction == OS_READ) {
        mb->hdr.type = 0xf;
    } else {
        mb->hdr.type = 0x10;
    }

    if (mb->hdr.pri == 1) {
        ret = osJamMesg(osPiGetCmdQueue(), (OSMesg)mb, 0);
    } else {
        ret = osSendMesg(osPiGetCmdQueue(), (OSMesg)mb, 0);
    }

    return ret;
}
