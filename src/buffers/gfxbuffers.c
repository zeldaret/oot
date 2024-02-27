#include "z64.h"

ALIGNED16 u64 gGfxSPTaskOutputBuffer[0x3000];

ALIGNED16 u64 gGfxSPTaskYieldBuffer[OS_YIELD_DATA_SIZE / sizeof(u64)];

ALIGNED16 u64 gGfxSPTaskStack[SP_DRAM_STACK_SIZE64];

ALIGNED16 GfxPool gGfxPools[2];
