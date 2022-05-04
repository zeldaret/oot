#include "z64.h"

// 0x18000 bytes
u64 gGfxSPTaskOutputBuffer[0x3000];

// 0xC00 bytes
u64 gGfxSPTaskYieldBuffer[OS_YIELD_DATA_SIZE / sizeof(u64)];

// 0x400 bytes
u64 gGfxSPTaskStack[SP_DRAM_STACK_SIZE64];

// 0x12410 bytes each; 0x24820 bytes total
GfxPool gGfxPools[2];
