#include "guint.h"

#ifndef __GNUC__
#define __builtin_sqrt sqrt
#endif

double sqrt(double f) {
    return __builtin_sqrt(f);
}
