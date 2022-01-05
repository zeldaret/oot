#include "global.h"

void* MemSet2(void* ptr, s32 val, size_t size) {
    u8* sp4 = ptr;
    register s32 a3;

    for (a3 = size--; a3 != 0; a3 = size--) {
        *sp4++ = val;
    }
    return ptr;
}
