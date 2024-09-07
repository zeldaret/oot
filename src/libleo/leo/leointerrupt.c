#include "global.h"
#include "ultra64/leo.h"
#include "ultra64/leoappli.h"
#include "ultra64/leodrive.h"
#include "ultra64/internal.h"

extern OSThread* __osRunQueue;
extern OSHWIntr __OSGlobalIntMask;
void __osLeoAbnormalResume(void);
void __osLeoResume(void);

STACK(leoDiskStack, 0x1000);

s32 __osLeoInterrupt(void) {
    u32 stat = 0;
    volatile u32 pi_stat;
    u32 bm_stat;
    __OSTranxInfo* info = &__osDiskHandle->transferInfo;
    __OSBlockInfo* blockInfo = &info->block[info->blockNum];

    pi_stat = IO_READ(PI_STATUS_REG);
    if (pi_stat & PI_STATUS_DMA_BUSY) {
        __OSGlobalIntMask &= ~0x800;
        blockInfo->errStatus = 0x1D;
        __osLeoResume();
        return 1;
    }

    pi_stat = IO_READ(PI_STATUS_REG);
    while (pi_stat & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) {
        pi_stat = IO_READ(PI_STATUS_REG);
    }

    stat = IO_READ(ASIC_STATUS);
    if (stat & 0x2000000) {
        pi_stat = IO_READ(PI_STATUS_REG);
        while (pi_stat & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) {
            pi_stat = IO_READ(PI_STATUS_REG);
        }

        IO_WRITE(ASIC_BM_CTL, info->bmCtlShadow | 0x1000000);
        blockInfo->errStatus = 0;
        return 0;
    }
    if (info->cmdType == 2) {
        return 1;
    }
    if (stat & 0x8000000) {
        pi_stat = IO_READ(PI_STATUS_REG);
        while (pi_stat & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) {
            pi_stat = IO_READ(PI_STATUS_REG);
        }

        stat = IO_READ(ASIC_STATUS);
        blockInfo->errStatus = 0x16;
        __osLeoResume();
        IO_WRITE(PI_STATUS_REG, 2);
        __OSGlobalIntMask |= 0x100401;
        return 1;
    }
    if (info->cmdType == 1) {
        if (!(stat & 0x40000000)) {
            if ((info->sectorNum + 1) != (info->transferMode * 0x55)) {
                blockInfo->errStatus = 0x18;
                __osLeoAbnormalResume();
                return 1;
            }
            IO_WRITE(PI_STATUS_REG, 2);
            __OSGlobalIntMask |= 0x100401;
            blockInfo->errStatus = 0;
            __osLeoResume();
            return 1;
        } else {
            blockInfo->dramAddr = (u8*)(blockInfo->dramAddr) + blockInfo->sectorSize;
            info->sectorNum++;
            __osEPiRawStartDma(__osDiskHandle, 1, ASIC_SECTOR_BUFF, blockInfo->dramAddr, blockInfo->sectorSize);
            return 1;
        }
    } else if (info->cmdType == 0) {
        if (info->transferMode == 3) {
            if (((s32)blockInfo->C1ErrNum + 0x11) < info->sectorNum) {
                blockInfo->errStatus = 0;
                __osLeoAbnormalResume();
                return 1;
            }
            if ((stat & 0x40000000) == 0) {
                blockInfo->errStatus = 0x17;
                __osLeoAbnormalResume();
                return 1;
            }
        } else {
            blockInfo->dramAddr = (u8*)(blockInfo->dramAddr) + blockInfo->sectorSize;
        }

        bm_stat = IO_READ(ASIC_BM_STATUS);
        if (((bm_stat & 0x200000) && (bm_stat & 0x400000)) || (bm_stat & 0x2000000)) {
            if (blockInfo->C1ErrNum >= 4) {
                if ((info->transferMode != 3) || (info->sectorNum >= 0x53)) {
                    blockInfo->errStatus = 0x17;
                    __osLeoAbnormalResume();
                    return 1;
                }
            } else {
                int errNum = blockInfo->C1ErrNum;

                blockInfo->C1ErrSector[errNum] = info->sectorNum + 1;
            }
            blockInfo->C1ErrNum++;
        }

        if (stat & 0x10000000) {
            if (info->sectorNum != 0x57) {
                blockInfo->errStatus = 0x18;
                __osLeoAbnormalResume();
                return 1;
            }
            if ((info->transferMode == 2) && (info->blockNum == 0)) {
                info->blockNum = 1;
                info->sectorNum = -1;
                info->block[1].dramAddr = (u8*)(info->block[1].dramAddr) - info->block[1].sectorSize;
                blockInfo->errStatus = 0x16;
            } else {
                IO_WRITE(PI_STATUS_REG, 2);
                __OSGlobalIntMask |= 0x100401;
                info->cmdType = 2;
                blockInfo->errStatus = 0;
            }
            __osEPiRawStartDma(__osDiskHandle, 0, ASIC_C2_BUFF, blockInfo->C2Addr, blockInfo->sectorSize * 4);
            return 1;
        }
        if ((info->sectorNum == -1) && (info->transferMode == 2) && (info->blockNum == 1)) {
            __OSBlockInfo* bptr = info->block;

            if (bptr->C1ErrNum == 0) {
                if (((u32*)bptr->C2Addr)[0] | ((u32*)bptr->C2Addr)[1] | ((u32*)bptr->C2Addr)[2] |
                    ((u32*)bptr->C2Addr)[3]) {
                    bptr->errStatus = 0x17;
                    __osLeoAbnormalResume();
                    return 1;
                }
            }
            bptr->errStatus = 0;
            __osLeoResume();
        }
        info->sectorNum++;
        if (stat & 0x40000000) {
            if (info->sectorNum >= 0x55) {
                blockInfo->errStatus = 0x18;
                __osLeoAbnormalResume();
                return 1;
            }
            __osEPiRawStartDma(__osDiskHandle, 0, ASIC_SECTOR_BUFF, blockInfo->dramAddr, blockInfo->sectorSize);
            blockInfo->errStatus = 0;
            return 1;
        } else if (info->sectorNum < 0x55) {
            blockInfo->errStatus = 0x18;
            __osLeoAbnormalResume();
            return 1;
        }
        return 1;
    } else {
        blockInfo->errStatus = 4;
        __osLeoAbnormalResume();
        return 1;
    }
}

