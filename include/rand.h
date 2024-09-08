#ifndef RAND_H
#define RAND_H

#include "libc64/qrand.h"

// qrand.c function wrapper defines for more friendly names
#define Rand_Next             qrand
#define Rand_Seed             sqrand
#define Rand_ZeroOne          fqrand
#define Rand_Seed_Variable    sqrand_r
#define Rand_Next_Variable    qrand_r
#define Rand_ZeroOne_Variable fqrand_r

#if !PLATFORM_N64
#define Rand_Centered          fqrand2
#define Rand_Centered_Variable fqrand2_r
#endif

// z_actor.c rand functions
f32 Rand_ZeroFloat(f32 f);
f32 Rand_CenteredFloat(f32 f);

#endif
