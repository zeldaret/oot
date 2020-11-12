#ifndef _STDLIB_H_
#define _STDLIB_H_

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
