#ifndef ULTRA64_RSP_H
#define ULTRA64_RSP_H

#include "ultratypes.h"

u32 __osSpGetStatus(void);
void __osSpSetStatus(u32);
s32 __osSpSetPc(u32);
s32 __osSpRawWriteIo(u32, u32);
s32 __osSpRawReadIo(u32, u32*);
s32 __osSpRawStartDma(s32, u32, void*, u32);

#endif