// static
void __osLeoAbnormalResume(void) {
    __OSTranxInfo* info;
    u32 pi_stat;

    info = &__osDiskHandle->transferInfo;
    pi_stat = IO_READ(PI_STATUS_REG);
    while (pi_stat & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) {
        pi_stat = IO_READ(PI_STATUS_REG);
    }

    IO_WRITE(ASIC_BM_CTL, info->bmCtlShadow | 0x10000000);
    pi_stat = IO_READ(PI_STATUS_REG);
    while (pi_stat & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) {
        pi_stat = IO_READ(PI_STATUS_REG);
    }

    IO_WRITE(ASIC_BM_CTL, info->bmCtlShadow);
    __osLeoResume();
    IO_WRITE(PI_STATUS_REG, 2);
    __OSGlobalIntMask |= 0x100401;
}

// static
void __osLeoResume(void) {
    __OSEventState* es;
    OSMesgQueue* mq;
    s32 last;

    es = &__osEventStateTab[8];
    mq = es->queue;
    if ((mq == 0) || (mq->validCount >= mq->msgCount)) {
        return;
    }
    last = (mq->first + mq->validCount) % mq->msgCount;
    mq->msg[last] = es->msg;
    mq->validCount++;
    if (mq->mtqueue->next != NULL) {
        __osEnqueueThread(&__osRunQueue, __osPopThread(&mq->mtqueue));
    }
}
