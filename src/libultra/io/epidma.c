#include "piint.h"

s32 osEPiStartDma(OSPiHandle* handle, OSIoMesg* mb, s32 direction) {
    s32 ret;

    if (!__osPiDevMgr.active) {
        return -1;
    }

    mb->piHandle = handle;
    if (direction == OS_READ) {
        mb->hdr.type = OS_MESG_TYPE_EDMAREAD;
    } else {
        mb->hdr.type = OS_MESG_TYPE_EDMAWRITE;
    }

    if (mb->hdr.pri == 1) {
        ret = osJamMesg(osPiGetCmdQueue(), (OSMesg)mb, OS_MESG_NOBLOCK);
    } else {
        ret = osSendMesg(osPiGetCmdQueue(), (OSMesg)mb, OS_MESG_NOBLOCK);
    }

    return ret;
}
