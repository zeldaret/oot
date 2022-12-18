#include "internal.h"

void __osGetHWIntrRoutine(OSHWIntr intr, s32 (**handler)(void), void** stackEnd) {
    *handler = __osHwIntTable[intr].handler;
    *stackEnd = __osHwIntTable[intr].stackEnd;
}
