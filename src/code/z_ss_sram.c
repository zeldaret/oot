#include "ultra64.h"
#include "global.h"

typedef struct {
    /* 0x00 */ OSPiHandle piHandle;
    /* 0x74 */ OSIoMesg ioMesg;
    /* 0x8C */ OSMesgQueue mesgQ;
} SsSramContext; // size = 0xA4

SsSramContext sSsSramContext = { 0 };

void SsSram_Init(u32 addr, u8 handleType, u8 handleDomain, u8 handleLatency, u8 handlePageSize, u8 handleRelDuration,
                 u8 handlePulse, u32 handleSpeed) {
    u32 intDisabled;
    OSPiHandle* handle = &sSsSramContext.piHandle;

    if ((u32)OS_PHYSICAL_TO_K1(addr) != (*handle).baseAddress) {
        sSsSramContext.piHandle.type = handleType;
        (*handle).baseAddress = OS_PHYSICAL_TO_K1(addr);
        sSsSramContext.piHandle.latency = handleLatency;
        sSsSramContext.piHandle.pulse = handlePulse;
        sSsSramContext.piHandle.pageSize = handlePageSize;
        sSsSramContext.piHandle.relDuration = handleRelDuration;
        sSsSramContext.piHandle.domain = handleDomain;
        sSsSramContext.piHandle.speed = handleSpeed;
        bzero(&sSsSramContext.piHandle.transferInfo, sizeof(__OSTranxInfo));
        intDisabled = __osDisableInt();
        sSsSramContext.piHandle.next = __osPiTable;
        __osPiTable = &sSsSramContext.piHandle;
        __osRestoreInt(intDisabled);
        sSsSramContext.ioMesg.hdr.pri = 0;
        sSsSramContext.ioMesg.hdr.retQueue = &sSsSramContext.mesgQ;
        sSsSramContext.ioMesg.devAddr = addr;
    }
}

void SsSram_Dma(void* dramAddr, size_t size, s32 direction) {
    OSMesg mesg;

    osCreateMesgQueue(&sSsSramContext.mesgQ, &mesg, 1);
    sSsSramContext.ioMesg.dramAddr = dramAddr;
    sSsSramContext.ioMesg.size = size;
    osWritebackDCache(dramAddr, size);
    osEPiStartDma(&sSsSramContext.piHandle, &sSsSramContext.ioMesg, direction);
    osRecvMesg(&sSsSramContext.mesgQ, &mesg, OS_MESG_BLOCK);
    osInvalDCache(dramAddr, size);
}

void SsSram_ReadWrite(u32 addr, void* dramAddr, size_t size, s32 direction) {
    osSyncPrintf("ssSRAMReadWrite:%08x %08x %08x %d\n", addr, dramAddr, size, direction);
    SsSram_Init(addr, DEVICE_TYPE_SRAM, 1, 5, 0xD, 2, 0xC, 0);
    SsSram_Dma(dramAddr, size, direction);
}
