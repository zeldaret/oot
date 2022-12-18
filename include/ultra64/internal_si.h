#ifndef ULTRA64_INTERNAL_SI
#define ULTRA64_INTERNAL_SI

#include "ultratypes.h"

s32 __osSiRawWriteIo(u32, u32);
s32 __osSiRawReadIo(u32, u32*);
s32 __osSiRawStartDma(s32, void*);

#endif
