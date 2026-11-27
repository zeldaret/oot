#include "string.h"

// memmove used in __osMalloc.c
void* func_801068B0(void* dst, void* src, size_t size) {
    char* spC = dst;
    char* sp8 = src;

    if (spC == sp8) {
        return dst;
    }
    if (spC < sp8) {
        while (size--) {
            *spC++ = *sp8++;
        }
    } else {
        spC += size - 1;
        sp8 += size - 1;
        while (size--) {
            *spC-- = *sp8--;
        }
    }
    return dst;
}
