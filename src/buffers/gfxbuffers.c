#include "alignment.h"
#include "buffers.h"
#include "gfx.h"
#include "ultra64.h"

ALIGNED(16) u64 gGfxSPTaskOutputBuffer[0x3000];

ALIGNED(16) u64 gGfxSPTaskYieldBuffer[OS_YIELD_DATA_SIZE / sizeof(u64)];

ALIGNED(16) u64 gGfxSPTaskStack[SP_DRAM_STACK_SIZE64];

ALIGNED(16) GfxPool gGfxPools[2];
