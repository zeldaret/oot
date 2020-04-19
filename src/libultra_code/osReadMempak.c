#include <ultra64.h>
#include <global.h>

#include <ultra64/controller.h>

s32 osReadMempak(OSMesgQueue* ctrlrqueue, s32 ctrlridx, u16 addr, PIF_mempak_data_t* data) {
    s32 ret;
    s32 i;
    u8* bufptr;
    s32 read_try_count = 2;

    __osSiGetAccess();
    do {
        if ((_osCont_lastPollType != 2) || (ctrlridx != D_80134D20)) {
            bufptr = &pifMempakBuf.bytes[0];
            _osCont_lastPollType = 2;
            D_80134D20 = ctrlridx;
            // clang-format off
            // NOLINTNEXTLINE
            for (i = 0; i < ctrlridx; i++) *bufptr++ = 0;
            // clang-format on
            pifMempakBuf.status_control = 1;
            ((PIF_header_t*)bufptr)->slot_type = 0xff;
            ((PIF_header_t*)bufptr)->bytes_send = 3;
            ((PIF_header_t*)bufptr)->status_hi_bytes_rec_lo = 0x21;
            ((PIF_header_t*)bufptr)->command = 2; // read mempak; send byte 0
            // Received bytes are 6-26 inclusive
            bufptr[0x26] = 0xff; // last byte of receive
            bufptr[0x27] = 0xfe; // End of commands
        } else {
            bufptr = &pifMempakBuf.bytes[ctrlridx];
        }
        bufptr[4] = addr >> 3;                                 // send byte 1
        bufptr[5] = (s8)(osMempakAddrCRC(addr) | (addr << 5)); // send byte 2
        __osSiRawStartDma(1, &pifMempakBuf);
        osRecvMesg(ctrlrqueue, 0, 1);
        __osSiRawStartDma(0, &pifMempakBuf);
        osRecvMesg(ctrlrqueue, 0, 1);
        ret = (((PIF_header_t*)bufptr)->status_hi_bytes_rec_lo & 0xc0) >> 4;
        if (!ret) {
            if (bufptr[0x26] != osMempakDataCRC(bufptr + 6)) {
                ret = func_80101910(ctrlrqueue, ctrlridx);
                if (ret) {
                    break;
                }
                ret = 4; // Retry
            } else {
                bcopy(bufptr + 6, data, 0x20);
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
