#ifndef ALLOCA_H
#define ALLOCA_H

#include "stddef.h"

void* alloca(size_t);
#define alloca(size) __builtin_alloca(size)

#endif
