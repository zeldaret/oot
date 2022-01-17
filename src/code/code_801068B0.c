#include "global.h"

// memmove used in __osMalloc.c
void* func_801068B0(void* dst, void* src, size_t size) {
    u8* byteDst = dst;
    u8* byteSrc = src;

    if (byteDst == byteSrc) {
        return dst;
    }
    if (byteDst < byteSrc) {
        while (size--) {
            *byteDst++ = *byteSrc++;
        }
    } else {
        byteDst += size - 1;
        byteSrc += size - 1;
        while (size--) {
            *byteDst-- = *byteSrc--;
        }
    }
    return dst;
}
