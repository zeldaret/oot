#include "global.h"

typedef struct {
    /* 0x00 */ OSPiHandle piHandle;
    /* 0x74 */ OSIoMesg ioMesg;
    /* 0x8C */ OSMesgQueue mesgQ;
} struct_800A9D40;

struct_800A9D40 D_8012A690 = { 0 };

void func_800A9D40(u32 addr, u8 handleType, u8 handleDomain, u8 handleLatency, u8 handlePageSize, u8 handleRelDuration,
                   u8 handlePulse, u32 handleSpeed) {
    u32 prevInt;
    OSPiHandle* handle = &D_8012A690.piHandle;

    if ((u32)OS_PHYSICAL_TO_K1(addr) != (*handle).baseAddress) {
        D_8012A690.piHandle.type = handleType;
        (*handle).baseAddress = OS_PHYSICAL_TO_K1(addr);
        D_8012A690.piHandle.latency = handleLatency;
        D_8012A690.piHandle.pulse = handlePulse;
        D_8012A690.piHandle.pageSize = handlePageSize;
        D_8012A690.piHandle.relDuration = handleRelDuration;
        D_8012A690.piHandle.domain = handleDomain;
        D_8012A690.piHandle.speed = handleSpeed;
        bzero(&D_8012A690.piHandle.transferInfo, sizeof(__OSTranxInfo));

        prevInt = __osDisableInt();
        D_8012A690.piHandle.next = __osPiTable;
        __osPiTable = &D_8012A690.piHandle;
        __osRestoreInt(prevInt);

        D_8012A690.ioMesg.hdr.pri = 0;
        D_8012A690.ioMesg.hdr.retQueue = &D_8012A690.mesgQ;
        D_8012A690.ioMesg.devAddr = addr;
    }
}

void func_800A9E14(UNK_PTR dramAddr, size_t size, UNK_TYPE arg2) {
    OSMesg mesg;

    osCreateMesgQueue(&D_8012A690.mesgQ, &mesg, 1);
    D_8012A690.ioMesg.dramAddr = dramAddr;
    D_8012A690.ioMesg.size = size;
    osWritebackDCache(dramAddr, size);
    osEPiStartDma(&D_8012A690.piHandle, &D_8012A690.ioMesg, arg2);
    osRecvMesg(&D_8012A690.mesgQ, &mesg, 1);
    osInvalDCache(dramAddr, size);
}

void Sram_ReadWrite(UNK_TYPE arg0, UNK_PTR dramAddr, size_t size, UNK_TYPE arg3) {
    osSyncPrintf("ssSRAMReadWrite:%08x %08x %08x %d\n", arg0, dramAddr, size, arg3);
    func_800A9D40(arg0, 3, 1, 5, 0xd, 2, 0xc, 0);
    func_800A9E14(dramAddr, size, arg3);
}
