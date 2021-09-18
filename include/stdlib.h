#ifndef STDLIB_H
#define STDLIB_H

#include "ultra64.h"

typedef struct lldiv_t {
    s64 quot;
    s64 rem;
} lldiv_t;

typedef struct ldiv_t {
    s32 quot;
    s32 rem;
} ldiv_t;

#endif
