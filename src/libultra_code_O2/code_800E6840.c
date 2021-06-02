#include "global.h"

void func_800E6840(void* buf, s32 size) {
    OSIntMask prevMask = osSetIntMask(1);
    osInvalDCache(buf, size);
    osSetIntMask(prevMask);
}

void func_800E6880(void* buf, s32 size) {
    OSIntMask prevMask = osSetIntMask(1);
    osWritebackDCache(buf, size);
    osSetIntMask(prevMask);
}
