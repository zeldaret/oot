#ifndef MEMORY_UTILS_H
#define MEMORY_UTILS_H

#include "ultra64.h"

void* MemCopy(void* dest, void* src, s32 size);
void* MemSet(void* dest, s32 val, s32 size);

#endif
