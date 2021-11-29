#include "global.h"

void __osSetGlobalIntMask(u32 mask) {
    register u32 prevInt = __osDisableInt();

    __OSGlobalIntMask |= mask;
    __osRestoreInt(prevInt);
}
