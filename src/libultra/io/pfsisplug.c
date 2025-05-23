#include "ultra64.h"
#include "global.h"

OSPifRam __osPfsPifRam;

s32 osPfsIsPlug(OSMesgQueue* mq, u8* pattern) {
    s32 ret = 0;
    OSMesg msg;
    u8 bitpattern;
    OSContStatus contData[MAXCONTROLLERS];
    s32 channel;
    u8 bits = 0;
    s32 crcErrorCount = 3;

    __osSiGetAccess();

    do {
        __osPfsRequestData(CONT_CMD_REQUEST_STATUS);

        ret = __osSiRawStartDma(OS_WRITE, &__osPfsPifRam);
        osRecvMesg(mq, &msg, OS_MESG_BLOCK);

        ret = __osSiRawStartDma(OS_READ, &__osPfsPifRam);
        osRecvMesg(mq, &msg, OS_MESG_BLOCK);

        __osPfsGetInitData(&bitpattern, &contData[0]);

        for (channel = 0; channel < __osMaxControllers; channel++) {
            if ((contData[channel].status & CONT_ADDR_CRC_ER) == 0) {
                crcErrorCount--;
                break;
            }
        }
        if (channel == __osMaxControllers) {
            crcErrorCount = 0;
        }
    } while (crcErrorCount > 0);

    for (channel = 0; channel < __osMaxControllers; channel++) {
        if ((contData[channel].errno == 0) && ((contData[channel].status & CONT_CARD_ON) != 0)) {
            bits |= (1 << channel);
        }
    }
    __osSiRelAccess();
    *pattern = bits;
    return ret;
}

void __osPfsRequestData(u8 cmd) {
    u8* ptr = (u8*)&__osPfsPifRam;
    __OSContRequesFormat req;
    s32 i;

    __osContLastCmd = cmd;

    __osPfsPifRam.status = CONT_CMD_EXE;

    req.align = CONT_CMD_NOP;
    req.txsize = CONT_CMD_REQUEST_STATUS_TX;
    req.rxsize = CONT_CMD_REQUEST_STATUS_RX;
    req.cmd = cmd;
    req.typeh = CONT_CMD_NOP;
    req.typel = CONT_CMD_NOP;
    req.status = CONT_CMD_NOP;
    req.align1 = CONT_CMD_NOP;

    for (i = 0; i < __osMaxControllers; i++) {
        *((__OSContRequesFormat*)ptr) = req;
        ptr += sizeof(req);
    }
    *ptr = CONT_CMD_END;
}

void __osPfsGetInitData(u8* pattern, OSContStatus* contData) {
    u8* ptr;
    __OSContRequesFormat req;
    s32 i;
    u8 bits = 0;

    ptr = (u8*)&__osPfsPifRam;

    for (i = 0; i < __osMaxControllers; i++, ptr += sizeof(req), contData++) {
        req = *((__OSContRequesFormat*)ptr);
        contData->errno = CHNL_ERR(req);

        if (contData->errno) {
            continue;
        }

        contData->type = ((req.typel << 8) | req.typeh);
#ifdef BBPLAYER
        contData->status = __osBbPakAddress[i] != 0;
#else
        contData->status = req.status;
#endif
        bits |= (1 << i);
    }

#ifdef BBPLAYER
    if (__osBbIsBb && __osBbHackFlags != 0) {
        OSContStatus tmp;

        bits = (bits & ~((1 << __osBbHackFlags) | 1)) | ((bits & 1) << __osBbHackFlags) |
               ((bits & (1 << __osBbHackFlags)) >> __osBbHackFlags);

        contData -= __osMaxControllers;

        tmp = contData[0];
        contData[0] = contData[__osBbHackFlags];
        contData[__osBbHackFlags] = tmp;
    }
#endif

    *pattern = bits;
}
