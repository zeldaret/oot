#include "global.h"

// memset used in __osMalloc, z_quake, z_view, and z_camera
void* func_80106860(void* ptr, s32 val, size_t size) {
    u8* bytePtr = ptr;

    while (size--) {
        *bytePtr++ = val;
    }
    return ptr;
}
