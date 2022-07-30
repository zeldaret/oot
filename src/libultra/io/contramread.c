#include "global.h"

#define BLOCKSIZE 32

s32 __osPfsLastChannel = -1;

s32 __osContRamRead(OSMesgQueue* ctrlrqueue, s32 channel, u16 addr, u8* data) {
    s32 ret;
    s32 i;
    u8* ptr;
    s32 retryCount = 2;

    __osSiGetAccess();
    do {
        ptr = (u8*)&__osPfsPifRam;

        if (__osContLastCmd != CONT_CMD_READ_MEMPACK || __osPfsLastChannel != channel) {
            __osContLastCmd = CONT_CMD_READ_MEMPACK;
            __osPfsLastChannel = channel;
            // clang-format off
            for (i = 0; i < channel; i++) { *ptr++ = CONT_CMD_SKIP_CHNL; }
            // clang-format on
            __osPfsPifRam.status = CONT_CMD_EXE;
            READFORMAT(ptr)->unk_00 = CONT_CMD_NOP;
            READFORMAT(ptr)->txsize = CONT_CMD_READ_MEMPACK_TX;
            READFORMAT(ptr)->rxsize = CONT_CMD_READ_MEMPACK_RX;
            READFORMAT(ptr)->cmd = CONT_CMD_READ_MEMPACK;
            READFORMAT(ptr)->datacrc = CONT_CMD_NOP;
            // Received bytes are 6-26 inclusive
            ptr[sizeof(__OSContRamReadFormat)] = CONT_CMD_END; // End of commands
        } else {
            ptr += channel;
        }

        READFORMAT(ptr)->hi = addr >> 3;
        READFORMAT(ptr)->lo = (s8)(__osContAddressCrc(addr) | (addr << 5));
        __osSiRawStartDma(OS_WRITE, &__osPfsPifRam);
        osRecvMesg(ctrlrqueue, NULL, OS_MESG_BLOCK);
        __osSiRawStartDma(OS_READ, &__osPfsPifRam);
        osRecvMesg(ctrlrqueue, NULL, OS_MESG_BLOCK);

        ret = CHNL_ERR(*READFORMAT(ptr));
        if (!ret) {
            if (READFORMAT(ptr)->datacrc != __osContDataCrc(ptr + 6)) {
                ret = __osPfsGetStatus(ctrlrqueue, channel);
                if (ret) {
                    break;
                }
                ret = 4; // Retry
            } else {
                bcopy(ptr + 6, data, BLOCKSIZE);
            }
        } else {
            ret = 1; // Error
        }
        if (ret != 4) {
            break;
        }
    } while (0 <= retryCount--);
    __osSiRelAccess();

    return ret;
}
