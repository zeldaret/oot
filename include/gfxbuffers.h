#ifndef GFXBUFFERS_H
#define GFXBUFFERS_H

#include "ultra64.h"

typedef struct {
    /* 0x00000 */ u16 headMagic; // GFXPOOL_HEAD_MAGIC
    /* 0x00008 */ Gfx polyOpaBuffer[0x17E0];
    /* 0x0BF08 */ Gfx polyXluBuffer[0x800];
    /* 0x0FF08 */ Gfx overlayBuffer[0x400];
    /* 0x11F08 */ Gfx workBuffer[0x80];
    /* 0x11308 */ Gfx unusedBuffer[0x20];
    /* 0x12408 */ u16 tailMagic; // GFXPOOL_TAIL_MAGIC
} GfxPool; // size = 0x12410

extern u64 gGfxSPTaskOutputBuffer[0x3000]; // 0x18000 bytes
extern u64 gGfxSPTaskYieldBuffer[OS_YIELD_DATA_SIZE / sizeof(u64)]; // 0xC00 bytes
extern u64 gGfxSPTaskStack[SP_DRAM_STACK_SIZE64]; // 0x400 bytes
extern GfxPool gGfxPools[2]; // 0x24820 bytes

#endif
