#include "ultra64.h"
#include "ultra64/leo_internal.h"
#include "ultra64/internal.h"

void __osLeoAbnormalResume(void);
void __osLeoResume(void);

STACK(leoDiskStack, 0x1000);

s32 __osLeoInterrupt(void) {
    u32 stat;
    volatile u32 pi_stat;
    u32 bm_stat;
    __OSTranxInfo* info;
    __OSBlockInfo* blockInfo;

    info = &__osDiskHandle->transferInfo;
    blockInfo = &info->block[info->blockNum];
    pi_stat = IO_READ(PI_STATUS_REG);
    if (pi_stat & PI_STATUS_DMA_BUSY) {
        __OSGlobalIntMask &= ~(OS_IM_CART & ~OS_IM_RCP);
        blockInfo->errStatus = 0x1D;
        __osLeoResume();
        return 1;
    }
    pi_stat = IO_READ(PI_STATUS_REG);
    while ((pi_stat & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) != 0) {
        pi_stat = IO_READ(PI_STATUS_REG);
    }
    stat = IO_READ(0xA5000508);
    if (stat & 0x02000000) {
        pi_stat = IO_READ(PI_STATUS_REG);
        while ((pi_stat & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) != 0) {
            pi_stat = IO_READ(PI_STATUS_REG);
        }
        IO_WRITE(0xA5000510, info->bmCtlShadow | 0x01000000);
        blockInfo->errStatus = 0;
        return 0;
    }
    if (info->cmdType == 2) {
        return 1;
    }
    if (stat & 0x08000000) {
        pi_stat = IO_READ(PI_STATUS_REG);
        while ((pi_stat & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) != 0) {
            pi_stat = IO_READ(PI_STATUS_REG);
        }
        IO_READ(0xA5000508);
        blockInfo->errStatus = 0x16;
        __osLeoResume();
        IO_WRITE(PI_STATUS_REG, PI_STATUS_CLR_INTR);
        __OSGlobalIntMask |= OS_IM_PI;
        return 1;
    }
    if (info->cmdType == 1) {
        if (!(stat & 0x40000000)) {
            if ((info->sectorNum + 1) != (info->transferMode * 0x55)) {
                blockInfo->errStatus = 0x18;
                __osLeoAbnormalResume();
            } else {
                IO_WRITE(PI_STATUS_REG, PI_STATUS_CLR_INTR);
                __OSGlobalIntMask |= OS_IM_PI;
                blockInfo->errStatus = 0;
                __osLeoResume();
            }
        } else {
            blockInfo->dramAddr = BADCASTP((u32)blockInfo->dramAddr + blockInfo->sectorSize);
            info->sectorNum += 1;
            __osEPiRawStartDma(__osDiskHandle, 1, 0x05000400, blockInfo->dramAddr, blockInfo->sectorSize);
        }
        return 1;
    }
    if (info->cmdType == 0) {
        if (info->transferMode == 3) {
            if ((s32)(blockInfo->C1ErrNum + 0x11) < info->sectorNum) {
                blockInfo->errStatus = 0;
                __osLeoAbnormalResume();
                return 1;
            }
            if (!(stat & 0x40000000)) {
                blockInfo->errStatus = 0x17;
                __osLeoAbnormalResume();
                return 1;
            }
        } else {
            blockInfo->dramAddr = BADCASTP((u32)blockInfo->dramAddr + blockInfo->sectorSize);
        }
        bm_stat = IO_READ(0xA5000510);
        if (((bm_stat & 0x200000) && (bm_stat & 0x400000)) || (bm_stat & 0x02000000)) {
            if (blockInfo->C1ErrNum >= 4) {
                if ((info->transferMode != 3) || (info->sectorNum >= 0x53)) {
                    blockInfo->errStatus = 0x17;
                    __osLeoAbnormalResume();
                    return 1;
                }
            } else {
                int errNum;

                errNum = blockInfo->C1ErrNum;
                blockInfo->C1ErrSector[errNum] = info->sectorNum + 1;
            }
            blockInfo->C1ErrNum += 1;
        }
        if (stat & 0x10000000) {
            if (info->sectorNum != 0x57) {
                blockInfo->errStatus = 0x18;
                __osLeoAbnormalResume();
            } else {
                if ((info->transferMode == 2) && (info->blockNum == 0)) {
                    info->blockNum = 1;
                    info->sectorNum = -1;
                    info->block[1].dramAddr = BADCASTP((u32)info->block[1].dramAddr - info->block[1].sectorSize);
                    blockInfo->errStatus = 0x16;
                } else {
                    IO_WRITE(PI_STATUS_REG, PI_STATUS_CLR_INTR);
                    __OSGlobalIntMask |= OS_IM_PI;
                    info->cmdType = 2;
                    blockInfo->errStatus = 0;
                }
                __osEPiRawStartDma(__osDiskHandle, 0, 0x05000000, blockInfo->C2Addr, blockInfo->sectorSize * 4);
            }
            return 1;
        }
        if ((info->sectorNum == -1) && (info->transferMode == 2) && (info->blockNum == 1)) {
            __OSBlockInfo* bptr = info->block;

            if (info->block[0].C1ErrNum == 0) {
                if ((((u32*)bptr->C2Addr)[0] | ((u32*)bptr->C2Addr)[1] | ((u32*)bptr->C2Addr)[2] |
                     ((u32*)bptr->C2Addr)[3]) != 0) {
                    bptr->errStatus = 0x17;
                    __osLeoAbnormalResume();
                    return 1;
                }
            }
            info->block[0].errStatus = 0;
            __osLeoResume();
        }
        info->sectorNum += 1;
        if (stat & 0x40000000) {
            if (info->sectorNum >= 0x55) {
                blockInfo->errStatus = 0x18;
                __osLeoAbnormalResume();
                return 1;
            }
            __osEPiRawStartDma(__osDiskHandle, 0, 0x05000400, blockInfo->dramAddr, blockInfo->sectorSize);
            blockInfo->errStatus = 0;
            return 1;
        }
        if (info->sectorNum < 0x55) {
            blockInfo->errStatus = 0x18;
            __osLeoAbnormalResume();
            return 1;
        }
        return 1;
    }
    blockInfo->errStatus = 4;
    __osLeoAbnormalResume();
    return 1;
}

void __osLeoAbnormalResume(void) {
    __OSTranxInfo* info;
    u32 pi_stat;

    info = &__osDiskHandle->transferInfo;
    while (((pi_stat = IO_READ(PI_STATUS_REG)) & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) != 0) {}
    IO_WRITE(0xA5000510, info->bmCtlShadow | 0x10000000);
    while (((pi_stat = IO_READ(PI_STATUS_REG)) & (PI_STATUS_DMA_BUSY | PI_STATUS_IO_BUSY)) != 0) {}
    IO_WRITE(0xA5000510, info->bmCtlShadow);
    __osLeoResume();
    IO_WRITE(PI_STATUS_REG, PI_STATUS_CLR_INTR);
    __OSGlobalIntMask |= OS_IM_PI;
}

void __osLeoResume(void) {
    __OSEventState* es;
    OSMesgQueue* mq;
    s32 last;

    es = &__osEventStateTab[OS_EVENT_PI];
    mq = es->queue;
    if (mq != NULL) {
        if (mq->validCount < mq->msgCount) {
            last = (mq->first + mq->validCount) % mq->msgCount;
            mq->msg[last] = es->msg;
            mq->validCount++;
            if (mq->mtqueue->next != NULL) {
                __osEnqueueThread(&__osRunQueue, __osPopThread(&mq->mtqueue));
            }
        }
    }
}
