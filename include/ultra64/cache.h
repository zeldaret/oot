#ifndef ULTRA64_CACHE_H
#define ULTRA64_CACHE_H

#include "ultratypes.h"

#define	OS_DCACHE_ROUNDUP_ADDR(x) (void*)(((((u32)(x) + 0xf) / 0x10) * 0x10))
#define	OS_DCACHE_ROUNDUP_SIZE(x)   (u32)(((((u32)(x) + 0xf) / 0x10) * 0x10))

void osInvalDCache(void*, s32);
void osInvalICache(void*, s32);
void osWritebackDCache(void*, s32);
void osWritebackDCacheAll(void);

#endif
