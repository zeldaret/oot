#include <global.h>

void __osSetGlobalIntMask(u32 mask) {
    register s32 prevInt;

    prevInt = __osDisableInt();
    __OSGlobalIntMask |= mask;
    __osRestoreInt(prevInt);
}
