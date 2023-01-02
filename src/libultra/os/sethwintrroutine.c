#include "osint.h"

void __osSetHWIntrRoutine(OSHWIntr intr, s32 (*handler)(void), void* stackEnd) {
    register u32 prevInt = __osDisableInt();

    __osHwIntTable[intr].handler = handler;
    __osHwIntTable[intr].stackEnd = stackEnd;

    __osRestoreInt(prevInt);
}
