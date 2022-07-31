#include "ultra64.h"
#include "global.h"

s32 __osContRamWrite(OSMesgQueue* mq, s32 channel, u16 address, u8* buffer, s32 force) {
    s32 ret = 0;
    s32 i;
    u8* ptr;
    s32 retry = 2;
    u8 crc;

    if ((force != PFS_FORCE) && (address < PFS_LABEL_AREA) && (address != 0)) {
        return 0;
    }

    __osSiGetAccess();

    do {
        ptr = (u8*)&__osPfsPifRam;

        if (__osContLastCmd != CONT_CMD_WRITE_MEMPACK || __osPfsLastChannel != channel) {
            __osContLastCmd = CONT_CMD_WRITE_MEMPACK;
            __osPfsLastChannel = channel;

            // clang-format off
            for (i = 0; i < channel; i++) { *ptr++ = 0; }
            // clang-format on

            __osPfsPifRam.status = CONT_CMD_EXE;

            READFORMAT(ptr)->unk_00 = CONT_CMD_NOP;
            READFORMAT(ptr)->txsize = CONT_CMD_WRITE_MEMPACK_TX;
            READFORMAT(ptr)->rxsize = CONT_CMD_WRITE_MEMPACK_RX;
            READFORMAT(ptr)->cmd = CONT_CMD_WRITE_MEMPACK;
            READFORMAT(ptr)->datacrc = CONT_CMD_NOP;

            ptr[sizeof(__OSContRamReadFormat)] = CONT_CMD_END;
        } else {
            ptr += channel;
        }
        READFORMAT(ptr)->hi = address >> 3;
        READFORMAT(ptr)->lo = ((address << 5) | __osContAddressCrc(address));

        bcopy(buffer, READFORMAT(ptr)->data, BLOCKSIZE);

        ret = __osSiRawStartDma(OS_WRITE, &__osPfsPifRam);
        crc = __osContDataCrc(buffer);
        osRecvMesg(mq, NULL, OS_MESG_BLOCK);

        ret = __osSiRawStartDma(OS_READ, &__osPfsPifRam);
        osRecvMesg(mq, NULL, OS_MESG_BLOCK);

        ret = CHNL_ERR(*READFORMAT(ptr));
        if (!ret) {
            if (crc != READFORMAT(ptr)->datacrc) {
                if ((ret = __osPfsGetStatus(mq, channel))) {
                    break;
                } else {
                    ret = PFS_ERR_CONTRFAIL;
                }
            }
        } else {
            ret = PFS_ERR_NOPACK;
        }
    } while ((ret == PFS_ERR_CONTRFAIL) && (retry-- >= 0));
    __osSiRelAccess();

    return ret;
}
