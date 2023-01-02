#ifndef ALLOCA_H
#define ALLOCA_H

#include "stddef.h"

void* alloca(size_t);
#define alloca __builtin_alloca

#endif
