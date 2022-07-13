#include "ultra64.h"
#include "global.h"

OSPifRam __osPfsPifRam;

s32 __osPfsGetStatus(OSMesgQueue* queue, s32 channel) {
    s32 ret = 0;
    OSMesg msg;
    OSContStatus data;

    __osPfsInodeCacheBank = 250;

    __osPfsRequestOneChannel(channel, CONT_CMD_REQUEST_STATUS);
    ret = __osSiRawStartDma(OS_WRITE, &__osPfsPifRam);
    osRecvMesg(queue, &msg, OS_MESG_BLOCK);

    ret = __osSiRawStartDma(OS_READ, &__osPfsPifRam);
    osRecvMesg(queue, &msg, OS_MESG_BLOCK);

    __osPfsGetOneChannelData(channel, &data);
    if ((data.status & CONT_CARD_ON) && (data.status & CONT_CARD_PULL)) {
        return PFS_ERR_NEW_PACK;
    } else if (data.errno != 0 || !(data.status & CONT_CARD_ON)) {
        return PFS_ERR_NOPACK;
    } else if (data.status & CONT_ADDR_CRC_ER) {
        return PFS_ERR_CONTRFAIL;
    }
    return ret;
}

void __osPfsRequestOneChannel(s32 channel, u8 cmd) {
    u8* ptr;
    __OSContRequesFormatShort req;
    s32 idx;

    __osContLastCmd = CONT_CMD_END;
    __osPfsPifRam.status = CONT_CMD_EXE;

    ptr = (u8*)&__osPfsPifRam;

    req.txsize = CONT_CMD_REQUEST_STATUS_TX;
    req.rxsize = CONT_CMD_REQUEST_STATUS_RX;
    req.cmd = cmd;
    req.typeh = CONT_CMD_NOP;
    req.typel = CONT_CMD_NOP;
    req.status = CONT_CMD_NOP;

    for (idx = 0; idx < channel; idx++) {
        *ptr++ = CONT_CMD_SKIP_CHNL;
    }

    *((__OSContRequesFormatShort*)ptr) = req;
    ptr += sizeof(req);
    *ptr = CONT_CMD_END;
}

void __osPfsGetOneChannelData(s32 channel, OSContStatus* contData) {
    u8* ptr = (u8*)&__osPfsPifRam;
    __OSContRequesFormatShort req;
    s32 idx;

    for (idx = 0; idx < channel; idx++) {
        ptr++;
    }

    req = *((__OSContRequesFormatShort*)ptr);
    contData->errno = CHNL_ERR(req);
    if (contData->errno) {
        return;
    }

    contData->type = (req.typel << 8) | req.typeh;
    contData->status = req.status;
}
