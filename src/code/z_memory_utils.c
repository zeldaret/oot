#include "ultra64.h"
#include "memory_utils.h"

/**
 * Copy `size` bytes from `src` to `dest`.
 */
void* MemCopy(void* dest, void* src, s32 size) {
    u8* destu = (u8*)dest;
    u8* srcu = (u8*)src;

    while (size > 0) {
        *destu++ = *srcu++;
        size--;
    }

    return dest;
}

/**
 * Set `size` bytes starting at `dest` to value `val`.
 */
void* MemSet(void* dest, s32 val, s32 size) {
    u8* destu = (u8*)dest;
    s32 s = size;

    while (s > 0) {
        *destu++ = val;
        s--;
    }

    return dest;
}
