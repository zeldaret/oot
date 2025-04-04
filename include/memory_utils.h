#ifndef MEMORY_UTILS_H
#define MEMORY_UTILS_H

#include "ultra64.h"

void* MemCpy(void* dest, const void* src, s32 len);
void* MemSet(void* dest, s32 val, s32 len);

#endif
