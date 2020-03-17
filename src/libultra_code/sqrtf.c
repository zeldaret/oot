#include <math.h>

float sqrtf(float f);

#ifndef __GNUC__
#pragma intrinsic(sqrtf)
#define __builtin_sqrtf sqrtf
#endif

float sqrtf(float f) {
    return __builtin_sqrtf(f);
}
