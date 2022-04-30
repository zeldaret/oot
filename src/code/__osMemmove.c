#include "global.h"

/**
 * @brief memmove: copies @p size bytes from memory starting at @p src to memory starting at @p dest .
 *
 * Unlike @ref memcpy(), the regions of memory may overlap.
 *
 * @param[in,out] dest address of start of buffer writing to
 * @param[in] src address of start of buffer to read from
 * @param[in] size number of bytes to copy.
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
