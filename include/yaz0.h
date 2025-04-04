#ifndef YAZ0_H
#define YAZ0_H

#include "libc/stddef.h"
#include "libc/stdint.h"
#include "ultra64.h"

void Yaz0_Decompress(uintptr_t romStart, u8* dst, size_t size);

#endif
