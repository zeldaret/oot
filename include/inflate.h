#ifndef INFLATE_H
#define INFLATE_H

#include "stddef.h"
#include "stdint.h"
#include "ultra64.h"

void gzip_decompress(uintptr_t romStart, u8* dst, size_t size);

#endif
