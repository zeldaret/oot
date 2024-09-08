#ifndef LIBC64_QRAND_H
#define LIBC64_QRAND_H

#include "ultra64.h"

u32 qrand(void);
void sqrand(u32 seed);
f32 fqrand(void);
void sqrand_r(u32* rndNum, u32 seed);
u32 qrand_r(u32* rndNum);
f32 fqrand_r(u32* rndNum);

#if !PLATFORM_N64
f32 fqrand2(void);
f32 fqrand2_r(u32* rndNum);
#endif

#endif
