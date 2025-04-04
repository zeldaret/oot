#ifndef INFLATE_H
#define INFLATE_H

#include "libc/stddef.h"
#include "libc/stdint.h"
#include "ultra64.h"

void gzip_decompress(uintptr_t romStart, u8* dst, size_t size);

#endif
