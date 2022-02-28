#include "global.h"

/**
 * @brief memcpy: copies @p size bytes from memory starting at @p src to memory starting at @p dest . Expects the memory
 * specified by @p src and @p dest to not overlap.
 * 
 * @sa libultra also has a memcpy().
 *
 * @param[in,out] dest address of start of buffer writing to
 * @param[in] src address of start of buffer to read from 
 * @param[in] size number of bytes to copy. Has to be s32: it is not possible to copy more than 2 GB of RAM at once.
 *
 * @return dest
 */
void* MemCpy(void* dest, const void* src, s32 size) {
    u8* destPtr = dest;
    const u8* srcPtr = src;

    while (size > 0) {
        *destPtr++ = *srcPtr++;
        size--;
    }

    return dest;
}

/**
 * @brief memset: sets @p size bytes to @p val starting at address @p dest .
 *
 * There are two other memsets in this codebase,
 * @sa Lib_MemSet(), __osMemSet()
 * This one is unused.
 *
 * @param[in,out] dest address to start at
 * @param[in] val value to write (s32, but interpreted as u8)
 * @param[in] size number of bytes to write. Has to be s32: it is not possible to set more than 2 GB of RAM at once.
 *
 * @return dest
 */
void* MemSet(void* dest, s32 val, s32 size) {
    u8* destPtr = dest;
    s32 s = size;

    while (s > 0) {
        *destPtr++ = val;
        s--;
    }

    return dest;
}
