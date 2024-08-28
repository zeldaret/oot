#include "global.h"
#include "ultra64/internal.h"
#include "ultra64/leodrive.h"

// os.h
#define LEO_BLOCK_MODE 1
#define LEO_TRACK_MODE 2
#define LEO_SECTOR_MODE 3

void __osDevMgrMain(void* arg) {
    OSIoMesg* ioMesg = NULL;
    OSMesg em;
    OSMesg dummy;
    s32 ret;
    OSDevMgr* dm = (OSDevMgr*)arg;
    s32 messageSend;

    while (true) {
        osRecvMesg(dm->cmdQueue, (OSMesg*)&ioMesg, OS_MESG_BLOCK);

        if ((ioMesg->piHandle != NULL) && (ioMesg->piHandle->type == DEVICE_TYPE_64DD) &&
            ((ioMesg->piHandle->transferInfo.cmdType == 0) || (ioMesg->piHandle->transferInfo.cmdType == 1))) {
            __OSBlockInfo* blockInfo;
            __OSTranxInfo* info;

            info = &ioMesg->piHandle->transferInfo;
            blockInfo = &info->block[info->blockNum];
            info->sectorNum = -1;

            if (info->transferMode != LEO_SECTOR_MODE) {
                blockInfo->dramAddr = (void*)((u32)blockInfo->dramAddr - blockInfo->sectorSize);
            }

            if (info->transferMode == LEO_TRACK_MODE && ioMesg->piHandle->transferInfo.cmdType == 0) {
                messageSend = 1;
            } else {
                messageSend = 0;
            }

            osRecvMesg(dm->acsQueue, &dummy, OS_MESG_BLOCK);
            __osResetGlobalIntMask(OS_IM_PI);
            __osEPiRawWriteIo(ioMesg->piHandle, ASIC_BM_CTL, info->bmCtlShadow | LEO_BM_START);

        readblock1:
            osRecvMesg(dm->evtQueue, &em, OS_MESG_BLOCK);

            info = &ioMesg->piHandle->transferInfo;
            blockInfo = &info->block[info->blockNum];

            if (blockInfo->errStatus == 29) {
                u32 stat;

                __osEPiRawWriteIo(ioMesg->piHandle, ASIC_BM_CTL, info->bmCtlShadow | LEO_BM_RESET);
                __osEPiRawWriteIo(ioMesg->piHandle, ASIC_BM_CTL, info->bmCtlShadow);
                __osEPiRawReadIo(ioMesg->piHandle, ASIC_STATUS, &stat);

                if (stat & LEO_STATUS_MECHANIC_INTR) {
                    __osEPiRawWriteIo(ioMesg->piHandle, ASIC_BM_CTL, info->bmCtlShadow | LEO_BM_CLR_MECHANIC_INTR);
                }
                blockInfo->errStatus = 4;

                IO_WRITE(PI_STATUS_REG, PI_STATUS_CLR_INTR);
                __osSetGlobalIntMask(OS_IM_CART | OS_IM_PI);
            }
            osSendMesg(ioMesg->hdr.retQueue, (OSMesg)ioMesg, OS_MESG_NOBLOCK);

            if (messageSend == 1 && ioMesg->piHandle->transferInfo.block[0].errStatus == 0) {
                // Run the above once more
                messageSend = 0;
                goto readblock1;
            }

            osSendMesg(dm->acsQueue, NULL, OS_MESG_NOBLOCK);
            if (ioMesg->piHandle->transferInfo.blockNum == 1) {
                osYieldThread();
            }
        } else {
            switch (ioMesg->hdr.type) {
                case OS_MESG_TYPE_DMAREAD:
                    osRecvMesg(dm->acsQueue, &dummy, OS_MESG_BLOCK);
                    ret = dm->dma(OS_READ, ioMesg->devAddr, ioMesg->dramAddr, ioMesg->size);
                    break;
                case OS_MESG_TYPE_DMAWRITE:
                    osRecvMesg(dm->acsQueue, &dummy, OS_MESG_BLOCK);
                    ret = dm->dma(OS_WRITE, ioMesg->devAddr, ioMesg->dramAddr, ioMesg->size);
                    break;
                case OS_MESG_TYPE_EDMAREAD:
                    osRecvMesg(dm->acsQueue, &dummy, OS_MESG_BLOCK);
                    ret = dm->edma(ioMesg->piHandle, OS_READ, ioMesg->devAddr, ioMesg->dramAddr, ioMesg->size);
                    break;
                case OS_MESG_TYPE_EDMAWRITE:
                    osRecvMesg(dm->acsQueue, &dummy, OS_MESG_BLOCK);
                    ret = dm->edma(ioMesg->piHandle, OS_WRITE, ioMesg->devAddr, ioMesg->dramAddr, ioMesg->size);
                    break;
                case OS_MESG_TYPE_LOOPBACK:
                    osSendMesg(ioMesg->hdr.retQueue, (OSMesg)ioMesg, OS_MESG_NOBLOCK);
                    ret = -1;
                    break;
                default:
                    ret = -1;
                    break;
            }

            if (ret == 0) {
                osRecvMesg(dm->evtQueue, &em, OS_MESG_BLOCK);
                osSendMesg(ioMesg->hdr.retQueue, (OSMesg)ioMesg, OS_MESG_NOBLOCK);
                osSendMesg(dm->acsQueue, NULL, OS_MESG_NOBLOCK);
            }
        }
    }
}
