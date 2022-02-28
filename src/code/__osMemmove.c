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
void* __osMemmove(void* dest, const void* src, size_t size) {
    u8* destPtr = dest;
    const u8* srcPtr = src;

    if (destPtr == srcPtr) {
        return dest;
    }
    if (destPtr < srcPtr) {
        while (size--) {
            *destPtr++ = *srcPtr++;
        }
    } else {
        destPtr += size - 1;
        srcPtr += size - 1;
        while (size--) {
            *destPtr-- = *srcPtr--;
        }
    }
    return dest;
}
