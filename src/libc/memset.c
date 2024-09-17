#include "string.h"

/**
 * memset: sets `len` bytes to `val` starting at address `dest`.
 *
 * @see There are two other memsets in this codebase, Lib_MemSet(), MemSet()
 *
 * @param dest address to start at
 * @param val value to write (int, but interpreted as u8)
 * @param len number of bytes to write
 *
 * @return dest
 */
void* memset(void* dest, int val, size_t len) {
    char* ptr = dest;

    while (len--) {
        *ptr++ = val;
    }
    return dest;
}
