#ifndef ULTRA64_INTERNAL_REG
#define ULTRA64_INTERNAL_REG

#include "ultratypes.h"

void __osSetSR(u32);
u32 __osGetSR(void);
void __osSetWatchLo(u32);
void __osSetCompare(u32);
void __osSetFpcCsr(u32);
u32 __osGetFpcCsr(void);
u32 __osGetCause(void);
u32 osGetCount(void);
u32 __osDisableInt(void);
void __osRestoreInt(u32);

#endif
