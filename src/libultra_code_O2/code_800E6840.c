#include "global.h"

void Audio_osInvalDCache(void* buf, s32 size) {
    OSIntMask prevMask = osSetIntMask(1);
    osInvalDCache(buf, size);
    osSetIntMask(prevMask);
}

void Audio_osWritebackDCache(void* buf, s32 size) {
    OSIntMask prevMask = osSetIntMask(1);
    osWritebackDCache(buf, size);
    osSetIntMask(prevMask);
}
