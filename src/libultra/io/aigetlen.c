#include "global.h"

/**
 * Returns the number of bytes remaining in a currently ongoing audio DMA.
 *
 * Note that audio DMA is double-buffered, a DMA can be queued while another is in-progress. This only returns
 * information about the currently in-progress DMA.
 */
u32 osAiGetLength(void) {
    return IO_READ(AI_LEN_REG);
}
