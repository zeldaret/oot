#include "string.h"

// memset used in __osMalloc, z_quake, z_view, and z_camera
void* func_80106860(void* ptr, int val, size_t size) {
    char* sp4 = ptr;
    register int a3;

    for (a3 = size--; a3 != 0; a3 = size--) {
        *sp4++ = val;
    }
    return ptr;
}
