#include "global.h"

/**
 * memset: sets `len` bytes to `val` starting at address `dest`.
 *
 * @see There are two other memsets in this codebase, Lib_MemSet(), MemSet()
 *
 * @param dest address to start at
 * @param val value to write (s32, but interpreted as u8)
 * @param len number of bytes to write
 *
 * @return dest
 */
void* __osMemset(void* dest, s32 val, size_t len) {
    u8* ptr = dest;

    while (len--) {
        *ptr++ = val;
    }
    return dest;
}
