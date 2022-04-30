#include "global.h"

/**
 * @brief memcpy: copies @p len bytes from memory starting at @p src to memory starting at @p dest . Expects the memory
 * specified by @p src and @p dest to not overlap.
 *
 * @sa libultra also has a memcpy().
 *
 * @param[in,out] dest address of start of buffer writing to
 * @param[in] src address of start of buffer to read from
 * @param[in] len number of bytes to copy. (s32 rather than the standard size_t)
 *
 * @return dest
 */
void* MemCpy(void* dest, const void* src, s32 len) {
    u8* d = dest;
    const u8* s = src;

    while (len > 0) {
        *d++ = *s++;
        len--;
    }

    return dest;
}

/**
 * @brief memset: sets @p len bytes to @p val starting at address @p dest .
 *
 * There are two other memsets in this codebase,
 * @sa Lib_MemSet(), __osMemSet()
 * This one is unused.
 *
 * @param[in,out] dest address to start at
 * @param[in] val value to write (s32, but interpreted as u8)
 * @param[in] len number of bytes to write. (s32 rather than the standard size_t)
 *
 * @return dest
 */
void* MemSet(void* dest, s32 val, s32 len) {
    u8* d = dest;
    s32 s = len;

    while (s > 0) {
        *d++ = val;
        s--;
    }

    return dest;
}
