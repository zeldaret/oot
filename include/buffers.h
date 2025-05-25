#ifndef BUFFERS_H
#define BUFFERS_H

#include "gfx.h"
#include "ultra64.h"

extern u16 gZBuffer[SCREEN_HEIGHT][SCREEN_WIDTH]; // 0x25800 bytes
extern u64 gGfxSPTaskOutputBuffer[0x3000]; // 0x18000 bytes
extern u64 gGfxSPTaskYieldBuffer[OS_YIELD_DATA_SIZE / sizeof(u64)]; // 0xC00 bytes
extern u64 gGfxSPTaskStack[SP_DRAM_STACK_SIZE64]; // 0x400 bytes
extern GfxPool gGfxPools[2]; // 0x24820 bytes
extern u8 gAudioHeap[0x38000]; // 0x38000 bytes

#endif
