#ifndef RAND_H
#define RAND_H

#include "ultra64.h"
#include "versions.h"

u32 Rand_Next(void);
void Rand_Seed(u32 seed);
f32 Rand_ZeroOne(void);
void Rand_Seed_Variable(u32* rndNum, u32 seed);
u32 Rand_Next_Variable(u32* rndNum);
f32 Rand_ZeroOne_Variable(u32* rndNum);

#if RAND_VERSION == RAND_GC
f32 Rand_Centered(void);
f32 Rand_Centered_Variable(u32* rndNum);
#endif

#endif
