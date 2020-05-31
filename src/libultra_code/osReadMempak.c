#include <ultra64.h>
#include <global.h>

#include <ultra64/controller.h>

#define BLOCKSIZE 32

s32 osReadMempak(OSMesgQueue* ctrlrqueue, s32 ctrlridx, u16 addr, u8* data) {
    s32 ret;
    s32 i;
    u8* bufptr;
    s32 read_try_count = 2;

    __osSiGetAccess();
    do {
        bufptr = &pifMempakBuf;
        if ((__osContLastPoll != 2) || (__osPfsLastChannel != ctrlridx)) {

            __osContLastPoll = 2;
            __osPfsLastChannel = ctrlridx;
            // clang-format off
            for (i = 0; i < ctrlridx; i++) { *bufptr++ = 0; }
            // clang-format on
            pifMempakBuf.status = 1;
            ((__OSContRamHeader*)bufptr)->unk_00 = 0xFF;
            ((__OSContRamHeader*)bufptr)->txsize = 3;
            ((__OSContRamHeader*)bufptr)->rxsize = 0x21;
            ((__OSContRamHeader*)bufptr)->poll = CONT_CMD_READ_MEMPACK; // read mempak; send byte 0
            ((__OSContRamHeader*)bufptr)->datacrc = 0xFF;               // read mempak; send byte 0
            // Received bytes are 6-26 inclusive
            bufptr[sizeof(__OSContRamHeader)] = CONT_CMD_END; // End of commands
        } else {
            bufptr += ctrlridx;
        }
        ((__OSContRamHeader*)bufptr)->hi = addr >> 3;                                 // send byte 1
        ((__OSContRamHeader*)bufptr)->lo = (s8)(osMempakAddrCRC(addr) | (addr << 5)); // send byte 2
        __osSiRawStartDma(OS_WRITE, &pifMempakBuf);
        osRecvMesg(ctrlrqueue, NULL, OS_MESG_BLOCK);
        __osSiRawStartDma(OS_READ, &pifMempakBuf);
        osRecvMesg(ctrlrqueue, NULL, OS_MESG_BLOCK);
        ret = (((__OSContRamHeader*)bufptr)->rxsize & 0xC0) >> 4;
        if (!ret) {
            if (((__OSContRamHeader*)bufptr)->datacrc != osMempakDataCRC(bufptr + 6)) {
                ret = __osPfsGetStatus(ctrlrqueue, ctrlridx);
                if (ret) {
                    break;
                }
                ret = 4; // Retry
            } else {
                bcopy(bufptr + 6, data, BLOCKSIZE);
            }
        } else {
            ret = 1; // Error
        }
        if (ret != 4) {
            break;
        }
    } while (0 <= read_try_count--);
    __osSiRelAccess();
    return ret;
}
