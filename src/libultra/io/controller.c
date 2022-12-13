#include "global.h"

OSPifRam __osContPifRam;
u8 __osContLastCmd;
u8 __osMaxControllers; // always 4

OSTimer __osEepromTimer;
OSMesgQueue __osEepromTimerMsgQueue;
OSMesg __osEepromTimerMsg;

u32 __osContInitialized = false;

#define HALF_SECOND OS_USEC_TO_CYCLES(500000)

s32 osContInit(OSMesgQueue* mq, u8* ctlBitfield, OSContStatus* status) {
    OSMesg msg;
    s32 ret = 0;
    OSTime currentTime;
    OSTimer timer;
    OSMesgQueue timerMesgQueue;

    if (__osContInitialized) {
        return 0;
    }
    __osContInitialized = true;

    currentTime = osGetTime();
    if (currentTime < HALF_SECOND) {
        osCreateMesgQueue(&timerMesgQueue, &msg, 1);
        osSetTimer(&timer, HALF_SECOND - currentTime, 0, &timerMesgQueue, &msg);
        osRecvMesg(&timerMesgQueue, &msg, OS_MESG_BLOCK);
    }

    __osMaxControllers = MAXCONTROLLERS;
    __osPackRequestData(CONT_CMD_REQUEST_STATUS);

    ret = __osSiRawStartDma(OS_WRITE, &__osContPifRam);
    osRecvMesg(mq, &msg, OS_MESG_BLOCK);

    ret = __osSiRawStartDma(OS_READ, &__osContPifRam);
    osRecvMesg(mq, &msg, OS_MESG_BLOCK);

    __osContGetInitData(ctlBitfield, status);
    __osContLastCmd = CONT_CMD_REQUEST_STATUS;
    __osSiCreateAccessQueue();
    osCreateMesgQueue(&__osEepromTimerMsgQueue, &__osEepromTimerMsg, 1);

    return ret;
}

void __osContGetInitData(u8* ctlBitfield, OSContStatus* data) {
    u8* ptr;
    __OSContRequesFormat req;
    s32 i;
    u8 bitfieldTemp = 0;

    ptr = (u8*)&__osContPifRam;

    for (i = 0; i < __osMaxControllers; i++, ptr += sizeof(req), data++) {
        req = *(__OSContRequesFormat*)ptr;
        data->errno = CHNL_ERR(req);
        if (data->errno) {
            continue;
        }
        data->type = req.typel << 8 | req.typeh;
        data->status = req.status;
        bitfieldTemp |= 1 << i;
    }
    *ctlBitfield = bitfieldTemp;
}

void __osPackRequestData(u8 poll) {
    u8* ptr;
    __OSContRequesFormat req;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(__osContPifRam.ram); i++) {
        __osContPifRam.ram[i] = 0;
    }
    __osContPifRam.status = CONT_CMD_EXE;

    ptr = (u8*)&__osContPifRam;

    req.align = CONT_CMD_NOP;
    req.txsize = CONT_CMD_RESET_TX;
    req.rxsize = CONT_CMD_RESET_RX;
    req.cmd = poll;
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
