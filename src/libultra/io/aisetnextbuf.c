#include "global.h"

/**
 * Submits an audio buffer to be consumed by the Audio DAC. The audio interface can queue a second DMA while another
 * is in progress and automatically begin the next one as soon as the current DMA completes. If there is already a
 * second DMA queued (DMA is full), -1 is returned to indicate the buffer could not be submitted.
 *
 * Note that this is not the same as the original libultra osAiSetNextBuffer, see comments in the function.
 *
 * @param buf Next audio buffer. Must be an 8-byte aligned KSEG0 (0x80XXXXXX) address.
 * @param size Length of next audio buffer in bytes, maximum size 0x40000 bytes / 256 KiB. Should be a multiple of 8.
 * @return 0 if the DMA was enqueued successfully, -1 if the DMA could not yet be queued.
 */
s32 osAiSetNextBuffer(void* buf, u32 size) {
    static u8 hdwrBugFlag = false;
    u32 bufAdjusted = (u32)buf;
    s32 status;

    // Workaround for a hardware bug. If the end of the previous buffer was on an 0x2000 byte boundary, adjust the
    // start of the next buffer.
    if (hdwrBugFlag) {
        bufAdjusted -= 0x2000;
    }
    // Current buffer ends on an 0x2000 byte boundary, set flag to account for this in next buffer.
    if ((((u32)buf + size) & 0x1FFF) == 0) {
        hdwrBugFlag = true;
    } else {
        hdwrBugFlag = false;
    }

    // Originally a call to __osAiDeviceBusy
    //! @bug The original __osAiDeviceBusy call was above the hardware bug workaround to ensure that it was only
    //! performed when a transfer was guaranteed to start. If this condition passes and this function returns without
    //! submitting a buffer for DMA, the code above will lose track of when to apply the workaround.
    status = IO_READ(AI_STATUS_REG);
    if (status & AI_STATUS_FIFO_FULL) {
        return -1;
    }

    // OS_K0_TO_PHYSICAL replaces osVirtualToPhysical, this replacement assumes that only KSEG0 addresses are given.
    IO_WRITE(AI_DRAM_ADDR_REG, OS_K0_TO_PHYSICAL(bufAdjusted));
    IO_WRITE(AI_LEN_REG, size);
    return 0;
}
