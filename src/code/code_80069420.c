#include "global.h"

void* MemCopy(void* dest, void* src, ptrdiff_t size) {
    u8* destu = (u8*)dest;
    u8* srcu = (u8*)src;

    while (size > 0) {
        *destu++ = *srcu++;
        size--;
    }

    return dest;
}

void* MemSet(void* dest, s32 val, ptrdiff_t size) {
    u8* destu = (u8*)dest;
    ptrdiff_t s = size;

    while (s > 0) {
        *destu++ = val;
        s--;
    }

    return dest;
}
