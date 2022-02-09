#include "global.h"

void Audio_InvalDCache(void* buf, size_t size) {
    OSIntMask prevMask = osSetIntMask(OS_IM_NONE);

    osInvalDCache(buf, size);
    osSetIntMask(prevMask);
}

void Audio_WritebackDCache(void* buf, size_t size) {
    OSIntMask prevMask = osSetIntMask(OS_IM_NONE);

    osWritebackDCache(buf, size);
    osSetIntMask(prevMask);
}
