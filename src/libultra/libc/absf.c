#include "global.h"

float absf(float n) {
#ifndef __GNUC__
    return fabsf(n);
#else
    return __builtin_fabsf(n);
#endif
}
