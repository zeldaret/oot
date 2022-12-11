#include "global.h"

s32 osContStartReadData(OSMesgQueue* mq) {
    s32 ret;

    __osSiGetAccess();
    if (__osContLastCmd != CONT_CMD_READ_BUTTON) {
        __osPackReadData();
        __osSiRawStartDma(OS_WRITE, &__osContPifRam);
        osRecvMesg(mq, NULL, OS_MESG_BLOCK);
    }
    ret = __osSiRawStartDma(OS_READ, &__osContPifRam);
    __osContLastCmd = CONT_CMD_READ_BUTTON;
    __osSiRelAccess();
    return ret;
}

void osContGetReadData(OSContPad* contData) {
    u8* ptr = (u8*)&__osContPifRam;
    __OSContReadFormat read;
    s32 i;

    for (i = 0; i < __osMaxControllers; i++, ptr += sizeof(read), contData++) {
        read = *((__OSContReadFormat*)ptr);

        contData->errno = CHNL_ERR(read);
        if (contData->errno == 0) {
            contData->button = read.button;
            contData->stick_x = read.joyX;
            contData->stick_y = read.joyY;
        }
    };
}

void __osPackReadData(void) {
    u8* ptr = (u8*)&__osContPifRam;
    __OSContReadFormat read;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(__osContPifRam.ram); i++) {
        __osContPifRam.ram[i] = 0;
    }
    __osContPifRam.status = CONT_CMD_EXE;

    read.align = CONT_CMD_NOP;
    read.txsize = CONT_CMD_READ_BUTTON_TX;
    read.rxsize = CONT_CMD_READ_BUTTON_RX;
    read.cmd = CONT_CMD_READ_BUTTON;
    read.button = 0xFFFF;
    read.joyX = -1;
    read.joyY = -1;
    for (i = 0; i < __osMaxControllers; i++) {
        *((__OSContReadFormat*)ptr) = read;
        ptr += sizeof(read);
    }
    *ptr = CONT_CMD_END;
}
