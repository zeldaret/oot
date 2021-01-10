#include "global.h"

void __osResetGlobalIntMask(u32 mask) {
    register s32 prevInt;

    prevInt = __osDisableInt();
    __OSGlobalIntMask &= ~(mask & ~0x401);
    __osRestoreInt(prevInt);
}
