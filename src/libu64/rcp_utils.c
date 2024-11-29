#include "global.h"

#if PLATFORM_N64 || DEBUG_FEATURES
#define RCP_UTILS_PRINTF osSyncPrintf
#elif IDO_PRINTF_WORKAROUND
#define RCP_UTILS_PRINTF(args) (void)0
#else
#define RCP_UTILS_PRINTF(format, ...) (void)0
#endif

#define printSpStatus(x, name) \
    if (x & SP_STATUS_##name)  \
    RCP_UTILS_PRINTF(#name " ")

#define printDpStatus(x, name) \
    if (x & DPC_STATUS_##name) \
    RCP_UTILS_PRINTF(#name " ")

void RcpUtils_PrintRegisterStatus(void) {
    u32 spStatus = __osSpGetStatus();
    u32 dpStatus = osDpGetStatus();

    RCP_UTILS_PRINTF("osSpGetStatus=%08x: ", spStatus);
    printSpStatus(spStatus, HALT);
    printSpStatus(spStatus, BROKE);
    printSpStatus(spStatus, DMA_BUSY);
    printSpStatus(spStatus, DMA_FULL);
    printSpStatus(spStatus, IO_FULL);
    printSpStatus(spStatus, SSTEP);
    printSpStatus(spStatus, INTR_BREAK);
    printSpStatus(spStatus, YIELD);
    printSpStatus(spStatus, YIELDED);
    printSpStatus(spStatus, TASKDONE);
    printSpStatus(spStatus, SIG3);
    printSpStatus(spStatus, SIG4);
    printSpStatus(spStatus, SIG5);
    printSpStatus(spStatus, SIG6);
    printSpStatus(spStatus, SIG7);
    RCP_UTILS_PRINTF("\n");

    RCP_UTILS_PRINTF("osDpGetStatus=%08x:", dpStatus);
    printDpStatus(dpStatus, XBUS_DMEM_DMA);
    printDpStatus(dpStatus, FREEZE);
    printDpStatus(dpStatus, FLUSH);
    printDpStatus(dpStatus, START_GCLK);
    printDpStatus(dpStatus, TMEM_BUSY);
    printDpStatus(dpStatus, PIPE_BUSY);
    printDpStatus(dpStatus, CMD_BUSY);
    printDpStatus(dpStatus, CBUF_READY);
    printDpStatus(dpStatus, DMA_BUSY);
    printDpStatus(dpStatus, END_VALID);
    printDpStatus(dpStatus, START_VALID);
    RCP_UTILS_PRINTF("\n");
}

void RcpUtils_Reset(void) {
    RcpUtils_PrintRegisterStatus();
    // Flush the RDP pipeline and freeze clock counter
    osDpSetStatus(DPC_SET_FREEZE | DPC_SET_FLUSH);
    // Halt the RSP, disable interrupt on break and set "task done" signal
    __osSpSetStatus(SP_SET_HALT | SP_SET_TASKDONE | SP_CLR_INTR_BREAK);
    RcpUtils_PrintRegisterStatus();
}
