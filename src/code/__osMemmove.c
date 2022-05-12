#include "global.h"

/**
 * memmove: copies `len` bytes from memory starting at `src` to memory starting at `dest`.
 *
 * Unlike memcpy(), the regions of memory may overlap.
 *
 * @param dest address of start of buffer to write to
 * @param src address of start of buffer to read from
 * @param len number of bytes to copy.
 *
 * @return dest
 */
void* __osMemmove(void* dest, const void* src, size_t len) {
    u8* d = dest;
    const u8* s = src;

    if (d == s) {
        return dest;
    }
    if (d < s) {
        while (len--) {
            *d++ = *s++;
        }
    } else {
        d += len - 1;
        s += len - 1;
        while (len--) {
            *d-- = *s--;
        }
    }
    return dest;
}
