#include "global.h"

void __osResetGlobalIntMask(OSHWIntr mask) {
    register u32 prevInt = __osDisableInt();

    __OSGlobalIntMask &= ~(mask & ~OS_IM_RCP);
    __osRestoreInt(prevInt);
}
