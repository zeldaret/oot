#include "global.h"

void Audio_InvalDCache(void* buf, ssize_t size) {
    OSIntMask prevMask = osSetIntMask(1);

    osInvalDCache(buf, size);
    osSetIntMask(prevMask);
}

void Audio_WritebackDCache(void* buf, ssize_t size) {
    OSIntMask prevMask = osSetIntMask(1);

    osWritebackDCache(buf, size);
    osSetIntMask(prevMask);
}
