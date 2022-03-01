#include "global.h"

/**
 * @brief memset: sets @p len bytes to @p val starting at address @p dest .
 *
 * There are two other memsets in this codebase,
 * @sa Lib_MemSet(), MemSet()
 * This one is used in __osMalloc, z_quake, z_view, and z_camera
 *
 * @param[in,out] dest address to start at
 * @param[in] val value to write (s32, but interpreted as u8)
 * @param[in] len number of bytes to write
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
