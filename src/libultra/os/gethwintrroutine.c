#include "ultra64.h"
#include "ultra64/internal.h"

void __osGetHWIntrRoutine(OSHWIntr intr, s32 (**callbackOut)(void), void** spOut) {
    *callbackOut = __osHwIntTable[intr].callback;
    *spOut = __osHwIntTable[intr].sp;
}
